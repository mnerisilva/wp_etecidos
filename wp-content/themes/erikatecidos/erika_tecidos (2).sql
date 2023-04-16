-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 16-Abr-2023 às 05:30
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erika_tecidos`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT '0',
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'comment',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://br.wordpress.org/', '', '2023-03-20 21:08:18', '2023-03-21 00:08:18', 'Oi, isto é um comentário.\nPara iniciar a moderar, editar e excluir comentários, visite a tela Comentários no painel.\nOs avatares dos comentaristas vêm do <a href=\"https://br.gravatar.com/\">Gravatar</a>.', 0, 'post-trashed', '', 'comment', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
  `link_url` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_name` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_image` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_target` varchar(25) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_description` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_visible` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'Y',
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT '1',
  `link_rating` int(11) NOT NULL DEFAULT '0',
  `link_updated` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/wp_etecidos', 'yes'),
(2, 'home', 'http://localhost/wp_etecidos', 'yes'),
(3, 'blogname', 'ERIKA TECIDOS para decoração, cortinas e estofados', 'yes'),
(4, 'blogdescription', '', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'marceloneri@gmail.com', 'yes'),
(7, 'start_of_week', '0', 'yes'),
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
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:125:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"sobrenos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sobrenos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sobrenos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sobrenos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sobrenos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sobrenos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sobrenos/([^/]+)/embed/?$\";s:41:\"index.php?sobrenos=$matches[1]&embed=true\";s:29:\"sobrenos/([^/]+)/trackback/?$\";s:35:\"index.php?sobrenos=$matches[1]&tb=1\";s:37:\"sobrenos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?sobrenos=$matches[1]&paged=$matches[2]\";s:44:\"sobrenos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?sobrenos=$matches[1]&cpage=$matches[2]\";s:33:\"sobrenos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?sobrenos=$matches[1]&page=$matches[2]\";s:25:\"sobrenos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sobrenos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sobrenos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sobrenos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sobrenos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sobrenos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:4:{i:0;s:30:\"advanced-custom-fields/acf.php\";i:1;s:33:\"classic-editor/classic-editor.php\";i:2;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:3;s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'erikatecidos', 'yes'),
(41, 'stylesheet', 'erikatecidos', 'yes'),
(42, 'comment_registration', '0', 'yes'),
(43, 'html_type', 'text/html', 'yes'),
(44, 'use_trackback', '0', 'yes'),
(45, 'default_role', 'subscriber', 'yes'),
(46, 'db_version', '53496', 'yes'),
(47, 'uploads_use_yearmonth_folders', '1', 'yes'),
(48, 'upload_path', '', 'yes'),
(49, 'blog_public', '0', 'yes'),
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
(76, 'widget_categories', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(77, 'widget_text', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(78, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(79, 'uninstall_plugins', 'a:0:{}', 'no'),
(80, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(81, 'page_for_posts', '89', 'yes'),
(82, 'page_on_front', '0', 'yes'),
(83, 'default_post_format', '0', 'yes'),
(84, 'link_manager_enabled', '0', 'yes'),
(85, 'finished_splitting_shared_terms', '1', 'yes'),
(86, 'site_icon', '0', 'yes'),
(87, 'medium_large_size_w', '768', 'yes'),
(88, 'medium_large_size_h', '0', 'yes'),
(89, 'wp_page_for_privacy_policy', '3', 'yes'),
(90, 'show_comments_cookies_opt_in', '1', 'yes'),
(91, 'admin_email_lifespan', '1694909297', 'yes'),
(92, 'disallowed_keys', '', 'no'),
(93, 'comment_previously_approved', '1', 'yes'),
(94, 'auto_plugin_theme_update_emails', 'a:0:{}', 'no'),
(95, 'auto_update_core_dev', 'enabled', 'yes'),
(96, 'auto_update_core_minor', 'enabled', 'yes'),
(97, 'auto_update_core_major', 'enabled', 'yes'),
(98, 'wp_force_deactivated_plugins', 'a:0:{}', 'yes'),
(99, 'initial_db_version', '53496', 'yes'),
(100, 'wp_user_roles', 'a:5:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:61:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}}', 'yes'),
(101, 'fresh_site', '0', 'yes'),
(102, 'WPLANG', 'pt_BR', 'yes'),
(103, 'user_count', '1', 'no'),
(104, 'widget_block', 'a:6:{i:2;a:1:{s:7:\"content\";s:19:\"<!-- wp:search /-->\";}i:3;a:1:{s:7:\"content\";s:156:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Posts recentes</h2><!-- /wp:heading --><!-- wp:latest-posts /--></div><!-- /wp:group -->\";}i:4;a:1:{s:7:\"content\";s:224:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:latest-comments {\"displayAvatar\":false,\"displayDate\":false,\"displayExcerpt\":false} /--></div><!-- /wp:group -->\";}i:5;a:1:{s:7:\"content\";s:146:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Arquivos</h2><!-- /wp:heading --><!-- wp:archives /--></div><!-- /wp:group -->\";}i:6;a:1:{s:7:\"content\";s:150:\"<!-- wp:group --><div class=\"wp-block-group\"><!-- wp:heading --><h2>Categorias</h2><!-- /wp:heading --><!-- wp:categories /--></div><!-- /wp:group -->\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'sidebars_widgets', 'a:2:{s:19:\"wp_inactive_widgets\";a:5:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";i:3;s:7:\"block-5\";i:4;s:7:\"block-6\";}s:13:\"array_version\";i:3;}', 'yes'),
(106, 'cron', 'a:8:{i:1681618098;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1681646898;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681646911;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681690098;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681690111;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681690112;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681862898;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}s:7:\"version\";i:2;}', 'yes'),
(107, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_archives', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(114, 'widget_meta', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'widget_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(116, 'widget_recent-posts', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(117, 'widget_recent-comments', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(118, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(119, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(120, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(122, 'recovery_keys', 'a:0:{}', 'yes'),
(125, 'theme_mods_twentytwentythree', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1679358297;s:4:\"data\";a:3:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:7:\"block-2\";i:1;s:7:\"block-3\";i:2;s:7:\"block-4\";}s:9:\"sidebar-2\";a:2:{i:0;s:7:\"block-5\";i:1;s:7:\"block-6\";}}}}', 'yes'),
(128, 'https_detection_errors', 'a:1:{s:23:\"ssl_verification_failed\";a:1:{i:0;s:25:\"Verificação SSL falhou.\";}}', 'yes'),
(147, 'can_compress_scripts', '1', 'no'),
(160, 'recently_activated', 'a:1:{s:39:\"disable-gutenberg/disable-gutenberg.php\";i:1680056842;}', 'yes'),
(163, 'finished_updating_comment_type', '1', 'yes'),
(164, 'new_admin_email', 'marceloneri@gmail.com', 'yes'),
(169, 'current_theme', 'Erika Tecidos', 'yes'),
(170, 'theme_mods_erikatecidos', 'a:3:{i:0;b:0;s:18:\"nav_menu_locations\";a:0:{}s:18:\"custom_css_post_id\";i:-1;}', 'yes'),
(171, 'theme_switched', '', 'yes'),
(281, 'wp_calendar_block_has_published_posts', '1', 'yes'),
(362, 'category_children', 'a:0:{}', 'yes'),
(371, 'cptui_new_install', 'false', 'yes'),
(374, 'acf_version', '6.0.7', 'yes'),
(383, 'auto_update_plugins', 'a:2:{i:0;s:43:\"custom-post-type-ui/custom-post-type-ui.php\";i:1;s:30:\"advanced-custom-fields/acf.php\";}', 'no'),
(384, 'cptui_post_types', 'a:2:{s:6:\"banner\";a:34:{s:4:\"name\";s:6:\"banner\";s:5:\"label\";s:7:\"Banners\";s:14:\"singular_label\";s:6:\"banner\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:6:\"Banner\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:8:\"sobrenos\";a:34:{s:4:\"name\";s:8:\"sobrenos\";s:5:\"label\";s:6:\"Sobres\";s:14:\"singular_label\";s:5:\"Sobre\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:4:{i:0;s:5:\"title\";i:1;s:6:\"editor\";i:2;s:9:\"thumbnail\";i:3;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:5:\"Sobre\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(404, 'recovery_mode_email_last_sent', '1680053612', 'yes'),
(446, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":1}', 'yes'),
(476, 'wpvivid_remote_init', 'init', 'no'),
(478, 'wpvivid_check_htaccess_rule_free', '1', 'yes'),
(485, 'clean_task', 'a:0:{}', 'no'),
(488, 'wpvivid_init', 'init', 'no'),
(489, 'wpvivid_schedule_setting', 'a:1:{s:6:\"enable\";b:0;}', 'no'),
(490, 'wpvivid_compress_setting', 'a:7:{s:13:\"compress_type\";s:3:\"zip\";s:13:\"max_file_size\";i:200;s:11:\"no_compress\";b:1;s:13:\"use_temp_file\";i:1;s:13:\"use_temp_size\";i:16;s:17:\"exclude_file_size\";i:0;s:24:\"subpackage_plugin_upload\";b:0;}', 'no'),
(491, 'wpvivid_local_setting', 'a:2:{s:4:\"path\";s:14:\"wpvividbackups\";s:10:\"save_local\";i:1;}', 'no'),
(492, 'wpvivid_upload_setting', 'a:2:{s:15:\"remote_selected\";a:0:{}s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0Ael9sCPyNeOk8I6ZCe-00fzTdlmU1FHrxI2B958K5Z_EJRMcU4Rc19v_2JoyqLLopRP6zG3Ll-EdGEehVuLXAfDBACWLHGaMNivLqGXqLmVymilBWBC9tzM4QtuJ9_2TauGnUiPMO_rp5dPopF3q1_GVvFHLSisoaCgYKAbsSARISFQF4udJhM35eW2WYXBhOMNwlkHjf7A0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681615798;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}', 'no'),
(493, 'wpvivid_common_setting', 'a:10:{s:18:\"max_execution_time\";i:300;s:16:\"max_backup_count\";i:3;s:14:\"show_admin_bar\";b:1;s:14:\"domain_include\";b:1;s:15:\"estimate_backup\";b:1;s:16:\"max_resume_count\";i:6;s:12:\"memory_limit\";s:4:\"256M\";s:20:\"restore_memory_limit\";s:4:\"512M\";s:12:\"migrate_size\";s:4:\"2048\";s:17:\"log_save_location\";s:26:\"wpvividbackups\\wpvivid_log\";}', 'no'),
(494, 'wpvivid_email_setting', 'a:3:{s:7:\"send_to\";a:0:{}s:6:\"always\";b:1;s:12:\"email_enable\";b:0;}', 'no'),
(495, 'wpvivid_saved_api_token', 'a:0:{}', 'no'),
(497, 'wpvivid_last_msg', 'a:8:{s:2:\"id\";s:21:\"wpvivid-643b6b7703696\";s:4:\"type\";s:6:\"Manual\";s:7:\"options\";a:22:{s:7:\"ismerge\";s:1:\"1\";s:4:\"lock\";s:1:\"0\";s:12:\"backup_files\";s:8:\"files+db\";s:5:\"local\";s:1:\"0\";s:6:\"remote\";s:1:\"1\";s:4:\"type\";s:6:\"Manual\";s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:11:\"file_prefix\";s:60:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28\";s:13:\"log_file_name\";s:28:\"wpvivid-643b6b7703696_backup\";s:13:\"log_file_path\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643b6b7703696_backup_log.txt\";s:6:\"prefix\";s:60:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28\";s:3:\"dir\";s:53:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content/wpvividbackups\";s:10:\"backup_dir\";s:14:\"wpvividbackups\";s:14:\"exclude-tables\";a:6:{i:0;s:14:\"wp_wpvivid_log\";i:1;s:28:\"wp_wpvivid_increment_big_ids\";i:2;s:18:\"wp_wpvivid_options\";i:3;s:22:\"wp_wpvivid_record_task\";i:4;s:19:\"wp_wpvivid_merge_db\";i:5;s:20:\"wp_wpvivid_merge_ids\";}s:14:\"include-tables\";a:0:{}s:13:\"exclude_files\";a:11:{i:0;s:80:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wpvivid\\-backuprestore#\";i:1;s:68:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wp\\-cerber#\";i:2;s:60:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/\\.#\";i:3;s:78:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wpvivid\\-backup\\-pro#\";i:4;s:74:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wpvividdashboard#\";i:5;s:56:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/upgrade#\";i:6;s:64:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvivid_uploads#\";i:7;s:64:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/WPvivid_Uploads#\";i:8;s:56:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvivid#\";i:9;s:63:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvividbackups#\";i:10;s:73:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvivid_uploads\\\\Isolate#\";}s:13:\"include_files\";a:2:{i:0;s:45:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-admin#\";i:1;s:48:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-includes#\";}s:15:\"include_plugins\";a:0:{}s:14:\"include_themes\";a:0:{}s:10:\"save_local\";i:0;s:14:\"backup_options\";a:1:{s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}}s:14:\"remote_options\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0Ael9sCMz9PzciwCvlFhaqXXpZ2FxBxdrxO23KVBtXrKkOqqT5niVcxDbbeYUax6ZVBH2qzuMbf6mviegd2on-G8Yq5HSi_uvT646YER1NPj1PI0Qlm3YDnd-O9BhVrLr4ZeFoKr0KnPIBye8gLuaAWFpM_ID7ONEaCgYKAeMSARISFQF4udJhu2W-jhfRQRNHJd7RerJX2g0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681612922;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}}s:6:\"status\";a:7:{s:15:\"task_start_time\";i:1681615735;s:13:\"task_end_time\";i:1681615795;s:10:\"start_time\";i:1681615735;s:8:\"run_time\";i:1681615795;s:7:\"timeout\";i:1681615749;s:3:\"str\";s:9:\"completed\";s:12:\"resume_count\";i:0;}s:7:\"setting\";a:11:{s:17:\"db_connect_method\";s:4:\"wpdb\";s:12:\"memory_limit\";s:4:\"256M\";s:18:\"max_execution_time\";i:300;s:23:\"compress_file_use_cache\";b:0;s:19:\"compress_file_count\";i:500;s:13:\"max_file_size\";i:200;s:17:\"max_sql_file_size\";i:200;s:17:\"exclude_file_size\";i:0;s:16:\"max_resume_count\";i:6;s:10:\"zip_method\";s:10:\"ziparchive\";s:8:\"is_merge\";b:1;}s:4:\"data\";a:3:{s:5:\"doing\";s:6:\"upload\";s:6:\"backup\";a:3:{s:5:\"doing\";s:12:\"backup_merge\";s:8:\"progress\";i:100;s:7:\"sub_job\";a:7:{s:9:\"backup_db\";a:2:{s:8:\"progress\";s:30:\"Backing up backup_db finished.\";s:8:\"job_data\";a:0:{}}s:13:\"backup_themes\";a:2:{s:8:\"progress\";s:34:\"Backing up backup_themes finished.\";s:8:\"job_data\";a:0:{}}s:13:\"backup_plugin\";a:2:{s:8:\"progress\";s:34:\"Backing up backup_plugin finished.\";s:8:\"job_data\";a:0:{}}s:14:\"backup_uploads\";a:2:{s:8:\"progress\";s:35:\"Backing up backup_uploads finished.\";s:8:\"job_data\";a:0:{}}s:14:\"backup_content\";a:2:{s:8:\"progress\";s:35:\"Backing up backup_content finished.\";s:8:\"job_data\";a:0:{}}s:11:\"backup_core\";a:2:{s:8:\"progress\";s:32:\"Backing up backup_core finished.\";s:8:\"job_data\";a:0:{}}s:12:\"backup_merge\";a:2:{s:8:\"progress\";s:33:\"Backing up backup_merge finished.\";s:8:\"job_data\";a:0:{}}}}s:6:\"upload\";a:5:{s:5:\"doing\";s:28:\"wpvivid-remote-641bb02f25744\";s:8:\"finished\";i:1;s:8:\"progress\";i:100;s:8:\"job_data\";a:0:{}s:7:\"sub_job\";a:2:{s:11:\"googledrive\";a:4:{s:8:\"finished\";i:1;s:8:\"progress\";s:96:\"Uploading localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip completed.\";s:8:\"job_data\";a:1:{s:75:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip\";a:2:{s:4:\"size\";i:97260353;s:8:\"uploaded\";i:1;}}s:11:\"upload_data\";a:6:{s:6:\"offset\";i:93323264;s:12:\"current_name\";s:75:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip\";s:12:\"current_size\";i:97260353;s:9:\"last_time\";i:1681615789;s:9:\"last_size\";i:83886080;s:8:\"descript\";s:85:\"Uploading localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip\";}}s:28:\"wpvivid-remote-641bb02f25744\";a:4:{s:8:\"finished\";i:1;s:8:\"progress\";s:27:\"Finish upload togoogledrive\";s:8:\"job_data\";a:0:{}s:11:\"upload_data\";a:0:{}}}}}s:4:\"jobs\";a:7:{i:0;a:8:{s:11:\"backup_type\";s:9:\"backup_db\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:16:\"mysql_file_index\";i:2;s:8:\"sub_jobs\";a:12:{s:21:\"wp_term_relationships\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:21:\"wp_term_relationships\";s:4:\"size\";i:32768;s:4:\"rows\";s:2:\"11\";}s:8:\"wp_links\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_links\";s:4:\"size\";i:32768;s:4:\"rows\";s:1:\"0\";}s:14:\"wp_commentmeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:14:\"wp_commentmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}s:16:\"wp_term_taxonomy\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:16:\"wp_term_taxonomy\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}s:11:\"wp_termmeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_termmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}s:8:\"wp_terms\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_terms\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}s:11:\"wp_usermeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_usermeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:2:\"32\";}s:8:\"wp_users\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_users\";s:4:\"size\";i:65536;s:4:\"rows\";s:1:\"0\";}s:11:\"wp_comments\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_comments\";s:4:\"size\";i:98304;s:4:\"rows\";s:1:\"0\";}s:11:\"wp_postmeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_postmeta\";s:4:\"size\";i:98304;s:4:\"rows\";s:3:\"276\";}s:8:\"wp_posts\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_posts\";s:4:\"size\";i:131072;s:4:\"rows\";s:2:\"88\";}s:10:\"wp_options\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:10:\"wp_options\";s:4:\"size\";i:1130496;s:4:\"rows\";s:3:\"169\";}}s:16:\"mysql_dump_files\";a:1:{i:0;s:72:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28.part001.sql\";}s:8:\"zip_file\";a:1:{s:74:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_db.zip\";a:2:{s:8:\"filename\";s:74:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_db.zip\";s:8:\"finished\";i:1;}}}i:1;a:6:{s:11:\"backup_type\";s:13:\"backup_themes\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:1000;s:8:\"zip_file\";a:1:{s:78:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_themes.zip\";a:2:{s:8:\"filename\";s:78:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_themes.zip\";s:8:\"finished\";i:1;}}}i:2;a:6:{s:11:\"backup_type\";s:13:\"backup_plugin\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:500;s:8:\"zip_file\";a:1:{s:78:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_plugin.zip\";a:2:{s:8:\"filename\";s:78:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_plugin.zip\";s:8:\"finished\";i:1;}}}i:3;a:6:{s:11:\"backup_type\";s:14:\"backup_uploads\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:500;s:8:\"zip_file\";a:1:{s:79:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_uploads.zip\";a:2:{s:8:\"filename\";s:79:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_uploads.zip\";s:8:\"finished\";i:1;}}}i:4;a:6:{s:11:\"backup_type\";s:14:\"backup_content\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:500;s:8:\"zip_file\";a:1:{s:79:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_content.zip\";a:2:{s:8:\"filename\";s:79:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_content.zip\";s:8:\"finished\";i:1;}}}i:5;a:6:{s:11:\"backup_type\";s:11:\"backup_core\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:3000;s:8:\"zip_file\";a:1:{s:76:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_core.zip\";a:2:{s:8:\"filename\";s:76:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_core.zip\";s:8:\"finished\";i:1;}}}i:6;a:7:{s:11:\"backup_type\";s:12:\"backup_merge\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:10:\"child_file\";a:6:{s:74:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_db.zip\";a:10:{s:5:\"files\";a:1:{i:0;s:74:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_db.sql\";}s:6:\"tables\";a:12:{i:0;a:3:{s:4:\"name\";s:21:\"wp_term_relationships\";s:4:\"size\";i:32768;s:4:\"rows\";s:2:\"11\";}i:1;a:3:{s:4:\"name\";s:8:\"wp_links\";s:4:\"size\";i:32768;s:4:\"rows\";s:1:\"0\";}i:2;a:3:{s:4:\"name\";s:14:\"wp_commentmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}i:3;a:3:{s:4:\"name\";s:16:\"wp_term_taxonomy\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}i:4;a:3:{s:4:\"name\";s:11:\"wp_termmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}i:5;a:3:{s:4:\"name\";s:8:\"wp_terms\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}i:6;a:3:{s:4:\"name\";s:11:\"wp_usermeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:2:\"32\";}i:7;a:3:{s:4:\"name\";s:8:\"wp_users\";s:4:\"size\";i:65536;s:4:\"rows\";s:1:\"0\";}i:8;a:3:{s:4:\"name\";s:11:\"wp_comments\";s:4:\"size\";i:98304;s:4:\"rows\";s:1:\"0\";}i:9;a:3:{s:4:\"name\";s:11:\"wp_postmeta\";s:4:\"size\";i:98304;s:4:\"rows\";s:3:\"276\";}i:10;a:3:{s:4:\"name\";s:8:\"wp_posts\";s:4:\"size\";i:131072;s:4:\"rows\";s:2:\"88\";}i:11;a:3:{s:4:\"name\";s:10:\"wp_options\";s:4:\"size\";i:1130496;s:4:\"rows\";s:3:\"169\";}}s:7:\"dump_db\";i:1;s:9:\"file_type\";s:9:\"databases\";s:8:\"home_url\";s:28:\"http://localhost/wp_etecidos\";s:9:\"root_flag\";s:6:\"custom\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:4:\"file\";s:82:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_db.part001.zip\";}s:78:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_themes.zip\";a:7:{s:9:\"file_type\";s:6:\"themes\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:6:\"themes\";a:4:{s:12:\"erikatecidos\";a:1:{s:4:\"slug\";s:12:\"erikatecidos\";}s:15:\"twentytwentyone\";a:1:{s:4:\"slug\";s:15:\"twentytwentyone\";}s:17:\"twentytwentythree\";a:1:{s:4:\"slug\";s:17:\"twentytwentythree\";}s:15:\"twentytwentytwo\";a:1:{s:4:\"slug\";s:15:\"twentytwentytwo\";}}s:4:\"file\";s:86:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_themes.part001.zip\";}s:78:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_plugin.zip\";a:7:{s:9:\"file_type\";s:6:\"plugin\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:6:\"plugin\";a:4:{s:22:\"advanced-custom-fields\";a:1:{s:4:\"slug\";s:22:\"advanced-custom-fields\";}s:7:\"akismet\";a:1:{s:4:\"slug\";s:7:\"akismet\";}s:14:\"classic-editor\";a:1:{s:4:\"slug\";s:14:\"classic-editor\";}s:19:\"custom-post-type-ui\";a:1:{s:4:\"slug\";s:19:\"custom-post-type-ui\";}}s:4:\"file\";s:86:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_plugin.part001.zip\";}s:79:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_uploads.zip\";a:6:{s:9:\"file_type\";s:6:\"upload\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:4:\"file\";s:87:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_uploads.part001.zip\";}s:79:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_content.zip\";a:6:{s:9:\"file_type\";s:10:\"wp-content\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:4:\"file\";s:87:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_content.part001.zip\";}s:76:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_core.zip\";a:6:{s:9:\"file_type\";s:7:\"wp-core\";s:12:\"include_path\";a:2:{i:0;s:11:\"wp-includes\";i:1;s:8:\"wp-admin\";}s:7:\"wp_core\";i:1;s:9:\"root_flag\";s:4:\"root\";s:8:\"home_url\";s:28:\"http://localhost/wp_etecidos\";s:4:\"file\";s:84:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_core.part001.zip\";}}s:5:\"index\";i:6;s:8:\"zip_file\";a:1:{s:75:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip\";a:2:{s:8:\"filename\";s:75:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip\";s:8:\"finished\";i:1;}}}}s:12:\"dump_setting\";a:14:{s:8:\"database\";s:13:\"erika_tecidos\";s:4:\"host\";s:9:\"localhost\";s:4:\"user\";s:4:\"root\";s:4:\"pass\";s:0:\"\";s:8:\"site_url\";s:28:\"http://localhost/wp_etecidos\";s:8:\"home_url\";s:28:\"http://localhost/wp_etecidos\";s:11:\"content_url\";s:39:\"http://localhost/wp_etecidos/wp-content\";s:6:\"prefix\";s:3:\"wp_\";s:17:\"db_connect_method\";s:4:\"wpdb\";s:11:\"file_prefix\";s:60:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28\";s:4:\"path\";s:53:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content/wpvividbackups\";s:13:\"max_file_size\";i:209715200;s:14:\"exclude-tables\";a:6:{i:0;s:14:\"wp_wpvivid_log\";i:1;s:28:\"wp_wpvivid_increment_big_ids\";i:2;s:18:\"wp_wpvivid_options\";i:3;s:22:\"wp_wpvivid_record_task\";i:4;s:19:\"wp_wpvivid_merge_db\";i:5;s:20:\"wp_wpvivid_merge_ids\";}s:14:\"include-tables\";a:0:{}}}', 'no'),
(498, 'wpvivid_user_history', 'a:1:{s:15:\"remote_selected\";a:1:{i:0;s:28:\"wpvivid-remote-641bb02f25744\";}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(499, 'wpvivid_backup_list', 'a:3:{s:21:\"wpvivid-642cc2d46b473\";a:11:{s:4:\"type\";s:6:\"Manual\";s:11:\"create_time\";i:1680655060;s:13:\"manual_delete\";i:0;s:5:\"local\";a:1:{s:4:\"path\";s:14:\"wpvividbackups\";}s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}s:10:\"save_local\";i:0;s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:3:\"log\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-642cc2d46b473_backup_log.txt\";s:6:\"backup\";a:2:{s:6:\"result\";s:7:\"success\";s:5:\"files\";a:1:{i:0;a:2:{s:9:\"file_name\";s:75:\"localhost_wp_etecidos_wpvivid-642cc2d46b473_2023-04-04-21-37_backup_all.zip\";s:4:\"size\";i:96589114;}}}s:6:\"remote\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:210:\"ya29.a0AVvZVsr4To2nbb3mu8gxmUp006kwhjdoE6wuJChiy4Ce05N-GyJHoJ4leJsb4fMs_NHfhp6-Z3kUASszpxhbx3gM1jBUjkPZp30ou0Cp6ZiSZSB6suslDZDJ6fvrIFpmFf5MfiGo_SRQZrAjfRQMRyOjJpj7aCgYKAfASARISFQGbdwaIIHd0mkrjXhaY6fsb08Hdhw0163\";s:10:\"expires_in\";s:4:\"3599\";s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";s:10:\"1679536128\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}s:4:\"lock\";s:1:\"0\";}s:21:\"wpvivid-643b606bc712c\";a:11:{s:4:\"type\";s:6:\"Manual\";s:11:\"create_time\";i:1681612908;s:13:\"manual_delete\";i:0;s:5:\"local\";a:1:{s:4:\"path\";s:14:\"wpvividbackups\";}s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}s:10:\"save_local\";i:0;s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:3:\"log\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643b606bc712c_backup_log.txt\";s:6:\"backup\";a:2:{s:6:\"result\";s:7:\"success\";s:5:\"files\";a:1:{i:0;a:2:{s:9:\"file_name\";s:75:\"localhost_wp_etecidos_wpvivid-643b606bc712c_2023-04-15-23-41_backup_all.zip\";s:4:\"size\";i:97259444;}}}s:6:\"remote\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0Ael9sCPpDEE0HfDdhZny7m7l25kWeANHkeaPmRlf1aakKOEAZo8ilBDe-9yhdeoNMAqOu1BaHLvUwiZgdBtaG1VDvIKPZuDTvxNDeV-SKBfJzskRIcu67SbERWHaSZkXAMEz7N3nMZtEzWyDkANoucSrgQhXfFGtaCgYKAYsSARISFQF4udJhCBMjGlWg-MmiZW-KaKfp9g0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1680655075;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}s:4:\"lock\";s:1:\"1\";}s:21:\"wpvivid-643b6b7703696\";a:11:{s:4:\"type\";s:6:\"Manual\";s:11:\"create_time\";i:1681615735;s:13:\"manual_delete\";i:0;s:5:\"local\";a:1:{s:4:\"path\";s:14:\"wpvividbackups\";}s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}s:10:\"save_local\";i:0;s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:3:\"log\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643b6b7703696_backup_log.txt\";s:6:\"backup\";a:2:{s:6:\"result\";s:7:\"success\";s:5:\"files\";a:1:{i:0;a:2:{s:9:\"file_name\";s:75:\"localhost_wp_etecidos_wpvivid-643b6b7703696_2023-04-16-00-28_backup_all.zip\";s:4:\"size\";i:97260353;}}}s:6:\"remote\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0Ael9sCMz9PzciwCvlFhaqXXpZ2FxBxdrxO23KVBtXrKkOqqT5niVcxDbbeYUax6ZVBH2qzuMbf6mviegd2on-G8Yq5HSi_uvT646YER1NPj1PI0Qlm3YDnd-O9BhVrLr4ZeFoKr0KnPIBye8gLuaAWFpM_ID7ONEaCgYKAeMSARISFQF4udJhu2W-jhfRQRNHJd7RerJX2g0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681612922;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}s:4:\"lock\";s:1:\"0\";}}', 'no'),
(500, 'wpvivid_need_review', 'not', 'no'),
(501, 'cron_backup_count', 'a:0:{}', 'no'),
(502, 'wpvivid_review_msg', 'a:0:{}', 'no'),
(524, 'wpvivid_backup_success_count', '4', 'no'),
(525, 'wpvivid_backup_reports', 'a:4:{s:21:\"wpvivid-641bb061e8431\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-641bb061e8431\";s:11:\"backup_time\";i:1679536226;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-642cc2d46b473\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-642cc2d46b473\";s:11:\"backup_time\";i:1680655060;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-643b606bc712c\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-643b606bc712c\";s:11:\"backup_time\";i:1681612908;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-643b6b7703696\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-643b6b7703696\";s:11:\"backup_time\";i:1681615735;s:6:\"status\";s:9:\"Succeeded\";}}', 'yes'),
(703, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1682102453', 'no'),
(704, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(707, '_site_transient_timeout_browser_c3fcd9e52fd775c43c9553a961bfc52c', '1682102666', 'no'),
(708, '_site_transient_browser_c3fcd9e52fd775c43c9553a961bfc52c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"111.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(735, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1681608566;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(736, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681608567;s:7:\"checked\";a:4:{s:12:\"erikatecidos\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2021-04-19 14:40:37\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(737, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681608567;s:8:\"response\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.2\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.5\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/wpvivid-backuprestore\";s:4:\"slug\";s:21:\"wpvivid-backuprestore\";s:6:\"plugin\";s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";s:11:\"new_version\";s:6:\"0.9.86\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/wpvivid-backuprestore/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/wpvivid-backuprestore.0.9.86.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wpvivid-backuprestore/assets/icon-256x256.png?rev=2899202\";s:2:\"1x\";s:74:\"https://ps.w.org/wpvivid-backuprestore/assets/icon-128x128.png?rev=2899202\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/wpvivid-backuprestore/assets/banner-1544x500.png?rev=2899202\";s:2:\"1x\";s:76:\"https://ps.w.org/wpvivid-backuprestore/assets/banner-772x250.png?rev=2899202\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.3\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.13.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";s:6:\"0.9.84\";}}', 'no'),
(746, '_site_transient_timeout_available_translations', '1681620742', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(747, '_site_transient_available_translations', 'a:130:{s:2:\"af\";a:8:{s:8:\"language\";s:2:\"af\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-05-13 15:59:22\";s:12:\"english_name\";s:9:\"Afrikaans\";s:11:\"native_name\";s:9:\"Afrikaans\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/af.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"af\";i:2;s:3:\"afr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Gaan voort\";}}s:2:\"am\";a:8:{s:8:\"language\";s:2:\"am\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-09-29 20:43:49\";s:12:\"english_name\";s:7:\"Amharic\";s:11:\"native_name\";s:12:\"አማርኛ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.0.3/am.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"am\";i:2;s:3:\"amh\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"ቀጥል\";}}s:3:\"arg\";a:8:{s:8:\"language\";s:3:\"arg\";s:7:\"version\";s:8:\"6.2-beta\";s:7:\"updated\";s:19:\"2022-09-22 16:46:56\";s:12:\"english_name\";s:9:\"Aragonese\";s:11:\"native_name\";s:9:\"Aragonés\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/6.2-beta/arg.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"an\";i:2;s:3:\"arg\";i:3;s:3:\"arg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continar\";}}s:2:\"ar\";a:8:{s:8:\"language\";s:2:\"ar\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-02 03:21:35\";s:12:\"english_name\";s:6:\"Arabic\";s:11:\"native_name\";s:14:\"العربية\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/ar.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:2;s:3:\"ara\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"متابعة\";}}s:3:\"ary\";a:8:{s:8:\"language\";s:3:\"ary\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-01-26 15:42:35\";s:12:\"english_name\";s:15:\"Moroccan Arabic\";s:11:\"native_name\";s:31:\"العربية المغربية\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/ary.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ar\";i:3;s:3:\"ary\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"المتابعة\";}}s:2:\"as\";a:8:{s:8:\"language\";s:2:\"as\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-11 22:28:09\";s:12:\"english_name\";s:8:\"Assamese\";s:11:\"native_name\";s:21:\"অসমীয়া\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/as.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"as\";i:2;s:3:\"asm\";i:3;s:3:\"asm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"az\";a:8:{s:8:\"language\";s:2:\"az\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-06 00:09:27\";s:12:\"english_name\";s:11:\"Azerbaijani\";s:11:\"native_name\";s:16:\"Azərbaycan dili\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/az.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:2;s:3:\"aze\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Davam\";}}s:3:\"azb\";a:8:{s:8:\"language\";s:3:\"azb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-12 20:34:31\";s:12:\"english_name\";s:17:\"South Azerbaijani\";s:11:\"native_name\";s:29:\"گؤنئی آذربایجان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/azb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"az\";i:3;s:3:\"azb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:3:\"bel\";a:8:{s:8:\"language\";s:3:\"bel\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-10-29 07:54:22\";s:12:\"english_name\";s:10:\"Belarusian\";s:11:\"native_name\";s:29:\"Беларуская мова\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.9.22/bel.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"be\";i:2;s:3:\"bel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Працягнуць\";}}s:5:\"bg_BG\";a:8:{s:8:\"language\";s:5:\"bg_BG\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-06 18:55:53\";s:12:\"english_name\";s:9:\"Bulgarian\";s:11:\"native_name\";s:18:\"Български\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/bg_BG.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bg\";i:2;s:3:\"bul\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Напред\";}}s:5:\"bn_BD\";a:8:{s:8:\"language\";s:5:\"bn_BD\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-10-31 08:48:37\";s:12:\"english_name\";s:20:\"Bengali (Bangladesh)\";s:11:\"native_name\";s:15:\"বাংলা\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/bn_BD.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"bn\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:23:\"এগিয়ে চল.\";}}s:2:\"bo\";a:8:{s:8:\"language\";s:2:\"bo\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-10-30 03:24:38\";s:12:\"english_name\";s:7:\"Tibetan\";s:11:\"native_name\";s:21:\"བོད་ཡིག\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/bo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bo\";i:2;s:3:\"tib\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:33:\"མུ་མཐུད་དུ།\";}}s:5:\"bs_BA\";a:8:{s:8:\"language\";s:5:\"bs_BA\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 20:45:53\";s:12:\"english_name\";s:7:\"Bosnian\";s:11:\"native_name\";s:8:\"Bosanski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/bs_BA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"bs\";i:2;s:3:\"bos\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:2:\"ca\";a:8:{s:8:\"language\";s:2:\"ca\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 16:46:59\";s:12:\"english_name\";s:7:\"Catalan\";s:11:\"native_name\";s:7:\"Català\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/ca.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ca\";i:2;s:3:\"cat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:3:\"ceb\";a:8:{s:8:\"language\";s:3:\"ceb\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-02 17:25:51\";s:12:\"english_name\";s:7:\"Cebuano\";s:11:\"native_name\";s:7:\"Cebuano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/ceb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"ceb\";i:3;s:3:\"ceb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Padayun\";}}s:5:\"cs_CZ\";a:8:{s:8:\"language\";s:5:\"cs_CZ\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-09 07:39:36\";s:12:\"english_name\";s:5:\"Czech\";s:11:\"native_name\";s:9:\"Čeština\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/cs_CZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cs\";i:2;s:3:\"ces\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Pokračovat\";}}s:2:\"cy\";a:8:{s:8:\"language\";s:2:\"cy\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 09:00:46\";s:12:\"english_name\";s:5:\"Welsh\";s:11:\"native_name\";s:7:\"Cymraeg\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/cy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"cy\";i:2;s:3:\"cym\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Parhau\";}}s:5:\"da_DK\";a:8:{s:8:\"language\";s:5:\"da_DK\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-12 09:03:38\";s:12:\"english_name\";s:6:\"Danish\";s:11:\"native_name\";s:5:\"Dansk\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/da_DK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"da\";i:2;s:3:\"dan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsæt\";}}s:12:\"de_DE_formal\";a:8:{s:8:\"language\";s:12:\"de_DE_formal\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-10 00:05:59\";s:12:\"english_name\";s:15:\"German (Formal)\";s:11:\"native_name\";s:13:\"Deutsch (Sie)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2/de_DE_formal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_AT\";a:8:{s:8:\"language\";s:5:\"de_AT\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 21:14:35\";s:12:\"english_name\";s:16:\"German (Austria)\";s:11:\"native_name\";s:21:\"Deutsch (Österreich)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/de_AT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_CH\";a:8:{s:8:\"language\";s:5:\"de_CH\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 07:37:41\";s:12:\"english_name\";s:20:\"German (Switzerland)\";s:11:\"native_name\";s:17:\"Deutsch (Schweiz)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/de_CH.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:14:\"de_CH_informal\";a:8:{s:8:\"language\";s:14:\"de_CH_informal\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 07:33:50\";s:12:\"english_name\";s:30:\"German (Switzerland, Informal)\";s:11:\"native_name\";s:21:\"Deutsch (Schweiz, Du)\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/translation/core/6.2/de_CH_informal.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:5:\"de_DE\";a:8:{s:8:\"language\";s:5:\"de_DE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-02 19:47:35\";s:12:\"english_name\";s:6:\"German\";s:11:\"native_name\";s:7:\"Deutsch\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/de_DE.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"de\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Weiter\";}}s:3:\"dsb\";a:8:{s:8:\"language\";s:3:\"dsb\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-07-16 12:13:09\";s:12:\"english_name\";s:13:\"Lower Sorbian\";s:11:\"native_name\";s:16:\"Dolnoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/dsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"dsb\";i:3;s:3:\"dsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Dalej\";}}s:3:\"dzo\";a:8:{s:8:\"language\";s:3:\"dzo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-06-29 08:59:03\";s:12:\"english_name\";s:8:\"Dzongkha\";s:11:\"native_name\";s:18:\"རྫོང་ཁ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/dzo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"dz\";i:2;s:3:\"dzo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"el\";a:8:{s:8:\"language\";s:2:\"el\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-04 18:47:00\";s:12:\"english_name\";s:5:\"Greek\";s:11:\"native_name\";s:16:\"Ελληνικά\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/el.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"el\";i:2;s:3:\"ell\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Συνέχεια\";}}s:5:\"en_GB\";a:8:{s:8:\"language\";s:5:\"en_GB\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-14 16:14:11\";s:12:\"english_name\";s:12:\"English (UK)\";s:11:\"native_name\";s:12:\"English (UK)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/en_GB.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_ZA\";a:8:{s:8:\"language\";s:5:\"en_ZA\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2021-12-24 12:36:39\";s:12:\"english_name\";s:22:\"English (South Africa)\";s:11:\"native_name\";s:22:\"English (South Africa)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_ZA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_CA\";a:8:{s:8:\"language\";s:5:\"en_CA\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-07 21:00:17\";s:12:\"english_name\";s:16:\"English (Canada)\";s:11:\"native_name\";s:16:\"English (Canada)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/en_CA.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_AU\";a:8:{s:8:\"language\";s:5:\"en_AU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-15 01:41:53\";s:12:\"english_name\";s:19:\"English (Australia)\";s:11:\"native_name\";s:19:\"English (Australia)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/en_AU.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"en_NZ\";a:8:{s:8:\"language\";s:5:\"en_NZ\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-04-01 22:35:34\";s:12:\"english_name\";s:21:\"English (New Zealand)\";s:11:\"native_name\";s:21:\"English (New Zealand)\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/en_NZ.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"en\";i:2;s:3:\"eng\";i:3;s:3:\"eng\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"eo\";a:8:{s:8:\"language\";s:2:\"eo\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-31 12:55:54\";s:12:\"english_name\";s:9:\"Esperanto\";s:11:\"native_name\";s:9:\"Esperanto\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/eo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eo\";i:2;s:3:\"epo\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Daŭrigi\";}}s:5:\"es_CR\";a:8:{s:8:\"language\";s:5:\"es_CR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-15 19:52:49\";s:12:\"english_name\";s:20:\"Spanish (Costa Rica)\";s:11:\"native_name\";s:22:\"Español de Costa Rica\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_CR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_VE\";a:8:{s:8:\"language\";s:5:\"es_VE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:19:\"Spanish (Venezuela)\";s:11:\"native_name\";s:21:\"Español de Venezuela\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_VE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CO\";a:8:{s:8:\"language\";s:5:\"es_CO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-14 22:16:37\";s:12:\"english_name\";s:18:\"Spanish (Colombia)\";s:11:\"native_name\";s:20:\"Español de Colombia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_CO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_EC\";a:8:{s:8:\"language\";s:5:\"es_EC\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:17:\"Spanish (Ecuador)\";s:11:\"native_name\";s:19:\"Español de Ecuador\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_EC.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_DO\";a:8:{s:8:\"language\";s:5:\"es_DO\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-08 14:32:50\";s:12:\"english_name\";s:28:\"Spanish (Dominican Republic)\";s:11:\"native_name\";s:33:\"Español de República Dominicana\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_DO.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PE\";a:8:{s:8:\"language\";s:5:\"es_PE\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-10-04 20:53:18\";s:12:\"english_name\";s:14:\"Spanish (Peru)\";s:11:\"native_name\";s:17:\"Español de Perú\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/es_PE.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_UY\";a:8:{s:8:\"language\";s:5:\"es_UY\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-31 18:33:26\";s:12:\"english_name\";s:17:\"Spanish (Uruguay)\";s:11:\"native_name\";s:19:\"Español de Uruguay\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_UY.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_CL\";a:8:{s:8:\"language\";s:5:\"es_CL\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-06-14 16:02:22\";s:12:\"english_name\";s:15:\"Spanish (Chile)\";s:11:\"native_name\";s:17:\"Español de Chile\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/es_CL.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_PR\";a:8:{s:8:\"language\";s:5:\"es_PR\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-29 15:36:59\";s:12:\"english_name\";s:21:\"Spanish (Puerto Rico)\";s:11:\"native_name\";s:23:\"Español de Puerto Rico\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/es_PR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_GT\";a:8:{s:8:\"language\";s:5:\"es_GT\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-03-02 06:35:01\";s:12:\"english_name\";s:19:\"Spanish (Guatemala)\";s:11:\"native_name\";s:21:\"Español de Guatemala\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.2.17/es_GT.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_MX\";a:8:{s:8:\"language\";s:5:\"es_MX\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-11 17:42:00\";s:12:\"english_name\";s:16:\"Spanish (Mexico)\";s:11:\"native_name\";s:19:\"Español de México\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_MX.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_AR\";a:8:{s:8:\"language\";s:5:\"es_AR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-04 07:22:04\";s:12:\"english_name\";s:19:\"Spanish (Argentina)\";s:11:\"native_name\";s:21:\"Español de Argentina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_AR.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"es_ES\";a:8:{s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-06 14:12:40\";s:12:\"english_name\";s:15:\"Spanish (Spain)\";s:11:\"native_name\";s:8:\"Español\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/es_ES.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"es\";i:2;s:3:\"spa\";i:3;s:3:\"spa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"et\";a:8:{s:8:\"language\";s:2:\"et\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2020-08-12 08:38:59\";s:12:\"english_name\";s:8:\"Estonian\";s:11:\"native_name\";s:5:\"Eesti\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8-beta/et.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"et\";i:2;s:3:\"est\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Jätka\";}}s:2:\"eu\";a:8:{s:8:\"language\";s:2:\"eu\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-21 17:46:00\";s:12:\"english_name\";s:6:\"Basque\";s:11:\"native_name\";s:7:\"Euskara\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/eu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"eu\";i:2;s:3:\"eus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Jarraitu\";}}s:5:\"fa_IR\";a:8:{s:8:\"language\";s:5:\"fa_IR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-05 06:53:02\";s:12:\"english_name\";s:7:\"Persian\";s:11:\"native_name\";s:10:\"فارسی\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fa_IR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"fa_AF\";a:8:{s:8:\"language\";s:5:\"fa_AF\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-13 11:28:33\";s:12:\"english_name\";s:21:\"Persian (Afghanistan)\";s:11:\"native_name\";s:31:\"(فارسی (افغانستان\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fa_AF.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fa\";i:2;s:3:\"fas\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:2:\"fi\";a:8:{s:8:\"language\";s:2:\"fi\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 07:54:36\";s:12:\"english_name\";s:7:\"Finnish\";s:11:\"native_name\";s:5:\"Suomi\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/fi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fi\";i:2;s:3:\"fin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Jatka\";}}s:5:\"fr_CA\";a:8:{s:8:\"language\";s:5:\"fr_CA\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-21 13:20:47\";s:12:\"english_name\";s:15:\"French (Canada)\";s:11:\"native_name\";s:19:\"Français du Canada\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fr_CA.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_FR\";a:8:{s:8:\"language\";s:5:\"fr_FR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-01 09:53:57\";s:12:\"english_name\";s:15:\"French (France)\";s:11:\"native_name\";s:9:\"Français\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/fr_FR.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"fr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:5:\"fr_BE\";a:8:{s:8:\"language\";s:5:\"fr_BE\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-22 13:54:46\";s:12:\"english_name\";s:16:\"French (Belgium)\";s:11:\"native_name\";s:21:\"Français de Belgique\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/fr_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fr\";i:2;s:3:\"fra\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuer\";}}s:3:\"fur\";a:8:{s:8:\"language\";s:3:\"fur\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2018-01-29 17:32:35\";s:12:\"english_name\";s:8:\"Friulian\";s:11:\"native_name\";s:8:\"Friulian\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/fur.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"fur\";i:3;s:3:\"fur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"fy\";a:8:{s:8:\"language\";s:2:\"fy\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-12-25 12:53:23\";s:12:\"english_name\";s:7:\"Frisian\";s:11:\"native_name\";s:5:\"Frysk\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/fy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"fy\";i:2;s:3:\"fry\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Trochgean\";}}s:2:\"gd\";a:8:{s:8:\"language\";s:2:\"gd\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-08-23 17:41:37\";s:12:\"english_name\";s:15:\"Scottish Gaelic\";s:11:\"native_name\";s:9:\"Gàidhlig\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/gd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"gd\";i:2;s:3:\"gla\";i:3;s:3:\"gla\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"Lean air adhart\";}}s:5:\"gl_ES\";a:8:{s:8:\"language\";s:5:\"gl_ES\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-12 09:22:08\";s:12:\"english_name\";s:8:\"Galician\";s:11:\"native_name\";s:6:\"Galego\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/gl_ES.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gl\";i:2;s:3:\"glg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:2:\"gu\";a:8:{s:8:\"language\";s:2:\"gu\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-09-14 12:33:48\";s:12:\"english_name\";s:8:\"Gujarati\";s:11:\"native_name\";s:21:\"ગુજરાતી\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/gu.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"gu\";i:2;s:3:\"guj\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:31:\"ચાલુ રાખવું\";}}s:3:\"haz\";a:8:{s:8:\"language\";s:3:\"haz\";s:7:\"version\";s:6:\"4.4.29\";s:7:\"updated\";s:19:\"2015-12-05 00:59:09\";s:12:\"english_name\";s:8:\"Hazaragi\";s:11:\"native_name\";s:15:\"هزاره گی\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.4.29/haz.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"haz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"ادامه\";}}s:5:\"he_IL\";a:8:{s:8:\"language\";s:5:\"he_IL\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-14 21:14:16\";s:12:\"english_name\";s:6:\"Hebrew\";s:11:\"native_name\";s:16:\"עִבְרִית\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/he_IL.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"he\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"המשך\";}}s:5:\"hi_IN\";a:8:{s:8:\"language\";s:5:\"hi_IN\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-11-06 12:34:38\";s:12:\"english_name\";s:5:\"Hindi\";s:11:\"native_name\";s:18:\"हिन्दी\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.4.12/hi_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hi\";i:2;s:3:\"hin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"जारी रखें\";}}s:2:\"hr\";a:8:{s:8:\"language\";s:2:\"hr\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 07:56:18\";s:12:\"english_name\";s:8:\"Croatian\";s:11:\"native_name\";s:8:\"Hrvatski\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/hr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hr\";i:2;s:3:\"hrv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Nastavi\";}}s:3:\"hsb\";a:8:{s:8:\"language\";s:3:\"hsb\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 17:37:32\";s:12:\"english_name\";s:13:\"Upper Sorbian\";s:11:\"native_name\";s:17:\"Hornjoserbšćina\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/hsb.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"hsb\";i:3;s:3:\"hsb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:4:\"Dale\";}}s:5:\"hu_HU\";a:8:{s:8:\"language\";s:5:\"hu_HU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-14 08:39:31\";s:12:\"english_name\";s:9:\"Hungarian\";s:11:\"native_name\";s:6:\"Magyar\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/hu_HU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hu\";i:2;s:3:\"hun\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Folytatás\";}}s:2:\"hy\";a:8:{s:8:\"language\";s:2:\"hy\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-12-03 16:21:10\";s:12:\"english_name\";s:8:\"Armenian\";s:11:\"native_name\";s:14:\"Հայերեն\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/hy.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"hy\";i:2;s:3:\"hye\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Շարունակել\";}}s:5:\"id_ID\";a:8:{s:8:\"language\";s:5:\"id_ID\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-08 23:10:42\";s:12:\"english_name\";s:10:\"Indonesian\";s:11:\"native_name\";s:16:\"Bahasa Indonesia\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/id_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"id\";i:2;s:3:\"ind\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Lanjutkan\";}}s:5:\"is_IS\";a:8:{s:8:\"language\";s:5:\"is_IS\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-12-11 10:40:02\";s:12:\"english_name\";s:9:\"Icelandic\";s:11:\"native_name\";s:9:\"Íslenska\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/is_IS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"is\";i:2;s:3:\"isl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Áfram\";}}s:5:\"it_IT\";a:8:{s:8:\"language\";s:5:\"it_IT\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-14 13:16:57\";s:12:\"english_name\";s:7:\"Italian\";s:11:\"native_name\";s:8:\"Italiano\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/it_IT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"it\";i:2;s:3:\"ita\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continua\";}}s:2:\"ja\";a:8:{s:8:\"language\";s:2:\"ja\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 13:21:15\";s:12:\"english_name\";s:8:\"Japanese\";s:11:\"native_name\";s:9:\"日本語\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/ja.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"ja\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"次へ\";}}s:5:\"jv_ID\";a:8:{s:8:\"language\";s:5:\"jv_ID\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-02-16 23:58:56\";s:12:\"english_name\";s:8:\"Javanese\";s:11:\"native_name\";s:9:\"Basa Jawa\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/jv_ID.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"jv\";i:2;s:3:\"jav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Nerusaké\";}}s:5:\"ka_GE\";a:8:{s:8:\"language\";s:5:\"ka_GE\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-24 08:01:09\";s:12:\"english_name\";s:8:\"Georgian\";s:11:\"native_name\";s:21:\"ქართული\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/ka_GE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ka\";i:2;s:3:\"kat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"გაგრძელება\";}}s:3:\"kab\";a:8:{s:8:\"language\";s:3:\"kab\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-01-21 21:13:06\";s:12:\"english_name\";s:6:\"Kabyle\";s:11:\"native_name\";s:9:\"Taqbaylit\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/kab.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"kab\";i:3;s:3:\"kab\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Kemmel\";}}s:2:\"kk\";a:8:{s:8:\"language\";s:2:\"kk\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2018-07-10 11:35:44\";s:12:\"english_name\";s:6:\"Kazakh\";s:11:\"native_name\";s:19:\"Қазақ тілі\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/kk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kk\";i:2;s:3:\"kaz\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Жалғастыру\";}}s:2:\"km\";a:8:{s:8:\"language\";s:2:\"km\";s:7:\"version\";s:6:\"5.2.17\";s:7:\"updated\";s:19:\"2019-06-10 16:18:28\";s:12:\"english_name\";s:5:\"Khmer\";s:11:\"native_name\";s:27:\"ភាសាខ្មែរ\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.2.17/km.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"km\";i:2;s:3:\"khm\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"បន្ត\";}}s:2:\"kn\";a:8:{s:8:\"language\";s:2:\"kn\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-10-20 17:15:28\";s:12:\"english_name\";s:7:\"Kannada\";s:11:\"native_name\";s:15:\"ಕನ್ನಡ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/kn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"kn\";i:2;s:3:\"kan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"ಮುಂದುವರಿಸು\";}}s:5:\"ko_KR\";a:8:{s:8:\"language\";s:5:\"ko_KR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 09:50:37\";s:12:\"english_name\";s:6:\"Korean\";s:11:\"native_name\";s:9:\"한국어\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ko_KR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ko\";i:2;s:3:\"kor\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"계속\";}}s:3:\"ckb\";a:8:{s:8:\"language\";s:3:\"ckb\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-12 23:26:33\";s:12:\"english_name\";s:16:\"Kurdish (Sorani)\";s:11:\"native_name\";s:13:\"كوردی‎\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/ckb.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ku\";i:3;s:3:\"ckb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"به‌رده‌وام به‌\";}}s:2:\"lo\";a:8:{s:8:\"language\";s:2:\"lo\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 09:59:23\";s:12:\"english_name\";s:3:\"Lao\";s:11:\"native_name\";s:21:\"ພາສາລາວ\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/lo.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lo\";i:2;s:3:\"lao\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"ຕໍ່​ໄປ\";}}s:5:\"lt_LT\";a:8:{s:8:\"language\";s:5:\"lt_LT\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2022-11-24 03:51:58\";s:12:\"english_name\";s:10:\"Lithuanian\";s:11:\"native_name\";s:15:\"Lietuvių kalba\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.1.1/lt_LT.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lt\";i:2;s:3:\"lit\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Tęsti\";}}s:2:\"lv\";a:8:{s:8:\"language\";s:2:\"lv\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-02 00:14:51\";s:12:\"english_name\";s:7:\"Latvian\";s:11:\"native_name\";s:16:\"Latviešu valoda\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/lv.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"lv\";i:2;s:3:\"lav\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Turpināt\";}}s:5:\"mk_MK\";a:8:{s:8:\"language\";s:5:\"mk_MK\";s:7:\"version\";s:5:\"6.0.3\";s:7:\"updated\";s:19:\"2022-10-01 09:23:52\";s:12:\"english_name\";s:10:\"Macedonian\";s:11:\"native_name\";s:31:\"Македонски јазик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/6.0.3/mk_MK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mk\";i:2;s:3:\"mkd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:16:\"Продолжи\";}}s:5:\"ml_IN\";a:8:{s:8:\"language\";s:5:\"ml_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:43:32\";s:12:\"english_name\";s:9:\"Malayalam\";s:11:\"native_name\";s:18:\"മലയാളം\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ml_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ml\";i:2;s:3:\"mal\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"തുടരുക\";}}s:2:\"mn\";a:8:{s:8:\"language\";s:2:\"mn\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-09 01:41:47\";s:12:\"english_name\";s:9:\"Mongolian\";s:11:\"native_name\";s:12:\"Монгол\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/mn.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mn\";i:2;s:3:\"mon\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:2:\"mr\";a:8:{s:8:\"language\";s:2:\"mr\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2019-11-22 15:32:08\";s:12:\"english_name\";s:7:\"Marathi\";s:11:\"native_name\";s:15:\"मराठी\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.9.22/mr.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"mr\";i:2;s:3:\"mar\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"सुरु ठेवा\";}}s:5:\"ms_MY\";a:8:{s:8:\"language\";s:5:\"ms_MY\";s:7:\"version\";s:6:\"5.5.11\";s:7:\"updated\";s:19:\"2022-03-11 13:52:22\";s:12:\"english_name\";s:5:\"Malay\";s:11:\"native_name\";s:13:\"Bahasa Melayu\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/5.5.11/ms_MY.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ms\";i:2;s:3:\"msa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Teruskan\";}}s:5:\"my_MM\";a:8:{s:8:\"language\";s:5:\"my_MM\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2017-12-26 11:57:10\";s:12:\"english_name\";s:17:\"Myanmar (Burmese)\";s:11:\"native_name\";s:15:\"ဗမာစာ\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/my_MM.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"my\";i:2;s:3:\"mya\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:54:\"ဆက်လက်လုပ်ဆောင်ပါ။\";}}s:5:\"nb_NO\";a:8:{s:8:\"language\";s:5:\"nb_NO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 17:21:06\";s:12:\"english_name\";s:19:\"Norwegian (Bokmål)\";s:11:\"native_name\";s:13:\"Norsk bokmål\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/nb_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nb\";i:2;s:3:\"nob\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Fortsett\";}}s:5:\"ne_NP\";a:8:{s:8:\"language\";s:5:\"ne_NP\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-03 04:46:20\";s:12:\"english_name\";s:6:\"Nepali\";s:11:\"native_name\";s:18:\"नेपाली\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ne_NP.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ne\";i:2;s:3:\"nep\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:43:\"जारी राख्नुहोस्\";}}s:12:\"nl_NL_formal\";a:8:{s:8:\"language\";s:12:\"nl_NL_formal\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-02-22 21:20:14\";s:12:\"english_name\";s:14:\"Dutch (Formal)\";s:11:\"native_name\";s:20:\"Nederlands (Formeel)\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/translation/core/6.2/nl_NL_formal.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_NL\";a:8:{s:8:\"language\";s:5:\"nl_NL\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 10:02:03\";s:12:\"english_name\";s:5:\"Dutch\";s:11:\"native_name\";s:10:\"Nederlands\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/nl_NL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nl_BE\";a:8:{s:8:\"language\";s:5:\"nl_BE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-13 12:17:01\";s:12:\"english_name\";s:15:\"Dutch (Belgium)\";s:11:\"native_name\";s:20:\"Nederlands (België)\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/nl_BE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nl\";i:2;s:3:\"nld\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Doorgaan\";}}s:5:\"nn_NO\";a:8:{s:8:\"language\";s:5:\"nn_NO\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-03-18 10:59:16\";s:12:\"english_name\";s:19:\"Norwegian (Nynorsk)\";s:11:\"native_name\";s:13:\"Norsk nynorsk\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/nn_NO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"nn\";i:2;s:3:\"nno\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Hald fram\";}}s:3:\"oci\";a:8:{s:8:\"language\";s:3:\"oci\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-08-25 10:03:08\";s:12:\"english_name\";s:7:\"Occitan\";s:11:\"native_name\";s:7:\"Occitan\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/4.8.21/oci.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"oc\";i:2;s:3:\"oci\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Contunhar\";}}s:5:\"pa_IN\";a:8:{s:8:\"language\";s:5:\"pa_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-16 05:19:43\";s:12:\"english_name\";s:15:\"Panjabi (India)\";s:11:\"native_name\";s:18:\"ਪੰਜਾਬੀ\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/pa_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pa\";i:2;s:3:\"pan\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:25:\"ਜਾਰੀ ਰੱਖੋ\";}}s:5:\"pl_PL\";a:8:{s:8:\"language\";s:5:\"pl_PL\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-31 08:04:21\";s:12:\"english_name\";s:6:\"Polish\";s:11:\"native_name\";s:6:\"Polski\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pl_PL.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pl\";i:2;s:3:\"pol\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Kontynuuj\";}}s:2:\"ps\";a:8:{s:8:\"language\";s:2:\"ps\";s:7:\"version\";s:6:\"4.3.30\";s:7:\"updated\";s:19:\"2015-12-02 21:41:29\";s:12:\"english_name\";s:6:\"Pashto\";s:11:\"native_name\";s:8:\"پښتو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.3.30/ps.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ps\";i:2;s:3:\"pus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"دوام ورکړه\";}}s:10:\"pt_PT_ao90\";a:8:{s:8:\"language\";s:10:\"pt_PT_ao90\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-30 23:24:56\";s:12:\"english_name\";s:27:\"Portuguese (Portugal, AO90)\";s:11:\"native_name\";s:17:\"Português (AO90)\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/6.2/pt_PT_ao90.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_PT\";a:8:{s:8:\"language\";s:5:\"pt_PT\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-31 02:01:44\";s:12:\"english_name\";s:21:\"Portuguese (Portugal)\";s:11:\"native_name\";s:10:\"Português\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pt_PT.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_BR\";a:8:{s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-29 21:22:43\";s:12:\"english_name\";s:19:\"Portuguese (Brazil)\";s:11:\"native_name\";s:20:\"Português do Brasil\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pt_BR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"pt\";i:2;s:3:\"por\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:5:\"pt_AO\";a:8:{s:8:\"language\";s:5:\"pt_AO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-10-01 12:16:29\";s:12:\"english_name\";s:19:\"Portuguese (Angola)\";s:11:\"native_name\";s:20:\"Português de Angola\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/pt_AO.zip\";s:3:\"iso\";a:1:{i:1;s:2:\"pt\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuar\";}}s:3:\"rhg\";a:8:{s:8:\"language\";s:3:\"rhg\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-16 13:03:18\";s:12:\"english_name\";s:8:\"Rohingya\";s:11:\"native_name\";s:8:\"Ruáinga\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/rhg.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"rhg\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ro_RO\";a:8:{s:8:\"language\";s:5:\"ro_RO\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-04 18:50:46\";s:12:\"english_name\";s:8:\"Romanian\";s:11:\"native_name\";s:8:\"Română\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ro_RO.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ro\";i:2;s:3:\"ron\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Continuă\";}}s:5:\"ru_RU\";a:8:{s:8:\"language\";s:5:\"ru_RU\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 17:03:54\";s:12:\"english_name\";s:7:\"Russian\";s:11:\"native_name\";s:14:\"Русский\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/ru_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ru\";i:2;s:3:\"rus\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продолжить\";}}s:3:\"sah\";a:8:{s:8:\"language\";s:3:\"sah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-21 02:06:41\";s:12:\"english_name\";s:5:\"Sakha\";s:11:\"native_name\";s:14:\"Сахалыы\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/sah.zip\";s:3:\"iso\";a:2:{i:2;s:3:\"sah\";i:3;s:3:\"sah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Салҕаа\";}}s:3:\"snd\";a:8:{s:8:\"language\";s:3:\"snd\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-07-07 01:53:37\";s:12:\"english_name\";s:6:\"Sindhi\";s:11:\"native_name\";s:8:\"سنڌي\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/translation/core/5.4.12/snd.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"sd\";i:2;s:3:\"snd\";i:3;s:3:\"snd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"اڳتي هلو\";}}s:5:\"si_LK\";a:8:{s:8:\"language\";s:5:\"si_LK\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-12 06:00:52\";s:12:\"english_name\";s:7:\"Sinhala\";s:11:\"native_name\";s:15:\"සිංහල\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/si_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"si\";i:2;s:3:\"sin\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:44:\"දිගටම කරගෙන යන්න\";}}s:5:\"sk_SK\";a:8:{s:8:\"language\";s:5:\"sk_SK\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-09 10:02:55\";s:12:\"english_name\";s:6:\"Slovak\";s:11:\"native_name\";s:11:\"Slovenčina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/sk_SK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sk\";i:2;s:3:\"slk\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Pokračovať\";}}s:3:\"skr\";a:8:{s:8:\"language\";s:3:\"skr\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-03 08:30:58\";s:12:\"english_name\";s:7:\"Saraiki\";s:11:\"native_name\";s:14:\"سرائیکی\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/translation/core/6.2/skr.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"skr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"جاری رکھو\";}}s:5:\"sl_SI\";a:8:{s:8:\"language\";s:5:\"sl_SI\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-11-11 12:48:55\";s:12:\"english_name\";s:9:\"Slovenian\";s:11:\"native_name\";s:13:\"Slovenščina\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/sl_SI.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sl\";i:2;s:3:\"slv\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Nadaljuj\";}}s:2:\"sq\";a:8:{s:8:\"language\";s:2:\"sq\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-22 14:36:21\";s:12:\"english_name\";s:8:\"Albanian\";s:11:\"native_name\";s:5:\"Shqip\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/sq.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sq\";i:2;s:3:\"sqi\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"Vazhdo\";}}s:5:\"sr_RS\";a:8:{s:8:\"language\";s:5:\"sr_RS\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2021-08-01 21:21:06\";s:12:\"english_name\";s:7:\"Serbian\";s:11:\"native_name\";s:23:\"Српски језик\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/5.8.6/sr_RS.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sr\";i:2;s:3:\"srp\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:14:\"Настави\";}}s:5:\"sv_SE\";a:8:{s:8:\"language\";s:5:\"sv_SE\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-04-06 23:17:51\";s:12:\"english_name\";s:7:\"Swedish\";s:11:\"native_name\";s:7:\"Svenska\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/sv_SE.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sv\";i:2;s:3:\"swe\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:9:\"Fortsätt\";}}s:2:\"sw\";a:8:{s:8:\"language\";s:2:\"sw\";s:7:\"version\";s:6:\"5.3.14\";s:7:\"updated\";s:19:\"2019-10-13 15:35:35\";s:12:\"english_name\";s:7:\"Swahili\";s:11:\"native_name\";s:9:\"Kiswahili\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.3.14/sw.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"sw\";i:2;s:3:\"swa\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:7:\"Endelea\";}}s:3:\"szl\";a:8:{s:8:\"language\";s:3:\"szl\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-09-24 19:58:14\";s:12:\"english_name\";s:8:\"Silesian\";s:11:\"native_name\";s:17:\"Ślōnskŏ gŏdka\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/szl.zip\";s:3:\"iso\";a:1:{i:3;s:3:\"szl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:13:\"Kōntynuować\";}}s:5:\"ta_IN\";a:8:{s:8:\"language\";s:5:\"ta_IN\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-27 03:22:47\";s:12:\"english_name\";s:5:\"Tamil\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/ta_IN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:24:\"தொடரவும்\";}}s:5:\"ta_LK\";a:8:{s:8:\"language\";s:5:\"ta_LK\";s:7:\"version\";s:6:\"4.2.34\";s:7:\"updated\";s:19:\"2015-12-03 01:07:44\";s:12:\"english_name\";s:17:\"Tamil (Sri Lanka)\";s:11:\"native_name\";s:15:\"தமிழ்\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.2.34/ta_LK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ta\";i:2;s:3:\"tam\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:18:\"தொடர்க\";}}s:2:\"te\";a:8:{s:8:\"language\";s:2:\"te\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2017-01-26 15:47:39\";s:12:\"english_name\";s:6:\"Telugu\";s:11:\"native_name\";s:18:\"తెలుగు\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/4.7.2/te.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"te\";i:2;s:3:\"tel\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:30:\"కొనసాగించు\";}}s:2:\"th\";a:8:{s:8:\"language\";s:2:\"th\";s:7:\"version\";s:5:\"5.8.6\";s:7:\"updated\";s:19:\"2022-06-08 04:30:30\";s:12:\"english_name\";s:4:\"Thai\";s:11:\"native_name\";s:9:\"ไทย\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/5.8.6/th.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"th\";i:2;s:3:\"tha\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:15:\"ต่อไป\";}}s:2:\"tl\";a:8:{s:8:\"language\";s:2:\"tl\";s:7:\"version\";s:6:\"4.8.21\";s:7:\"updated\";s:19:\"2017-09-30 09:04:29\";s:12:\"english_name\";s:7:\"Tagalog\";s:11:\"native_name\";s:7:\"Tagalog\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.8.21/tl.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tl\";i:2;s:3:\"tgl\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:10:\"Magpatuloy\";}}s:5:\"tr_TR\";a:8:{s:8:\"language\";s:5:\"tr_TR\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 20:25:07\";s:12:\"english_name\";s:7:\"Turkish\";s:11:\"native_name\";s:8:\"Türkçe\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/tr_TR.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tr\";i:2;s:3:\"tur\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:5:\"Devam\";}}s:5:\"tt_RU\";a:8:{s:8:\"language\";s:5:\"tt_RU\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-11-20 20:20:50\";s:12:\"english_name\";s:5:\"Tatar\";s:11:\"native_name\";s:19:\"Татар теле\";s:7:\"package\";s:64:\"https://downloads.wordpress.org/translation/core/4.7.2/tt_RU.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"tt\";i:2;s:3:\"tat\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:17:\"дәвам итү\";}}s:3:\"tah\";a:8:{s:8:\"language\";s:3:\"tah\";s:7:\"version\";s:5:\"4.7.2\";s:7:\"updated\";s:19:\"2016-03-06 18:39:39\";s:12:\"english_name\";s:8:\"Tahitian\";s:11:\"native_name\";s:10:\"Reo Tahiti\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/4.7.2/tah.zip\";s:3:\"iso\";a:3:{i:1;s:2:\"ty\";i:2;s:3:\"tah\";i:3;s:3:\"tah\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:8:\"Continue\";}}s:5:\"ug_CN\";a:8:{s:8:\"language\";s:5:\"ug_CN\";s:7:\"version\";s:6:\"4.9.22\";s:7:\"updated\";s:19:\"2021-07-03 18:41:33\";s:12:\"english_name\";s:6:\"Uighur\";s:11:\"native_name\";s:16:\"ئۇيغۇرچە\";s:7:\"package\";s:65:\"https://downloads.wordpress.org/translation/core/4.9.22/ug_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ug\";i:2;s:3:\"uig\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:26:\"داۋاملاشتۇرۇش\";}}s:2:\"uk\";a:8:{s:8:\"language\";s:2:\"uk\";s:7:\"version\";s:5:\"6.1.1\";s:7:\"updated\";s:19:\"2023-03-04 10:46:30\";s:12:\"english_name\";s:9:\"Ukrainian\";s:11:\"native_name\";s:20:\"Українська\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/translation/core/6.1.1/uk.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uk\";i:2;s:3:\"ukr\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:20:\"Продовжити\";}}s:2:\"ur\";a:8:{s:8:\"language\";s:2:\"ur\";s:7:\"version\";s:6:\"5.4.12\";s:7:\"updated\";s:19:\"2020-04-09 11:17:33\";s:12:\"english_name\";s:4:\"Urdu\";s:11:\"native_name\";s:8:\"اردو\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/5.4.12/ur.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"ur\";i:2;s:3:\"urd\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:19:\"جاری رکھیں\";}}s:5:\"uz_UZ\";a:8:{s:8:\"language\";s:5:\"uz_UZ\";s:7:\"version\";s:8:\"5.8-beta\";s:7:\"updated\";s:19:\"2021-02-28 12:02:22\";s:12:\"english_name\";s:5:\"Uzbek\";s:11:\"native_name\";s:11:\"O‘zbekcha\";s:7:\"package\";s:67:\"https://downloads.wordpress.org/translation/core/5.8-beta/uz_UZ.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"uz\";i:2;s:3:\"uzb\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:11:\"Davom etish\";}}s:2:\"vi\";a:8:{s:8:\"language\";s:2:\"vi\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-10 01:15:33\";s:12:\"english_name\";s:10:\"Vietnamese\";s:11:\"native_name\";s:14:\"Tiếng Việt\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/translation/core/6.2/vi.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"vi\";i:2;s:3:\"vie\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:12:\"Tiếp tục\";}}s:5:\"zh_CN\";a:8:{s:8:\"language\";s:5:\"zh_CN\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-26 03:34:37\";s:12:\"english_name\";s:15:\"Chinese (China)\";s:11:\"native_name\";s:12:\"简体中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/zh_CN.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"继续\";}}s:5:\"zh_HK\";a:8:{s:8:\"language\";s:5:\"zh_HK\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2022-07-15 15:25:03\";s:12:\"english_name\";s:19:\"Chinese (Hong Kong)\";s:11:\"native_name\";s:12:\"香港中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/zh_HK.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}s:5:\"zh_TW\";a:8:{s:8:\"language\";s:5:\"zh_TW\";s:7:\"version\";s:3:\"6.2\";s:7:\"updated\";s:19:\"2023-03-28 17:14:41\";s:12:\"english_name\";s:16:\"Chinese (Taiwan)\";s:11:\"native_name\";s:12:\"繁體中文\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/translation/core/6.2/zh_TW.zip\";s:3:\"iso\";a:2:{i:1;s:2:\"zh\";i:2;s:3:\"zho\";}s:7:\"strings\";a:1:{s:8:\"continue\";s:6:\"繼續\";}}}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(757, 'wpvivid_task_list', 'a:0:{}', 'no'),
(758, '_site_transient_timeout_theme_roots', '1681617535', 'no'),
(759, '_site_transient_theme_roots', 'a:4:{s:12:\"erikatecidos\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_edit_lock', '1679361979:1'),
(4, 8, '_wp_attached_file', '2023/03/team-1.jpg'),
(5, 8, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2023/03/team-1.jpg\";s:8:\"filesize\";i:40201;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12009;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4493;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(6, 9, '_wp_attached_file', '2023/03/team-2.jpg'),
(7, 9, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2023/03/team-2.jpg\";s:8:\"filesize\";i:49059;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-2-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12803;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4540;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8, 10, '_wp_attached_file', '2023/03/team-3.jpg'),
(9, 10, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2023/03/team-3.jpg\";s:8:\"filesize\";i:36680;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4543;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10, 11, '_wp_attached_file', '2023/03/team-4.jpg'),
(11, 11, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2023/03/team-4.jpg\";s:8:\"filesize\";i:27423;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-4-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10549;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4132;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12, 5, '_wp_trash_meta_status', 'publish'),
(13, 5, '_wp_trash_meta_time', '1679363989'),
(14, 5, '_wp_desired_post_slug', 'home'),
(15, 2, '_wp_trash_meta_status', 'publish'),
(16, 2, '_wp_trash_meta_time', '1679363996'),
(17, 2, '_wp_desired_post_slug', 'pagina-exemplo'),
(18, 1, '_wp_trash_meta_status', 'publish'),
(19, 1, '_wp_trash_meta_time', '1679399929'),
(20, 1, '_wp_desired_post_slug', 'ola-mundo'),
(21, 1, '_wp_trash_meta_comments_status', 'a:1:{i:1;s:1:\"1\";}'),
(22, 14, '_edit_lock', '1679400286:1'),
(24, 16, '_edit_lock', '1679404351:1'),
(25, 17, '_wp_attached_file', '2023/03/client-1.png'),
(26, 17, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:173;s:4:\"file\";s:20:\"2023/03/client-1.png\";s:8:\"filesize\";i:5282;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(28, 16, '_thumbnail_id', '17'),
(30, 14, '_wp_trash_meta_status', 'draft'),
(31, 14, '_wp_trash_meta_time', '1679400668'),
(32, 14, '_wp_desired_post_slug', ''),
(33, 21, '_edit_lock', '1679404330:1'),
(34, 22, '_wp_attached_file', '2023/03/client-2.png'),
(35, 22, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:140;s:4:\"file\";s:20:\"2023/03/client-2.png\";s:8:\"filesize\";i:4582;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(37, 21, '_thumbnail_id', '22'),
(39, 24, '_edit_lock', '1679403720:1'),
(40, 25, '_wp_attached_file', '2023/03/client-3.png'),
(41, 25, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2023/03/client-3.png\";s:8:\"filesize\";i:4707;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 24, '_thumbnail_id', '25'),
(44, 27, '_edit_lock', '1679403713:1'),
(45, 28, '_wp_attached_file', '2023/03/client-4.png'),
(46, 28, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:219;s:4:\"file\";s:20:\"2023/03/client-4.png\";s:8:\"filesize\";i:9010;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(48, 27, '_thumbnail_id', '28'),
(49, 30, '_edit_lock', '1679416973:1'),
(50, 31, '_wp_attached_file', '2023/03/client-5.png'),
(51, 31, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:142;s:4:\"file\";s:20:\"2023/03/client-5.png\";s:8:\"filesize\";i:5123;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(53, 30, '_thumbnail_id', '31'),
(54, 33, '_edit_lock', '1679403698:1'),
(55, 34, '_wp_attached_file', '2023/03/client-6.png'),
(56, 34, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:125;s:4:\"file\";s:20:\"2023/03/client-6.png\";s:8:\"filesize\";i:3450;s:5:\"sizes\";a:0:{}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(58, 33, '_thumbnail_id', '34'),
(65, 33, '_edit_last', '1'),
(67, 30, '_edit_last', '1'),
(69, 27, '_edit_last', '1'),
(71, 24, '_edit_last', '1'),
(73, 21, '_edit_last', '1'),
(75, 16, '_edit_last', '1'),
(84, 16, '_wp_old_slug', '16-2'),
(85, 16, '_wp_trash_meta_status', 'publish'),
(86, 16, '_wp_trash_meta_time', '1679404498'),
(87, 16, '_wp_desired_post_slug', 'myob'),
(88, 42, '_edit_lock', '1679404547:1'),
(90, 42, '_thumbnail_id', '17'),
(91, 42, '_edit_last', '1'),
(93, 44, '_edit_lock', '1679405075:1'),
(94, 44, '_oembed_e5cf792359ec1f74708788c2afd66252', '<iframe title=\"TECIDO PARA CORTINA - COMO FAZER PARA ESCOLHER\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/Io534DnHJqE?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(95, 44, '_oembed_time_e5cf792359ec1f74708788c2afd66252', '1679405016'),
(96, 44, '_wp_trash_meta_status', 'draft'),
(97, 44, '_wp_trash_meta_time', '1679405133'),
(98, 44, '_wp_desired_post_slug', ''),
(99, 30, '_wp_trash_meta_status', 'publish'),
(100, 30, '_wp_trash_meta_time', '1679417122'),
(101, 30, '_wp_desired_post_slug', 'citrus'),
(102, 47, '_edit_lock', '1679417265:1'),
(104, 47, '_thumbnail_id', '31'),
(106, 51, '_edit_last', '1'),
(107, 51, '_edit_lock', '1679420474:1'),
(109, 56, '_edit_last', '1'),
(110, 56, '_edit_lock', '1679418677:1'),
(111, 56, '_wp_trash_meta_status', 'draft'),
(112, 56, '_wp_trash_meta_time', '1679418825'),
(113, 56, '_wp_desired_post_slug', ''),
(120, 51, '_wp_trash_meta_status', 'publish'),
(121, 51, '_wp_trash_meta_time', '1679420626'),
(122, 51, '_wp_desired_post_slug', 'group_6419e214dc3db'),
(123, 75, '_edit_last', '1'),
(124, 75, '_edit_lock', '1681609614:1'),
(125, 77, '_edit_lock', '1680055707:1'),
(126, 77, '_edit_last', '1'),
(127, 77, 'video', 'https://www.youtube.com/watch?v=Io534DnHJqE'),
(128, 77, '_video', 'field_6419ece1992b3'),
(129, 21, '_wp_trash_meta_status', 'publish'),
(130, 21, '_wp_trash_meta_time', '1679424223'),
(131, 21, '_wp_desired_post_slug', 'belimo'),
(132, 78, '_edit_last', '1'),
(133, 78, '_edit_lock', '1680056878:1'),
(134, 78, '_thumbnail_id', '22'),
(137, 81, '_edit_last', '1'),
(138, 81, '_edit_lock', '1680056662:1'),
(139, 82, '_wp_attached_file', '2023/03/client-7-e1679538444716.png'),
(140, 82, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:320;s:6:\"height\";i:136;s:4:\"file\";s:35:\"2023/03/client-7-e1679538444716.png\";s:8:\"filesize\";i:29338;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:35:\"client-7-e1679538444716-300x128.png\";s:5:\"width\";i:300;s:6:\"height\";i:128;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:22091;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:35:\"client-7-e1679538444716-150x136.png\";s:5:\"width\";i:150;s:6:\"height\";i:136;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:8783;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(141, 81, '_thumbnail_id', '86'),
(143, 84, '_wp_attached_file', '2023/03/client-7-1.png'),
(144, 84, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:158;s:4:\"file\";s:22:\"2023/03/client-7-1.png\";s:8:\"filesize\";i:29338;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"client-7-1-300x119.png\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15391;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"client-7-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14158;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(147, 85, '_wp_attached_file', '2023/03/client-7-2.png'),
(148, 85, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:158;s:4:\"file\";s:22:\"2023/03/client-7-2.png\";s:8:\"filesize\";i:29338;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"client-7-2-300x119.png\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15391;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"client-7-2-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14158;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(149, 82, '_wp_attachment_backup_sizes', 'a:3:{s:9:\"full-orig\";a:3:{s:5:\"width\";i:400;s:6:\"height\";i:158;s:4:\"file\";s:12:\"client-7.png\";}s:14:\"thumbnail-orig\";a:5:{s:4:\"file\";s:20:\"client-7-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:14158;}s:11:\"medium-orig\";a:5:{s:4:\"file\";s:20:\"client-7-300x119.png\";s:5:\"width\";i:300;s:6:\"height\";i:119;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:15391;}}'),
(152, 78, '_wp_old_slug', 'dsdds'),
(154, 86, '_wp_attached_file', '2023/03/client-8.png'),
(155, 86, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:515;s:6:\"height\";i:131;s:4:\"file\";s:20:\"2023/03/client-8.png\";s:8:\"filesize\";i:17361;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:19:\"client-8-300x76.png\";s:5:\"width\";i:300;s:6:\"height\";i:76;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:12129;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:20:\"client-8-150x131.png\";s:5:\"width\";i:150;s:6:\"height\";i:131;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6743;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(157, 77, '_oembed_04431c166b180f60b37a2c3530e26bd9', '<iframe title=\"TECIDO PARA CORTINA - COMO FAZER PARA ESCOLHER\" width=\"1396\" height=\"785\" src=\"https://www.youtube.com/embed/Io534DnHJqE?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(158, 77, '_oembed_time_04431c166b180f60b37a2c3530e26bd9', '1679540675'),
(159, 77, '_oembed_2d62e447364dade2908ec63c6538e710', '<iframe title=\"TECIDO PARA CORTINA - COMO FAZER PARA ESCOLHER\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/Io534DnHJqE?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(160, 77, '_oembed_time_2d62e447364dade2908ec63c6538e710', '1680055615'),
(161, 77, '_oembed_2ec367a577eec058f5e599e37f9ecb73', '<iframe title=\"APRENDA COMO DECORAR COM MESA DE CENTRO REDONDA\" width=\"1379\" height=\"776\" src=\"https://www.youtube.com/embed/5B0wdnw2PJQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(162, 77, '_oembed_time_2ec367a577eec058f5e599e37f9ecb73', '1679540793'),
(163, 77, '_oembed_2984c14fdacf5e5ab3beb2dfecb55818', '<iframe title=\"APRENDA COMO DECORAR COM MESA DE CENTRO REDONDA\" width=\"500\" height=\"281\" src=\"https://www.youtube.com/embed/5B0wdnw2PJQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(164, 77, '_oembed_time_2984c14fdacf5e5ab3beb2dfecb55818', '1680055616'),
(165, 89, '_edit_last', '1'),
(166, 89, '_wp_page_template', 'default'),
(167, 89, '_edit_lock', '1679543308:1'),
(168, 93, '_edit_last', '1'),
(169, 93, '_edit_lock', '1680055488:1'),
(170, 93, '_wp_trash_meta_status', 'draft'),
(171, 93, '_wp_trash_meta_time', '1680055556'),
(172, 93, '_wp_desired_post_slug', ''),
(173, 77, '_oembed_1d4c1ce6f0164d89bf7e9e553263682e', '<iframe title=\"TECIDO PARA CORTINA - COMO FAZER PARA ESCOLHER\" width=\"840\" height=\"473\" src=\"https://www.youtube.com/embed/Io534DnHJqE?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(174, 77, '_oembed_time_1d4c1ce6f0164d89bf7e9e553263682e', '1680055617'),
(175, 77, '_oembed_48030bdeaa6bf5ed21dd9264a21a8c26', '<iframe title=\"APRENDA COMO DECORAR COM MESA DE CENTRO REDONDA\" width=\"840\" height=\"473\" src=\"https://www.youtube.com/embed/5B0wdnw2PJQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>'),
(176, 77, '_oembed_time_48030bdeaa6bf5ed21dd9264a21a8c26', '1680055617'),
(177, 77, '_wp_trash_meta_status', 'publish'),
(178, 77, '_wp_trash_meta_time', '1680055855'),
(179, 77, '_wp_desired_post_slug', 'video-hero'),
(180, 94, '_edit_last', '1'),
(181, 94, '_edit_lock', '1681608534:1'),
(182, 94, 'video', 'https://www.youtube.com/watch?v=Io534DnHJqE'),
(183, 94, '_video', 'field_6419ece1992b3'),
(184, 95, '_edit_last', '1'),
(185, 95, '_edit_lock', '1680656154:1'),
(186, 95, '_wp_trash_meta_status', 'publish'),
(187, 95, '_wp_trash_meta_time', '1680656326'),
(188, 95, '_wp_desired_post_slug', 'group_642cc77a4e17f'),
(189, 96, '_wp_trash_meta_status', 'publish'),
(190, 96, '_wp_trash_meta_time', '1680656326'),
(191, 96, '_wp_desired_post_slug', 'field_642cc77a42a62'),
(192, 94, 'link', 'https://www.youtube.com/watch?v=Io534DnHJqE'),
(193, 94, '_link', 'field_6419ece1992b3'),
(194, 98, '_edit_last', '1'),
(195, 98, '_edit_lock', '1681613438:1'),
(196, 114, '_edit_last', '1'),
(197, 114, 'visibilidade_do_banner', '1'),
(198, 114, '_visibilidade_do_banner', 'field_642cca290c3ec'),
(199, 114, 'imagem_destacada_do_banner', '1'),
(200, 114, '_imagem_destacada_do_banner', 'field_642cca679f118'),
(201, 114, 'texto_destaque_do_banner', ''),
(202, 114, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(203, 114, 'texto_secundario_do_banner', ''),
(204, 114, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(205, 114, 'texto_botao_de_acao_do_banner', ''),
(206, 114, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(207, 114, 'exto_botao_video_do_banner', ''),
(208, 114, '_exto_botao_video_do_banner', 'field_642ccad4f0928'),
(209, 114, 'usuario_id', ''),
(210, 114, '_usuario_id', 'field_642ccae035159'),
(211, 114, '_edit_lock', '1680658548:1'),
(212, 114, '_wp_trash_meta_status', 'publish'),
(213, 114, '_wp_trash_meta_time', '1680658703'),
(214, 114, '_wp_desired_post_slug', 'rascunho-automatico'),
(215, 115, '_edit_last', '1'),
(216, 115, 'visibilidade_do_banner', '1'),
(217, 115, '_visibilidade_do_banner', 'field_642cca290c3ec'),
(218, 115, 'imagem_destacada_do_banner', '1'),
(219, 115, '_imagem_destacada_do_banner', 'field_642cca679f118'),
(220, 115, 'texto_destaque_do_banner', ''),
(221, 115, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(222, 115, 'texto_secundario_do_banner', ''),
(223, 115, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(224, 115, 'texto_botao_de_acao_do_banner', ''),
(225, 115, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(226, 115, 'exto_botao_video_do_banner', ''),
(227, 115, '_exto_botao_video_do_banner', 'field_642ccad4f0928'),
(228, 115, 'usuario_id', ''),
(229, 115, '_usuario_id', 'field_642ccae035159'),
(230, 115, '_edit_lock', '1680658574:1'),
(231, 116, '_edit_last', '1'),
(232, 116, 'visibilidade_do_banner', '1'),
(233, 116, '_visibilidade_do_banner', 'field_642cca290c3ec'),
(234, 116, 'imagem_destacada_do_banner', '1'),
(235, 116, '_imagem_destacada_do_banner', 'field_642cca679f118'),
(236, 116, 'texto_destaque_do_banner', ''),
(237, 116, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(238, 116, 'texto_secundario_do_banner', ''),
(239, 116, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(240, 116, 'texto_botao_de_acao_do_banner', ''),
(241, 116, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(242, 116, 'exto_botao_video_do_banner', ''),
(243, 116, '_exto_botao_video_do_banner', 'field_642ccad4f0928'),
(244, 116, 'usuario_id', ''),
(245, 116, '_usuario_id', 'field_642ccae035159'),
(246, 116, '_edit_lock', '1680658585:1'),
(247, 116, '_wp_trash_meta_status', 'publish'),
(248, 116, '_wp_trash_meta_time', '1680658740'),
(249, 116, '_wp_desired_post_slug', 'rascunho-automatico-2'),
(250, 115, '_wp_trash_meta_status', 'publish'),
(251, 115, '_wp_trash_meta_time', '1680658742'),
(252, 115, '_wp_desired_post_slug', 'rascunho-automatico'),
(253, 117, '_edit_last', '1'),
(254, 117, '_edit_lock', '1681608743:1'),
(255, 117, 'visibilidade_do_banner', '1'),
(256, 117, '_visibilidade_do_banner', 'field_642cca290c3ec'),
(257, 117, 'imagem_destacada_do_banner', '1'),
(258, 117, '_imagem_destacada_do_banner', 'field_642cca679f118'),
(259, 117, 'texto_destaque_do_banner', 'Venha conhecer nossa nova loja'),
(260, 117, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(261, 117, 'texto_secundario_do_banner', 'Você vai ficar encantado com nossos acessórios'),
(262, 117, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(263, 117, 'texto_botao_de_acao_do_banner', 'Veja isto'),
(264, 117, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(265, 117, 'exto_botao_video_do_banner', 'Assita'),
(266, 117, '_exto_botao_video_do_banner', 'field_642ccad4f0928'),
(267, 117, 'usuario_id', ''),
(268, 117, '_usuario_id', 'field_642ccae035159'),
(269, 118, '_edit_last', '1'),
(270, 118, 'visibilidade_do_banner', '1'),
(271, 118, '_visibilidade_do_banner', 'field_642cca290c3ec'),
(272, 118, 'imagem_destacada_do_banner', '1'),
(273, 118, '_imagem_destacada_do_banner', 'field_642cca679f118'),
(274, 118, 'texto_destaque_do_banner', ''),
(275, 118, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(276, 118, 'texto_secundario_do_banner', ''),
(277, 118, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(278, 118, 'texto_botao_de_acao_do_banner', ''),
(279, 118, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(280, 118, 'exto_botao_video_do_banner', ''),
(281, 118, '_exto_botao_video_do_banner', 'field_642ccad4f0928'),
(282, 118, 'usuario_id', ''),
(283, 118, '_usuario_id', 'field_642ccae035159'),
(284, 118, '_edit_lock', '1681608544:1'),
(285, 117, 'texto_botao_video_do_banner', 'Assista'),
(286, 117, '_texto_botao_video_do_banner', 'field_642ccad4f0928'),
(287, 117, '_wp_trash_meta_status', 'publish'),
(288, 117, '_wp_trash_meta_time', '1681608902'),
(289, 117, '_wp_desired_post_slug', 'principal'),
(290, 118, '_wp_trash_meta_status', 'publish'),
(291, 118, '_wp_trash_meta_time', '1681608904'),
(292, 118, '_wp_desired_post_slug', 'seundario'),
(293, 124, '_edit_last', '1'),
(294, 124, 'visibilidade_do_banner', '1'),
(295, 124, '_visibilidade_do_banner', 'field_642cca290c3ec'),
(296, 124, 'imagem_destacada_do_banner', '1'),
(297, 124, '_imagem_destacada_do_banner', 'field_642cca679f118'),
(298, 124, 'texto_destaque_do_banner', 'Bem-vindo à ERIKA Tecidos e Decorações'),
(299, 124, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(300, 124, 'texto_secundario_do_banner', 'Transformar design em tecidos é uma forma valiosa de arte.'),
(301, 124, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(302, 124, 'texto_botao_de_acao_do_banner', 'Quem somos'),
(303, 124, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(304, 124, 'texto_botao_video_do_banner', 'Assista o vídeo'),
(305, 124, '_texto_botao_video_do_banner', 'field_642ccad4f0928'),
(306, 124, 'usuario_id', ''),
(307, 124, '_usuario_id', 'field_642ccae035159'),
(308, 124, '_edit_lock', '1681614391:1'),
(309, 125, '_wp_attached_file', '2023/04/sofa-banner-1200x800-1.jpg'),
(310, 125, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:801;s:4:\"file\";s:34:\"2023/04/sofa-banner-1200x800-1.jpg\";s:8:\"filesize\";i:228687;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"sofa-banner-1200x800-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15810;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"sofa-banner-1200x800-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133713;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"sofa-banner-1200x800-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6940;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"sofa-banner-1200x800-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81969;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 124, '_thumbnail_id', '125'),
(312, 75, '_wp_trash_meta_status', 'publish'),
(313, 75, '_wp_trash_meta_time', '1681609766'),
(314, 75, '_wp_desired_post_slug', 'group_6419ece1808a5'),
(315, 76, '_wp_trash_meta_status', 'publish'),
(316, 76, '_wp_trash_meta_time', '1681609766'),
(317, 76, '_wp_desired_post_slug', 'field_6419ece1992b3'),
(318, 124, 'link', 'https://www.youtube.com/watch?v=Io534DnHJqE'),
(319, 124, '_link', 'field_643b5435242aa'),
(320, 124, '_wp_old_slug', '124'),
(321, 127, '_wp_attached_file', '2023/04/sofa-banner-1024x1024_opacity.jpg'),
(322, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:682;s:4:\"file\";s:41:\"2023/04/sofa-banner-1024x1024_opacity.jpg\";s:8:\"filesize\";i:286633;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"sofa-banner-1024x1024_opacity-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13275;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"sofa-banner-1024x1024_opacity-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6021;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"sofa-banner-1024x1024_opacity-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62809;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 128, '_edit_last', '1'),
(324, 128, '_edit_lock', '1681615585:1');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `post_date` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_date_gmt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
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
  `post_modified` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_modified_gmt` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `post_content_filtered` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT '0',
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2023-03-20 21:08:18', '2023-03-21 00:08:18', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'trash', 'open', 'open', '', 'ola-mundo__trashed', '', '', '2023-03-21 08:58:49', '2023-03-21 11:58:49', '', 0, 'http://localhost/wordpress/?p=1', 0, 'post', '', 1),
(2, 1, '2023-03-20 21:08:18', '2023-03-21 00:08:18', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'trash', 'closed', 'open', '', 'pagina-exemplo__trashed', '', '', '2023-03-20 22:59:56', '2023-03-21 01:59:56', '', 0, 'http://localhost/wordpress/?page_id=2', 0, 'page', '', 0),
(3, 1, '2023-03-20 21:08:18', '2023-03-21 00:08:18', '<!-- wp:heading --><h2>Quem somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>O endereço do nosso site é: http://localhost/wordpress.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Comentários</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Cookies</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Mídia incorporada de outros sites</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicional de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Com quem compartilhamos seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você solicitar uma redefinição de senha, seu endereço de IP será incluído no e-mail de redefinição de senha.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Por quanto tempo mantemos os seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Quais os seus direitos sobre seus dados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Para onde seus dados são enviados</h2><!-- /wp:heading --><!-- wp:paragraph --><p><strong class=\"privacy-policy-tutorial\">Texto sugerido: </strong>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><!-- /wp:paragraph -->', 'Política de privacidade', '', 'draft', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2023-03-20 21:08:18', '2023-03-21 00:08:18', '', 0, 'http://localhost/wordpress/?page_id=3', 0, 'page', '', 0),
(5, 1, '2023-03-20 22:13:28', '2023-03-21 01:13:28', '<!-- wp:paragraph -->\n<p>Só mais uma página WordPress</p>\n<!-- /wp:paragraph -->', 'home', '', 'trash', 'closed', 'closed', '', 'home__trashed', '', '', '2023-03-20 22:59:49', '2023-03-21 01:59:49', '', 0, 'http://localhost/wordpress/?page_id=5', 0, 'page', '', 0),
(6, 1, '2023-03-20 22:13:28', '2023-03-21 01:13:28', '', 'home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-03-20 22:13:28', '2023-03-21 01:13:28', '', 5, 'http://localhost/wordpress/?p=6', 0, 'revision', '', 0),
(7, 1, '2023-03-20 22:16:07', '2023-03-21 01:16:07', '<!-- wp:paragraph -->\n<p>Só mais uma página WordPress</p>\n<!-- /wp:paragraph -->', 'home', '', 'inherit', 'closed', 'closed', '', '5-revision-v1', '', '', '2023-03-20 22:16:07', '2023-03-21 01:16:07', '', 5, 'http://localhost/wordpress/?p=7', 0, 'revision', '', 0),
(8, 1, '2023-03-20 22:38:08', '2023-03-21 01:38:08', '', 'team-1', '', 'inherit', 'open', 'closed', '', 'team-1', '', '', '2023-03-20 22:38:08', '2023-03-21 01:38:08', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/03/team-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(9, 1, '2023-03-20 22:38:08', '2023-03-21 01:38:08', '', 'team-2', '', 'inherit', 'open', 'closed', '', 'team-2', '', '', '2023-03-20 22:38:08', '2023-03-21 01:38:08', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/03/team-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(10, 1, '2023-03-20 22:38:08', '2023-03-21 01:38:08', '', 'team-3', '', 'inherit', 'open', 'closed', '', 'team-3', '', '', '2023-03-20 22:38:08', '2023-03-21 01:38:08', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/03/team-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(11, 1, '2023-03-20 22:38:09', '2023-03-21 01:38:09', '', 'team-4', '', 'inherit', 'open', 'closed', '', 'team-4', '', '', '2023-03-20 22:38:09', '2023-03-21 01:38:09', '', 0, 'http://localhost/wordpress/wp-content/uploads/2023/03/team-4.jpg', 0, 'attachment', 'image/jpeg', 0),
(12, 1, '2023-03-20 22:59:56', '2023-03-21 01:59:56', '<!-- wp:paragraph -->\n<p>Esta é uma página de exemplo. É diferente de um post no blog porque ela permanecerá em um lugar e aparecerá na navegação do seu site na maioria dos temas. Muitas pessoas começam com uma página que as apresenta a possíveis visitantes do site. Ela pode dizer algo assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>Olá! Eu sou um mensageiro de bicicleta durante o dia, ator aspirante à noite, e este é o meu site. Eu moro em São Paulo, tenho um grande cachorro chamado Rex e gosto de tomar caipirinha (e banhos de chuva).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>...ou alguma coisa assim:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>A Companhia de Miniaturas XYZ foi fundada em 1971, e desde então tem fornecido miniaturas de qualidade ao público. Localizada na cidade de Itu, a XYZ emprega mais de 2.000 pessoas e faz coisas grandiosas para a comunidade da cidade.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como um novo usuário do WordPress, você deveria ir ao <a href=\"http://localhost/wordpress/wp-admin/\">painel</a> para excluir essa página e criar novas páginas para o seu conteúdo. Divirta-se!</p>\n<!-- /wp:paragraph -->', 'Página de exemplo', '', 'inherit', 'closed', 'closed', '', '2-revision-v1', '', '', '2023-03-20 22:59:56', '2023-03-21 01:59:56', '', 2, 'http://localhost/wordpress/?p=12', 0, 'revision', '', 0),
(13, 1, '2023-03-21 08:58:49', '2023-03-21 11:58:49', '<!-- wp:paragraph -->\n<p>Boas-vindas ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!</p>\n<!-- /wp:paragraph -->', 'Olá, mundo!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2023-03-21 08:58:49', '2023-03-21 11:58:49', '', 1, 'http://localhost/wp_etecidos/?p=13', 0, 'revision', '', 0),
(14, 1, '2023-03-21 09:11:08', '2023-03-21 12:11:08', '<!-- wp:paragraph -->\n<p>myob</p>\n<!-- /wp:paragraph -->', '', '', 'trash', 'open', 'open', '', '__trashed', '', '', '2023-03-21 09:11:08', '2023-03-21 12:11:08', '', 0, 'http://localhost/wp_etecidos/?p=14', 0, 'post', '', 0),
(16, 1, '2023-03-21 09:09:34', '2023-03-21 12:09:34', '', 'Myob', '', 'trash', 'open', 'open', '', 'myob__trashed', '', '', '2023-03-21 10:14:59', '2023-03-21 13:14:59', '', 0, 'http://localhost/wp_etecidos/?p=16', 0, 'post', '', 0),
(17, 1, '2023-03-21 09:09:04', '2023-03-21 12:09:04', '', 'client-1', '', 'inherit', 'open', 'closed', '', 'client-1', '', '', '2023-03-21 09:09:04', '2023-03-21 12:09:04', '', 16, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-1.png', 0, 'attachment', 'image/png', 0),
(18, 1, '2023-03-21 09:09:34', '2023-03-21 12:09:34', '<!-- wp:paragraph -->\n<p>myob</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-03-21 09:09:34', '2023-03-21 12:09:34', '', 16, 'http://localhost/wp_etecidos/?p=18', 0, 'revision', '', 0),
(19, 1, '2023-03-21 09:10:05', '2023-03-21 12:10:05', '', 'myob', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-03-21 09:10:05', '2023-03-21 12:10:05', '', 16, 'http://localhost/wp_etecidos/?p=19', 0, 'revision', '', 0),
(20, 1, '2023-03-21 09:11:08', '2023-03-21 12:11:08', '<!-- wp:paragraph -->\n<p>myob</p>\n<!-- /wp:paragraph -->', '', '', 'inherit', 'closed', 'closed', '', '14-revision-v1', '', '', '2023-03-21 09:11:08', '2023-03-21 12:11:08', '', 14, 'http://localhost/wp_etecidos/?p=20', 0, 'revision', '', 0),
(21, 1, '2023-03-21 09:11:37', '2023-03-21 12:11:37', '', 'Belimo', '', 'trash', 'open', 'open', '', 'belimo__trashed', '', '', '2023-03-21 15:43:43', '2023-03-21 18:43:43', '', 0, 'http://localhost/wp_etecidos/?p=21', 0, 'post', '', 0),
(22, 1, '2023-03-21 09:11:27', '2023-03-21 12:11:27', '', 'client-2', '', 'inherit', 'open', 'closed', '', 'client-2', '', '', '2023-03-21 09:11:27', '2023-03-21 12:11:27', '', 21, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-2.png', 0, 'attachment', 'image/png', 0),
(23, 1, '2023-03-21 09:11:37', '2023-03-21 12:11:37', '', 'belimo', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-03-21 09:11:37', '2023-03-21 12:11:37', '', 21, 'http://localhost/wp_etecidos/?p=23', 0, 'revision', '', 0),
(24, 1, '2023-03-21 09:12:37', '2023-03-21 12:12:37', '', 'Lifegroups', '', 'publish', 'open', 'open', '', 'lifegroups', '', '', '2023-03-21 10:02:00', '2023-03-21 13:02:00', '', 0, 'http://localhost/wp_etecidos/?p=24', 0, 'post', '', 0),
(25, 1, '2023-03-21 09:12:31', '2023-03-21 12:12:31', '', 'client-3', '', 'inherit', 'open', 'closed', '', 'client-3', '', '', '2023-03-21 09:12:31', '2023-03-21 12:12:31', '', 24, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-3.png', 0, 'attachment', 'image/png', 0),
(26, 1, '2023-03-21 09:12:37', '2023-03-21 12:12:37', '', 'lifegroups', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-21 09:12:37', '2023-03-21 12:12:37', '', 24, 'http://localhost/wp_etecidos/?p=26', 0, 'revision', '', 0),
(27, 1, '2023-03-21 09:13:06', '2023-03-21 12:13:06', '', 'Lilly', '', 'publish', 'open', 'open', '', 'lilly', '', '', '2023-03-21 10:01:53', '2023-03-21 13:01:53', '', 0, 'http://localhost/wp_etecidos/?p=27', 0, 'post', '', 0),
(28, 1, '2023-03-21 09:13:01', '2023-03-21 12:13:01', '', 'client-4', '', 'inherit', 'open', 'closed', '', 'client-4', '', '', '2023-03-21 09:13:01', '2023-03-21 12:13:01', '', 27, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-4.png', 0, 'attachment', 'image/png', 0),
(29, 1, '2023-03-21 09:13:06', '2023-03-21 12:13:06', '', 'lilly', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-03-21 09:13:06', '2023-03-21 12:13:06', '', 27, 'http://localhost/wp_etecidos/?p=29', 0, 'revision', '', 0),
(30, 1, '2023-03-21 09:13:45', '2023-03-21 12:13:45', '', 'Citrus', '', 'trash', 'open', 'open', '', 'citrus__trashed', '', '', '2023-03-21 13:45:22', '2023-03-21 16:45:22', '', 0, 'http://localhost/wp_etecidos/?p=30', 0, 'post', '', 0),
(31, 1, '2023-03-21 09:13:24', '2023-03-21 12:13:24', '', 'client-5', '', 'inherit', 'open', 'closed', '', 'client-5', '', '', '2023-03-21 09:13:24', '2023-03-21 12:13:24', '', 30, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-5.png', 0, 'attachment', 'image/png', 0),
(32, 1, '2023-03-21 09:13:45', '2023-03-21 12:13:45', '', 'citrus', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2023-03-21 09:13:45', '2023-03-21 12:13:45', '', 30, 'http://localhost/wp_etecidos/?p=32', 0, 'revision', '', 0),
(33, 1, '2023-03-21 09:14:19', '2023-03-21 12:14:19', '', 'Trustly', '', 'publish', 'open', 'open', '', 'trustly', '', '', '2023-03-21 10:01:38', '2023-03-21 13:01:38', '', 0, 'http://localhost/wp_etecidos/?p=33', 0, 'post', '', 0),
(34, 1, '2023-03-21 09:14:06', '2023-03-21 12:14:06', '', 'client-6', '', 'inherit', 'open', 'closed', '', 'client-6', '', '', '2023-03-21 09:14:06', '2023-03-21 12:14:06', '', 33, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-6.png', 0, 'attachment', 'image/png', 0),
(35, 1, '2023-03-21 09:14:19', '2023-03-21 12:14:19', '', 'trustly', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-03-21 09:14:19', '2023-03-21 12:14:19', '', 33, 'http://localhost/wp_etecidos/?p=35', 0, 'revision', '', 0),
(36, 1, '2023-03-21 10:01:38', '2023-03-21 13:01:38', '', 'Trustly', '', 'inherit', 'closed', 'closed', '', '33-revision-v1', '', '', '2023-03-21 10:01:38', '2023-03-21 13:01:38', '', 33, 'http://localhost/wp_etecidos/?p=36', 0, 'revision', '', 0),
(37, 1, '2023-03-21 10:01:44', '2023-03-21 13:01:44', '', 'Citrus', '', 'inherit', 'closed', 'closed', '', '30-revision-v1', '', '', '2023-03-21 10:01:44', '2023-03-21 13:01:44', '', 30, 'http://localhost/wp_etecidos/?p=37', 0, 'revision', '', 0),
(38, 1, '2023-03-21 10:01:53', '2023-03-21 13:01:53', '', 'Lilly', '', 'inherit', 'closed', 'closed', '', '27-revision-v1', '', '', '2023-03-21 10:01:53', '2023-03-21 13:01:53', '', 27, 'http://localhost/wp_etecidos/?p=38', 0, 'revision', '', 0),
(39, 1, '2023-03-21 10:02:00', '2023-03-21 13:02:00', '', 'Lifegroups', '', 'inherit', 'closed', 'closed', '', '24-revision-v1', '', '', '2023-03-21 10:02:00', '2023-03-21 13:02:00', '', 24, 'http://localhost/wp_etecidos/?p=39', 0, 'revision', '', 0),
(40, 1, '2023-03-21 10:02:07', '2023-03-21 13:02:07', '', 'Belimo', '', 'inherit', 'closed', 'closed', '', '21-revision-v1', '', '', '2023-03-21 10:02:07', '2023-03-21 13:02:07', '', 21, 'http://localhost/wp_etecidos/?p=40', 0, 'revision', '', 0),
(41, 1, '2023-03-21 10:02:13', '2023-03-21 13:02:13', '', 'Myob', '', 'inherit', 'closed', 'closed', '', '16-revision-v1', '', '', '2023-03-21 10:02:13', '2023-03-21 13:02:13', '', 16, 'http://localhost/wp_etecidos/?p=41', 0, 'revision', '', 0),
(42, 1, '2023-03-21 10:15:30', '2023-03-21 13:15:30', '', 'Myob', '', 'publish', 'open', 'open', '', 'myob', '', '', '2023-03-21 10:15:47', '2023-03-21 13:15:47', '', 0, 'http://localhost/wp_etecidos/?p=42', 0, 'post', '', 0),
(43, 1, '2023-03-21 10:15:30', '2023-03-21 13:15:30', '', 'Myob', '', 'inherit', 'closed', 'closed', '', '42-revision-v1', '', '', '2023-03-21 10:15:30', '2023-03-21 13:15:30', '', 42, 'http://localhost/wp_etecidos/?p=43', 0, 'revision', '', 0),
(44, 1, '2023-03-21 10:25:33', '2023-03-21 13:25:33', '', 'Hero Vídeo', '', 'trash', 'open', 'open', '', '__trashed-2', '', '', '2023-03-21 10:25:33', '2023-03-21 13:25:33', '', 0, 'http://localhost/wp_etecidos/?p=44', 0, 'post', '', 0),
(45, 1, '2023-03-21 10:25:33', '2023-03-21 13:25:33', '', 'Hero Vídeo', '', 'inherit', 'closed', 'closed', '', '44-revision-v1', '', '', '2023-03-21 10:25:33', '2023-03-21 13:25:33', '', 44, 'http://localhost/wp_etecidos/?p=45', 0, 'revision', '', 0),
(47, 1, '2023-03-21 13:46:32', '2023-03-21 16:46:32', '', 'Citrus', '', 'publish', 'open', 'open', '', 'citrus', '', '', '2023-03-21 13:46:32', '2023-03-21 16:46:32', '', 0, 'http://localhost/wp_etecidos/?p=47', 0, 'post', '', 0),
(48, 1, '2023-03-21 13:46:32', '2023-03-21 16:46:32', '', 'Citrus', '', 'inherit', 'closed', 'closed', '', '47-revision-v1', '', '', '2023-03-21 13:46:32', '2023-03-21 16:46:32', '', 47, 'http://localhost/wp_etecidos/?p=48', 0, 'revision', '', 0),
(51, 1, '2023-03-21 13:59:41', '2023-03-21 16:59:41', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:4:\"side\";s:5:\"style\";s:8:\"seamless\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Hero vídeo', 'hero-video', 'trash', 'closed', 'closed', '', 'group_6419e214dc3db__trashed', '', '', '2023-03-21 14:43:46', '2023-03-21 17:43:46', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=51', 1, 'acf-field-group', '', 0),
(56, 1, '2023-03-21 14:13:45', '2023-03-21 17:13:45', '', 'xcvbvcbvc', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-03-21 14:13:45', '2023-03-21 17:13:45', '', 0, 'http://localhost/wp_etecidos/?post_type=herovideo&#038;p=56', 0, 'herovideo', '', 0),
(75, 1, '2023-03-21 14:44:16', '2023-03-21 17:44:16', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"videohero\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:1;}', 'link youtube do banner', 'link-youtube-do-banner', 'trash', 'closed', 'closed', '', 'group_6419ece1808a5__trashed', '', '', '2023-04-15 22:49:26', '2023-04-16 01:49:26', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=75', 0, 'acf-field-group', '', 0),
(76, 1, '2023-03-21 14:44:16', '2023-03-21 17:44:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link youtube', 'link', 'trash', 'closed', 'closed', '', 'field_6419ece1992b3__trashed', '', '', '2023-04-15 22:49:26', '2023-04-16 01:49:26', '', 75, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=76', 0, 'acf-field', '', 0),
(77, 1, '2023-03-21 14:46:49', '2023-03-21 17:46:49', 'https://www.youtube.com/watch?v=Io534DnHJqE\r\n\r\n&nbsp;\r\n\r\nhttps://www.youtube.com/watch?v=5B0wdnw2PJQ', 'video hero', '', 'trash', 'closed', 'closed', '', 'video-hero__trashed', '', '', '2023-03-28 23:10:55', '2023-03-29 02:10:55', '', 0, 'http://localhost/wp_etecidos/?post_type=videohero&#038;p=77', 0, 'videohero', '', 0),
(78, 1, '2023-03-22 22:43:07', '2023-03-23 01:43:07', '', 'belimo', '', 'publish', 'open', 'open', '', 'belimo', '', '', '2023-03-22 23:31:15', '2023-03-23 02:31:15', '', 0, 'http://localhost/wp_etecidos/?p=78', 0, 'post', '', 0),
(79, 1, '2023-03-22 22:43:07', '2023-03-23 01:43:07', '', 'dsdds', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-03-22 22:43:07', '2023-03-23 01:43:07', '', 78, 'http://localhost/wp_etecidos/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-03-22 22:43:32', '2023-03-23 01:43:32', '', 'belimo', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-03-22 22:43:32', '2023-03-23 01:43:32', '', 78, 'http://localhost/wp_etecidos/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-03-22 23:09:50', '2023-03-23 02:09:50', '', 'mxrocha', '', 'private', 'open', 'open', '', 'mxrocha', '', '', '2023-03-22 23:43:19', '2023-03-23 02:43:19', '', 0, 'http://localhost/wp_etecidos/?p=81', 0, 'post', '', 0),
(82, 1, '2023-03-22 23:09:40', '2023-03-23 02:09:40', '', 'client-7', '', 'inherit', 'open', 'closed', '', 'client-7', '', '', '2023-03-22 23:09:40', '2023-03-23 02:09:40', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-7.png', 0, 'attachment', 'image/png', 0),
(83, 1, '2023-03-22 23:09:50', '2023-03-23 02:09:50', '', 'mxrocha', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2023-03-22 23:09:50', '2023-03-23 02:09:50', '', 81, 'http://localhost/wp_etecidos/?p=83', 0, 'revision', '', 0),
(84, 1, '2023-03-22 23:19:22', '2023-03-23 02:19:22', '', 'client-7', '', 'inherit', 'open', 'closed', '', 'client-7-2', '', '', '2023-03-22 23:19:22', '2023-03-23 02:19:22', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-7-1.png', 0, 'attachment', 'image/png', 0),
(85, 1, '2023-03-22 23:26:19', '2023-03-23 02:26:19', '', 'client-7', '', 'inherit', 'open', 'closed', '', 'client-7-3', '', '', '2023-03-22 23:26:19', '2023-03-23 02:26:19', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-7-2.png', 0, 'attachment', 'image/png', 0),
(86, 1, '2023-03-22 23:42:34', '2023-03-23 02:42:34', '', 'client-8', '', 'inherit', 'open', 'closed', '', 'client-8', '', '', '2023-03-22 23:42:34', '2023-03-23 02:42:34', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-8.png', 0, 'attachment', 'image/png', 0),
(87, 1, '2023-03-23 00:04:54', '2023-03-23 03:04:54', '<iframe title=\"TECIDO PARA CORTINA - COMO FAZER PARA ESCOLHER\" width=\"1383\" height=\"778\" src=\"https://www.youtube.com/embed/Io534DnHJqE?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', 'publish', 'closed', 'closed', '', '5183a302eac4126c7d54d12532ddd3ba', '', '', '2023-03-28 22:35:46', '2023-03-29 01:35:46', '', 0, 'http://localhost/wp_etecidos/5183a302eac4126c7d54d12532ddd3ba/', 0, 'oembed_cache', '', 0),
(88, 1, '2023-03-23 00:06:53', '2023-03-23 03:06:53', '<iframe title=\"APRENDA COMO DECORAR COM MESA DE CENTRO REDONDA\" width=\"1383\" height=\"778\" src=\"https://www.youtube.com/embed/5B0wdnw2PJQ?feature=oembed\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share\" allowfullscreen></iframe>', '', '', 'publish', 'closed', 'closed', '', 'b7d5b165a6ec7acc11426a579291569c', '', '', '2023-03-28 22:35:46', '2023-03-29 01:35:46', '', 0, 'http://localhost/wp_etecidos/b7d5b165a6ec7acc11426a579291569c/', 0, 'oembed_cache', '', 0),
(89, 1, '2023-03-23 00:15:57', '2023-03-23 03:15:57', '', 'blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2023-03-23 00:15:57', '2023-03-23 03:15:57', '', 0, 'http://localhost/wp_etecidos/?page_id=89', 0, 'page', '', 0),
(90, 1, '2023-03-23 00:15:57', '2023-03-23 03:15:57', '', 'blog', '', 'inherit', 'closed', 'closed', '', '89-revision-v1', '', '', '2023-03-23 00:15:57', '2023-03-23 03:15:57', '', 89, 'http://localhost/wp_etecidos/?p=90', 0, 'revision', '', 0),
(93, 1, '2023-03-28 23:05:56', '2023-03-29 02:05:56', '', 'Teste', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-03-28 23:05:56', '2023-03-29 02:05:56', '', 0, 'http://localhost/wp_etecidos/?post_type=videohero&#038;p=93', 0, 'videohero', '', 0),
(94, 1, '2023-03-28 23:11:28', '2023-03-29 02:11:28', '', 'Video do banner', '', 'publish', 'closed', 'closed', '', 'video-do-banner', '', '', '2023-04-14 16:03:00', '2023-04-14 19:03:00', '', 0, 'http://localhost/wp_etecidos/?post_type=videohero&#038;p=94', 0, 'videohero', '', 0),
(95, 1, '2023-04-04 21:57:43', '2023-04-05 00:57:43', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:4:\"post\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Campos do banner', 'campos-do-banner', 'trash', 'closed', 'closed', '', 'group_642cc77a4e17f__trashed', '', '', '2023-04-04 21:58:46', '2023-04-05 00:58:46', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2023-04-04 21:57:43', '2023-04-05 00:57:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', '', '', 'trash', 'closed', 'closed', '', 'field_642cc77a42a62__trashed', '', '', '2023-04-04 21:58:46', '2023-04-05 00:58:46', '', 95, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=96', 0, 'acf-field', '', 0),
(97, 1, '2023-04-04 22:03:17', '2023-04-05 01:03:17', '', 'Video do banner', '', 'inherit', 'closed', 'closed', '', '94-autosave-v1', '', '', '2023-04-04 22:03:17', '2023-04-05 01:03:17', '', 94, 'http://localhost/wp_etecidos/?p=97', 0, 'revision', '', 0),
(98, 1, '2023-04-04 22:08:33', '2023-04-05 01:08:33', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:6:\"banner\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:1;}', 'banner', 'banner', 'publish', 'closed', 'closed', '', 'group_642cca00786ca', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=98', 0, 'acf-field-group', '', 0),
(102, 1, '2023-04-04 22:11:07', '2023-04-05 01:11:07', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto destaque do banner', 'texto_destaque_do_banner', 'publish', 'closed', 'closed', '', 'field_642ccaa3ef3b4', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 98, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=102', 0, 'acf-field', '', 0),
(103, 1, '2023-04-04 22:11:23', '2023-04-05 01:11:23', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto secundario do banner', 'texto_secundario_do_banner', 'publish', 'closed', 'closed', '', 'field_642ccab2f67eb', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 98, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=103', 1, 'acf-field', '', 0),
(104, 1, '2023-04-04 22:11:39', '2023-04-05 01:11:39', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto botao de acao do banner', 'texto_botao_de_acao_do_banner', 'publish', 'closed', 'closed', '', 'field_642ccac369758', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 98, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=104', 2, 'acf-field', '', 0),
(105, 1, '2023-04-04 22:11:55', '2023-04-05 01:11:55', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto botao video do banner', 'texto_botao_video_do_banner', 'publish', 'closed', 'closed', '', 'field_642ccad4f0928', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 98, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=105', 3, 'acf-field', '', 0),
(114, 1, '2023-04-04 22:38:09', '2023-04-05 01:38:09', '', 'Rascunho automático', '', 'trash', 'closed', 'closed', '', 'rascunho-automatico__trashed', '', '', '2023-04-04 22:38:23', '2023-04-05 01:38:23', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=114', 0, 'banner', '', 0),
(115, 1, '2023-04-04 22:38:35', '2023-04-05 01:38:35', '', 'Rascunho automático', '', 'trash', 'closed', 'closed', '', 'rascunho-automatico__trashed-2', '', '', '2023-04-04 22:39:02', '2023-04-05 01:39:02', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=115', 0, 'banner', '', 0),
(116, 1, '2023-04-04 22:38:46', '2023-04-05 01:38:46', '', 'Rascunho automático', '', 'trash', 'closed', 'closed', '', 'rascunho-automatico-2__trashed', '', '', '2023-04-04 22:39:00', '2023-04-05 01:39:00', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=116', 0, 'banner', '', 0),
(117, 1, '2023-04-04 22:40:45', '2023-04-05 01:40:45', '', 'principal', '', 'trash', 'closed', 'closed', '', 'principal__trashed', '', '', '2023-04-15 22:35:02', '2023-04-16 01:35:02', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=117', 0, 'banner', '', 0),
(118, 1, '2023-04-04 22:41:47', '2023-04-05 01:41:47', '', 'secundário', '', 'trash', 'closed', 'closed', '', 'seundario__trashed', '', '', '2023-04-15 22:35:04', '2023-04-16 01:35:04', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=118', 0, 'banner', '', 0),
(119, 1, '2023-04-14 15:44:26', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 15:44:26', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?p=119', 0, 'post', '', 0),
(120, 1, '2023-04-14 16:19:23', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2023-04-14 16:19:23', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?p=120', 0, 'post', '', 0),
(121, 1, '2023-04-15 22:33:29', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-15 22:33:29', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&p=121', 0, 'banner', '', 0),
(122, 1, '2023-04-15 22:35:06', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-15 22:35:06', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&p=122', 0, 'banner', '', 0),
(123, 1, '2023-04-15 22:38:00', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-15 22:38:00', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&p=123', 0, 'banner', '', 0),
(124, 1, '2023-04-15 22:45:12', '2023-04-16 01:45:12', '', 'banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2023-04-15 23:47:53', '2023-04-16 02:47:53', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=124', 0, 'banner', '', 0),
(125, 1, '2023-04-15 22:47:07', '2023-04-16 01:47:07', '', 'sofa-banner-1200x800', '', 'inherit', 'open', 'closed', '', 'sofa-banner-1200x800', '', '', '2023-04-15 22:47:07', '2023-04-16 01:47:07', '', 124, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/sofa-banner-1200x800-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2023-04-15 22:50:16', '2023-04-16 01:50:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link do Youtube', 'link', 'publish', 'closed', 'closed', '', 'field_643b5435242aa', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 98, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=126', 4, 'acf-field', '', 0),
(127, 1, '2023-04-15 23:35:07', '2023-04-16 02:35:07', '', 'sofa-banner-1024x1024_opacity', '', 'inherit', 'open', 'closed', '', 'sofa-banner-1024x1024_opacity', '', '', '2023-04-15 23:35:07', '2023-04-16 02:35:07', '', 124, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/sofa-banner-1024x1024_opacity.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2023-04-16 00:13:51', '2023-04-16 03:13:51', 'Há mais de 20 anos, nossa empresa se dedica a oferecer tecidos de alta qualidade para decoração, cortinas e estofados. Com uma vasta experiência no ramo, estamos comprometidos em fornecer produtos de excelência para atender as necessidades de nossos clientes.\r\n\r\nAo longo dos anos, nossa empresa cresceu e se tornou referência no mercado, graças à nossa dedicação em oferecer uma ampla variedade de tecidos, com estampas e texturas exclusivas, que atendem às tendências do mercado de decoração e design.\r\n\r\nAlém disso, temos um compromisso forte com a sustentabilidade e a preservação do meio ambiente. Por isso, buscamos fornecedores comprometidos esta filosofia, que produzam materiais de alta qualidade e com responsabilidade ambiental, garantindo a satisfação dos nossos clientes e a preservação do planeta.\r\n\r\nAlém disso, nossa equipe é formada por profissionais altamente capacitados, que trabalham com dedicação e comprometimento para oferecer um atendimento personalizado e de excelência aos nossos clientes.\r\n\r\nSe você está em busca de tecidos de qualidade para a decoração da sua casa ou para o revestimento dos seus estofados e decoração em geral, venha nos conhecer. Estamos sempre prontos para atendê-lo e ajudá-lo a encontrar a melhor solução para suas necessidades.', 'sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2023-04-16 00:15:38', '2023-04-16 03:15:38', '', 0, 'http://localhost/wp_etecidos/?post_type=sobrenos&#038;p=128', 0, 'sobrenos', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(3, 'fornecedor', 'fornecedor', 0),
(4, 'Hero Vídeo', 'herovideo', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `term_order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(14, 1, 0),
(16, 3, 0),
(21, 3, 0),
(24, 3, 0),
(27, 3, 0),
(30, 3, 0),
(33, 3, 0),
(42, 3, 0),
(44, 1, 0),
(47, 3, 0),
(78, 3, 0),
(81, 3, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `count` bigint(20) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 0),
(3, 3, 'category', '', 0, 6),
(4, 4, 'category', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
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
(14, 1, 'dismissed_wp_pointers', ''),
(15, 1, 'show_welcome_panel', '0'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '119'),
(18, 1, 'wp_persisted_preferences', 'a:2:{s:14:\"core/edit-post\";a:3:{s:26:\"isComplementaryAreaVisible\";b:1;s:12:\"welcomeGuide\";b:0;s:10:\"openPanels\";a:3:{i:0;s:11:\"post-status\";i:1;s:14:\"featured-image\";i:2;s:23:\"taxonomy-panel-category\";}}s:9:\"_modified\";s:24:\"2023-03-21T17:37:39.286Z\";}'),
(19, 1, 'wp_user-settings', 'libraryContent=browse&mfold=o&hidetb=1&editor=tinymce'),
(20, 1, 'wp_user-settings-time', '1681614826'),
(21, 1, 'closedpostboxes_herovideo', 'a:0:{}'),
(22, 1, 'metaboxhidden_herovideo', 'a:0:{}'),
(23, 1, 'meta-box-order_herovideo', 'a:4:{s:6:\"normal\";s:0:\"\";s:8:\"advanced\";s:0:\"\";s:4:\"side\";s:23:\"acf-group_6419e214dc3db\";s:15:\"acf_after_title\";s:0:\"\";}'),
(24, 1, 'screen_layout_herovideo', '2'),
(25, 1, 'closedpostboxes_videohero', 'a:0:{}'),
(26, 1, 'metaboxhidden_videohero', 'a:2:{i:0;s:13:\"pageparentdiv\";i:1;s:7:\"slugdiv\";}'),
(27, 1, 'closedpostboxes_dashboard', 'a:0:{}'),
(28, 1, 'metaboxhidden_dashboard', 'a:6:{i:0;s:17:\"dashboard_php_nag\";i:1;s:21:\"dashboard_site_health\";i:2;s:19:\"dashboard_right_now\";i:3;s:18:\"dashboard_activity\";i:4;s:21:\"dashboard_quick_press\";i:5;s:17:\"dashboard_primary\";}'),
(30, 1, 'meta-box-order_banner', 'a:4:{s:15:\"acf_after_title\";s:0:\"\";s:4:\"side\";s:9:\"submitdiv\";s:6:\"normal\";s:31:\"acf-group_642cca00786ca,slugdiv\";s:8:\"advanced\";s:0:\"\";}'),
(31, 1, 'screen_layout_banner', '2'),
(32, 1, 'closedpostboxes_banner', 'a:0:{}'),
(33, 1, 'metaboxhidden_banner', 'a:1:{i:0;s:7:\"slugdiv\";}'),
(34, 1, 'session_tokens', 'a:1:{s:64:\"d60ac913383b4f8724ab7a2b3de16c7e713e0ad0c9e80157f0179e1a9b183d8c\";a:4:{s:10:\"expiration\";i:1682822779;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:111:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/111.0.0.0 Safari/537.36\";s:5:\"login\";i:1681613179;}}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_users`
--

CREATE TABLE `wp_users` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `user_login` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_pass` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_nicename` varchar(50) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_url` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_registered` datetime NOT NULL DEFAULT '1999-01-01 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT '0',
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'admin', '$P$BayyiAQCNkkHmaCLGywmaPVLiWAE5b/', 'admin', 'marceloneri@gmail.com', 'http://localhost/wordpress', '2023-03-21 00:08:17', '', 0, 'admin');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wpvivid_options`
--

CREATE TABLE `wp_wpvivid_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) NOT NULL DEFAULT '',
  `option_value` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

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
-- Indexes for table `wp_wpvivid_options`
--
ALTER TABLE `wp_wpvivid_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`);

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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=761;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=325;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_wpvivid_options`
--
ALTER TABLE `wp_wpvivid_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
