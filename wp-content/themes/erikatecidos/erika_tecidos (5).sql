-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 18-Abr-2023 às 04:27
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
(29, 'rewrite_rules', 'a:176:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:17:\"^wp-sitemap\\.xml$\";s:23:\"index.php?sitemap=index\";s:17:\"^wp-sitemap\\.xsl$\";s:36:\"index.php?sitemap-stylesheet=sitemap\";s:23:\"^wp-sitemap-index\\.xsl$\";s:34:\"index.php?sitemap-stylesheet=index\";s:48:\"^wp-sitemap-([a-z]+?)-([a-z\\d_-]+?)-(\\d+?)\\.xml$\";s:75:\"index.php?sitemap=$matches[1]&sitemap-subtype=$matches[2]&paged=$matches[3]\";s:34:\"^wp-sitemap-([a-z]+?)-(\\d+?)\\.xml$\";s:47:\"index.php?sitemap=$matches[1]&paged=$matches[2]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:34:\"banner/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:44:\"banner/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:64:\"banner/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:59:\"banner/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:40:\"banner/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:23:\"banner/([^/]+)/embed/?$\";s:39:\"index.php?banner=$matches[1]&embed=true\";s:27:\"banner/([^/]+)/trackback/?$\";s:33:\"index.php?banner=$matches[1]&tb=1\";s:35:\"banner/([^/]+)/page/?([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&paged=$matches[2]\";s:42:\"banner/([^/]+)/comment-page-([0-9]{1,})/?$\";s:46:\"index.php?banner=$matches[1]&cpage=$matches[2]\";s:31:\"banner/([^/]+)(?:/([0-9]+))?/?$\";s:45:\"index.php?banner=$matches[1]&page=$matches[2]\";s:23:\"banner/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:33:\"banner/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:53:\"banner/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:48:\"banner/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:29:\"banner/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:36:\"sobrenos/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:46:\"sobrenos/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:66:\"sobrenos/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sobrenos/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:61:\"sobrenos/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:42:\"sobrenos/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:25:\"sobrenos/([^/]+)/embed/?$\";s:41:\"index.php?sobrenos=$matches[1]&embed=true\";s:29:\"sobrenos/([^/]+)/trackback/?$\";s:35:\"index.php?sobrenos=$matches[1]&tb=1\";s:37:\"sobrenos/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?sobrenos=$matches[1]&paged=$matches[2]\";s:44:\"sobrenos/([^/]+)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?sobrenos=$matches[1]&cpage=$matches[2]\";s:33:\"sobrenos/([^/]+)(?:/([0-9]+))?/?$\";s:47:\"index.php?sobrenos=$matches[1]&page=$matches[2]\";s:25:\"sobrenos/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:35:\"sobrenos/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:55:\"sobrenos/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sobrenos/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:50:\"sobrenos/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:31:\"sobrenos/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"cta/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\"cta/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\"cta/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"cta/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\"cta/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\"cta/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:20:\"cta/([^/]+)/embed/?$\";s:36:\"index.php?cta=$matches[1]&embed=true\";s:24:\"cta/([^/]+)/trackback/?$\";s:30:\"index.php?cta=$matches[1]&tb=1\";s:32:\"cta/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?cta=$matches[1]&paged=$matches[2]\";s:39:\"cta/([^/]+)/comment-page-([0-9]{1,})/?$\";s:43:\"index.php?cta=$matches[1]&cpage=$matches[2]\";s:28:\"cta/([^/]+)(?:/([0-9]+))?/?$\";s:42:\"index.php?cta=$matches[1]&page=$matches[2]\";s:20:\"cta/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\"cta/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\"cta/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"cta/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\"cta/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\"cta/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:44:\"equipe_cabecalho/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"equipe_cabecalho/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"equipe_cabecalho/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"equipe_cabecalho/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"equipe_cabecalho/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"equipe_cabecalho/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"equipe_cabecalho/([^/]+)/embed/?$\";s:49:\"index.php?equipe_cabecalho=$matches[1]&embed=true\";s:37:\"equipe_cabecalho/([^/]+)/trackback/?$\";s:43:\"index.php?equipe_cabecalho=$matches[1]&tb=1\";s:45:\"equipe_cabecalho/([^/]+)/page/?([0-9]{1,})/?$\";s:56:\"index.php?equipe_cabecalho=$matches[1]&paged=$matches[2]\";s:52:\"equipe_cabecalho/([^/]+)/comment-page-([0-9]{1,})/?$\";s:56:\"index.php?equipe_cabecalho=$matches[1]&cpage=$matches[2]\";s:41:\"equipe_cabecalho/([^/]+)(?:/([0-9]+))?/?$\";s:55:\"index.php?equipe_cabecalho=$matches[1]&page=$matches[2]\";s:33:\"equipe_cabecalho/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:43:\"equipe_cabecalho/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:63:\"equipe_cabecalho/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"equipe_cabecalho/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:58:\"equipe_cabecalho/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:39:\"equipe_cabecalho/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:40:\"equipe_dados/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:50:\"equipe_dados/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:70:\"equipe_dados/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"equipe_dados/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:65:\"equipe_dados/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:46:\"equipe_dados/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:29:\"equipe_dados/([^/]+)/embed/?$\";s:45:\"index.php?equipe_dados=$matches[1]&embed=true\";s:33:\"equipe_dados/([^/]+)/trackback/?$\";s:39:\"index.php?equipe_dados=$matches[1]&tb=1\";s:41:\"equipe_dados/([^/]+)/page/?([0-9]{1,})/?$\";s:52:\"index.php?equipe_dados=$matches[1]&paged=$matches[2]\";s:48:\"equipe_dados/([^/]+)/comment-page-([0-9]{1,})/?$\";s:52:\"index.php?equipe_dados=$matches[1]&cpage=$matches[2]\";s:37:\"equipe_dados/([^/]+)(?:/([0-9]+))?/?$\";s:51:\"index.php?equipe_dados=$matches[1]&page=$matches[2]\";s:29:\"equipe_dados/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:39:\"equipe_dados/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:59:\"equipe_dados/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"equipe_dados/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:54:\"equipe_dados/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:35:\"equipe_dados/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:27:\"[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\"[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\"[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\"[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\"[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"([^/]+)/embed/?$\";s:37:\"index.php?name=$matches[1]&embed=true\";s:20:\"([^/]+)/trackback/?$\";s:31:\"index.php?name=$matches[1]&tb=1\";s:40:\"([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:35:\"([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?name=$matches[1]&feed=$matches[2]\";s:28:\"([^/]+)/page/?([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&paged=$matches[2]\";s:35:\"([^/]+)/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?name=$matches[1]&cpage=$matches[2]\";s:24:\"([^/]+)(?:/([0-9]+))?/?$\";s:43:\"index.php?name=$matches[1]&page=$matches[2]\";s:16:\"[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:26:\"[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:46:\"[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:41:\"[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:22:\"[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";}', 'yes'),
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
(106, 'cron', 'a:7:{i:1681787298;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1681819698;a:4:{s:18:\"wp_https_detection\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681819711;a:1:{s:21:\"wp_update_user_counts\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1681862898;a:2:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681862911;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1681862912;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}s:7:\"version\";i:2;}', 'yes'),
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
(384, 'cptui_post_types', 'a:5:{s:6:\"banner\";a:34:{s:4:\"name\";s:6:\"banner\";s:5:\"label\";s:7:\"Banners\";s:14:\"singular_label\";s:6:\"banner\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:6:\"Banner\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:8:\"sobrenos\";a:34:{s:4:\"name\";s:8:\"sobrenos\";s:5:\"label\";s:6:\"Sobres\";s:14:\"singular_label\";s:5:\"Sobre\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:5:\"Sobre\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:3:\"cta\";a:34:{s:4:\"name\";s:3:\"cta\";s:5:\"label\";s:3:\"Cta\";s:14:\"singular_label\";s:3:\"Cta\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:16:\"equipe_cabecalho\";a:34:{s:4:\"name\";s:16:\"equipe_cabecalho\";s:5:\"label\";s:17:\"Equipe cabeçalho\";s:14:\"singular_label\";s:17:\"Equipe cabeçalho\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:2:{i:0;s:5:\"title\";i:1;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}s:12:\"equipe_dados\";a:34:{s:4:\"name\";s:12:\"equipe_dados\";s:5:\"label\";s:21:\"Equipe dados pessoais\";s:14:\"singular_label\";s:21:\"Equipe dados pessoais\";s:11:\"description\";s:0:\"\";s:6:\"public\";s:4:\"true\";s:18:\"publicly_queryable\";s:4:\"true\";s:7:\"show_ui\";s:4:\"true\";s:17:\"show_in_nav_menus\";s:4:\"true\";s:16:\"delete_with_user\";s:5:\"false\";s:12:\"show_in_rest\";s:4:\"true\";s:9:\"rest_base\";s:0:\"\";s:21:\"rest_controller_class\";s:0:\"\";s:14:\"rest_namespace\";s:0:\"\";s:11:\"has_archive\";s:5:\"false\";s:18:\"has_archive_string\";s:0:\"\";s:19:\"exclude_from_search\";s:5:\"false\";s:15:\"capability_type\";s:4:\"post\";s:12:\"hierarchical\";s:5:\"false\";s:10:\"can_export\";s:5:\"false\";s:7:\"rewrite\";s:4:\"true\";s:12:\"rewrite_slug\";s:0:\"\";s:17:\"rewrite_withfront\";s:4:\"true\";s:9:\"query_var\";s:4:\"true\";s:14:\"query_var_slug\";s:0:\"\";s:13:\"menu_position\";s:0:\"\";s:12:\"show_in_menu\";s:4:\"true\";s:19:\"show_in_menu_string\";s:0:\"\";s:9:\"menu_icon\";N;s:20:\"register_meta_box_cb\";N;s:8:\"supports\";a:3:{i:0;s:5:\"title\";i:1;s:9:\"thumbnail\";i:2;s:13:\"custom-fields\";}s:10:\"taxonomies\";a:0:{}s:6:\"labels\";a:29:{s:9:\"menu_name\";s:0:\"\";s:9:\"all_items\";s:0:\"\";s:7:\"add_new\";s:0:\"\";s:12:\"add_new_item\";s:0:\"\";s:9:\"edit_item\";s:0:\"\";s:8:\"new_item\";s:0:\"\";s:9:\"view_item\";s:0:\"\";s:10:\"view_items\";s:0:\"\";s:12:\"search_items\";s:0:\"\";s:9:\"not_found\";s:0:\"\";s:18:\"not_found_in_trash\";s:0:\"\";s:17:\"parent_item_colon\";s:0:\"\";s:14:\"featured_image\";s:0:\"\";s:18:\"set_featured_image\";s:0:\"\";s:21:\"remove_featured_image\";s:0:\"\";s:18:\"use_featured_image\";s:0:\"\";s:8:\"archives\";s:0:\"\";s:16:\"insert_into_item\";s:0:\"\";s:21:\"uploaded_to_this_item\";s:0:\"\";s:17:\"filter_items_list\";s:0:\"\";s:21:\"items_list_navigation\";s:0:\"\";s:10:\"items_list\";s:0:\"\";s:10:\"attributes\";s:0:\"\";s:14:\"name_admin_bar\";s:0:\"\";s:14:\"item_published\";s:0:\"\";s:24:\"item_published_privately\";s:0:\"\";s:22:\"item_reverted_to_draft\";s:0:\"\";s:14:\"item_scheduled\";s:0:\"\";s:12:\"item_updated\";s:0:\"\";}s:15:\"custom_supports\";s:0:\"\";s:16:\"enter_title_here\";s:0:\"\";}}', 'yes'),
(404, 'recovery_mode_email_last_sent', '1680053612', 'yes'),
(446, '_transient_health-check-site-status-result', '{\"good\":13,\"recommended\":7,\"critical\":1}', 'yes'),
(476, 'wpvivid_remote_init', 'init', 'no'),
(478, 'wpvivid_check_htaccess_rule_free', '1', 'yes'),
(485, 'clean_task', 'a:0:{}', 'no'),
(488, 'wpvivid_init', 'init', 'no'),
(489, 'wpvivid_schedule_setting', 'a:1:{s:6:\"enable\";b:0;}', 'no'),
(490, 'wpvivid_compress_setting', 'a:7:{s:13:\"compress_type\";s:3:\"zip\";s:13:\"max_file_size\";i:200;s:11:\"no_compress\";b:1;s:13:\"use_temp_file\";i:1;s:13:\"use_temp_size\";i:16;s:17:\"exclude_file_size\";i:0;s:24:\"subpackage_plugin_upload\";b:0;}', 'no'),
(491, 'wpvivid_local_setting', 'a:2:{s:4:\"path\";s:14:\"wpvividbackups\";s:10:\"save_local\";i:1;}', 'no'),
(492, 'wpvivid_upload_setting', 'a:2:{s:15:\"remote_selected\";a:0:{}s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:216:\"ya29.a0Ael9sCPFr1tAQ4Z5gmJpvSTfj7W7tV6OAXmtd1kXdAPO3RUa5TkHvXUHrThKtvXhxkp4eiHXU65ZaNDfiDpZImMbLw4yDlDCH6t0uFNyTPQXXfDpAwHgFBcz8klomxAvZryC0FbJSD7EZ17n6G0cYwEdxgbEMPrr0waCgYKASESARISFQF4udJhYHVdijtaPWrCsg_-YcCMHA0169\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681703880;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}', 'no'),
(493, 'wpvivid_common_setting', 'a:10:{s:18:\"max_execution_time\";i:300;s:16:\"max_backup_count\";i:3;s:14:\"show_admin_bar\";b:1;s:14:\"domain_include\";b:1;s:15:\"estimate_backup\";b:1;s:16:\"max_resume_count\";i:6;s:12:\"memory_limit\";s:4:\"256M\";s:20:\"restore_memory_limit\";s:4:\"512M\";s:12:\"migrate_size\";s:4:\"2048\";s:17:\"log_save_location\";s:26:\"wpvividbackups\\wpvivid_log\";}', 'no'),
(494, 'wpvivid_email_setting', 'a:3:{s:7:\"send_to\";a:0:{}s:6:\"always\";b:1;s:12:\"email_enable\";b:0;}', 'no'),
(495, 'wpvivid_saved_api_token', 'a:0:{}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(497, 'wpvivid_last_msg', 'a:8:{s:2:\"id\";s:21:\"wpvivid-643cc38c65df7\";s:4:\"type\";s:6:\"Manual\";s:7:\"options\";a:22:{s:7:\"ismerge\";s:1:\"1\";s:4:\"lock\";s:1:\"0\";s:12:\"backup_files\";s:8:\"files+db\";s:5:\"local\";s:1:\"0\";s:6:\"remote\";s:1:\"1\";s:4:\"type\";s:6:\"Manual\";s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:11:\"file_prefix\";s:60:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57\";s:13:\"log_file_name\";s:28:\"wpvivid-643cc38c65df7_backup\";s:13:\"log_file_path\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643cc38c65df7_backup_log.txt\";s:6:\"prefix\";s:60:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57\";s:3:\"dir\";s:53:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content/wpvividbackups\";s:10:\"backup_dir\";s:14:\"wpvividbackups\";s:14:\"exclude-tables\";a:6:{i:0;s:14:\"wp_wpvivid_log\";i:1;s:28:\"wp_wpvivid_increment_big_ids\";i:2;s:18:\"wp_wpvivid_options\";i:3;s:22:\"wp_wpvivid_record_task\";i:4;s:19:\"wp_wpvivid_merge_db\";i:5;s:20:\"wp_wpvivid_merge_ids\";}s:14:\"include-tables\";a:0:{}s:13:\"exclude_files\";a:11:{i:0;s:80:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wpvivid\\-backuprestore#\";i:1;s:68:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wp\\-cerber#\";i:2;s:60:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/\\.#\";i:3;s:78:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wpvivid\\-backup\\-pro#\";i:4;s:74:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/plugins\\/wpvividdashboard#\";i:5;s:56:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/upgrade#\";i:6;s:64:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvivid_uploads#\";i:7;s:64:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/WPvivid_Uploads#\";i:8;s:56:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvivid#\";i:9;s:63:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvividbackups#\";i:10;s:73:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-content\\/wpvivid_uploads\\\\Isolate#\";}s:13:\"include_files\";a:2:{i:0;s:45:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-admin#\";i:1;s:48:\"#^C\\:\\/xampp\\/htdocs\\/wp_etecidos\\/wp\\-includes#\";}s:15:\"include_plugins\";a:0:{}s:14:\"include_themes\";a:0:{}s:10:\"save_local\";i:0;s:14:\"backup_options\";a:1:{s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}}s:14:\"remote_options\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:216:\"ya29.a0Ael9sCMQgJjb0VSSVO6qD_51Laf9K90ndesNHuRh6eO4KpIGZdCAdruYiJiHWpszIxPg5A3-d_pqqHln8G8brfwLxGvfvX4axcJ4emhmsCKSHYDpwRA2BiyT7mIf8x-EYFMqpZjXwHFTZiimtLuICW-8HPWcLmXy8QaCgYKAfISARISFQF4udJhqHMhSwY2PufXnl1UL5tkGQ0169\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681696467;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}}s:6:\"status\";a:7:{s:15:\"task_start_time\";i:1681703820;s:13:\"task_end_time\";i:1681703889;s:10:\"start_time\";i:1681703820;s:8:\"run_time\";i:1681703889;s:7:\"timeout\";i:1681703836;s:3:\"str\";s:9:\"completed\";s:12:\"resume_count\";i:0;}s:7:\"setting\";a:11:{s:17:\"db_connect_method\";s:4:\"wpdb\";s:12:\"memory_limit\";s:4:\"256M\";s:18:\"max_execution_time\";i:300;s:23:\"compress_file_use_cache\";b:0;s:19:\"compress_file_count\";i:500;s:13:\"max_file_size\";i:200;s:17:\"max_sql_file_size\";i:200;s:17:\"exclude_file_size\";i:0;s:16:\"max_resume_count\";i:6;s:10:\"zip_method\";s:10:\"ziparchive\";s:8:\"is_merge\";b:1;}s:4:\"data\";a:3:{s:5:\"doing\";s:6:\"upload\";s:6:\"backup\";a:3:{s:5:\"doing\";s:12:\"backup_merge\";s:8:\"progress\";i:100;s:7:\"sub_job\";a:7:{s:9:\"backup_db\";a:2:{s:8:\"progress\";s:30:\"Backing up backup_db finished.\";s:8:\"job_data\";a:0:{}}s:13:\"backup_themes\";a:2:{s:8:\"progress\";s:34:\"Backing up backup_themes finished.\";s:8:\"job_data\";a:0:{}}s:13:\"backup_plugin\";a:2:{s:8:\"progress\";s:34:\"Backing up backup_plugin finished.\";s:8:\"job_data\";a:0:{}}s:14:\"backup_uploads\";a:2:{s:8:\"progress\";s:35:\"Backing up backup_uploads finished.\";s:8:\"job_data\";a:0:{}}s:14:\"backup_content\";a:2:{s:8:\"progress\";s:35:\"Backing up backup_content finished.\";s:8:\"job_data\";a:0:{}}s:11:\"backup_core\";a:2:{s:8:\"progress\";s:32:\"Backing up backup_core finished.\";s:8:\"job_data\";a:0:{}}s:12:\"backup_merge\";a:2:{s:8:\"progress\";s:33:\"Backing up backup_merge finished.\";s:8:\"job_data\";a:0:{}}}}s:6:\"upload\";a:5:{s:5:\"doing\";s:28:\"wpvivid-remote-641bb02f25744\";s:8:\"finished\";i:1;s:8:\"progress\";i:100;s:8:\"job_data\";a:0:{}s:7:\"sub_job\";a:2:{s:11:\"googledrive\";a:4:{s:8:\"finished\";i:1;s:8:\"progress\";s:96:\"Uploading localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip completed.\";s:8:\"job_data\";a:1:{s:75:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip\";a:2:{s:4:\"size\";i:104629536;s:8:\"uploaded\";i:1;}}s:11:\"upload_data\";a:6:{s:6:\"offset\";i:103809024;s:12:\"current_name\";s:75:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip\";s:12:\"current_size\";i:104629536;s:9:\"last_time\";i:1681703884;s:9:\"last_size\";i:93323264;s:8:\"descript\";s:85:\"Uploading localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip\";}}s:28:\"wpvivid-remote-641bb02f25744\";a:4:{s:8:\"finished\";i:1;s:8:\"progress\";s:27:\"Finish upload togoogledrive\";s:8:\"job_data\";a:0:{}s:11:\"upload_data\";a:0:{}}}}}s:4:\"jobs\";a:7:{i:0;a:8:{s:11:\"backup_type\";s:9:\"backup_db\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:16:\"mysql_file_index\";i:2;s:8:\"sub_jobs\";a:12:{s:21:\"wp_term_relationships\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:21:\"wp_term_relationships\";s:4:\"size\";i:32768;s:4:\"rows\";s:2:\"11\";}s:8:\"wp_links\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_links\";s:4:\"size\";i:32768;s:4:\"rows\";s:1:\"0\";}s:14:\"wp_commentmeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:14:\"wp_commentmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}s:16:\"wp_term_taxonomy\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:16:\"wp_term_taxonomy\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}s:11:\"wp_termmeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_termmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}s:8:\"wp_terms\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_terms\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}s:11:\"wp_usermeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_usermeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:2:\"31\";}s:8:\"wp_users\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_users\";s:4:\"size\";i:65536;s:4:\"rows\";s:1:\"0\";}s:11:\"wp_comments\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_comments\";s:4:\"size\";i:98304;s:4:\"rows\";s:1:\"0\";}s:11:\"wp_postmeta\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:11:\"wp_postmeta\";s:4:\"size\";i:98304;s:4:\"rows\";s:3:\"309\";}s:8:\"wp_posts\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:8:\"wp_posts\";s:4:\"size\";i:131072;s:4:\"rows\";s:3:\"102\";}s:10:\"wp_options\";a:6:{s:5:\"index\";i:0;s:8:\"finished\";i:0;s:7:\"created\";i:0;s:4:\"name\";s:10:\"wp_options\";s:4:\"size\";i:1130496;s:4:\"rows\";s:3:\"167\";}}s:16:\"mysql_dump_files\";a:1:{i:0;s:72:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57.part001.sql\";}s:8:\"zip_file\";a:1:{s:74:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_db.zip\";a:2:{s:8:\"filename\";s:74:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_db.zip\";s:8:\"finished\";i:1;}}}i:1;a:6:{s:11:\"backup_type\";s:13:\"backup_themes\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:1000;s:8:\"zip_file\";a:1:{s:78:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_themes.zip\";a:2:{s:8:\"filename\";s:78:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_themes.zip\";s:8:\"finished\";i:1;}}}i:2;a:6:{s:11:\"backup_type\";s:13:\"backup_plugin\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:500;s:8:\"zip_file\";a:1:{s:78:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_plugin.zip\";a:2:{s:8:\"filename\";s:78:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_plugin.zip\";s:8:\"finished\";i:1;}}}i:3;a:6:{s:11:\"backup_type\";s:14:\"backup_uploads\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:500;s:8:\"zip_file\";a:1:{s:79:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_uploads.zip\";a:2:{s:8:\"filename\";s:79:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_uploads.zip\";s:8:\"finished\";i:1;}}}i:4;a:6:{s:11:\"backup_type\";s:14:\"backup_content\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:500;s:8:\"zip_file\";a:1:{s:79:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_content.zip\";a:2:{s:8:\"filename\";s:79:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_content.zip\";s:8:\"finished\";i:1;}}}i:5;a:6:{s:11:\"backup_type\";s:11:\"backup_core\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:5:\"index\";i:3000;s:8:\"zip_file\";a:1:{s:76:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_core.zip\";a:2:{s:8:\"filename\";s:76:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_core.zip\";s:8:\"finished\";i:1;}}}i:6;a:7:{s:11:\"backup_type\";s:12:\"backup_merge\";s:8:\"finished\";i:1;s:8:\"progress\";i:0;s:10:\"file_index\";i:1;s:10:\"child_file\";a:6:{s:74:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_db.zip\";a:10:{s:5:\"files\";a:1:{i:0;s:74:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_db.sql\";}s:6:\"tables\";a:12:{i:0;a:3:{s:4:\"name\";s:21:\"wp_term_relationships\";s:4:\"size\";i:32768;s:4:\"rows\";s:2:\"11\";}i:1;a:3:{s:4:\"name\";s:8:\"wp_links\";s:4:\"size\";i:32768;s:4:\"rows\";s:1:\"0\";}i:2;a:3:{s:4:\"name\";s:14:\"wp_commentmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}i:3;a:3:{s:4:\"name\";s:16:\"wp_term_taxonomy\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}i:4;a:3:{s:4:\"name\";s:11:\"wp_termmeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"0\";}i:5;a:3:{s:4:\"name\";s:8:\"wp_terms\";s:4:\"size\";i:49152;s:4:\"rows\";s:1:\"3\";}i:6;a:3:{s:4:\"name\";s:11:\"wp_usermeta\";s:4:\"size\";i:49152;s:4:\"rows\";s:2:\"31\";}i:7;a:3:{s:4:\"name\";s:8:\"wp_users\";s:4:\"size\";i:65536;s:4:\"rows\";s:1:\"0\";}i:8;a:3:{s:4:\"name\";s:11:\"wp_comments\";s:4:\"size\";i:98304;s:4:\"rows\";s:1:\"0\";}i:9;a:3:{s:4:\"name\";s:11:\"wp_postmeta\";s:4:\"size\";i:98304;s:4:\"rows\";s:3:\"309\";}i:10;a:3:{s:4:\"name\";s:8:\"wp_posts\";s:4:\"size\";i:131072;s:4:\"rows\";s:3:\"102\";}i:11;a:3:{s:4:\"name\";s:10:\"wp_options\";s:4:\"size\";i:1130496;s:4:\"rows\";s:3:\"167\";}}s:7:\"dump_db\";i:1;s:9:\"file_type\";s:9:\"databases\";s:8:\"home_url\";s:28:\"http://localhost/wp_etecidos\";s:9:\"root_flag\";s:6:\"custom\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:4:\"file\";s:82:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_db.part001.zip\";}s:78:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_themes.zip\";a:7:{s:9:\"file_type\";s:6:\"themes\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:6:\"themes\";a:4:{s:12:\"erikatecidos\";a:1:{s:4:\"slug\";s:12:\"erikatecidos\";}s:15:\"twentytwentyone\";a:1:{s:4:\"slug\";s:15:\"twentytwentyone\";}s:17:\"twentytwentythree\";a:1:{s:4:\"slug\";s:17:\"twentytwentythree\";}s:15:\"twentytwentytwo\";a:1:{s:4:\"slug\";s:15:\"twentytwentytwo\";}}s:4:\"file\";s:86:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_themes.part001.zip\";}s:78:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_plugin.zip\";a:7:{s:9:\"file_type\";s:6:\"plugin\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:6:\"plugin\";a:4:{s:22:\"advanced-custom-fields\";a:1:{s:4:\"slug\";s:22:\"advanced-custom-fields\";}s:7:\"akismet\";a:1:{s:4:\"slug\";s:7:\"akismet\";}s:14:\"classic-editor\";a:1:{s:4:\"slug\";s:14:\"classic-editor\";}s:19:\"custom-post-type-ui\";a:1:{s:4:\"slug\";s:19:\"custom-post-type-ui\";}}s:4:\"file\";s:86:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_plugin.part001.zip\";}s:79:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_uploads.zip\";a:6:{s:9:\"file_type\";s:6:\"upload\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:4:\"file\";s:87:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_uploads.part001.zip\";}s:79:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_content.zip\";a:6:{s:9:\"file_type\";s:10:\"wp-content\";s:9:\"root_flag\";s:10:\"wp-content\";s:11:\"php_version\";s:5:\"7.3.5\";s:13:\"mysql_version\";s:5:\"5.5.5\";s:10:\"wp_version\";s:3:\"6.2\";s:4:\"file\";s:87:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_content.part001.zip\";}s:76:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_core.zip\";a:6:{s:9:\"file_type\";s:7:\"wp-core\";s:12:\"include_path\";a:2:{i:0;s:11:\"wp-includes\";i:1;s:8:\"wp-admin\";}s:7:\"wp_core\";i:1;s:9:\"root_flag\";s:4:\"root\";s:8:\"home_url\";s:28:\"http://localhost/wp_etecidos\";s:4:\"file\";s:84:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_core.part001.zip\";}}s:5:\"index\";i:6;s:8:\"zip_file\";a:1:{s:75:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip\";a:2:{s:8:\"filename\";s:75:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip\";s:8:\"finished\";i:1;}}}}s:12:\"dump_setting\";a:14:{s:8:\"database\";s:13:\"erika_tecidos\";s:4:\"host\";s:9:\"localhost\";s:4:\"user\";s:4:\"root\";s:4:\"pass\";s:0:\"\";s:8:\"site_url\";s:28:\"http://localhost/wp_etecidos\";s:8:\"home_url\";s:28:\"http://localhost/wp_etecidos\";s:11:\"content_url\";s:39:\"http://localhost/wp_etecidos/wp-content\";s:6:\"prefix\";s:3:\"wp_\";s:17:\"db_connect_method\";s:4:\"wpdb\";s:11:\"file_prefix\";s:60:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57\";s:4:\"path\";s:53:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content/wpvividbackups\";s:13:\"max_file_size\";i:209715200;s:14:\"exclude-tables\";a:6:{i:0;s:14:\"wp_wpvivid_log\";i:1;s:28:\"wp_wpvivid_increment_big_ids\";i:2;s:18:\"wp_wpvivid_options\";i:3;s:22:\"wp_wpvivid_record_task\";i:4;s:19:\"wp_wpvivid_merge_db\";i:5;s:20:\"wp_wpvivid_merge_ids\";}s:14:\"include-tables\";a:0:{}}}', 'no'),
(498, 'wpvivid_user_history', 'a:1:{s:15:\"remote_selected\";a:1:{i:0;s:28:\"wpvivid-remote-641bb02f25744\";}}', 'no'),
(499, 'wpvivid_backup_list', 'a:3:{s:21:\"wpvivid-643b606bc712c\";a:11:{s:4:\"type\";s:6:\"Manual\";s:11:\"create_time\";i:1681612908;s:13:\"manual_delete\";i:0;s:5:\"local\";a:1:{s:4:\"path\";s:14:\"wpvividbackups\";}s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}s:10:\"save_local\";i:0;s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:3:\"log\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643b606bc712c_backup_log.txt\";s:6:\"backup\";a:2:{s:6:\"result\";s:7:\"success\";s:5:\"files\";a:1:{i:0;a:2:{s:9:\"file_name\";s:75:\"localhost_wp_etecidos_wpvivid-643b606bc712c_2023-04-15-23-41_backup_all.zip\";s:4:\"size\";i:97259444;}}}s:6:\"remote\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0Ael9sCPpDEE0HfDdhZny7m7l25kWeANHkeaPmRlf1aakKOEAZo8ilBDe-9yhdeoNMAqOu1BaHLvUwiZgdBtaG1VDvIKPZuDTvxNDeV-SKBfJzskRIcu67SbERWHaSZkXAMEz7N3nMZtEzWyDkANoucSrgQhXfFGtaCgYKAYsSARISFQF4udJhCBMjGlWg-MmiZW-KaKfp9g0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1680655075;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}s:4:\"lock\";s:1:\"1\";}s:21:\"wpvivid-643ca695e8fec\";a:11:{s:4:\"type\";s:6:\"Manual\";s:11:\"create_time\";i:1681696406;s:13:\"manual_delete\";i:0;s:5:\"local\";a:1:{s:4:\"path\";s:14:\"wpvividbackups\";}s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}s:10:\"save_local\";i:0;s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:3:\"log\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643ca695e8fec_backup_log.txt\";s:6:\"backup\";a:2:{s:6:\"result\";s:7:\"success\";s:5:\"files\";a:1:{i:0;a:2:{s:9:\"file_name\";s:75:\"localhost_wp_etecidos_wpvivid-643ca695e8fec_2023-04-16-22-53_backup_all.zip\";s:4:\"size\";i:97153861;}}}s:6:\"remote\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:214:\"ya29.a0Ael9sCPyNeOk8I6ZCe-00fzTdlmU1FHrxI2B958K5Z_EJRMcU4Rc19v_2JoyqLLopRP6zG3Ll-EdGEehVuLXAfDBACWLHGaMNivLqGXqLmVymilBWBC9tzM4QtuJ9_2TauGnUiPMO_rp5dPopF3q1_GVvFHLSisoaCgYKAbsSARISFQF4udJhM35eW2WYXBhOMNwlkHjf7A0167\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681615798;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}s:4:\"lock\";s:1:\"0\";}s:21:\"wpvivid-643cc38c65df7\";a:11:{s:4:\"type\";s:6:\"Manual\";s:11:\"create_time\";i:1681703820;s:13:\"manual_delete\";i:0;s:5:\"local\";a:1:{s:4:\"path\";s:14:\"wpvividbackups\";}s:8:\"compress\";a:1:{s:13:\"compress_type\";s:3:\"zip\";}s:10:\"save_local\";i:0;s:13:\"backup_prefix\";s:21:\"localhost_wp_etecidos\";s:3:\"log\";s:102:\"C:\\xampp\\htdocs\\wp_etecidos/wp-content\\wpvividbackups\\wpvivid_log\\wpvivid-643cc38c65df7_backup_log.txt\";s:6:\"backup\";a:2:{s:6:\"result\";s:7:\"success\";s:5:\"files\";a:1:{i:0;a:2:{s:9:\"file_name\";s:75:\"localhost_wp_etecidos_wpvivid-643cc38c65df7_2023-04-17-00-57_backup_all.zip\";s:4:\"size\";i:104629536;}}}s:6:\"remote\";a:1:{s:28:\"wpvivid-remote-641bb02f25744\";a:6:{s:4:\"name\";s:26:\"wpvivid_backup_wp_etecidos\";s:4:\"path\";s:14:\"wpvivid_backup\";s:7:\"auth_id\";s:26:\"wpvivid-auth-641bafed4342f\";s:4:\"type\";s:11:\"googledrive\";s:5:\"token\";a:6:{s:12:\"access_token\";s:216:\"ya29.a0Ael9sCMQgJjb0VSSVO6qD_51Laf9K90ndesNHuRh6eO4KpIGZdCAdruYiJiHWpszIxPg5A3-d_pqqHln8G8brfwLxGvfvX4axcJ4emhmsCKSHYDpwRA2BiyT7mIf8x-EYFMqpZjXwHFTZiimtLuICW-8HPWcLmXy8QaCgYKAfISARISFQF4udJhqHMhSwY2PufXnl1UL5tkGQ0169\";s:10:\"expires_in\";i:3599;s:5:\"scope\";s:42:\"https://www.googleapis.com/auth/drive.file\";s:10:\"token_type\";s:6:\"Bearer\";s:7:\"created\";i:1681696467;s:13:\"refresh_token\";s:103:\"1//01GMtFZLlQNlBCgYIARAAGAESNwF-L9IriUcG1OR5KbQ1KlidGfRQ9akn31wb0vYd4GCvv73SWDDTX_pX20SYN0Tj3BU3YZetcCg\";}s:2:\"id\";s:28:\"wpvivid-remote-641bb02f25744\";}}s:4:\"lock\";s:1:\"0\";}}', 'no'),
(500, 'wpvivid_need_review', 'not', 'no'),
(501, 'cron_backup_count', 'a:0:{}', 'no'),
(502, 'wpvivid_review_msg', 'a:0:{}', 'no'),
(524, 'wpvivid_backup_success_count', '6', 'no'),
(525, 'wpvivid_backup_reports', 'a:6:{s:21:\"wpvivid-641bb061e8431\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-641bb061e8431\";s:11:\"backup_time\";i:1679536226;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-642cc2d46b473\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-642cc2d46b473\";s:11:\"backup_time\";i:1680655060;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-643b606bc712c\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-643b606bc712c\";s:11:\"backup_time\";i:1681612908;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-643b6b7703696\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-643b6b7703696\";s:11:\"backup_time\";i:1681615735;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-643ca695e8fec\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-643ca695e8fec\";s:11:\"backup_time\";i:1681696406;s:6:\"status\";s:9:\"Succeeded\";}s:21:\"wpvivid-643cc38c65df7\";a:3:{s:7:\"task_id\";s:21:\"wpvivid-643cc38c65df7\";s:11:\"backup_time\";i:1681703820;s:6:\"status\";s:9:\"Succeeded\";}}', 'yes'),
(703, '_site_transient_timeout_php_check_472f71d2a071d463a95f84346288dc89', '1682102453', 'no'),
(704, '_site_transient_php_check_472f71d2a071d463a95f84346288dc89', 'a:5:{s:19:\"recommended_version\";s:3:\"7.4\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:0;s:9:\"is_secure\";b:0;s:13:\"is_acceptable\";b:0;}', 'no'),
(707, '_site_transient_timeout_browser_c3fcd9e52fd775c43c9553a961bfc52c', '1682102666', 'no'),
(708, '_site_transient_browser_c3fcd9e52fd775c43c9553a961bfc52c', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:9:\"111.0.0.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(820, 'wpvivid_task_list', 'a:0:{}', 'no'),
(849, '_site_transient_timeout_theme_roots', '1681778343', 'no'),
(850, '_site_transient_theme_roots', 'a:4:{s:12:\"erikatecidos\";s:7:\"/themes\";s:15:\"twentytwentyone\";s:7:\"/themes\";s:17:\"twentytwentythree\";s:7:\"/themes\";s:15:\"twentytwentytwo\";s:7:\"/themes\";}', 'no'),
(853, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.2.zip\";s:6:\"locale\";s:5:\"pt_BR\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:63:\"https://downloads.wordpress.org/release/pt_BR/wordpress-6.2.zip\";s:10:\"no_content\";s:0:\"\";s:11:\"new_bundled\";s:0:\"\";s:7:\"partial\";s:0:\"\";s:8:\"rollback\";s:0:\"\";}s:7:\"current\";s:3:\"6.2\";s:7:\"version\";s:3:\"6.2\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"6.1\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1681776546;s:15:\"version_checked\";s:3:\"6.2\";s:12:\"translations\";a:0:{}}', 'no'),
(854, '_site_transient_update_themes', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681776546;s:7:\"checked\";a:4:{s:12:\"erikatecidos\";s:3:\"1.0\";s:15:\"twentytwentyone\";s:3:\"1.7\";s:17:\"twentytwentythree\";s:3:\"1.0\";s:15:\"twentytwentytwo\";s:3:\"1.3\";}s:8:\"response\";a:3:{s:15:\"twentytwentyone\";a:6:{s:5:\"theme\";s:15:\"twentytwentyone\";s:11:\"new_version\";s:3:\"1.8\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentyone/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentyone.1.8.zip\";s:8:\"requires\";s:3:\"5.3\";s:12:\"requires_php\";s:3:\"5.6\";}s:17:\"twentytwentythree\";a:6:{s:5:\"theme\";s:17:\"twentytwentythree\";s:11:\"new_version\";s:3:\"1.1\";s:3:\"url\";s:47:\"https://wordpress.org/themes/twentytwentythree/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/theme/twentytwentythree.1.1.zip\";s:8:\"requires\";s:3:\"6.1\";s:12:\"requires_php\";s:3:\"5.6\";}s:15:\"twentytwentytwo\";a:6:{s:5:\"theme\";s:15:\"twentytwentytwo\";s:11:\"new_version\";s:3:\"1.4\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentytwentytwo/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentytwentytwo.1.4.zip\";s:8:\"requires\";s:3:\"5.9\";s:12:\"requires_php\";s:3:\"5.6\";}}s:9:\"no_update\";a:0:{}s:12:\"translations\";a:1:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentytwentyone\";s:8:\"language\";s:5:\"pt_BR\";s:7:\"version\";s:3:\"1.0\";s:7:\"updated\";s:19:\"2021-04-19 14:40:37\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentytwentyone/1.0/pt_BR.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(855, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1681776547;s:8:\"response\";a:5:{s:30:\"advanced-custom-fields/acf.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:36:\"w.org/plugins/advanced-custom-fields\";s:4:\"slug\";s:22:\"advanced-custom-fields\";s:6:\"plugin\";s:30:\"advanced-custom-fields/acf.php\";s:11:\"new_version\";s:5:\"6.1.4\";s:3:\"url\";s:53:\"https://wordpress.org/plugins/advanced-custom-fields/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/advanced-custom-fields.6.1.4.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png?rev=1082746\";s:2:\"1x\";s:75:\"https://ps.w.org/advanced-custom-fields/assets/icon-128x128.png?rev=1082746\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg?rev=2892919\";s:2:\"1x\";s:77:\"https://ps.w.org/advanced-custom-fields/assets/banner-772x250.jpg?rev=2892919\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.7\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:3:\"5.1\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:54:\"https://downloads.wordpress.org/plugin/akismet.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:60:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=2818463\";s:2:\"1x\";s:60:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=2818463\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.0\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.2\";}s:33:\"classic-editor/classic-editor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:28:\"w.org/plugins/classic-editor\";s:4:\"slug\";s:14:\"classic-editor\";s:6:\"plugin\";s:33:\"classic-editor/classic-editor.php\";s:11:\"new_version\";s:5:\"1.6.3\";s:3:\"url\";s:45:\"https://wordpress.org/plugins/classic-editor/\";s:7:\"package\";s:63:\"https://downloads.wordpress.org/plugin/classic-editor.1.6.3.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-256x256.png?rev=1998671\";s:2:\"1x\";s:67:\"https://ps.w.org/classic-editor/assets/icon-128x128.png?rev=1998671\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:70:\"https://ps.w.org/classic-editor/assets/banner-1544x500.png?rev=1998671\";s:2:\"1x\";s:69:\"https://ps.w.org/classic-editor/assets/banner-772x250.png?rev=1998676\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.9\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:5:\"5.2.4\";}s:43:\"custom-post-type-ui/custom-post-type-ui.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:33:\"w.org/plugins/custom-post-type-ui\";s:4:\"slug\";s:19:\"custom-post-type-ui\";s:6:\"plugin\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:11:\"new_version\";s:6:\"1.13.5\";s:3:\"url\";s:50:\"https://wordpress.org/plugins/custom-post-type-ui/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/custom-post-type-ui.1.13.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-256x256.png?rev=2744389\";s:2:\"1x\";s:72:\"https://ps.w.org/custom-post-type-ui/assets/icon-128x128.png?rev=2744389\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:75:\"https://ps.w.org/custom-post-type-ui/assets/banner-1544x500.png?rev=2744389\";s:2:\"1x\";s:74:\"https://ps.w.org/custom-post-type-ui/assets/banner-772x250.png?rev=2744389\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"5.9\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.6\";}s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:35:\"w.org/plugins/wpvivid-backuprestore\";s:4:\"slug\";s:21:\"wpvivid-backuprestore\";s:6:\"plugin\";s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";s:11:\"new_version\";s:6:\"0.9.86\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/wpvivid-backuprestore/\";s:7:\"package\";s:71:\"https://downloads.wordpress.org/plugin/wpvivid-backuprestore.0.9.86.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wpvivid-backuprestore/assets/icon-256x256.png?rev=2899202\";s:2:\"1x\";s:74:\"https://ps.w.org/wpvivid-backuprestore/assets/icon-128x128.png?rev=2899202\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:77:\"https://ps.w.org/wpvivid-backuprestore/assets/banner-1544x500.png?rev=2899202\";s:2:\"1x\";s:76:\"https://ps.w.org/wpvivid-backuprestore/assets/banner-772x250.png?rev=2899202\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.5\";s:6:\"tested\";s:3:\"6.2\";s:12:\"requires_php\";s:3:\"5.3\";}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:1:{s:9:\"hello.php\";O:8:\"stdClass\":10:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/hello-dolly/assets/banner-1544x500.jpg?rev=2645582\";s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}s:8:\"requires\";s:3:\"4.6\";}}s:7:\"checked\";a:6:{s:30:\"advanced-custom-fields/acf.php\";s:5:\"6.0.7\";s:19:\"akismet/akismet.php\";s:5:\"5.0.1\";s:33:\"classic-editor/classic-editor.php\";s:5:\"1.6.2\";s:43:\"custom-post-type-ui/custom-post-type-ui.php\";s:6:\"1.13.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:47:\"wpvivid-backuprestore/wpvivid-backuprestore.php\";s:6:\"0.9.84\";}}', 'no');

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
(133, 78, '_edit_lock', '1681702618:1'),
(134, 78, '_thumbnail_id', '22'),
(137, 81, '_edit_last', '1'),
(138, 81, '_edit_lock', '1681703671:1'),
(152, 78, '_wp_old_slug', 'dsdds'),
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
(298, 124, 'texto_destaque_do_banner', 'ERIKA Tecidos e Decorações'),
(299, 124, '_texto_destaque_do_banner', 'field_642ccaa3ef3b4'),
(300, 124, 'texto_secundario_do_banner', 'Transformando tecidos em arte.'),
(301, 124, '_texto_secundario_do_banner', 'field_642ccab2f67eb'),
(302, 124, 'texto_botao_de_acao_do_banner', 'Quem somos'),
(303, 124, '_texto_botao_de_acao_do_banner', 'field_642ccac369758'),
(304, 124, 'texto_botao_video_do_banner', 'Assista o vídeo'),
(305, 124, '_texto_botao_video_do_banner', 'field_642ccad4f0928'),
(306, 124, 'usuario_id', ''),
(307, 124, '_usuario_id', 'field_642ccae035159'),
(308, 124, '_edit_lock', '1681738462:1'),
(309, 125, '_wp_attached_file', '2023/04/sofa-banner-1200x800-1.jpg'),
(310, 125, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1200;s:6:\"height\";i:801;s:4:\"file\";s:34:\"2023/04/sofa-banner-1200x800-1.jpg\";s:8:\"filesize\";i:228687;s:5:\"sizes\";a:4:{s:6:\"medium\";a:5:{s:4:\"file\";s:34:\"sofa-banner-1200x800-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:15810;}s:5:\"large\";a:5:{s:4:\"file\";s:35:\"sofa-banner-1200x800-1-1024x684.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:684;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:133713;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:34:\"sofa-banner-1200x800-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6940;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:34:\"sofa-banner-1200x800-1-768x513.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:513;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:81969;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(311, 124, '_thumbnail_id', '125'),
(312, 75, '_wp_trash_meta_status', 'publish'),
(313, 75, '_wp_trash_meta_time', '1681609766'),
(314, 75, '_wp_desired_post_slug', 'group_6419ece1808a5'),
(315, 76, '_wp_trash_meta_status', 'publish'),
(316, 76, '_wp_trash_meta_time', '1681609766'),
(317, 76, '_wp_desired_post_slug', 'field_6419ece1992b3'),
(318, 124, 'link', 'https://www.youtube.com/watch?v=nfvvsrD4oFY'),
(319, 124, '_link', 'field_643b5435242aa'),
(320, 124, '_wp_old_slug', '124'),
(321, 127, '_wp_attached_file', '2023/04/sofa-banner-1024x1024_opacity.jpg'),
(322, 127, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:1024;s:6:\"height\";i:682;s:4:\"file\";s:41:\"2023/04/sofa-banner-1024x1024_opacity.jpg\";s:8:\"filesize\";i:286633;s:5:\"sizes\";a:3:{s:6:\"medium\";a:5:{s:4:\"file\";s:41:\"sofa-banner-1024x1024_opacity-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13275;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:41:\"sofa-banner-1024x1024_opacity-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6021;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:41:\"sofa-banner-1024x1024_opacity-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:62809;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(323, 128, '_edit_last', '1'),
(324, 128, '_edit_lock', '1681732013:1'),
(342, 131, '_wp_attached_file', '2023/03/client-10.png'),
(343, 131, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:173;s:4:\"file\";s:21:\"2023/03/client-10.png\";s:8:\"filesize\";i:27206;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:21:\"client-10-300x130.png\";s:5:\"width\";i:300;s:6:\"height\";i:130;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:16826;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"client-10-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:13974;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(344, 81, '_thumbnail_id', '147'),
(348, 132, '_edit_last', '1'),
(349, 132, '_edit_lock', '1681738848:1'),
(350, 128, 'colunas_de_texto', 'uma: Coluna'),
(351, 128, '_colunas_de_texto', 'field_643c4da91e4d2'),
(352, 128, 'paragrafo_1', ''),
(353, 128, '_paragrafo_1', 'field_643c80e40dc3f'),
(354, 128, 'primeiro_paragrafo', 'O objetivo deste texto não é nem de longe substituir a documentação oficial,  que sempre deve ser consultada. Seu objetivo é colocar em um só lugar o que os iniciantes devem saber antes de começar a procurar por mais informações. WP_Query é a classe <strong>PHP</strong> por trás de todas as buscas por conteúdo no <em>WordPress</em>. Ela aceita vários parâmetros em sua construção, incluindo post types, meta dados, taxonomias e datas, além de possibilitar a criação de parâmetros personalizados.'),
(355, 128, '_primeiro_paragrafo', 'field_643c80e40dc3f'),
(356, 128, 'segundo_paragrafo', 'A classe WP_Query é acionada em todas as requisições feitas ao seu site, excetuando talvez raríssimas exceções de endereços controlados por plugins que interrompam o fluxo normal. Toda vez que chamamos uma página, um post, um termo de taxonomia e etc. o WordPress interpreta o endereço pedido através da página. Você não deve usar query_posts() porque ela já foi chamada antes. Ao chamá-la de novo você duplicará o processamento (pedindo ao WordPress que faça uma outra consulta) e, além disso, ignorará potencialmente o que alguns plugins já tenham usado.'),
(357, 128, '_segundo_paragrafo', 'field_643c81df11cb2'),
(358, 128, 'terceiro_paragrafo', ''),
(359, 128, '_terceiro_paragrafo', 'field_643c8201f4560'),
(360, 128, 'quarto_paragrafo', ''),
(361, 128, '_quarto_paragrafo', 'field_643c8216bb2dc'),
(362, 128, 'quinto_paragrafo', ''),
(363, 128, '_quinto_paragrafo', 'field_643c8226903ba'),
(364, 128, 'sexto_paragrafo', ''),
(365, 128, '_sexto_paragrafo', 'field_643c824b0aa4d'),
(366, 128, 'adiciona_botao_de_acao', 'sim'),
(367, 128, '_adiciona_botao_de_acao', 'field_643c8c0d27e56'),
(368, 128, 'texto_botao_de_acao', 'Saiba mais...'),
(369, 128, '_texto_botao_de_acao', 'field_643c8bc3bd307'),
(370, 128, 'texto_link_do_botao_de_acao', '#about'),
(371, 128, '_texto_link_do_botao_de_acao', 'field_643c8ce97d8a9'),
(372, 128, 'adiciona_botao_de_acao_sobre', '1'),
(373, 128, '_adiciona_botao_de_acao_sobre', 'field_643c9dd7ec8fd'),
(374, 128, 'posicao_do_botao_de_acao', 'right'),
(375, 128, '_posicao_do_botao_de_acao', 'field_643cb53ddbd57'),
(376, 145, '_wp_attached_file', '2023/04/portfolio-6-tratada-scaled.jpg'),
(377, 145, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:38:\"2023/04/portfolio-6-tratada-scaled.jpg\";s:8:\"filesize\";i:495571;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"portfolio-6-tratada-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13247;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"portfolio-6-tratada-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:103198;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"portfolio-6-tratada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:6286;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"portfolio-6-tratada-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:63463;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"portfolio-6-tratada-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:206697;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:33:\"portfolio-6-tratada-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:339876;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"portfolio-6-tratada.jpg\";}'),
(378, 146, '_wp_attached_file', '2023/04/portfolio-1-tratada-scaled.jpg'),
(379, 146, '_wp_attachment_metadata', 'a:7:{s:5:\"width\";i:2560;s:6:\"height\";i:1707;s:4:\"file\";s:38:\"2023/04/portfolio-1-tratada-scaled.jpg\";s:8:\"filesize\";i:367599;s:5:\"sizes\";a:6:{s:6:\"medium\";a:5:{s:4:\"file\";s:31:\"portfolio-1-tratada-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:10000;}s:5:\"large\";a:5:{s:4:\"file\";s:32:\"portfolio-1-tratada-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:76052;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:31:\"portfolio-1-tratada-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:5236;}s:12:\"medium_large\";a:5:{s:4:\"file\";s:31:\"portfolio-1-tratada-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:46425;}s:9:\"1536x1536\";a:5:{s:4:\"file\";s:33:\"portfolio-1-tratada-1536x1024.jpg\";s:5:\"width\";i:1536;s:6:\"height\";i:1024;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:151206;}s:9:\"2048x2048\";a:5:{s:4:\"file\";s:33:\"portfolio-1-tratada-2048x1365.jpg\";s:5:\"width\";i:2048;s:6:\"height\";i:1365;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:250574;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}s:14:\"original_image\";s:23:\"portfolio-1-tratada.jpg\";}'),
(380, 147, '_wp_attached_file', '2023/03/client-11-.png'),
(381, 147, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:150;s:4:\"file\";s:22:\"2023/03/client-11-.png\";s:8:\"filesize\";i:12711;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"client-11--150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:6388;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(385, 148, '_wp_attached_file', '2023/03/client-2-1.png'),
(386, 148, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:400;s:6:\"height\";i:140;s:4:\"file\";s:22:\"2023/03/client-2-1.png\";s:8:\"filesize\";i:4582;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:22:\"client-2-1-300x105.png\";s:5:\"width\";i:300;s:6:\"height\";i:105;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:7410;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:22:\"client-2-1-150x140.png\";s:5:\"width\";i:150;s:6:\"height\";i:140;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:2762;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(390, 149, '_wp_attached_file', '2023/03/client-11.png'),
(391, 149, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:150;s:4:\"file\";s:21:\"2023/03/client-11.png\";s:8:\"filesize\";i:7808;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:21:\"client-11-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3486;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(395, 150, '_wp_attached_file', '2023/03/client-11-1.png'),
(396, 150, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:300;s:6:\"height\";i:150;s:4:\"file\";s:23:\"2023/03/client-11-1.png\";s:8:\"filesize\";i:7808;s:5:\"sizes\";a:1:{s:9:\"thumbnail\";a:5:{s:4:\"file\";s:23:\"client-11-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";s:8:\"filesize\";i:3486;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(397, 152, '_edit_last', '1'),
(398, 152, '_edit_lock', '1681749712:1'),
(399, 164, '_edit_last', '1'),
(400, 164, 'texto_destaque_da_secao_cta', 'Conheça nossa nova loja'),
(401, 164, '_texto_destaque_da_secao_cta', 'field_643d4cf8e09e9'),
(402, 164, 'primeiro_paragrafo', 'Recentemente nos mudamos para um novo endereço, com amplas instalações e mais conforto para o nossos clientes. Venha nos visitar e tomar um cafezinho conosco. Você será muito bem recebido.'),
(403, 164, '_primeiro_paragrafo', 'field_643d4bc1276fe'),
(404, 164, 'segundo_paragrafo', ''),
(405, 164, '_segundo_paragrafo', 'field_643d4be16bede'),
(406, 164, 'terceiro_paragrafo', ''),
(407, 164, '_terceiro_paragrafo', 'field_643d4bf43a3b2'),
(408, 164, 'quarto_paragrafo', ''),
(409, 164, '_quarto_paragrafo', 'field_643d4c07b07a9'),
(410, 164, 'com_botao_de_acao', '1'),
(411, 164, '_com_botao_de_acao', 'field_643d4c25b92ba'),
(412, 164, 'texto_do_botao_de_acao', 'Veja mais'),
(413, 164, '_texto_do_botao_de_acao', 'field_643d4c5099848'),
(414, 164, 'link_do_botao_de_acao', '#'),
(415, 164, '_link_do_botao_de_acao', 'field_643d4c70d0bd2'),
(416, 164, '_edit_lock', '1681751955:1'),
(417, 164, 'quantidade_de_paragrafos_que_sera_usado', '1'),
(418, 164, '_quantidade_de_paragrafos_que_sera_usado', 'field_643d516ecd059'),
(419, 166, '_edit_last', '1'),
(420, 166, '_edit_lock', '1681774784:1'),
(421, 171, '_edit_last', '1'),
(422, 171, '_edit_lock', '1681778747:1'),
(423, 172, '_edit_last', '1'),
(424, 172, '_edit_lock', '1681781470:1'),
(425, 195, '_edit_last', '1'),
(426, 195, '_edit_lock', '1681761053:1'),
(427, 195, 'funcao_cargo', 'Chief Executive Officer'),
(428, 195, '_funcao_cargo', 'field_643d8909bdc0a'),
(429, 195, 'breve_descricao', 'Explicabo voluptatem mollitia et repellat qui dolorum quasi'),
(430, 195, '_breve_descricao', 'field_643d892da9808'),
(431, 195, 'nome_da_rede_social1', 'twitter'),
(432, 195, '_nome_da_rede_social1', 'field_643d8993d2295'),
(433, 195, 'icone_da_rede_social1', '<i class=\"ri-twitter-fill\"></i>'),
(434, 195, '_icone_da_rede_social1', 'field_643d89d1f0f55'),
(435, 195, 'link_da_rede_social1', 'https://twitter.com'),
(436, 195, '_link_da_rede_social1', 'field_643d8a1019775'),
(437, 195, 'nome_da_rede_social2', 'facebook'),
(438, 195, '_nome_da_rede_social2', 'field_643d8a4203353'),
(439, 195, 'icone_da_rede_social2', '<i class=\"ri-facebook-fill\"></i>'),
(440, 195, '_icone_da_rede_social2', 'field_643d8a6a17561'),
(441, 195, 'link_da_rede_social2', 'https://facebook.com'),
(442, 195, '_link_da_rede_social2', 'field_643d8a8990966'),
(443, 195, 'nome_da_rede_social3', 'instagram'),
(444, 195, '_nome_da_rede_social3', 'field_643d8b0ce3bcc'),
(445, 195, 'icone_da_rede_social3', '<i class=\"ri-instagram-fill\"></i>'),
(446, 195, '_icone_da_rede_social3', 'field_643d8b2448e67'),
(447, 195, 'link_da_rede_social3', 'https://instagram.com'),
(448, 195, '_link_da_rede_social3', 'field_643d8b3331e3e'),
(449, 195, 'nome_da_rede_social4', 'linkedin'),
(450, 195, '_nome_da_rede_social4', 'field_643d8b69bc979'),
(451, 195, 'icone_da_rede_social4', '<i class=\"ri-linkedin-box-fill\"></i>'),
(452, 195, '_icone_da_rede_social4', 'field_643d8b78c0dfd'),
(453, 195, 'link_da_rede_social4', 'https://linkedin.com'),
(454, 195, '_link_da_rede_social4', 'field_643d8b899e46b'),
(455, 195, 'nome_da_rede_social5', ''),
(456, 195, '_nome_da_rede_social5', 'field_643d8d3131669'),
(457, 195, 'icone_da_rede_social5', ''),
(458, 195, '_icone_da_rede_social5', 'field_643d8d424b5c0'),
(459, 195, 'link_da_rede_social5', ''),
(460, 195, '_link_da_rede_social5', 'field_643d8d5123a70'),
(461, 195, 'nome_da_rede_social6', ''),
(462, 195, '_nome_da_rede_social6', 'field_643d8d7ba08af'),
(463, 195, 'icone_da_rede_social6', ''),
(464, 195, '_icone_da_rede_social6', 'field_643d8d8cc7ea7'),
(465, 195, 'link_da_rede_social6', ''),
(466, 195, '_link_da_rede_social6', 'field_643d8d9c8a449'),
(467, 196, '_wp_attached_file', '2023/04/team-1.jpg'),
(468, 196, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2023/04/team-1.jpg\";s:8:\"filesize\";i:40201;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-1-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:12009;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4493;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(469, 195, '_thumbnail_id', '196'),
(470, 197, '_edit_last', '1'),
(471, 197, '_edit_lock', '1681761219:1'),
(472, 198, '_wp_attached_file', '2023/04/team-3.jpg'),
(473, 198, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:600;s:4:\"file\";s:18:\"2023/04/team-3.jpg\";s:8:\"filesize\";i:36680;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-3-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:11897;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4543;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(474, 197, '_thumbnail_id', '198'),
(475, 197, 'funcao_cargo', 'CTO'),
(476, 197, '_funcao_cargo', 'field_643d8909bdc0a'),
(477, 197, 'breve_descricao', 'Quisquam facilis cum velit laborum corrupti fuga rerum quia'),
(478, 197, '_breve_descricao', 'field_643d892da9808'),
(479, 197, 'nome_da_rede_social1', 'twitter	'),
(480, 197, '_nome_da_rede_social1', 'field_643d8993d2295'),
(481, 197, 'icone_da_rede_social1', '<i class=\"ri-twitter-fill\"></i>	'),
(482, 197, '_icone_da_rede_social1', 'field_643d89d1f0f55'),
(483, 197, 'link_da_rede_social1', 'https://twitter.com'),
(484, 197, '_link_da_rede_social1', 'field_643d8a1019775'),
(485, 197, 'nome_da_rede_social2', 'facebook'),
(486, 197, '_nome_da_rede_social2', 'field_643d8a4203353'),
(487, 197, 'icone_da_rede_social2', '<i class=\"ri-facebook-fill\"></i>'),
(488, 197, '_icone_da_rede_social2', 'field_643d8a6a17561'),
(489, 197, 'link_da_rede_social2', 'https://facebook.com'),
(490, 197, '_link_da_rede_social2', 'field_643d8a8990966'),
(491, 197, 'nome_da_rede_social3', 'instagram'),
(492, 197, '_nome_da_rede_social3', 'field_643d8b0ce3bcc'),
(493, 197, 'icone_da_rede_social3', '<i class=\"ri-instagram-fill\"></i>'),
(494, 197, '_icone_da_rede_social3', 'field_643d8b2448e67'),
(495, 197, 'link_da_rede_social3', 'https://instagram.com'),
(496, 197, '_link_da_rede_social3', 'field_643d8b3331e3e'),
(497, 197, 'nome_da_rede_social4', 'linkedin'),
(498, 197, '_nome_da_rede_social4', 'field_643d8b69bc979'),
(499, 197, 'icone_da_rede_social4', '<i class=\"ri-linkedin-box-fill\"></i>'),
(500, 197, '_icone_da_rede_social4', 'field_643d8b78c0dfd'),
(501, 197, 'link_da_rede_social4', 'https://linkedin.com'),
(502, 197, '_link_da_rede_social4', 'field_643d8b899e46b'),
(503, 197, 'nome_da_rede_social5', ''),
(504, 197, '_nome_da_rede_social5', 'field_643d8d3131669'),
(505, 197, 'icone_da_rede_social5', ''),
(506, 197, '_icone_da_rede_social5', 'field_643d8d424b5c0'),
(507, 197, 'link_da_rede_social5', ''),
(508, 197, '_link_da_rede_social5', 'field_643d8d5123a70'),
(509, 197, 'nome_da_rede_social6', ''),
(510, 197, '_nome_da_rede_social6', 'field_643d8d7ba08af'),
(511, 197, 'icone_da_rede_social6', ''),
(512, 197, '_icone_da_rede_social6', 'field_643d8d8cc7ea7'),
(513, 197, 'link_da_rede_social6', ''),
(514, 197, '_link_da_rede_social6', 'field_643d8d9c8a449'),
(515, 199, '_edit_last', '1'),
(516, 199, '_edit_lock', '1681761375:1'),
(517, 199, '_wp_trash_meta_status', 'draft'),
(518, 199, '_wp_trash_meta_time', '1681761589'),
(519, 199, '_wp_desired_post_slug', ''),
(520, 200, '_edit_last', '1'),
(521, 200, '_edit_lock', '1681761607:1'),
(522, 200, 'funcao_cargo', 'Product Manager'),
(523, 200, '_funcao_cargo', 'field_643d8909bdc0a'),
(524, 200, 'breve_descricao', 'Aut maiores voluptates amet et quis praesentium qui senda para'),
(525, 200, '_breve_descricao', 'field_643d892da9808'),
(526, 200, 'nome_da_rede_social1', 'twitter'),
(527, 200, '_nome_da_rede_social1', 'field_643d8993d2295'),
(528, 200, 'icone_da_rede_social1', '<i class=\"ri-twitter-fill\"></i>'),
(529, 200, '_icone_da_rede_social1', 'field_643d89d1f0f55'),
(530, 200, 'link_da_rede_social1', 'https://twitter.com'),
(531, 200, '_link_da_rede_social1', 'field_643d8a1019775'),
(532, 200, 'nome_da_rede_social2', 'facebook'),
(533, 200, '_nome_da_rede_social2', 'field_643d8a4203353'),
(534, 200, 'icone_da_rede_social2', '<i class=\"ri-facebook-fill\"></i>'),
(535, 200, '_icone_da_rede_social2', 'field_643d8a6a17561'),
(536, 200, 'link_da_rede_social2', 'https://facebook.com'),
(537, 200, '_link_da_rede_social2', 'field_643d8a8990966'),
(538, 200, 'nome_da_rede_social3', 'instagram'),
(539, 200, '_nome_da_rede_social3', 'field_643d8b0ce3bcc'),
(540, 200, 'icone_da_rede_social3', '<i class=\"ri-instagram-fill\"></i>'),
(541, 200, '_icone_da_rede_social3', 'field_643d8b2448e67'),
(542, 200, 'link_da_rede_social3', 'https://instagram.com'),
(543, 200, '_link_da_rede_social3', 'field_643d8b3331e3e'),
(544, 200, 'nome_da_rede_social4', 'linkedin'),
(545, 200, '_nome_da_rede_social4', 'field_643d8b69bc979'),
(546, 200, 'icone_da_rede_social4', '<i class=\"ri-linkedin-box-fill\"></i>'),
(547, 200, '_icone_da_rede_social4', 'field_643d8b78c0dfd'),
(548, 200, 'link_da_rede_social4', 'https://linkedin.com'),
(549, 200, '_link_da_rede_social4', 'field_643d8b899e46b'),
(550, 200, 'nome_da_rede_social5', ''),
(551, 200, '_nome_da_rede_social5', 'field_643d8d3131669'),
(552, 200, 'icone_da_rede_social5', ''),
(553, 200, '_icone_da_rede_social5', 'field_643d8d424b5c0'),
(554, 200, 'link_da_rede_social5', ''),
(555, 200, '_link_da_rede_social5', 'field_643d8d5123a70'),
(556, 200, 'nome_da_rede_social6', ''),
(557, 200, '_nome_da_rede_social6', 'field_643d8d7ba08af'),
(558, 200, 'icone_da_rede_social6', ''),
(559, 200, '_icone_da_rede_social6', 'field_643d8d8cc7ea7'),
(560, 200, 'link_da_rede_social6', ''),
(561, 200, '_link_da_rede_social6', 'field_643d8d9c8a449'),
(562, 201, '_edit_last', '1'),
(563, 201, '_edit_lock', '1681782524:1'),
(564, 201, '_thumbnail_id', '11'),
(565, 201, 'funcao_cargo', 'Accountant'),
(566, 201, '_funcao_cargo', 'field_643d8909bdc0a'),
(567, 201, 'breve_descricao', 'Dolorum tempora officiis odit laborum officiis et et accusamus'),
(568, 201, '_breve_descricao', 'field_643d892da9808'),
(569, 201, 'nome_da_rede_social1', 'twitter'),
(570, 201, '_nome_da_rede_social1', 'field_643d8993d2295'),
(571, 201, 'icone_da_rede_social1', '<i class=\"ri-twitter-fill\"></i>'),
(572, 201, '_icone_da_rede_social1', 'field_643d89d1f0f55'),
(573, 201, 'link_da_rede_social1', 'https://twitter.com'),
(574, 201, '_link_da_rede_social1', 'field_643d8a1019775'),
(575, 201, 'nome_da_rede_social2', 'facebook'),
(576, 201, '_nome_da_rede_social2', 'field_643d8a4203353'),
(577, 201, 'icone_da_rede_social2', '<i class=\"ri-facebook-fill\"></i>'),
(578, 201, '_icone_da_rede_social2', 'field_643d8a6a17561'),
(579, 201, 'link_da_rede_social2', 'https://facebook.com'),
(580, 201, '_link_da_rede_social2', 'field_643d8a8990966'),
(581, 201, 'nome_da_rede_social3', 'instagram'),
(582, 201, '_nome_da_rede_social3', 'field_643d8b0ce3bcc'),
(583, 201, 'icone_da_rede_social3', '<i class=\"ri-instagram-fill\"></i>'),
(584, 201, '_icone_da_rede_social3', 'field_643d8b2448e67'),
(585, 201, 'link_da_rede_social3', 'https://instagram.com'),
(586, 201, '_link_da_rede_social3', 'field_643d8b3331e3e'),
(587, 201, 'nome_da_rede_social4', 'linkedin'),
(588, 201, '_nome_da_rede_social4', 'field_643d8b69bc979'),
(589, 201, 'icone_da_rede_social4', '<i class=\"ri-linkedin-box-fill\"></i>'),
(590, 201, '_icone_da_rede_social4', 'field_643d8b78c0dfd'),
(591, 201, 'link_da_rede_social4', 'https://linkedin.com'),
(592, 201, '_link_da_rede_social4', 'field_643d8b899e46b'),
(593, 201, 'nome_da_rede_social5', ''),
(594, 201, '_nome_da_rede_social5', 'field_643d8d3131669'),
(595, 201, 'icone_da_rede_social5', ''),
(596, 201, '_icone_da_rede_social5', 'field_643d8d424b5c0'),
(597, 201, 'link_da_rede_social5', ''),
(598, 201, '_link_da_rede_social5', 'field_643d8d5123a70'),
(599, 201, 'nome_da_rede_social6', ''),
(600, 201, '_nome_da_rede_social6', 'field_643d8d7ba08af'),
(601, 201, 'icone_da_rede_social6', ''),
(602, 201, '_icone_da_rede_social6', 'field_643d8d8cc7ea7'),
(603, 201, 'link_da_rede_social6', ''),
(604, 201, '_link_da_rede_social6', 'field_643d8d9c8a449'),
(605, 200, '_thumbnail_id', '9'),
(606, 171, 'primeiro_paragrafo', 'Por último, mas não menos importante, o WordPress tem uma imensa comunidade dedicada com fóruns de discussões por toda a internet. A quantidade disponível de conteúdo e os milhares tutoriais também contribuem para que o WordPress seja um dos meios mais fáceis de criação conteúdo da internet.'),
(607, 171, '_primeiro_paragrafo', 'field_643d7fad2ad3f'),
(608, 171, 'segundo_paragrafo', ''),
(609, 171, '_segundo_paragrafo', 'field_643d7fd5c17f3'),
(610, 171, 'terceiro_paragrafo', ''),
(611, 171, '_terceiro_paragrafo', 'field_643d7fe2365dd'),
(612, 202, '_edit_last', '1'),
(613, 202, '_edit_lock', '1681782822:1'),
(614, 202, 'funcao_cargo', 'CEO'),
(615, 202, '_funcao_cargo', 'field_643d8909bdc0a'),
(616, 202, 'breve_descricao', 'Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin.'),
(617, 202, '_breve_descricao', 'field_643d892da9808'),
(618, 202, 'nome_da_rede_social1', 'twitter'),
(619, 202, '_nome_da_rede_social1', 'field_643d8993d2295'),
(620, 202, 'icone_da_rede_social1', '<i class=\"ri-twitter-fill\"></i>'),
(621, 202, '_icone_da_rede_social1', 'field_643d89d1f0f55'),
(622, 202, 'link_da_rede_social1', 'https://twitter.com'),
(623, 202, '_link_da_rede_social1', 'field_643d8a1019775'),
(624, 202, 'nome_da_rede_social2', 'facebook'),
(625, 202, '_nome_da_rede_social2', 'field_643d8a4203353'),
(626, 202, 'icone_da_rede_social2', '<i class=\"ri-facebook-fill\"></i>'),
(627, 202, '_icone_da_rede_social2', 'field_643d8a6a17561'),
(628, 202, 'link_da_rede_social2', 'https://facebook.com'),
(629, 202, '_link_da_rede_social2', 'field_643d8a8990966'),
(630, 202, 'nome_da_rede_social3', 'instagram'),
(631, 202, '_nome_da_rede_social3', 'field_643d8b0ce3bcc'),
(632, 202, 'icone_da_rede_social3', '<i class=\"ri-instagram-fill\"></i>'),
(633, 202, '_icone_da_rede_social3', 'field_643d8b2448e67'),
(634, 202, 'link_da_rede_social3', 'https://instagram.com'),
(635, 202, '_link_da_rede_social3', 'field_643d8b3331e3e'),
(636, 202, 'nome_da_rede_social4', 'linkedin'),
(637, 202, '_nome_da_rede_social4', 'field_643d8b69bc979'),
(638, 202, 'icone_da_rede_social4', '<i class=\"ri-linkedin-box-fill\"></i>'),
(639, 202, '_icone_da_rede_social4', 'field_643d8b78c0dfd'),
(640, 202, 'link_da_rede_social4', 'https://linkedin.com'),
(641, 202, '_link_da_rede_social4', 'field_643d8b899e46b'),
(642, 202, 'nome_da_rede_social5', ''),
(643, 202, '_nome_da_rede_social5', 'field_643d8d3131669'),
(644, 202, 'icone_da_rede_social5', ''),
(645, 202, '_icone_da_rede_social5', 'field_643d8d424b5c0'),
(646, 202, 'link_da_rede_social5', ''),
(647, 202, '_link_da_rede_social5', 'field_643d8d5123a70'),
(648, 202, 'nome_da_rede_social6', ''),
(649, 202, '_nome_da_rede_social6', 'field_643d8d7ba08af'),
(650, 202, 'icone_da_rede_social6', ''),
(651, 202, '_icone_da_rede_social6', 'field_643d8d8cc7ea7'),
(652, 202, 'link_da_rede_social6', ''),
(653, 202, '_link_da_rede_social6', 'field_643d8d9c8a449'),
(662, 206, '_wp_attached_file', '2023/04/team-5.jpg'),
(663, 206, '_wp_attachment_metadata', 'a:6:{s:5:\"width\";i:600;s:6:\"height\";i:601;s:4:\"file\";s:18:\"2023/04/team-5.jpg\";s:8:\"filesize\";i:27567;s:5:\"sizes\";a:2:{s:6:\"medium\";a:5:{s:4:\"file\";s:18:\"team-5-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:13160;}s:9:\"thumbnail\";a:5:{s:4:\"file\";s:18:\"team-5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";s:8:\"filesize\";i:4760;}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(664, 202, '_thumbnail_id', '206'),
(665, 202, '_wp_trash_meta_status', 'private'),
(666, 202, '_wp_trash_meta_time', '1681782966'),
(667, 202, '_wp_desired_post_slug', 'jason-muller');

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
(78, 1, '2023-03-22 22:43:07', '2023-03-23 01:43:07', '', 'belimo', '', 'publish', 'open', 'open', '', 'belimo', '', '', '2023-04-17 00:39:11', '2023-04-17 03:39:11', '', 0, 'http://localhost/wp_etecidos/?p=78', 0, 'post', '', 0),
(79, 1, '2023-03-22 22:43:07', '2023-03-23 01:43:07', '', 'dsdds', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-03-22 22:43:07', '2023-03-23 01:43:07', '', 78, 'http://localhost/wp_etecidos/?p=79', 0, 'revision', '', 0),
(80, 1, '2023-03-22 22:43:32', '2023-03-23 01:43:32', '', 'belimo', '', 'inherit', 'closed', 'closed', '', '78-revision-v1', '', '', '2023-03-22 22:43:32', '2023-03-23 01:43:32', '', 78, 'http://localhost/wp_etecidos/?p=80', 0, 'revision', '', 0),
(81, 1, '2023-03-22 23:09:50', '2023-03-23 02:09:50', '', 'mxrocha', '', 'private', 'open', 'open', '', 'mxrocha', '', '', '2023-04-17 00:52:42', '2023-04-17 03:52:42', '', 0, 'http://localhost/wp_etecidos/?p=81', 0, 'post', '', 0),
(83, 1, '2023-03-22 23:09:50', '2023-03-23 02:09:50', '', 'mxrocha', '', 'inherit', 'closed', 'closed', '', '81-revision-v1', '', '', '2023-03-22 23:09:50', '2023-03-23 02:09:50', '', 81, 'http://localhost/wp_etecidos/?p=83', 0, 'revision', '', 0),
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
(124, 1, '2023-04-15 22:45:12', '2023-04-16 01:45:12', '', 'banner', '', 'publish', 'closed', 'closed', '', 'banner', '', '', '2023-04-17 08:50:09', '2023-04-17 11:50:09', '', 0, 'http://localhost/wp_etecidos/?post_type=banner&#038;p=124', 0, 'banner', '', 0),
(125, 1, '2023-04-15 22:47:07', '2023-04-16 01:47:07', '', 'sofa-banner-1200x800', '', 'inherit', 'open', 'closed', '', 'sofa-banner-1200x800', '', '', '2023-04-15 22:47:07', '2023-04-16 01:47:07', '', 124, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/sofa-banner-1200x800-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(126, 1, '2023-04-15 22:50:16', '2023-04-16 01:50:16', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link do Youtube', 'link', 'publish', 'closed', 'closed', '', 'field_643b5435242aa', '', '', '2023-04-15 23:52:53', '2023-04-16 02:52:53', '', 98, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=126', 4, 'acf-field', '', 0),
(127, 1, '2023-04-15 23:35:07', '2023-04-16 02:35:07', '', 'sofa-banner-1024x1024_opacity', '', 'inherit', 'open', 'closed', '', 'sofa-banner-1024x1024_opacity', '', '', '2023-04-15 23:35:07', '2023-04-16 02:35:07', '', 124, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/sofa-banner-1024x1024_opacity.jpg', 0, 'attachment', 'image/jpeg', 0),
(128, 1, '2023-04-16 00:13:51', '2023-04-16 03:13:51', 'Há mais de 20 anos, nossa empresa se dedica a oferecer tecidos de alta qualidade para decoração, cortinas e estofados. Com uma vasta experiência no ramo, estamos comprometidos em fornecer produtos de excelência para atender as necessidades de nossos clientes.\r\n\r\nAo longo dos anos, nossa empresa cresceu e se tornou referência no mercado, graças à nossa dedicação em oferecer uma ampla variedade de tecidos, com estampas e texturas exclusivas, que atendem às tendências do mercado de decoração e design.\r\n\r\nAlém disso, temos um compromisso forte com a sustentabilidade e a preservação do meio ambiente. Por isso, buscamos fornecedores comprometidos esta filosofia, que produzam materiais de alta qualidade e com responsabilidade ambiental, garantindo a satisfação dos nossos clientes e a preservação do planeta.\r\n\r\nAlém disso, nossa equipe é formada por profissionais altamente capacitados, que trabalham com dedicação e comprometimento para oferecer um atendimento personalizado e de excelência aos nossos clientes.\r\n\r\nSe você está em busca de tecidos de qualidade para a decoração da sua casa ou para o revestimento dos seus estofados e decoração em geral, venha nos conhecer. Estamos sempre prontos para atendê-lo e ajudá-lo a encontrar a melhor solução para suas necessidades.', 'sobre', '', 'publish', 'closed', 'closed', '', 'sobre', '', '', '2023-04-17 08:47:58', '2023-04-17 11:47:58', '', 0, 'http://localhost/wp_etecidos/?post_type=sobrenos&#038;p=128', 0, 'sobrenos', '', 0),
(131, 1, '2023-04-16 16:23:06', '2023-04-16 19:23:06', '', 'client-10', '', 'inherit', 'open', 'closed', '', 'client-10', '', '', '2023-04-16 16:23:06', '2023-04-16 19:23:06', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-10.png', 0, 'attachment', 'image/png', 0),
(132, 1, '2023-04-16 16:37:24', '2023-04-16 19:37:24', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:8:\"sobrenos\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Campos personalizados seção Sobre', 'campos-personalizados-secao-sobre', 'publish', 'closed', 'closed', '', 'group_643c4da9ba65c', '', '', '2023-04-16 23:57:32', '2023-04-17 02:57:32', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=132', 0, 'acf-field-group', '', 0),
(134, 1, '2023-04-16 20:13:18', '2023-04-16 23:13:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Primeiro parágrafo', 'primeiro_paragrafo', 'publish', 'closed', 'closed', '', 'field_643c80e40dc3f', '', '', '2023-04-16 20:18:51', '2023-04-16 23:18:51', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=134', 0, 'acf-field', '', 0),
(135, 1, '2023-04-16 20:17:19', '2023-04-16 23:17:19', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Segundo parágrafo', 'segundo_paragrafo', 'publish', 'closed', 'closed', '', 'field_643c81df11cb2', '', '', '2023-04-16 20:18:51', '2023-04-16 23:18:51', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=135', 1, 'acf-field', '', 0),
(136, 1, '2023-04-16 20:17:38', '2023-04-16 23:17:38', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Terceiro parágrafo', 'terceiro_paragrafo', 'publish', 'closed', 'closed', '', 'field_643c8201f4560', '', '', '2023-04-16 20:18:51', '2023-04-16 23:18:51', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=136', 2, 'acf-field', '', 0),
(137, 1, '2023-04-16 20:17:56', '2023-04-16 23:17:56', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Quarto parágrafo', 'quarto_paragrafo', 'publish', 'closed', 'closed', '', 'field_643c8216bb2dc', '', '', '2023-04-16 20:18:51', '2023-04-16 23:18:51', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=137', 3, 'acf-field', '', 0),
(138, 1, '2023-04-16 20:18:15', '2023-04-16 23:18:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Quinto parágrafo', 'quinto_paragrafo', 'publish', 'closed', 'closed', '', 'field_643c8226903ba', '', '', '2023-04-16 20:18:51', '2023-04-16 23:18:51', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=138', 4, 'acf-field', '', 0),
(139, 1, '2023-04-16 20:18:51', '2023-04-16 23:18:51', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Sexto parágrafo', 'sexto_paragrafo', 'publish', 'closed', 'closed', '', 'field_643c824b0aa4d', '', '', '2023-04-16 20:18:51', '2023-04-16 23:18:51', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&p=139', 5, 'acf-field', '', 0),
(140, 1, '2023-04-16 20:59:59', '2023-04-16 23:59:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto Botão de Ação', 'texto_botao_de_acao', 'publish', 'closed', 'closed', '', 'field_643c8bc3bd307', '', '', '2023-04-16 22:40:00', '2023-04-17 01:40:00', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=140', 7, 'acf-field', '', 0),
(142, 1, '2023-04-16 21:04:53', '2023-04-17 00:04:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto Link do Botão de Ação', 'texto_link_do_botao_de_acao', 'publish', 'closed', 'closed', '', 'field_643c8ce97d8a9', '', '', '2023-04-16 22:40:00', '2023-04-17 01:40:00', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=142', 8, 'acf-field', '', 0),
(143, 1, '2023-04-16 22:16:57', '2023-04-17 01:16:57', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:1;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Adiciona botão de ação sobre', 'adiciona_botao_de_acao_sobre', 'publish', 'closed', 'closed', '', 'field_643c9dd7ec8fd', '', '', '2023-04-16 22:40:00', '2023-04-17 01:40:00', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=143', 6, 'acf-field', '', 0),
(144, 1, '2023-04-16 23:57:32', '2023-04-17 02:57:32', 'a:14:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:6:\"select\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"choices\";a:3:{s:4:\"left\";s:8:\"esquerda\";s:6:\"center\";s:6:\"centro\";s:5:\"right\";s:7:\"direita\";}s:13:\"default_value\";s:4:\"left\";s:13:\"return_format\";s:5:\"value\";s:8:\"multiple\";i:0;s:10:\"allow_null\";i:0;s:2:\"ui\";i:0;s:4:\"ajax\";i:0;s:11:\"placeholder\";s:0:\"\";}', 'Posição do Botão de Ação', 'posicao_do_botao_de_acao', 'publish', 'closed', 'closed', '', 'field_643cb53ddbd57', '', '', '2023-04-16 23:57:32', '2023-04-17 02:57:32', '', 132, 'http://localhost/wp_etecidos/?post_type=acf-field&p=144', 9, 'acf-field', '', 0),
(145, 1, '2023-04-17 00:24:38', '2023-04-17 03:24:38', '', 'portfolio-6-tratada', '', 'inherit', 'open', 'closed', '', 'portfolio-6-tratada', '', '', '2023-04-17 00:24:38', '2023-04-17 03:24:38', '', 124, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/portfolio-6-tratada.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2023-04-17 00:27:15', '2023-04-17 03:27:15', '', 'portfolio-1-tratada', '', 'inherit', 'open', 'closed', '', 'portfolio-1-tratada', '', '', '2023-04-17 00:27:15', '2023-04-17 03:27:15', '', 124, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/portfolio-1-tratada.jpg', 0, 'attachment', 'image/jpeg', 0),
(147, 1, '2023-04-17 00:34:22', '2023-04-17 03:34:22', '', 'client-11-', '', 'inherit', 'open', 'closed', '', 'client-11', '', '', '2023-04-17 00:34:22', '2023-04-17 03:34:22', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-11-.png', 0, 'attachment', 'image/png', 0),
(148, 1, '2023-04-17 00:37:37', '2023-04-17 03:37:37', '', 'client-2', '', 'inherit', 'open', 'closed', '', 'client-2-2', '', '', '2023-04-17 00:37:37', '2023-04-17 03:37:37', '', 78, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-2-1.png', 0, 'attachment', 'image/png', 0),
(149, 1, '2023-04-17 00:39:53', '2023-04-17 03:39:53', '', 'client-11', '', 'inherit', 'open', 'closed', '', 'client-11-2', '', '', '2023-04-17 00:39:53', '2023-04-17 03:39:53', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-11.png', 0, 'attachment', 'image/png', 0),
(150, 1, '2023-04-17 00:47:42', '2023-04-17 03:47:42', '', 'client-11', '', 'inherit', 'open', 'closed', '', 'client-11-3', '', '', '2023-04-17 00:47:42', '2023-04-17 03:47:42', '', 81, 'http://localhost/wp_etecidos/wp-content/uploads/2023/03/client-11-1.png', 0, 'attachment', 'image/png', 0),
(151, 1, '2023-04-17 10:37:49', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 10:37:49', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=cta&p=151', 0, 'cta', '', 0),
(152, 1, '2023-04-17 10:38:36', '2023-04-17 13:38:36', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:3:\"cta\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Cta', 'cta', 'publish', 'closed', 'closed', '', 'group_643d4bc173a92', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=152', 0, 'acf-field-group', '', 0),
(153, 1, '2023-04-17 10:38:36', '2023-04-17 13:38:36', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Primeiro parágrafo', 'primeiro_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d4bc1276fe', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=153', 1, 'acf-field', '', 0),
(154, 1, '2023-04-17 10:38:58', '2023-04-17 13:38:58', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Segundo parágrafo', 'segundo_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d4be16bede', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=154', 2, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(155, 1, '2023-04-17 10:39:15', '2023-04-17 13:39:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Terceiro parágrafo', 'terceiro_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d4bf43a3b2', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=155', 3, 'acf-field', '', 0),
(156, 1, '2023-04-17 10:39:32', '2023-04-17 13:39:32', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Quarto parágrafo', 'quarto_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d4c07b07a9', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=156', 4, 'acf-field', '', 0),
(157, 1, '2023-04-17 10:40:28', '2023-04-17 13:40:28', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:10:\"true_false\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:7:\"message\";s:0:\"\";s:13:\"default_value\";i:0;s:2:\"ui\";i:0;s:10:\"ui_on_text\";s:0:\"\";s:11:\"ui_off_text\";s:0:\"\";}', 'Com botão de ação', 'com_botao_de_acao', 'publish', 'closed', 'closed', '', 'field_643d4c25b92ba', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=157', 5, 'acf-field', '', 0),
(158, 1, '2023-04-17 10:40:59', '2023-04-17 13:40:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"Veja mais\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto do botão de acão', 'texto_do_botao_de_acao', 'publish', 'closed', 'closed', '', 'field_643d4c5099848', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=158', 6, 'acf-field', '', 0),
(159, 1, '2023-04-17 10:41:22', '2023-04-17 13:41:22', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:1:\"#\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link do botão de ação', 'link_do_botao_de_acao', 'publish', 'closed', 'closed', '', 'field_643d4c70d0bd2', '', '', '2023-04-17 13:26:33', '2023-04-17 16:26:33', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=159', 7, 'acf-field', '', 0),
(160, 1, '2023-04-17 10:41:33', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 10:41:33', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=cta&p=160', 0, 'cta', '', 0),
(161, 1, '2023-04-17 10:41:54', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 10:41:54', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=cta&p=161', 0, 'cta', '', 0),
(162, 1, '2023-04-17 10:42:50', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 10:42:50', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=cta&p=162', 0, 'cta', '', 0),
(163, 1, '2023-04-17 10:43:42', '2023-04-17 13:43:42', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Texto destaque da seção cta', 'texto_destaque_da_secao_cta', 'publish', 'closed', 'closed', '', 'field_643d4cf8e09e9', '', '', '2023-04-17 10:44:03', '2023-04-17 13:44:03', '', 152, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=163', 0, 'acf-field', '', 0),
(164, 1, '2023-04-17 10:47:03', '2023-04-17 13:47:03', '', 'Cta', '', 'publish', 'closed', 'closed', '', '164', '', '', '2023-04-17 13:48:53', '2023-04-17 16:48:53', '', 0, 'http://localhost/wp_etecidos/?post_type=cta&#038;p=164', 0, 'cta', '', 0),
(166, 1, '2023-04-17 14:20:18', '2023-04-17 17:20:18', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:16:\"equipe_cabecalho\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Equipe cabeçalho', 'equipe-cabecalho', 'publish', 'closed', 'closed', '', 'group_643d7fad622ad', '', '', '2023-04-17 14:22:26', '2023-04-17 17:22:26', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=166', 0, 'acf-field-group', '', 0),
(167, 1, '2023-04-17 14:20:18', '2023-04-17 17:20:18', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Primeiro parágrafo', 'primeiro_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d7fad2ad3f', '', '', '2023-04-17 14:22:11', '2023-04-17 17:22:11', '', 166, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=167', 0, 'acf-field', '', 0),
(168, 1, '2023-04-17 14:20:33', '2023-04-17 17:20:33', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Segundo parágrafo', 'segundo_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d7fd5c17f3', '', '', '2023-04-17 14:22:19', '2023-04-17 17:22:19', '', 166, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=168', 1, 'acf-field', '', 0),
(169, 1, '2023-04-17 14:20:49', '2023-04-17 17:20:49', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Terceiro parágrafo', 'terceiro_paragrafo', 'publish', 'closed', 'closed', '', 'field_643d7fe2365dd', '', '', '2023-04-17 14:22:26', '2023-04-17 17:22:26', '', 166, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=169', 2, 'acf-field', '', 0),
(170, 1, '2023-04-17 14:21:09', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2023-04-17 14:21:09', '0000-00-00 00:00:00', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_cabecalho&p=170', 0, 'equipe_cabecalho', '', 0),
(171, 1, '2023-04-17 17:03:25', '2023-04-17 20:03:25', '', 'Cabeçalho', '', 'publish', 'closed', 'closed', '', 'cabecalho', '', '', '2023-04-17 20:43:48', '2023-04-17 23:43:48', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_cabecalho&#038;p=171', 0, 'equipe_cabecalho', '', 0),
(172, 1, '2023-04-17 14:59:26', '2023-04-17 17:59:26', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:12:\"equipe_dados\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:12:\"show_in_rest\";i:0;}', 'Equipe - dados pessoais', 'equipe-dados-pessoais', 'publish', 'closed', 'closed', '', 'group_643d88d5166ae', '', '', '2023-04-17 16:59:36', '2023-04-17 19:59:36', '', 0, 'http://localhost/wp_etecidos/?post_type=acf-field-group&#038;p=172', 0, 'acf-field-group', '', 0),
(174, 1, '2023-04-17 15:00:02', '2023-04-17 18:00:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Função/cargo', 'funcao_cargo', 'publish', 'closed', 'closed', '', 'field_643d8909bdc0a', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=174', 0, 'acf-field', '', 0),
(175, 1, '2023-04-17 15:00:43', '2023-04-17 18:00:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:7:\"wysiwyg\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:4:\"tabs\";s:3:\"all\";s:7:\"toolbar\";s:4:\"full\";s:12:\"media_upload\";i:1;s:5:\"delay\";i:0;}', 'Breve descrição', 'breve_descricao', 'publish', 'closed', 'closed', '', 'field_643d892da9808', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=175', 1, 'acf-field', '', 0),
(176, 1, '2023-04-17 15:02:48', '2023-04-17 18:02:48', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:7:\"twitter\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nome da rede social1', 'nome_da_rede_social1', 'publish', 'closed', 'closed', '', 'field_643d8993d2295', '', '', '2023-04-17 16:57:14', '2023-04-17 19:57:14', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=176', 2, 'acf-field', '', 0),
(177, 1, '2023-04-17 15:03:29', '2023-04-17 18:03:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:31:\"<i class=\"ri-twitter-fill\"></i>\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ícone da rede social1', 'icone_da_rede_social1', 'publish', 'closed', 'closed', '', 'field_643d89d1f0f55', '', '', '2023-04-17 16:58:04', '2023-04-17 19:58:04', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=177', 3, 'acf-field', '', 0),
(178, 1, '2023-04-17 15:04:26', '2023-04-17 18:04:26', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:19:\"https://twitter.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link da rede social1', 'link_da_rede_social1', 'publish', 'closed', 'closed', '', 'field_643d8a1019775', '', '', '2023-04-17 16:58:52', '2023-04-17 19:58:52', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=178', 4, 'acf-field', '', 0),
(179, 1, '2023-04-17 15:05:01', '2023-04-17 18:05:01', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"facebook\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nome da rede social2', 'nome_da_rede_social2', 'publish', 'closed', 'closed', '', 'field_643d8a4203353', '', '', '2023-04-17 16:57:27', '2023-04-17 19:57:27', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=179', 5, 'acf-field', '', 0),
(180, 1, '2023-04-17 15:05:41', '2023-04-17 18:05:41', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:32:\"<i class=\"ri-facebook-fill\"></i>\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ícone da rede social2', 'icone_da_rede_social2', 'publish', 'closed', 'closed', '', 'field_643d8a6a17561', '', '', '2023-04-17 16:58:15', '2023-04-17 19:58:15', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=180', 6, 'acf-field', '', 0),
(181, 1, '2023-04-17 15:06:10', '2023-04-17 18:06:10', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:20:\"https://facebook.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link da rede social2', 'link_da_rede_social2', 'publish', 'closed', 'closed', '', 'field_643d8a8990966', '', '', '2023-04-17 16:59:05', '2023-04-17 19:59:05', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=181', 7, 'acf-field', '', 0),
(183, 1, '2023-04-17 15:08:24', '2023-04-17 18:08:24', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:9:\"instagram\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nome da rede social3', 'nome_da_rede_social3', 'publish', 'closed', 'closed', '', 'field_643d8b0ce3bcc', '', '', '2023-04-17 16:57:41', '2023-04-17 19:57:41', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=183', 8, 'acf-field', '', 0),
(184, 1, '2023-04-17 15:08:43', '2023-04-17 18:08:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:33:\"<i class=\"ri-instagram-fill\"></i>\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ícone da rede social3', 'icone_da_rede_social3', 'publish', 'closed', 'closed', '', 'field_643d8b2448e67', '', '', '2023-04-17 16:58:27', '2023-04-17 19:58:27', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=184', 9, 'acf-field', '', 0),
(185, 1, '2023-04-17 15:08:59', '2023-04-17 18:08:59', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:21:\"https://instagram.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link da rede social3', 'link_da_rede_social3', 'publish', 'closed', 'closed', '', 'field_643d8b3331e3e', '', '', '2023-04-17 16:59:22', '2023-04-17 19:59:22', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=185', 10, 'acf-field', '', 0),
(186, 1, '2023-04-17 15:09:53', '2023-04-17 18:09:53', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:8:\"linkedin\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nome da rede social4', 'nome_da_rede_social4', 'publish', 'closed', 'closed', '', 'field_643d8b69bc979', '', '', '2023-04-17 16:57:53', '2023-04-17 19:57:53', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=186', 11, 'acf-field', '', 0),
(187, 1, '2023-04-17 15:10:09', '2023-04-17 18:10:09', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:36:\"<i class=\"ri-linkedin-box-fill\"></i>\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ícone da rede social4', 'icone_da_rede_social4', 'publish', 'closed', 'closed', '', 'field_643d8b78c0dfd', '', '', '2023-04-17 16:58:39', '2023-04-17 19:58:39', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=187', 12, 'acf-field', '', 0),
(188, 1, '2023-04-17 15:10:25', '2023-04-17 18:10:25', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:20:\"https://linkedin.com\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link da rede social4', 'link_da_rede_social4', 'publish', 'closed', 'closed', '', 'field_643d8b899e46b', '', '', '2023-04-17 16:59:36', '2023-04-17 19:59:36', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=188', 13, 'acf-field', '', 0),
(189, 1, '2023-04-17 15:17:29', '2023-04-17 18:17:29', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nome da rede social5', 'nome_da_rede_social5', 'publish', 'closed', 'closed', '', 'field_643d8d3131669', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=189', 14, 'acf-field', '', 0),
(190, 1, '2023-04-17 15:17:45', '2023-04-17 18:17:45', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ícone da rede social5', 'icone_da_rede_social5', 'publish', 'closed', 'closed', '', 'field_643d8d424b5c0', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=190', 15, 'acf-field', '', 0),
(191, 1, '2023-04-17 15:18:00', '2023-04-17 18:18:00', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link da rede social5', 'link_da_rede_social5', 'publish', 'closed', 'closed', '', 'field_643d8d5123a70', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=191', 16, 'acf-field', '', 0),
(192, 1, '2023-04-17 15:18:43', '2023-04-17 18:18:43', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Nome da rede social6', 'nome_da_rede_social6', 'publish', 'closed', 'closed', '', 'field_643d8d7ba08af', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=192', 17, 'acf-field', '', 0),
(193, 1, '2023-04-17 15:19:02', '2023-04-17 18:19:02', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Ícone da rede social6', 'icone_da_rede_social6', 'publish', 'closed', 'closed', '', 'field_643d8d8cc7ea7', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=193', 18, 'acf-field', '', 0),
(194, 1, '2023-04-17 15:19:15', '2023-04-17 18:19:15', 'a:11:{s:10:\"aria-label\";s:0:\"\";s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'Link da rede social6', 'link_da_rede_social6', 'publish', 'closed', 'closed', '', 'field_643d8d9c8a449', '', '', '2023-04-17 15:29:09', '2023-04-17 18:29:09', '', 172, 'http://localhost/wp_etecidos/?post_type=acf-field&#038;p=194', 19, 'acf-field', '', 0),
(195, 1, '2023-04-17 15:37:31', '2023-04-17 18:37:31', '', 'Walter White', '', 'publish', 'closed', 'closed', '', 'walter-white', '', '', '2023-04-17 16:49:21', '2023-04-17 19:49:21', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_dados&#038;p=195', 0, 'equipe_dados', '', 0),
(196, 1, '2023-04-17 15:37:45', '2023-04-17 18:37:45', '', 'team-1', '', 'inherit', 'open', 'closed', '', 'team-1-2', '', '', '2023-04-17 15:37:45', '2023-04-17 18:37:45', '', 195, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/team-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(197, 1, '2023-04-17 16:55:23', '2023-04-17 19:55:23', '', 'William Anderson', '', 'publish', 'closed', 'closed', '', 'william-anderson', '', '', '2023-04-17 16:55:23', '2023-04-17 19:55:23', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_dados&#038;p=197', 0, 'equipe_dados', '', 0),
(198, 1, '2023-04-17 16:55:19', '2023-04-17 19:55:19', '', 'team-3', '', 'inherit', 'open', 'closed', '', 'team-3-2', '', '', '2023-04-17 16:55:19', '2023-04-17 19:55:19', '', 197, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/team-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(199, 1, '2023-04-17 16:59:49', '2023-04-17 19:59:49', '', 'Sarah Jhonson', '', 'trash', 'closed', 'closed', '', '__trashed', '', '', '2023-04-17 16:59:49', '2023-04-17 19:59:49', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_dados&#038;p=199', 0, 'equipe_dados', '', 0),
(200, 1, '2023-04-17 17:01:31', '2023-04-17 20:01:31', '', 'Sarah Jhonson', '', 'publish', 'closed', 'closed', '', 'sarah-jhonson', '', '', '2023-04-17 17:02:28', '2023-04-17 20:02:28', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_dados&#038;p=200', 0, 'equipe_dados', '', 0),
(201, 1, '2023-04-17 17:02:14', '2023-04-17 20:02:14', '', 'Amanda Jepson', '', 'publish', 'closed', 'closed', '', 'amanda-jepson', '', '', '2023-04-17 17:02:14', '2023-04-17 20:02:14', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_dados&#038;p=201', 0, 'equipe_dados', '', 0),
(202, 1, '2023-04-17 22:34:44', '2023-04-18 01:34:44', '', 'Jason Muller', '', 'trash', 'closed', 'closed', '', 'jason-muller__trashed', '', '', '2023-04-17 22:56:06', '2023-04-18 01:56:06', '', 0, 'http://localhost/wp_etecidos/?post_type=equipe_dados&#038;p=202', 0, 'equipe_dados', '', 0),
(206, 1, '2023-04-17 22:53:27', '2023-04-18 01:53:27', '', 'team-5', '', 'inherit', 'open', 'closed', '', 'team-5', '', '', '2023-04-17 22:53:27', '2023-04-18 01:53:27', '', 202, 'http://localhost/wp_etecidos/wp-content/uploads/2023/04/team-5.jpg', 0, 'attachment', 'image/jpeg', 0);

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
(20, 1, 'wp_user-settings-time', '1681703181'),
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
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=858;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=668;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

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
