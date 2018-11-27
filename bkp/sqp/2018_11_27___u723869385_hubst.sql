-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: 27-Nov-2018 às 19:00
-- Versão do servidor: 10.2.17-MariaDB
-- PHP Version: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u723869385_hubst`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_apsl_users_social_profile_details`
--

CREATE TABLE `wp_apsl_users_social_profile_details` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `unique_verifier` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_verified` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `first_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `profile_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `website_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `photo_url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `language` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` int(11) NOT NULL,
  `birthmonth` int(11) NOT NULL,
  `birthyear` int(11) NOT NULL,
  `phone` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(75) COLLATE utf8_unicode_ci NOT NULL,
  `region` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `zip` varchar(25) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `wp_apsl_users_social_profile_details`
--

INSERT INTO `wp_apsl_users_social_profile_details` (`id`, `user_id`, `provider_name`, `identifier`, `unique_verifier`, `email`, `email_verified`, `first_name`, `last_name`, `profile_url`, `website_url`, `photo_url`, `display_name`, `description`, `gender`, `language`, `age`, `birthday`, `birthmonth`, `birthyear`, `phone`, `address`, `country`, `region`, `city`, `zip`) VALUES
(1, 1, 'facebook', '10211297328221587', '06df0817e2c45876dbe9ebc5fd8f2c5a310c82bf', 'edertton@gmail.com', '', 'Ederton', 'Lima', '', '', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=10211297328221587&height=50&width=50&ext=1541200848&hash=AeSXC7uBTX3ChdKx', 'Ederton Lima', '', 'N/A', '', '', 0, 0, 0, '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
  `comment_post_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `comment_author` tinytext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_author_email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_url` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_author_IP` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `comment_content` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `comment_karma` int(11) NOT NULL DEFAULT 0,
  `comment_approved` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `comment_agent` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Um comentarista do WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2018-07-04 11:45:17', '2018-07-04 14:45:17', 'Olá, isso é um comentário.\nPara começar a moderar, editar e deletar comentários, visite a tela de Comentários no painel.\nAvatares de comentaristas vêm a partir do <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0),
(2, 519, 'WooCommerce', 'woocommerce@ederton.xyz', '', '', '2018-11-22 22:01:29', '2018-11-23 00:01:29', 'Status do pedido alterado de Pagamento pendente para Processando.', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(3, 519, 'WooCommerce', 'woocommerce@ederton.xyz', '', '', '2018-11-22 22:01:29', '2018-11-23 00:01:29', 'Cobrança do Stripe concluída (ID da cobrança: ch_1DZS6rD4DUEBCDyz3R0kg67C)', 0, '1', 'WooCommerce', 'order_note', 0, 0),
(4, 519, 'Ederton', 'edertton@gmail.com', '', '', '2018-11-22 22:07:58', '2018-11-23 00:07:58', 'Status do pedido alterado de Processando para Concluído.', 0, '1', 'WooCommerce', 'order_note', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_failed_jobs`
--

CREATE TABLE `wp_failed_jobs` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `failed_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

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
  `link_owner` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `link_rating` int(11) NOT NULL DEFAULT 0,
  `link_updated` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `link_rel` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `link_notes` mediumtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_mailchimp_carts`
--

CREATE TABLE `wp_mailchimp_carts` (
  `id` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `cart` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'yes'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'https://ederton.xyz/preview/hubsty', 'yes'),
(2, 'home', 'https://ederton.xyz/preview/hubsty', 'yes'),
(3, 'blogname', 'M2 Distribuidora', 'yes'),
(4, 'blogdescription', 'Só mais um site WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'edertton@gmail.com', 'yes'),
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
(21, 'default_pingback_flag', '1', 'yes'),
(22, 'posts_per_page', '10', 'yes'),
(23, 'date_format', 'j \\d\\e F \\d\\e Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j \\d\\e F \\d\\e Y, H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%category%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:252:{s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:16:\"dc_commission/?$\";s:33:\"index.php?post_type=dc_commission\";s:46:\"dc_commission/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=dc_commission&feed=$matches[1]\";s:41:\"dc_commission/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_type=dc_commission&feed=$matches[1]\";s:33:\"dc_commission/page/([0-9]{1,})/?$\";s:51:\"index.php?post_type=dc_commission&paged=$matches[1]\";s:19:\"wcmp_transaction/?$\";s:36:\"index.php?post_type=wcmp_transaction\";s:49:\"wcmp_transaction/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=wcmp_transaction&feed=$matches[1]\";s:44:\"wcmp_transaction/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?post_type=wcmp_transaction&feed=$matches[1]\";s:36:\"wcmp_transaction/page/([0-9]{1,})/?$\";s:54:\"index.php?post_type=wcmp_transaction&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:14:\"tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:48:\"categoria/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:43:\"categoria/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:24:\"categoria/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:36:\"categoria/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:18:\"categoria/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:46:\"corpo/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_corpo=$matches[1]&feed=$matches[2]\";s:41:\"corpo/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pa_corpo=$matches[1]&feed=$matches[2]\";s:22:\"corpo/([^/]+)/embed/?$\";s:41:\"index.php?pa_corpo=$matches[1]&embed=true\";s:34:\"corpo/([^/]+)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pa_corpo=$matches[1]&paged=$matches[2]\";s:16:\"corpo/([^/]+)/?$\";s:30:\"index.php?pa_corpo=$matches[1]\";s:35:\"produto/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"produto/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"produto/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"produto/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"produto/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"produto/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"produto/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"produto/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"produto/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"produto/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"produto/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:33:\"produto/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"produto/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"produto/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:32:\"produto/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"produto/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"produto/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"produto/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"produto/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"produto/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:39:\"dc_commission/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:49:\"dc_commission/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:69:\"dc_commission/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"dc_commission/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:64:\"dc_commission/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:45:\"dc_commission/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:28:\"dc_commission/(.+?)/embed/?$\";s:65:\"index.php?post_type=dc_commission&pagename=$matches[1]&embed=true\";s:32:\"dc_commission/(.+?)/trackback/?$\";s:59:\"index.php?post_type=dc_commission&pagename=$matches[1]&tb=1\";s:52:\"dc_commission/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:71:\"index.php?post_type=dc_commission&pagename=$matches[1]&feed=$matches[2]\";s:47:\"dc_commission/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:71:\"index.php?post_type=dc_commission&pagename=$matches[1]&feed=$matches[2]\";s:40:\"dc_commission/(.+?)/page/?([0-9]{1,})/?$\";s:72:\"index.php?post_type=dc_commission&pagename=$matches[1]&paged=$matches[2]\";s:47:\"dc_commission/(.+?)/comment-page-([0-9]{1,})/?$\";s:72:\"index.php?post_type=dc_commission&pagename=$matches[1]&cpage=$matches[2]\";s:37:\"dc_commission/(.+?)/wc-api(/(.*))?/?$\";s:73:\"index.php?post_type=dc_commission&pagename=$matches[1]&wc-api=$matches[3]\";s:43:\"dc_commission/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:54:\"dc_commission/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:36:\"dc_commission/(.+?)(?:/([0-9]+))?/?$\";s:71:\"index.php?post_type=dc_commission&pagename=$matches[1]&page=$matches[2]\";s:42:\"wcmp_transaction/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:52:\"wcmp_transaction/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:72:\"wcmp_transaction/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"wcmp_transaction/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:67:\"wcmp_transaction/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:48:\"wcmp_transaction/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:31:\"wcmp_transaction/(.+?)/embed/?$\";s:68:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&embed=true\";s:35:\"wcmp_transaction/(.+?)/trackback/?$\";s:62:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&tb=1\";s:55:\"wcmp_transaction/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:74:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&feed=$matches[2]\";s:50:\"wcmp_transaction/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:74:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&feed=$matches[2]\";s:43:\"wcmp_transaction/(.+?)/page/?([0-9]{1,})/?$\";s:75:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&paged=$matches[2]\";s:50:\"wcmp_transaction/(.+?)/comment-page-([0-9]{1,})/?$\";s:75:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&cpage=$matches[2]\";s:40:\"wcmp_transaction/(.+?)/wc-api(/(.*))?/?$\";s:76:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&wc-api=$matches[3]\";s:46:\"wcmp_transaction/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:57:\"wcmp_transaction/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:39:\"wcmp_transaction/(.+?)(?:/([0-9]+))?/?$\";s:74:\"index.php?post_type=wcmp_transaction&pagename=$matches[1]&page=$matches[2]\";s:44:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:54:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:74:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:69:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:50:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:33:\"wcmp_vendor_notice/(.+?)/embed/?$\";s:70:\"index.php?post_type=wcmp_vendor_notice&pagename=$matches[1]&embed=true\";s:37:\"wcmp_vendor_notice/(.+?)/trackback/?$\";s:64:\"index.php?post_type=wcmp_vendor_notice&pagename=$matches[1]&tb=1\";s:45:\"wcmp_vendor_notice/(.+?)/page/?([0-9]{1,})/?$\";s:77:\"index.php?post_type=wcmp_vendor_notice&pagename=$matches[1]&paged=$matches[2]\";s:52:\"wcmp_vendor_notice/(.+?)/comment-page-([0-9]{1,})/?$\";s:77:\"index.php?post_type=wcmp_vendor_notice&pagename=$matches[1]&cpage=$matches[2]\";s:42:\"wcmp_vendor_notice/(.+?)/wc-api(/(.*))?/?$\";s:78:\"index.php?post_type=wcmp_vendor_notice&pagename=$matches[1]&wc-api=$matches[3]\";s:48:\"wcmp_vendor_notice/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:59:\"wcmp_vendor_notice/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:41:\"wcmp_vendor_notice/(.+?)(?:/([0-9]+))?/?$\";s:76:\"index.php?post_type=wcmp_vendor_notice&pagename=$matches[1]&page=$matches[2]\";s:41:\"wcmp_university/.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:51:\"wcmp_university/.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:71:\"wcmp_university/.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wcmp_university/.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:66:\"wcmp_university/.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:47:\"wcmp_university/.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:30:\"wcmp_university/(.+?)/embed/?$\";s:67:\"index.php?post_type=wcmp_university&pagename=$matches[1]&embed=true\";s:34:\"wcmp_university/(.+?)/trackback/?$\";s:61:\"index.php?post_type=wcmp_university&pagename=$matches[1]&tb=1\";s:42:\"wcmp_university/(.+?)/page/?([0-9]{1,})/?$\";s:74:\"index.php?post_type=wcmp_university&pagename=$matches[1]&paged=$matches[2]\";s:49:\"wcmp_university/(.+?)/comment-page-([0-9]{1,})/?$\";s:74:\"index.php?post_type=wcmp_university&pagename=$matches[1]&cpage=$matches[2]\";s:39:\"wcmp_university/(.+?)/wc-api(/(.*))?/?$\";s:75:\"index.php?post_type=wcmp_university&pagename=$matches[1]&wc-api=$matches[3]\";s:45:\"wcmp_university/.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:56:\"wcmp_university/.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:38:\"wcmp_university/(.+?)(?:/([0-9]+))?/?$\";s:73:\"index.php?post_type=wcmp_university&pagename=$matches[1]&page=$matches[2]\";s:49:\"parceiro/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?dc_vendor_shop=$matches[1]&feed=$matches[2]\";s:44:\"parceiro/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:53:\"index.php?dc_vendor_shop=$matches[1]&feed=$matches[2]\";s:25:\"parceiro/([^/]+)/embed/?$\";s:47:\"index.php?dc_vendor_shop=$matches[1]&embed=true\";s:37:\"parceiro/([^/]+)/page/?([0-9]{1,})/?$\";s:54:\"index.php?dc_vendor_shop=$matches[1]&paged=$matches[2]\";s:19:\"parceiro/([^/]+)/?$\";s:36:\"index.php?dc_vendor_shop=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:27:\"comment-page-([0-9]{1,})/?$\";s:39:\"index.php?&page_id=28&cpage=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:39:\"(.?.+?)/vendor-announcements(/(.*))?/?$\";s:63:\"index.php?pagename=$matches[1]&vendor-announcements=$matches[3]\";s:26:\"(.?.+?)/profile(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&profile=$matches[3]\";s:29:\"(.?.+?)/storefront(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&storefront=$matches[3]\";s:33:\"(.?.+?)/vendor-billing(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&vendor-billing=$matches[3]\";s:34:\"(.?.+?)/vendor-policies(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&vendor-policies=$matches[3]\";s:34:\"(.?.+?)/vendor-shipping(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&vendor-shipping=$matches[3]\";s:32:\"(.?.+?)/vendor-report(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&vendor-report=$matches[3]\";s:30:\"(.?.+?)/add-product(/(.*))?/?$\";s:54:\"index.php?pagename=$matches[1]&add-product=$matches[3]\";s:27:\"(.?.+?)/products(/(.*))?/?$\";s:51:\"index.php?pagename=$matches[1]&products=$matches[3]\";s:29:\"(.?.+?)/add-coupon(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&add-coupon=$matches[3]\";s:26:\"(.?.+?)/coupons(/(.*))?/?$\";s:50:\"index.php?pagename=$matches[1]&coupons=$matches[3]\";s:32:\"(.?.+?)/vendor-orders(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&vendor-orders=$matches[3]\";s:36:\"(.?.+?)/vendor-withdrawal(/(.*))?/?$\";s:60:\"index.php?pagename=$matches[1]&vendor-withdrawal=$matches[3]\";s:38:\"(.?.+?)/transaction-details(/(.*))?/?$\";s:62:\"index.php?pagename=$matches[1]&transaction-details=$matches[3]\";s:39:\"(.?.+?)/vendor-knowledgebase(/(.*))?/?$\";s:63:\"index.php?pagename=$matches[1]&vendor-knowledgebase=$matches[3]\";s:31:\"(.?.+?)/vendor-tools(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&vendor-tools=$matches[3]\";s:31:\"(.?.+?)/products-qna(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&products-qna=$matches[3]\";s:42:\"(.?.+?)/rejected-vendor-reapply(/(.*))?/?$\";s:66:\"index.php?pagename=$matches[1]&rejected-vendor-reapply=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";s:31:\".+?/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:41:\".+?/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:61:\".+?/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:56:\".+?/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:37:\".+?/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"(.+?)/([^/]+)/embed/?$\";s:63:\"index.php?category_name=$matches[1]&name=$matches[2]&embed=true\";s:26:\"(.+?)/([^/]+)/trackback/?$\";s:57:\"index.php?category_name=$matches[1]&name=$matches[2]&tb=1\";s:46:\"(.+?)/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:41:\"(.+?)/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&feed=$matches[3]\";s:34:\"(.+?)/([^/]+)/page/?([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&paged=$matches[3]\";s:41:\"(.+?)/([^/]+)/comment-page-([0-9]{1,})/?$\";s:70:\"index.php?category_name=$matches[1]&name=$matches[2]&cpage=$matches[3]\";s:31:\"(.+?)/([^/]+)/wc-api(/(.*))?/?$\";s:71:\"index.php?category_name=$matches[1]&name=$matches[2]&wc-api=$matches[4]\";s:35:\".+?/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:46:\".+?/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:30:\"(.+?)/([^/]+)(?:/([0-9]+))?/?$\";s:69:\"index.php?category_name=$matches[1]&name=$matches[2]&page=$matches[3]\";s:20:\".+?/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:30:\".+?/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:50:\".+?/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:45:\".+?/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:26:\".+?/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:38:\"(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:33:\"(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:14:\"(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:26:\"(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:33:\"(.+?)/comment-page-([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&cpage=$matches[2]\";s:23:\"(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:8:\"(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";}', 'yes'),
(5161, 'wpai-woocommerce-add-on_timeout_080fdc82a3a678dab2d4f10c27ddeb79', '1542935722', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:13:{i:0;s:34:\"advanced-custom-fields-pro/acf.php\";i:1;s:27:\"bulk-delete/bulk-delete.php\";i:2;s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";i:3;s:48:\"easyship-woocommerce-shipping-rates/easyship.php\";i:4;s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";i:5;s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";i:6;s:47:\"wcmp-advance-shipping/wcmp-advance-shipping.php\";i:7;s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";i:8;s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";i:9;s:27:\"woocommerce/woocommerce.php\";i:10;s:39:\"wp-all-import-pro/wp-all-import-pro.php\";i:11;s:35:\"wpai-acf-add-on/wpai-acf-add-on.php\";i:12;s:51:\"wpai-woocommerce-add-on/wpai-woocommerce-add-on.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', 'a:2:{i:0;s:97:\"/home/u723869385/public_html/preview/hubsty/wp-content/plugins/advanced-custom-fields-pro/acf.php\";i:1;s:0:\"\";}', 'no'),
(40, 'template', 'storefront', 'yes'),
(41, 'stylesheet', 'storefront', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '38590', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'page', 'yes'),
(54, 'tag_base', '', 'yes'),
(55, 'show_avatars', '1', 'yes'),
(56, 'avatar_rating', 'G', 'yes'),
(57, 'upload_url_path', '', 'yes'),
(58, 'thumbnail_size_w', '300', 'yes'),
(59, 'thumbnail_size_h', '300', 'yes'),
(60, 'thumbnail_crop', '1', 'yes'),
(61, 'medium_size_w', '600', 'yes'),
(62, 'medium_size_h', '600', 'yes'),
(63, 'avatar_default', 'mystery', 'yes'),
(64, 'large_size_w', '1024', 'yes'),
(65, 'large_size_h', '1024', 'yes'),
(66, 'image_default_link_type', '', 'yes'),
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
(82, 'timezone_string', 'America/Sao_Paulo', 'yes'),
(83, 'page_for_posts', '29', 'yes'),
(84, 'page_on_front', '28', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'initial_db_version', '38590', 'yes'),
(93, 'wp_user_roles', 'a:10:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:17:\"dc_pending_vendor\";a:2:{s:4:\"name\";s:14:\"Pending Vendor\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:18:\"dc_rejected_vendor\";a:2:{s:4:\"name\";s:15:\"Rejected Vendor\";s:12:\"capabilities\";a:3:{s:4:\"read\";b:1;s:10:\"edit_posts\";b:0;s:12:\"delete_posts\";b:0;}}s:9:\"dc_vendor\";a:2:{s:4:\"name\";s:6:\"Vendor\";s:12:\"capabilities\";a:23:{s:4:\"read\";b:1;s:14:\"manage_product\";b:1;s:10:\"edit_posts\";b:1;s:12:\"delete_posts\";b:0;s:24:\"view_woocommerce_reports\";b:1;s:20:\"assign_product_terms\";b:1;s:12:\"upload_files\";b:1;s:12:\"read_product\";b:1;s:16:\"read_shop_coupon\";b:1;s:12:\"edit_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:15:\"delete_products\";b:1;s:16:\"publish_products\";b:0;s:23:\"edit_published_products\";b:1;s:25:\"delete_published_products\";b:1;s:16:\"edit_shop_coupon\";b:0;s:17:\"edit_shop_coupons\";b:0;s:18:\"delete_shop_coupon\";b:0;s:19:\"delete_shop_coupons\";b:0;s:20:\"publish_shop_coupons\";b:0;s:27:\"edit_published_shop_coupons\";b:0;s:29:\"delete_published_shop_coupons\";b:0;}}}', 'yes'),
(94, 'fresh_site', '0', 'yes'),
(95, 'WPLANG', 'en_AU', 'yes'),
(96, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(97, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(98, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'sidebars_widgets', 'a:8:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}s:13:\"array_version\";i:3;}', 'yes'),
(102, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(104, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(105, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'cron', 'a:14:{i:1543347918;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1543348493;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1543352570;a:1:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543352580;a:1:{s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543353365;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543363370;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543373118;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543374000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543374170;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1543416408;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1543419047;a:1:{s:25:\"vendor_weekly_order_stats\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1543894247;a:1:{s:26:\"vendor_monthly_order_stats\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}i:1543924800;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:7:\"monthly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:2635200;}}}s:7:\"version\";i:2;}', 'yes'),
(112, 'theme_mods_twentyseventeen', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1530716221;s:4:\"data\";a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:9:\"sidebar-2\";a:0:{}s:9:\"sidebar-3\";a:0:{}}}}', 'yes'),
(303, 'mailchimp_woocommerce_version', '2.1.6', 'no'),
(304, 'mailchimp-woocommerce', 'a:0:{}', 'yes'),
(305, 'mailchimp-woocommerce-store_id', '5b3ce04e59138', 'yes'),
(307, 'woocommerce_catalog_rows', '4', 'yes'),
(308, 'woocommerce_catalog_columns', '3', 'yes'),
(309, 'woocommerce_maybe_regenerate_images_hash', '27acde77266b4d2a3491118955cb3f66', 'yes'),
(445, 'auto_core_update_notified', 'a:4:{s:4:\"type\";s:7:\"success\";s:5:\"email\";s:18:\"edertton@gmail.com\";s:7:\"version\";s:5:\"4.9.8\";s:9:\"timestamp\";i:1533259218;}', 'no'),
(338, 'dc_product_vendor_plugin_db_version', '3.1.3', 'yes'),
(4291, 'widget_apsl_widget', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4155, 'the_champ_general', 'a:6:{s:13:\"footer_script\";s:1:\"1\";s:15:\"combined_script\";s:1:\"1\";s:14:\"delete_options\";s:1:\"1\";s:18:\"browser_msg_enable\";s:1:\"1\";s:11:\"browser_msg\";s:121:\"Your browser is blocking some features of this website. Please follow the instructions at {support_url} to unblock these.\";s:10:\"custom_css\";s:0:\"\";}', 'yes'),
(4156, 'the_champ_login', 'a:43:{s:6:\"enable\";s:1:\"1\";s:20:\"disable_reg_redirect\";s:0:\"\";s:9:\"providers\";a:1:{i:0;s:8:\"facebook\";}s:6:\"fb_key\";s:16:\"1928587287440634\";s:9:\"fb_secret\";s:32:\"2ec3ef16993e17e6a99de2dccd5d30f3\";s:11:\"twitter_key\";s:0:\"\";s:14:\"twitter_secret\";s:0:\"\";s:6:\"li_key\";s:0:\"\";s:9:\"li_secret\";s:0:\"\";s:10:\"google_key\";s:0:\"\";s:13:\"google_secret\";s:0:\"\";s:6:\"vk_key\";s:0:\"\";s:13:\"vk_secure_key\";s:0:\"\";s:8:\"insta_id\";s:0:\"\";s:7:\"xing_ck\";s:0:\"\";s:7:\"xing_cs\";s:0:\"\";s:13:\"steam_api_key\";s:0:\"\";s:16:\"twitch_client_id\";s:0:\"\";s:20:\"twitch_client_secret\";s:0:\"\";s:5:\"title\";s:25:\"Login with your Social ID\";s:13:\"enableAtLogin\";s:1:\"1\";s:16:\"enableAtRegister\";s:1:\"1\";s:16:\"enable_before_wc\";s:1:\"1\";s:15:\"enable_after_wc\";s:1:\"1\";s:18:\"enable_wc_checkout\";s:1:\"1\";s:6:\"avatar\";s:1:\"1\";s:14:\"avatar_quality\";s:7:\"average\";s:14:\"email_required\";s:1:\"1\";s:14:\"password_email\";s:1:\"1\";s:20:\"new_user_admin_email\";s:1:\"1\";s:17:\"login_redirection\";s:4:\"same\";s:21:\"login_redirection_url\";s:0:\"\";s:20:\"register_redirection\";s:4:\"same\";s:24:\"register_redirection_url\";s:0:\"\";s:9:\"scl_title\";s:65:\"Link your social account to login to your account at this website\";s:12:\"link_account\";s:1:\"1\";s:16:\"email_popup_text\";s:70:\"Please enter a valid email address. You might be required to verify it\";s:19:\"email_error_message\";s:50:\"Email you entered is already registered or invalid\";s:12:\"popup_height\";s:0:\"\";s:11:\"gdpr_enable\";s:1:\"1\";s:25:\"privacy_policy_optin_text\";s:103:\"Eu concordo com meus dados pessoais sendo armazenados e usados de acordo com a Política de Privacidade\";s:15:\"ppu_placeholder\";s:24:\"Política de Privacidade\";s:18:\"privacy_policy_url\";s:67:\"https://ederton.xyz/preview/m2distribuidora/politica-de-privacidade\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(4157, 'the_champ_facebook', 'a:16:{s:16:\"commenting_order\";s:36:\"wordpress,facebook,googleplus,disqus\";s:16:\"commenting_label\";s:13:\"Leave a reply\";s:13:\"commenting_id\";s:0:\"\";s:24:\"label_wordpress_comments\";s:16:\"Default Comments\";s:23:\"label_facebook_comments\";s:17:\"Facebook Comments\";s:25:\"label_googleplus_comments\";s:11:\"G+ Comments\";s:21:\"label_disqus_comments\";s:15:\"Disqus Comments\";s:12:\"urlToComment\";s:0:\"\";s:13:\"comment_width\";s:0:\"\";s:13:\"comment_color\";s:5:\"light\";s:16:\"comment_numposts\";s:0:\"\";s:15:\"comment_orderby\";s:6:\"social\";s:12:\"comment_lang\";s:5:\"pt_BR\";s:16:\"gpcomments_width\";s:0:\"\";s:14:\"gpcomments_url\";s:0:\"\";s:12:\"dq_shortname\";s:0:\"\";}', 'yes'),
(4158, 'the_champ_sharing', 'a:73:{s:24:\"horizontal_sharing_shape\";s:5:\"round\";s:23:\"horizontal_sharing_size\";s:2:\"35\";s:24:\"horizontal_sharing_width\";s:2:\"70\";s:25:\"horizontal_sharing_height\";s:2:\"35\";s:24:\"horizontal_border_radius\";s:0:\"\";s:29:\"horizontal_font_color_default\";s:0:\"\";s:32:\"horizontal_sharing_replace_color\";s:4:\"#fff\";s:27:\"horizontal_font_color_hover\";s:0:\"\";s:38:\"horizontal_sharing_replace_color_hover\";s:4:\"#fff\";s:27:\"horizontal_bg_color_default\";s:0:\"\";s:25:\"horizontal_bg_color_hover\";s:0:\"\";s:31:\"horizontal_border_width_default\";s:0:\"\";s:31:\"horizontal_border_color_default\";s:0:\"\";s:29:\"horizontal_border_width_hover\";s:0:\"\";s:29:\"horizontal_border_color_hover\";s:0:\"\";s:22:\"vertical_sharing_shape\";s:6:\"square\";s:21:\"vertical_sharing_size\";s:2:\"40\";s:22:\"vertical_sharing_width\";s:2:\"80\";s:23:\"vertical_sharing_height\";s:2:\"40\";s:22:\"vertical_border_radius\";s:0:\"\";s:27:\"vertical_font_color_default\";s:0:\"\";s:30:\"vertical_sharing_replace_color\";s:4:\"#fff\";s:25:\"vertical_font_color_hover\";s:0:\"\";s:36:\"vertical_sharing_replace_color_hover\";s:4:\"#fff\";s:25:\"vertical_bg_color_default\";s:0:\"\";s:23:\"vertical_bg_color_hover\";s:0:\"\";s:29:\"vertical_border_width_default\";s:0:\"\";s:29:\"vertical_border_color_default\";s:0:\"\";s:27:\"vertical_border_width_hover\";s:0:\"\";s:27:\"vertical_border_color_hover\";s:0:\"\";s:10:\"hor_enable\";s:1:\"1\";s:21:\"horizontal_target_url\";s:7:\"default\";s:28:\"horizontal_target_url_custom\";s:0:\"\";s:5:\"title\";s:15:\"Spread the love\";s:18:\"instagram_username\";s:0:\"\";s:20:\"comment_container_id\";s:7:\"respond\";s:23:\"horizontal_re_providers\";a:9:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:6:\"reddit\";i:6;s:9:\"delicious\";i:7;s:3:\"mix\";i:8;s:8:\"whatsapp\";}s:21:\"hor_sharing_alignment\";s:4:\"left\";s:3:\"top\";s:1:\"1\";s:4:\"post\";s:1:\"1\";s:4:\"page\";s:1:\"1\";s:19:\"tweet_count_service\";s:14:\"opensharecount\";s:15:\"horizontal_more\";s:1:\"1\";s:15:\"vertical_enable\";s:1:\"1\";s:19:\"vertical_target_url\";s:7:\"default\";s:26:\"vertical_target_url_custom\";s:0:\"\";s:27:\"vertical_instagram_username\";s:0:\"\";s:29:\"vertical_comment_container_id\";s:7:\"respond\";s:21:\"vertical_re_providers\";a:9:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:11:\"google_plus\";i:3;s:8:\"linkedin\";i:4;s:9:\"pinterest\";i:5;s:6:\"reddit\";i:6;s:9:\"delicious\";i:7;s:3:\"mix\";i:8;s:8:\"whatsapp\";}s:11:\"vertical_bg\";s:0:\"\";s:9:\"alignment\";s:4:\"left\";s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:13:\"vertical_home\";s:1:\"1\";s:13:\"vertical_post\";s:1:\"1\";s:13:\"vertical_page\";s:1:\"1\";s:28:\"vertical_tweet_count_service\";s:14:\"opensharecount\";s:13:\"vertical_more\";s:1:\"1\";s:19:\"hide_mobile_sharing\";s:1:\"1\";s:21:\"vertical_screen_width\";s:3:\"783\";s:21:\"bottom_mobile_sharing\";s:1:\"1\";s:23:\"horizontal_screen_width\";s:3:\"783\";s:23:\"bottom_sharing_position\";s:1:\"0\";s:24:\"bottom_sharing_alignment\";s:4:\"left\";s:29:\"bottom_sharing_position_radio\";s:10:\"responsive\";s:14:\"bitly_username\";s:0:\"\";s:9:\"bitly_key\";s:0:\"\";s:31:\"share_count_cache_refresh_count\";s:2:\"10\";s:30:\"share_count_cache_refresh_unit\";s:7:\"minutes\";s:8:\"language\";s:5:\"pt_BR\";s:16:\"twitter_username\";s:0:\"\";s:15:\"buffer_username\";s:0:\"\";}', 'yes'),
(1928, 'PMAI_Plugin_Options', 'a:0:{}', 'yes'),
(3331, 'wcmp_vendor_registration_form_data', 'a:1:{i:0;a:8:{s:2:\"id\";i:0;s:4:\"type\";s:7:\"textbox\";s:5:\"label\";s:25:\"Valor mínimo do carrinho\";s:6:\"hidden\";b:1;s:7:\"partial\";s:12:\"textbox.html\";s:11:\"placeholder\";s:25:\"Valor mínimo do carrinho\";s:8:\"required\";b:1;s:8:\"cssClass\";s:0:\"\";}}', 'yes'),
(3669, '_transient_timeout_wcmp_66.102.6.139', '1543662525', 'no'),
(3670, '_transient_wcmp_66.102.6.139', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:39.04379999999999739657141617499291896820068359375;s:3:\"lon\";d:-77.4873999999999938381733954884111881256103515625;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:12:\"66.102.6.139\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(3688, '_transient_timeout_wcmp_200.52.17.198', '1543695160', 'no'),
(3660, '_transient_timeout_wcmp_66.102.6.137', '1543662524', 'no'),
(3661, '_transient_wcmp_66.102.6.137', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:39.04379999999999739657141617499291896820068359375;s:3:\"lon\";d:-77.4873999999999938381733954884111881256103515625;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:12:\"66.102.6.137\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(3674, '_transient_timeout_wcmp_201.21.254.50', '1543685871', 'no'),
(3675, '_transient_wcmp_201.21.254.50', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS28573 CLARO S.A.\";s:4:\"city\";s:9:\"Gravataí\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:10:\"NET Virtua\";s:3:\"lat\";d:-29.942599999999998772182152606546878814697265625;s:3:\"lon\";d:-50.99329999999999785131876706145703792572021484375;s:3:\"org\";s:10:\"NET Virtua\";s:5:\"query\";s:13:\"201.21.254.50\";s:6:\"region\";s:2:\"RS\";s:10:\"regionName\";s:17:\"Rio Grande do Sul\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"94000\";}', 'no'),
(3676, '_transient_timeout_wcmp_189.4.76.132', '1543690017', 'no'),
(3677, '_transient_wcmp_189.4.76.132', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS28573 CLARO S.A.\";s:4:\"city\";s:14:\"Florianópolis\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:10:\"NET Virtua\";s:3:\"lat\";d:-27.590399999999998925659383530728518962860107421875;s:3:\"lon\";d:-48.5758000000000009777068044058978557586669921875;s:3:\"org\";s:10:\"NET Virtua\";s:5:\"query\";s:12:\"189.4.76.132\";s:6:\"region\";s:2:\"SC\";s:10:\"regionName\";s:14:\"Santa Catarina\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"88000\";}', 'no'),
(140, 'can_compress_scripts', '1', 'no'),
(143, 'recently_activated', 'a:0:{}', 'yes'),
(146, 'woocommerce_store_address', 'Rua João Urias Batista', 'yes'),
(147, 'woocommerce_store_address_2', '', 'yes'),
(148, 'woocommerce_store_city', 'Bauru', 'yes'),
(149, 'woocommerce_default_country', 'BR:SP', 'yes'),
(150, 'woocommerce_store_postcode', '17054610', 'yes'),
(151, 'woocommerce_allowed_countries', 'all', 'yes'),
(152, 'woocommerce_all_except_countries', 'a:0:{}', 'yes'),
(153, 'woocommerce_specific_allowed_countries', 'a:0:{}', 'yes'),
(154, 'woocommerce_ship_to_countries', '', 'yes'),
(155, 'woocommerce_specific_ship_to_countries', 'a:0:{}', 'yes'),
(156, 'woocommerce_default_customer_address', 'geolocation', 'yes'),
(157, 'woocommerce_calc_taxes', 'no', 'yes'),
(158, 'woocommerce_enable_coupons', 'yes', 'yes'),
(159, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(160, 'woocommerce_currency', 'BRL', 'yes'),
(161, 'woocommerce_currency_pos', 'left', 'yes'),
(162, 'woocommerce_price_thousand_sep', '.', 'yes'),
(163, 'woocommerce_price_decimal_sep', ',', 'yes'),
(164, 'woocommerce_price_num_decimals', '2', 'yes'),
(165, 'woocommerce_shop_page_id', '5', 'yes'),
(166, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(167, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(168, 'woocommerce_weight_unit', 'kg', 'yes'),
(169, 'woocommerce_dimension_unit', 'cm', 'yes'),
(170, 'woocommerce_enable_reviews', 'yes', 'yes'),
(171, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(172, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(173, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(174, 'woocommerce_review_rating_required', 'yes', 'no'),
(175, 'woocommerce_manage_stock', 'yes', 'yes'),
(176, 'woocommerce_hold_stock_minutes', '60', 'no'),
(177, 'woocommerce_notify_low_stock', 'yes', 'no'),
(178, 'woocommerce_notify_no_stock', 'yes', 'no'),
(179, 'woocommerce_stock_email_recipient', 'edertton@gmail.com', 'no'),
(180, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(181, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(182, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(183, 'woocommerce_stock_format', '', 'yes'),
(184, 'woocommerce_file_download_method', 'force', 'no'),
(185, 'woocommerce_downloads_require_login', 'no', 'no'),
(186, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(187, 'woocommerce_prices_include_tax', 'no', 'yes'),
(188, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(189, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(190, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(191, 'woocommerce_tax_classes', 'Reduced rate\r\nZero rate', 'yes'),
(192, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(193, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(194, 'woocommerce_price_display_suffix', '', 'yes'),
(195, 'woocommerce_tax_total_display', 'itemized', 'no'),
(196, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(197, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(198, 'woocommerce_ship_to_destination', 'billing', 'no'),
(199, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(200, 'woocommerce_enable_guest_checkout', 'no', 'no'),
(201, 'woocommerce_enable_checkout_login_reminder', 'yes', 'no'),
(202, 'woocommerce_enable_signup_and_login_from_checkout', 'yes', 'no'),
(203, 'woocommerce_enable_myaccount_registration', 'yes', 'no'),
(204, 'woocommerce_registration_generate_username', 'yes', 'no'),
(205, 'woocommerce_registration_generate_password', 'yes', 'no'),
(206, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(207, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(208, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(209, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(210, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(211, 'woocommerce_trash_pending_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(212, 'woocommerce_trash_failed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(213, 'woocommerce_trash_cancelled_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:4:\"days\";}', 'no'),
(214, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(215, 'woocommerce_email_from_name', 'M2 Distribuidora', 'no'),
(216, 'woocommerce_email_from_address', 'edertton@gmail.com', 'no'),
(217, 'woocommerce_email_header_image', '', 'no'),
(218, 'woocommerce_email_footer_text', '{site_title}', 'no'),
(219, 'woocommerce_email_base_color', '#96588a', 'no'),
(220, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(221, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(222, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(223, 'woocommerce_cart_page_id', '6', 'yes'),
(224, 'woocommerce_checkout_page_id', '7', 'yes'),
(225, 'woocommerce_myaccount_page_id', '8', 'yes'),
(226, 'woocommerce_terms_page_id', '', 'no'),
(227, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(228, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(229, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(230, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(231, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(232, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(233, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(234, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(235, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(236, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(237, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(238, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(239, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(240, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(241, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(242, 'woocommerce_api_enabled', 'no', 'yes'),
(243, 'woocommerce_single_image_width', '600', 'yes'),
(244, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(245, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(246, 'woocommerce_demo_store', 'no', 'no'),
(247, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"produto\";s:13:\"category_base\";s:9:\"categoria\";s:8:\"tag_base\";s:3:\"tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(248, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(249, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(252, 'default_product_cat', '15', 'yes'),
(273, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(1925, 'woocommerce_version', '3.4.4', 'yes'),
(1926, 'woocommerce_db_version', '3.4.4', 'yes'),
(257, 'woocommerce_admin_notices', 'a:1:{i:0;s:20:\"no_secure_connection\";}', 'yes'),
(1929, 'PMXI_Plugin_Options', 'a:32:{s:12:\"info_api_url\";s:26:\"http://www.wpallimport.com\";s:18:\"history_file_count\";i:10000;s:16:\"history_file_age\";i:365;s:15:\"highlight_limit\";i:10000;s:19:\"upload_max_filesize\";i:2048;s:13:\"post_max_size\";i:2048;s:14:\"max_input_time\";i:-1;s:18:\"max_execution_time\";i:-1;s:7:\"dismiss\";i:0;s:16:\"dismiss_speed_up\";i:0;s:13:\"html_entities\";i:0;s:11:\"utf8_decode\";i:0;s:12:\"cron_job_key\";s:8:\"WeiQFZYy\";s:10:\"chunk_size\";i:32;s:9:\"pingbacks\";i:1;s:33:\"legacy_special_character_handling\";i:1;s:14:\"case_sensitive\";i:1;s:12:\"session_mode\";s:7:\"default\";s:17:\"enable_ftp_import\";i:0;s:16:\"large_feed_limit\";i:1000;s:26:\"cron_processing_time_limit\";i:120;s:6:\"secure\";i:1;s:11:\"log_storage\";i:5;s:10:\"cron_sleep\";s:0:\"\";s:4:\"port\";s:0:\"\";s:16:\"google_client_id\";s:0:\"\";s:16:\"google_signature\";s:0:\"\";s:8:\"licenses\";a:0:{}s:8:\"statuses\";a:0:{}s:19:\"force_stream_reader\";i:0;s:18:\"scheduling_license\";s:0:\"\";s:25:\"scheduling_license_status\";s:0:\"\";}', 'yes'),
(258, '_transient_woocommerce_webhook_ids', 'a:0:{}', 'yes'),
(259, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(260, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(261, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(262, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(263, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(264, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(265, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(266, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(267, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(268, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(269, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(270, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(382, '_transient_product-transient-version', '1542902048', 'yes'),
(285, 'woocommerce_ppec_paypal_settings', 'a:17:{s:16:\"reroute_requests\";b:0;s:5:\"email\";b:0;s:7:\"enabled\";s:2:\"no\";s:11:\"button_size\";s:10:\"responsive\";s:11:\"environment\";s:4:\"live\";s:12:\"mark_enabled\";s:3:\"yes\";s:12:\"api_username\";s:0:\"\";s:12:\"api_password\";s:0:\"\";s:13:\"api_signature\";s:0:\"\";s:15:\"api_certificate\";s:0:\"\";s:11:\"api_subject\";s:0:\"\";s:5:\"debug\";s:2:\"no\";s:14:\"invoice_prefix\";s:3:\"WC-\";s:16:\"instant_payments\";s:2:\"no\";s:15:\"require_billing\";s:2:\"no\";s:13:\"paymentaction\";s:4:\"sale\";s:26:\"subtotal_mismatch_behavior\";s:3:\"add\";}', 'yes'),
(280, 'woocommerce_product_type', 'physical', 'yes'),
(281, 'woocommerce_allow_tracking', 'yes', 'yes'),
(283, 'woocommerce_tracker_last_send', '1542831598', 'yes'),
(286, 'woocommerce_cheque_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(287, 'woocommerce_bacs_settings', 'a:1:{s:7:\"enabled\";s:2:\"no\";}', 'yes'),
(288, 'woocommerce_cod_settings', 'a:6:{s:7:\"enabled\";s:2:\"no\";s:5:\"title\";s:20:\"Pagamento na entrega\";s:11:\"description\";s:29:\"Pagar em dinheiro na entrega.\";s:12:\"instructions\";s:29:\"Pagar em dinheiro na entrega.\";s:18:\"enable_for_methods\";a:0:{}s:18:\"enable_for_virtual\";s:3:\"yes\";}', 'yes'),
(290, '_transient_shipping-transient-version', '1542921130', 'yes'),
(291, 'woocommerce_flat_rate_1_settings', 'a:7:{s:5:\"title\";s:14:\"Transportadora\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:17:\"10.00+([qty]*1.8)\";s:13:\"class_cost_19\";s:0:\"\";s:13:\"class_cost_22\";s:0:\"\";s:13:\"no_class_cost\";s:0:\"\";s:4:\"type\";s:5:\"order\";}', 'yes'),
(306, 'storefront_nux_fresh_site', '0', 'yes'),
(292, 'woocommerce_flat_rate_2_settings', 'a:3:{s:5:\"title\";s:5:\"Frete\";s:10:\"tax_status\";s:7:\"taxable\";s:4:\"cost\";s:2:\"35\";}', 'yes'),
(300, 'current_theme', 'Storefront', 'yes'),
(301, 'theme_mods_storefront', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539730757;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(302, 'theme_switched', '', 'yes'),
(313, 'mailchimp_woocommerce_db_mailchimp_carts', '1', 'no'),
(318, 'wcmp_general_settings_name', 'a:5:{s:23:\"approve_vendor_manually\";s:6:\"Enable\";s:27:\"is_singleproductmultiseller\";s:6:\"Enable\";s:24:\"is_sellerreview_varified\";s:6:\"Enable\";s:12:\"is_policy_on\";s:6:\"Enable\";s:21:\"show_related_products\";s:11:\"all_related\";}', 'yes'),
(319, 'wcmp_capabilities_product_settings_name', 'a:9:{s:15:\"is_upload_files\";s:6:\"Enable\";s:32:\"is_edit_delete_published_product\";s:6:\"Enable\";s:17:\"is_submit_product\";s:6:\"Enable\";s:6:\"simple\";s:6:\"Enable\";s:8:\"variable\";s:6:\"Enable\";s:7:\"grouped\";s:6:\"Enable\";s:8:\"external\";s:6:\"Enable\";s:7:\"virtual\";s:6:\"Enable\";s:12:\"downloadable\";s:6:\"Enable\";}', 'yes'),
(320, 'wcmp_payment_settings_name', 'a:23:{s:20:\"revenue_sharing_mode\";s:6:\"vendor\";s:18:\"default_commission\";d:10;s:18:\"default_percentage\";d:0;s:25:\"fixed_with_percentage_qty\";d:0;s:21:\"fixed_with_percentage\";d:0;s:20:\"commission_threshold\";d:0;s:25:\"commission_threshold_time\";i:0;s:19:\"commission_transfer\";d:0;s:12:\"no_of_orders\";i:0;s:15:\"commission_type\";s:7:\"percent\";s:25:\"commission_include_coupon\";s:6:\"Enable\";s:8:\"give_tax\";s:6:\"Enable\";s:13:\"give_shipping\";s:6:\"Enable\";s:29:\"gateway_charge_paypal_masspay\";d:0;s:40:\"gateway_charge_fixed_with_paypal_masspay\";d:0;s:28:\"gateway_charge_paypal_payout\";d:0;s:39:\"gateway_charge_fixed_with_paypal_payout\";d:0;s:29:\"gateway_charge_stripe_masspay\";d:0;s:40:\"gateway_charge_fixed_with_stripe_masspay\";d:0;s:26:\"gateway_charge_direct_bank\";d:0;s:37:\"gateway_charge_fixed_with_direct_bank\";d:0;s:16:\"payment_schedule\";s:5:\"daily\";s:27:\"payment_gateway_charge_type\";s:7:\"percent\";}', 'yes'),
(321, 'wcmp_table_created', '1', 'yes'),
(322, 'wcmp_product_vendor_vendor_page_id', '9', 'yes'),
(323, 'wcmp_product_vendor_registration_page_id', '10', 'yes'),
(324, 'wcmp_vendor_general_settings_name', 'a:2:{s:11:\"wcmp_vendor\";i:9;s:19:\"vendor_registration\";i:10;}', 'yes'),
(325, 'dc_product_vendor_plugin_page_install', '1', 'yes'),
(326, 'is_wcmp_product_sync_with_multivendor', '1', 'yes'),
(339, 'dc_commission_offset_to_migrate', '1', 'yes'),
(340, 'commission_data_migrated', '1', 'yes'),
(329, 'dc_product_vendor_plugin_installed', '1', 'yes'),
(330, 'widget_dc_product_vendors_info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(331, 'widget_dc_product_vendors_list', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(332, 'widget_dc-vendor-quick-info', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(333, 'widget_dc-vendor-store-location', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(334, 'widget_wcmp_vendor_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(335, 'widget_wcmp_vendor_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(336, 'wcmp_flushed_rewrite_rules', '1', 'yes'),
(341, 'dc_vendors_permalinks', 'a:1:{s:16:\"vendor_shop_base\";s:8:\"parceiro\";}', 'yes'),
(337, 'multivendor_table_migrated', '1', 'yes'),
(399, '_is_dismiss_service_notice', '1', 'yes'),
(375, 'storefront_nux_guided_tour', '1', 'yes'),
(361, 'woocommerce_tracker_ua', 'a:15:{i:0;s:78:\"mozilla/5.0 (windows nt 10.0; win64; x64; rv:62.0) gecko/20100101 firefox/62.0\";i:1;s:119:\"mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/605.1.15 (khtml, like gecko) version/11.1.1 safari/605.1.15\";i:2;s:120:\"mozilla/5.0 (macintosh; intel mac os x 10_13_5) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36\";i:3;s:114:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/67.0.3396.99 safari/537.36\";i:4;s:119:\"mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/605.1.15 (khtml, like gecko) version/11.1.2 safari/605.1.15\";i:5;s:121:\"mozilla/5.0 (macintosh; intel mac os x 10_13_5) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36\";i:6;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/68.0.3440.106 safari/537.36\";i:7;s:73:\"mozilla/5.0 (windows nt 10.0; wow64; rv:56.0) gecko/20100101 firefox/56.0\";i:8;s:121:\"mozilla/5.0 (macintosh; intel mac os x 10_13_6) applewebkit/537.36 (khtml, like gecko) chrome/69.0.3497.100 safari/537.36\";i:9;s:117:\"mozilla/5.0 (macintosh; intel mac os x 10_12_6) applewebkit/605.1.15 (khtml, like gecko) version/12.0 safari/605.1.15\";i:10;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/69.0.3497.100 safari/537.36\";i:11;s:73:\"mozilla/5.0 (windows nt 10.0; wow64; rv:63.0) gecko/20100101 firefox/63.0\";i:12;s:73:\"mozilla/5.0 (windows nt 10.0; wow64; rv:64.0) gecko/20100101 firefox/64.0\";i:13;s:115:\"mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/70.0.3538.110 safari/537.36\";i:14;s:121:\"mozilla/5.0 (macintosh; intel mac os x 10_13_6) applewebkit/537.36 (khtml, like gecko) chrome/70.0.3538.102 safari/537.36\";}', 'yes'),
(3689, '_transient_wcmp_200.52.17.198', 'O:8:\"stdClass\":14:{s:2:\"as\";s:33:\"AS262659 ULTRAWAVE TELECOM EIRELI\";s:4:\"city\";s:5:\"Bauru\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:24:\"Ultrawave Telecom Eireli\";s:3:\"lat\";d:-22.323899999999998300381776061840355396270751953125;s:3:\"lon\";d:-49.078000000000002955857780762016773223876953125;s:3:\"org\";s:24:\"Ultrawave Telecom Eireli\";s:5:\"query\";s:13:\"200.52.17.198\";s:6:\"region\";s:2:\"SP\";s:10:\"regionName\";s:9:\"Sao Paulo\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:0:\"\";}', 'no'),
(374, 'storefront_nux_dismissed', '1', 'yes'),
(377, '_transient_product_query-transient-version', '1542902049', 'yes'),
(414, 'nav_menu_options', 'a:2:{i:0;b:0;s:8:\"auto_add\";a:0:{}}', 'yes'),
(1950, 'wp-all-import-pro_timeout_9b1968a9095b2412521b216cf6ba0a3e', '1534802935', 'yes'),
(419, '_transient_wcmp_customer_qna_for_vendor_2', 'a:0:{}', 'yes'),
(4164, 'widget_thechamphorizontalcounter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4165, 'widget_thechampverticalcounter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4166, 'widget_thechampfollow', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4167, 'heateor_ss_gdpr_notification_read', '1', 'yes'),
(4168, 'heateor_ss_browser_notification_read', '1', 'yes'),
(4159, 'the_champ_counter', 'a:4:{s:11:\"left_offset\";s:3:\"-10\";s:12:\"right_offset\";s:3:\"-10\";s:10:\"top_offset\";s:3:\"100\";s:9:\"alignment\";s:4:\"left\";}', 'yes'),
(4160, 'the_champ_ss_version', '7.12.2', 'yes'),
(4161, 'widget_thechamplogin', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4162, 'widget_thechamphorizontalsharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4163, 'widget_thechampverticalsharing', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4300, 'nsl-version', '3.0.14', 'yes'),
(4301, 'widget_nextend_social_login', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(4302, 'nsl_facebook', 's:1862:\"a:40:{s:14:\"settings_saved\";i:1;s:6:\"tested\";i:1;s:21:\"custom_default_button\";s:0:\"\";s:18:\"custom_icon_button\";s:0:\"\";s:11:\"login_label\";s:29:\"Continue with <b>Facebook</b>\";s:10:\"link_label\";s:33:\"Link account with <b>Facebook</b>\";s:12:\"unlink_label\";s:35:\"Unlink account from <b>Facebook</b>\";s:11:\"user_prefix\";s:0:\"\";s:13:\"user_fallback\";s:0:\"\";s:18:\"oauth_redirect_url\";s:77:\"https://ederton.xyz/preview/m2distribuidora/wp-login.php?loginSocial=facebook\";s:5:\"terms\";s:0:\"\";s:16:\"sync_fields/link\";i:0;s:17:\"sync_fields/login\";i:0;s:9:\"ask_email\";s:10:\"when-empty\";s:8:\"ask_user\";s:5:\"never\";s:12:\"ask_password\";s:5:\"never\";s:9:\"auto_link\";s:5:\"email\";s:14:\"disabled_roles\";a:0:{}s:14:\"register_roles\";a:1:{i:0;s:7:\"default\";}s:36:\"sync_fields/fields/age_range/enabled\";i:0;s:37:\"sync_fields/fields/age_range/meta_key\";s:18:\"facebook_age_range\";s:35:\"sync_fields/fields/birthday/enabled\";i:0;s:36:\"sync_fields/fields/birthday/meta_key\";s:17:\"facebook_birthday\";s:31:\"sync_fields/fields/link/enabled\";i:0;s:32:\"sync_fields/fields/link/meta_key\";s:13:\"facebook_link\";s:33:\"sync_fields/fields/locale/enabled\";i:0;s:34:\"sync_fields/fields/locale/meta_key\";s:15:\"facebook_locale\";s:35:\"sync_fields/fields/timezone/enabled\";i:0;s:36:\"sync_fields/fields/timezone/meta_key\";s:17:\"facebook_timezone\";s:35:\"sync_fields/fields/currency/enabled\";i:0;s:36:\"sync_fields/fields/currency/meta_key\";s:17:\"facebook_currency\";s:35:\"sync_fields/fields/hometown/enabled\";i:0;s:36:\"sync_fields/fields/hometown/meta_key\";s:17:\"facebook_hometown\";s:35:\"sync_fields/fields/location/enabled\";i:0;s:36:\"sync_fields/fields/location/meta_key\";s:17:\"facebook_location\";s:33:\"sync_fields/fields/gender/enabled\";i:0;s:34:\"sync_fields/fields/gender/meta_key\";s:15:\"facebook_gender\";s:5:\"appid\";s:16:\"1928587287440634\";s:6:\"secret\";s:32:\"2ec3ef16993e17e6a99de2dccd5d30f3\";s:6:\"legacy\";i:0;}\";', 'yes'),
(4185, '_transient_wcmp_69.171.251.12', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Newark\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:8:\"Facebook\";s:3:\"lat\";d:40.73570000000000135287336888723075389862060546875;s:3:\"lon\";d:-74.1723999999999961119101499207317829132080078125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:13:\"69.171.251.12\";s:6:\"region\";s:2:\"NJ\";s:10:\"regionName\";s:10:\"New Jersey\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"07175\";}', 'no'),
(4184, '_transient_timeout_wcmp_69.171.251.12', '1543748930', 'no'),
(4183, '_transient_wcmp_173.252.95.3', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Newark\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:8:\"Facebook\";s:3:\"lat\";d:40.73570000000000135287336888723075389862060546875;s:3:\"lon\";d:-74.1723999999999961119101499207317829132080078125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:12:\"173.252.95.3\";s:6:\"region\";s:2:\"NJ\";s:10:\"regionName\";s:10:\"New Jersey\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"07175\";}', 'no'),
(4182, '_transient_timeout_wcmp_173.252.95.3', '1543748928', 'no'),
(4180, '_transient_timeout_wcmp_173.252.95.10', '1543748894', 'no'),
(4181, '_transient_wcmp_173.252.95.10', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Newark\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:8:\"Facebook\";s:3:\"lat\";d:40.73570000000000135287336888723075389862060546875;s:3:\"lon\";d:-74.1723999999999961119101499207317829132080078125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:13:\"173.252.95.10\";s:6:\"region\";s:2:\"NJ\";s:10:\"regionName\";s:10:\"New Jersey\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"07175\";}', 'no'),
(4178, '_transient_timeout_wcmp_31.13.115.7', '1543748892', 'no'),
(4084, 'woocommerce_correios-pac_6_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:3:\"PAC\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:8:\"17054610\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:2:\"no\";s:15:\"additional_time\";s:1:\"0\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:3:\"yes\";}', 'yes'),
(4179, '_transient_wcmp_31.13.115.7', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Luleå\";s:7:\"country\";s:6:\"Sweden\";s:11:\"countryCode\";s:2:\"SE\";s:3:\"isp\";s:20:\"Facebook Ireland Ltd\";s:3:\"lat\";d:65.584800000000001318767317570745944976806640625;s:3:\"lon\";d:22.15670000000000072759576141834259033203125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:11:\"31.13.115.7\";s:6:\"region\";s:2:\"BD\";s:10:\"regionName\";s:10:\"Norrbotten\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"Europe/Stockholm\";s:3:\"zip\";s:6:\"971 00\";}', 'no'),
(4087, 'woocommerce_correios-sedex_7_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:5:\"SEDEX\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:8:\"17054610\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:2:\"no\";s:15:\"additional_time\";s:1:\"0\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:3:\"yes\";}', 'yes'),
(4173, '_transient_timeout_wcmp_173.252.95.7', '1543748495', 'no'),
(4174, '_transient_wcmp_173.252.95.7', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Newark\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:8:\"Facebook\";s:3:\"lat\";d:40.73570000000000135287336888723075389862060546875;s:3:\"lon\";d:-74.1723999999999961119101499207317829132080078125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:12:\"173.252.95.7\";s:6:\"region\";s:2:\"NJ\";s:10:\"regionName\";s:10:\"New Jersey\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"07175\";}', 'no'),
(4176, '_transient_timeout_wcmp_173.252.95.9', '1543748877', 'no'),
(4177, '_transient_wcmp_173.252.95.9', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Newark\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:8:\"Facebook\";s:3:\"lat\";d:40.73570000000000135287336888723075389862060546875;s:3:\"lon\";d:-74.1723999999999961119101499207317829132080078125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:12:\"173.252.95.9\";s:6:\"region\";s:2:\"NJ\";s:10:\"regionName\";s:10:\"New Jersey\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"07175\";}', 'no'),
(4114, 'woocommerce_flat_rate_8_settings', 'a:3:{s:5:\"title\";s:9:\"Taxa fixa\";s:10:\"tax_status\";s:4:\"none\";s:4:\"cost\";s:2:\"10\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1949, 'wp-all-import-pro_9b1968a9095b2412521b216cf6ba0a3e', 'O:8:\"stdClass\":15:{s:11:\"new_version\";s:15:\"4.5.5-beta-2.95\";s:14:\"stable_version\";s:15:\"4.5.5-beta-2.95\";s:4:\"name\";s:13:\"WP All Import\";s:4:\"slug\";s:17:\"wp-all-import-pro\";s:3:\"url\";s:67:\"http://www.wpallimport.com/downloads/wp-all-import-pro/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-05-23 19:56:07\";s:8:\"homepage\";s:55:\"http://www.wpallimport.com/downloads/wp-all-import-pro/\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";a:2:{s:11:\"description\";s:129:\"<p>Learn more about WP All Import at <a href=\"https://www.wpallimport.com/\" target=\"_blank\">https://www.wpallimport.com/</a></p>\n\";s:9:\"changelog\";s:18769:\"<p>4.5.4</p>\n<ul>\n<li>bug fix: import using stream reader</li>\n<li>bug fix: generation temporary files in system temporary folder</li>\n</ul>\n<p>4.5.3</p>\n<ul>\n<li>improvement: add support for Toolset Types</li>\n<li>bug fix: trigger deleted_user action when import deleting a user</li>\n<li>bug fix: add-ons api - searching for existing images in pmxi_images table</li>\n<li>bug fix: php error on array push alias</li>\n</ul>\n<p>4.5.2</p>\n<ul>\n<li>new feature: Automatic Scheduling - run imports on a schedule</li>\n<li>improvement: search for existing images based on remote image URL</li>\n<li>improvement: various backend improvements to image imports</li>\n<li>improvement: various import speed optimizations</li>\n<li>bug fix: remove deprecated function calls for PHP 7.2 compatibility</li>\n<li>bug fix: delete db tables when mu blog deleted</li>\n<li>bug fix: remove BOM from import templates</li>\n<li>bug fix: saving CSV delimiter when changing import file</li>\n</ul>\n<p>4.5.1</p>\n<ul>\n<li>improvement: import images from dropbox</li>\n<li>improvement: skips import process to the first specific record</li>\n<li>improvement: added new filter wp_all_import_is_render_whole_xml_tree</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter into add-ons api</li>\n<li>bug fix: conflict with InfiniteWP</li>\n<li>bug fix: oddity update notification for Link cloaking add-on</li>\n<li>bug fix: load functions before pmxi_before_xml_import</li>\n<li>bug fix: do not re-count category terms when post imported as draft</li>\n<li>bug fix: import base64 encoded images in add-ons</li>\n<li>bug fix: woo order custom fields auto-detection</li>\n<li>security fix - XSS exploit (Special thanks to Mardan Muhidin for reporting)</li>\n<li>security fix - XSS exploit (Special thanks to Yuji Tounai for reporting)</li>\n</ul>\n<p>4.5.0</p>\n<ul>\n<li>improvement: Make the WooCo Short Description expandable</li>\n<li>improvement: show notice when function editor is not saved</li>\n<li>improvement: added timestamp to import log lines</li>\n<li>improvement: added support for bmp images</li>\n<li>improvement: added new action pmxi_before_post_import_{$addon}</li>\n<li>security fix: patch XSS exploit</li>\n<li>bug fix: import pages hierarchy</li>\n<li>bug fix: error in pclzip.lib.php with php 7.1</li>\n<li>bug fix: import taxonomies hierarchy</li>\n<li>bug fix: json to xml convertation</li>\n<li>bug fix: import password protected feeds with port defined</li>\n</ul>\n<p>4.4.9</p>\n<ul>\n<li>improvement: custom fields detection</li>\n<li>improvement: new action wp_all_import_post_skipped</li>\n<li>improvement: updated history page title</li>\n<li>improvement: optimize large imports deletion</li>\n<li>improvement: added import friendly name to confirm screen</li>\n<li>improvement: sql query optimization on manage imports screen</li>\n<li>improvement: added wp_all_import_shard_delay filter</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: compatibility with WPML</li>\n<li>bug fix: generation image filename</li>\n<li>bug fix: wp_all_import_specified_records filter</li>\n</ul>\n<p>4.4.8</p>\n<ul>\n<li>improvement: added hungarian translation</li>\n<li>bug fix: csv headers generation</li>\n<li>bug fix: import template from Import Settings works again</li>\n<li>bug fix: users no longer logged out when user is update via import</li>\n<li>bug fix: images with encoded quotes</li>\n</ul>\n<p>4.4.7</p>\n<ul>\n<li>bug fix: cron job completed early for imports with xpath</li>\n<li>bug fix: csv headers with non latin characters</li>\n</ul>\n<p>4.4.6</p>\n<ul>\n<li>bug fix: cron job un-triggered on timeout error</li>\n</ul>\n<p>4.4.5</p>\n<ul>\n<li>bug fix: import xls from dropbox</li>\n<li>bug fix: template preview</li>\n</ul>\n<p>4.4.4</p>\n<ul>\n<li>improvement: new filter \'wp_all_import_phpexcel_delimiter\'</li>\n<li>improvement: new filter \'wp_all_import_is_trim_parsed_data\'</li>\n<li>improvement: added new \'filter wp_all_import_skip_x_csv_rows\'</li>\n<li>improvement: added csv delimiter setting to import options screen</li>\n<li>bug fix: taxonomies dropdown list</li>\n<li>bug fix: cron job was never untriggered when calling to undefined function</li>\n<li>bug fix: taxonomies preview</li>\n<li>bug fix: import duplicate tags</li>\n<li>bug fix: importing taxonomy terms that already exist in a different taxonomies</li>\n</ul>\n<p>4.4.3</p>\n<ul>\n<li>bug fix: parsing images for newly added records</li>\n<li>bug fix: the event calendar conflict</li>\n</ul>\n<p>4.4.2</p>\n<ul>\n<li>improvement: added new filter wp_all_import_phpexcel_object to modify excel data before import</li>\n<li>bug fix: search for images ending with underscores in media</li>\n<li>bug fix: import hierarchical posts and pages</li>\n<li>bug fix: import custom post type page templates</li>\n<li>bug fix: matching taxonomies by name</li>\n<li>bug fix: custom fields validation</li>\n</ul>\n<p>4.4.1</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: search for existing attachments option</li>\n<li>improvement: new filter for file path of functions.php file</li>\n<li>bug fix: images preview</li>\n<li>bug fix: improved matching for images similar to image.com.png</li>\n</ul>\n<p>4.4.0</p>\n<ul>\n<li>new feature: added import taxonomies feature</li>\n<li>bug fix: hierarchy taxonomies preview</li>\n<li>bug fix: empty logs folder generation</li>\n<li>bug fix: \'Keep images currently in Media Library\' option for add-ons</li>\n<li>bug fix: import bundles with gz files</li>\n<li>bug fix: custom functions for attachments</li>\n</ul>\n<p>4.3.2</p>\n<ul>\n<li>improvement: \'Force Stream Reader\' setting</li>\n<li>improvement: tar + gz compression support for remote feeds</li>\n<li>improvement: new filter \'wp_all_import_auto_create_csv_headers\'</li>\n<li>improvement: new filter \'wp_all_import_is_base64_images_allowed\'</li>\n<li>improvement: new filter \'wp_all_import_set_post_terms\' to leave a specific category alone when a post is being updated</li>\n<li>bug fix: cron import timeout when set missing outofstock option is enabled</li>\n<li>bug fix: nodes navigation for xpath like /news/item</li>\n<li>bug fix: frozen import template screen for cyrillic XML feeds</li>\n<li>bug fix: conflict between taxonomies & user import</li>\n<li>bug fix: creating users with the same email</li>\n<li>bug fix: enable keep line breaks option by default</li>\n<li>bug fix: composer namespace conflict</li>\n<li>bug fix: images preview when wp is in subdirectory</li>\n<li>bug fix: \'Instead of deletion, set Custom Field\' option for users import</li>\n</ul>\n<p>4.3.1</p>\n<ul>\n<li>fixed issue with libxml 2.9.3</li>\n<li>execute \'pmxi_article_data\' filter for all posts ( new & existing )</li>\n</ul>\n<p>4.3.0</p>\n<ul>\n<li>added de_CH translation</li>\n<li>added support for .svg images</li>\n<li>added possibility for import excerpts for pages</li>\n<li>added new filter \'wp_all_import_specified_records\'</li>\n<li>added new filter \'wp_all_import_is_post_to_delete\'</li>\n<li>fixed saving function editor</li>\n<li>fixed custom fields mapping rules with \'0\' value</li>\n<li>fixed termination of the import if the \"Delete source XML file after importing\" is checked</li>\n<li>disable XMLReader stream filter for HHVM</li>\n<li>improve search for existing images in media gallery</li>\n</ul>\n<p>4.2.9</p>\n<ul>\n<li>fixed error messages on step 4</li>\n<li>fixed renaming image files</li>\n<li>fixed delete missing records option</li>\n<li>fixed csv to xml convertation in case when there are some equal titles in csv file</li>\n<li>stop using $HTTP_RAW_POST_DATA for PHP 7.x compatibility</li>\n<li>added new action \'pmxi_missing_post\'</li>\n</ul>\n<p>4.2.8</p>\n<ul>\n<li>update required database tables</li>\n</ul>\n<p>4.2.7</p>\n<ul>\n<li>fixed detecting root nodes with colons in names</li>\n<li>fixed php notice \"Undefined variable: existing_meta_keys\"</li>\n<li>fixed rendering special chars in function editor</li>\n<li>fixed css for WordPress 4.4</li>\n<li>added feature to delete only posts not import</li>\n<li>added feature to download template/bundle from import settings</li>\n<li>added new option for importing images \"Use images currently in Media Library\"</li>\n<li>remove periods to hyphens convertation in image name</li>\n<li>auto detect dropbox URLs and change to dl=1</li>\n<li>changed comma delimiting behavior/UI in image meta</li>\n</ul>\n<p>4.2.6</p>\n<ul>\n<li>fixed preview prices</li>\n<li>fixed counting XML nodes</li>\n</ul>\n<p>4.2.5</p>\n<ul>\n<li>fixed \'Delete source XML file after importing\' option</li>\n<li>fixed ‘Instead of deletion, change post status to Draft’ option</li>\n<li>fixed reading XML files with NS in element names</li>\n<li>added ‘WooCommerce Order’ to post type list on step 1</li>\n</ul>\n<p>4.2.4</p>\n<ul>\n<li>fixed duplicate matching by custom field</li>\n<li>fixed error messages on step1 in case when server throws fatal error e.q. time limit exception</li>\n<li>fixed option \"Delete posts that are no longer present in your file\", now it works with empty CSV files which has only one header row</li>\n<li>fixed importing custom fields with the same name</li>\n<li>fixed custom functions in images preview</li>\n<li>added es_ES translation</li>\n<li>added de_DE translation</li>\n<li>added iterative ajax delete process ( deleting associated posts )</li>\n</ul>\n<p>4.2.3</p>\n<ul>\n<li>Fixed removing uploaded XML source file on re-run process</li>\n</ul>\n<p>4.2.2</p>\n<ul>\n<li>Fixed saving function editor</li>\n</ul>\n<p>4.2.1</p>\n<ul>\n<li>fixed duplicate matching by custom field ( cron )</li>\n<li>fixed converting image filenames to lowercase</li>\n<li>fixed import html to image description</li>\n<li>fixed import _wp_old_slug</li>\n<li>added Post ID to manual record matching</li>\n<li>added \'Comment status\' to \'Choose data to update\' section</li>\n<li>added \'cancel\' to cron API /wp-cron.php?import_key=Kt&amp;import_id=407&amp;action=cancel</li>\n<li>added function editor</li>\n</ul>\n<p>4.2.0</p>\n<ul>\n<li>fixed parsing CSV with empty lines</li>\n<li>fixed parsing multiple IF statements</li>\n<li>fixed preview in case when ‘Disable the visual editor when writing’ is enabled</li>\n<li>fixed conflict with WooCommerce - Store Exporter Deluxe</li>\n<li>added possibility to start synchronized cron requests &amp;sync=1</li>\n<li>added notifications for required addons</li>\n<li>added support for wp all export bundle</li>\n<li>added support for manual import bundle</li>\n<li>added feature \'click to download import file\'</li>\n<li>added validation for excerpt and images sections</li>\n<li>added auto-detect a broken Unique ID notification</li>\n<li>added import template notifications</li>\n<li>removed support for importing WooCommerce Orders</li>\n<li>changed absolute paths to relative in db</li>\n<li>updated cron response messages</li>\n<li>moved uploaded files to \'Use existing\' dropdown</li>\n</ul>\n<p>4.1.7</p>\n<ul>\n<li>added support for Excel files ( .xls, .xlsx )</li>\n<li>added new option \'Do not remove images from media gallery\' on import<br />\nsettings screen</li>\n<li>added new options to taxonomies import \'Try to match terms to<br />\nexisting child Product Categories\' &amp; \'Only assign Products to the<br />\nimported Product Category, not the entire hierarchy\'</li>\n<li>fixed excessive update requests</li>\n<li>added options to \'Delete associated posts</li>\n</ul>\n<p>4.1.6</p>\n<ul>\n<li>load ini_set only on plugins pages</li>\n<li>fixed saving import template</li>\n<li>added import post format via XPath</li>\n</ul>\n<p>4.1.5</p>\n<ul>\n<li>fixed import page template</li>\n<li>added a second argument to pmxi_saved_post action ( SimpleXML object ) of current record</li>\n</ul>\n<p>4.1.4</p>\n<ul>\n<li>fixed Apply mapping rules before splitting via separator symbol for manual hierarchy</li>\n<li>fixed path equal or less than</li>\n<li>fixed changing unique key when moving back from confirm screen</li>\n<li>fixed override page template</li>\n<li>fixed unlink images on deleting missing posts</li>\n<li>updated wp_all_import_is_post_to_update filter with second argument XML node as array</li>\n<li>updated compatibility with WP All Export</li>\n<li>added filter wp_all_import_feed_type</li>\n<li>added possibility to use php to calculate URL on first step [add_to_url(\"https://google.com/\")]</li>\n</ul>\n<p>4.1.3</p>\n<ul>\n<li>fixed un triggering issue on cron jobs for empty files</li>\n<li>changed updater priority from 10 to 20</li>\n<li>added post parent option for all hierarchical CPT</li>\n</ul>\n<p>4.1.2</p>\n<ul>\n<li>Important security fixes - additional hardening, prevention of blind SQL injection and reflected XSS attacks</li>\n</ul>\n<p>4.1.1</p>\n<ul>\n<li>critical security fix - stopping non-logged in users from accessing adminInit https://www.wpallimport.com/2015/02/wp-import-4-1-1-mandatory-security-update/</li>\n<li>added new filter wp_all_import_is_post_to_update to skip needed posts add_filter(\'wp_all_import_is_post_to_update\', \'is_post_to_update\', 10, 1);</li>\n<li>added new option Search for existing attachments to prevent duplicates in media library</li>\n<li>fixed imports pagination</li>\n<li>fixed preview taxonomies</li>\n<li>fixed upload folder creation when \'upload_dir\' filter defined</li>\n<li>fixed db schema for wpmu when new site added</li>\n</ul>\n<p>4.1.0</p>\n<ul>\n<li>fixed cron execution when titles are not defined</li>\n<li>added an option to separate hierarchy groups via symbol</li>\n<li>added separator symbol for manually nested taxonomies</li>\n</ul>\n<p>4.0.9</p>\n<ul>\n<li>added license key setting for automatic update</li>\n<li>added option search images through attachments</li>\n<li>added option assign term to the bottom level term in the hierarchy</li>\n</ul>\n<p>4.0.8</p>\n<ul>\n<li>fixed taxonomies preview</li>\n<li>fixed import meta description for images</li>\n<li>added feature to assign posts to needed terms</li>\n<li>added new option for taxonomies Apply mapping rules before splitting via separator symbol</li>\n<li>added set with XPath option for comment status, ping status, page parent, page template</li>\n</ul>\n<p>4.0.7</p>\n<ul>\n<li>fixed feed detection for rss chanels</li>\n<li>fixed parsing json data</li>\n<li>fixed add only new images option</li>\n<li>fixed delete missing records option</li>\n<li>added ability to import custom fields with the same name</li>\n<li>added port setting</li>\n</ul>\n<p>4.0.6</p>\n<ul>\n<li>fixed encoding for taxonomies mapping</li>\n<li>optimization for delete missing records option</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed changes that related to _wp_page_template meta data</li>\n</ul>\n<p>4.0.5</p>\n<ul>\n<li>fixed template parsing when php function arguments contains an array()</li>\n<li>fixed error msg when feed is html page e.g. page 404</li>\n<li>fixed xpath building</li>\n<li>update hierarchy taxonomies options</li>\n</ul>\n<p>4.0.4</p>\n<ul>\n<li>changed main file name to wp-all-import-pro.php</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed bug with empty unique keys</li>\n</ul>\n<p>4.0.3</p>\n<ul>\n<li>fixed re-count record when a file has been changed at an import setting screen</li>\n<li>fixed database schema auto-update</li>\n<li>fixed uploading large files</li>\n<li>fixed auto-detecting root element</li>\n<li>fixed log storage in database</li>\n<li>fixed cron execution when \"do not create new records\" option is enabled</li>\n<li>fixed feed type detection</li>\n<li>fixed unlink attachment source when posts updated/deleted</li>\n<li>fixed specialchars in taxnomies/categories mapping</li>\n<li>updated taxonomies hierarchy settings</li>\n<li>added a limit 10 to the existing meta values</li>\n</ul>\n<p>4.0.2</p>\n<ul>\n<li>speed up the import of taxonomies/categories</li>\n<li>added taxonomies/categories mapping feature</li>\n<li>added custom fields auto-detection feature</li>\n<li>added custom fields mapping feature</li>\n<li>added images/taxonomies preview feature</li>\n<li>added unofficial support for more file formats - json &amp; sql</li>\n<li>added new setting (secure mode) to protect your files</li>\n<li>better import logs</li>\n<li>updated design</li>\n</ul>\n<p>3.4.2</p>\n<ul>\n<li>fixed navigation bug</li>\n<li>fixed search duplicates</li>\n<li>fixed duplicate categories</li>\n<li>fixed path builder for element attributes</li>\n<li>fixed cron processing for already uploaded files (XML)</li>\n<li>added taxonomies for pages</li>\n</ul>\n<p>3.4.1</p>\n<ul>\n<li>fixed pmxi_delete_post action: this action was executed after posts were deleted</li>\n<li>fixed import menu order &amp; post parent for pages</li>\n<li>fixed import log for continue import feature</li>\n<li>added is update author option</li>\n<li>fixed post formats</li>\n<li>fixed cron processing: WP_Error object was not initialized</li>\n<li>fixed cron processing for import where XPath filtering is defined</li>\n<li>fixed UTC dates on manage imports page</li>\n</ul>\n<p>3.4.0</p>\n<ul>\n<li>fixed: import empty content</li>\n<li>fixed: log files</li>\n<li>fixed: detect image extension</li>\n<li>fixed: terms hierarchy on cron job execution</li>\n</ul>\n<p>3.3.9</p>\n<ul>\n<li>added: feature to do not escape shortcodes</li>\n<li>fixed: pre-processing logic</li>\n<li>fixed: downloading images with unicode url</li>\n<li>fixed: clear non ASCII/invalid symbols in CSV files</li>\n<li>fixed: import option \'Instead of using original image file name, set file name(s)\'</li>\n</ul>\n<p>3.3.8</p>\n<ul>\n<li>fixed: admin notices</li>\n<li>fixed: creation duplicates draft post via cron</li>\n<li>fixed: images with encoded symbols</li>\n<li>fixed: upload file via URL</li>\n<li>fixed: php notices</li>\n<li>added: compatibility with WP 3.9</li>\n</ul>\n<p>3.3.7</p>\n<ul>\n<li>updated convertation CSV to XML with XMLWriter</li>\n<li>fixed import *.zip files</li>\n<li>fixed xpath helper on step 2</li>\n<li>fixed showing zeros in XML tree</li>\n<li>allow post content to be empty on step 3</li>\n<li>added autodetect session mode</li>\n<li>delete deprecated settings my csv contain html code and case sensitivity</li>\n<li>fixed deleting history files</li>\n<li>fixed autodetect image extensions</li>\n<li>fixed increasing SQL query length</li>\n<li>added error messages</li>\n<li>fixed \"High Speed Small File Processing\" option</li>\n</ul>\n<p>3.3.6</p>\n<ul>\n<li>fixed: multiple cron execution</li>\n<li>fixed: load options template</li>\n<li>fixed: session initialization</li>\n<li>fixed: import search</li>\n<li>fixed: attachment author on cron execution</li>\n<li>fixed: download images option</li>\n<li>added: errors messages to the log</li>\n<li>added: \"not contains\" filter to step 2</li>\n<li>added: compatibility with categories mapping addon</li>\n<li>updated: cpt navigation on step 4</li>\n</ul>\n<p>3.3.5</p>\n<ul>\n<li>fixed bug with cron processing</li>\n<li>fixed bug with saving wrong image name</li>\n<li>added serialized custom fields feature</li>\n<li>added compatibility with user import add-on</li>\n<li>added compatibility with 3rd party developers</li>\n<li>added new setting \'Cron processing time limit\'</li>\n</ul>\n\";}s:7:\"banners\";a:2:{s:4:\"high\";s:55:\"http://ps.w.org/wp-all-import/assets/banner-772x250.png\";s:3:\"low\";s:0:\"\";}s:8:\"requires\";s:5:\"3.6.1\";s:6:\"tested\";s:5:\"4.9.8\";s:6:\"author\";s:6:\"Soflyy\";s:12:\"contributors\";O:8:\"stdClass\":2:{s:6:\"soflyy\";s:38:\"https://profiles.wordpress.org/soflyy/\";s:11:\"wpallimport\";s:43:\"https://profiles.wordpress.org/wpallimport/\";}}', 'no'),
(1694, 'acf_version', '5.7.3', 'yes'),
(1697, 'acf_pro_license', 'YToyOntzOjM6ImtleSI7czo3MjoiYjNKa1pYSmZhV1E5T0RjMU9EbDhkSGx3WlQxa1pYWmxiRzl3WlhKOFpHRjBaVDB5TURFMkxUQTRMVEUwSURFNE9qTTNPak0zIjtzOjM6InVybCI7czoyODoiaHR0cDovL2xvY2FsaG9zdC9tYXJrZXRwbGFjZSI7fQ==', 'yes'),
(4267, 'heateor_ss_fb_redirection_notification_read', '1', 'yes'),
(5155, 'wp-all-import-pro_timeout_85b8495febade7a221f67b0bca7d59d9', '1542935722', 'yes'),
(4398, '_transient_timeout_wcmp_66.102.6.135', '1543899379', 'no'),
(4399, '_transient_wcmp_66.102.6.135', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:39.04379999999999739657141617499291896820068359375;s:3:\"lon\";d:-77.4873999999999938381733954884111881256103515625;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:12:\"66.102.6.135\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(4417, '_transient_timeout_wcmp_191.164.89.44', '1544036122', 'no'),
(4418, '_transient_wcmp_191.164.89.44', 'O:8:\"stdClass\":14:{s:2:\"as\";s:24:\"AS26615 Tim Celular S.A.\";s:4:\"city\";s:8:\"Curitiba\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:16:\"Tim Celular S.A.\";s:3:\"lat\";d:-25.41669999999999873807610129006206989288330078125;s:3:\"lon\";d:-49.25;s:3:\"org\";s:16:\"Tim Celular S.A.\";s:5:\"query\";s:13:\"191.164.89.44\";s:6:\"region\";s:2:\"PR\";s:10:\"regionName\";s:6:\"Parana\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"80000\";}', 'no'),
(4469, '_transient_timeout_wcmp_107.21.253.49', '1544158810', 'no'),
(4470, '_transient_wcmp_107.21.253.49', 'O:8:\"stdClass\":14:{s:2:\"as\";s:24:\"AS14618 Amazon.com, Inc.\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:10:\"Amazon.com\";s:3:\"lat\";d:39.04809999999999803321770741604268550872802734375;s:3:\"lon\";d:-77.47280000000000654836185276508331298828125;s:3:\"org\";s:10:\"Amazon.com\";s:5:\"query\";s:13:\"107.21.253.49\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(1127, '_transient_wcmp_customer_qna_for_vendor_4', 'a:0:{}', 'yes'),
(4465, '_transient_timeout_wcmp_54.221.198.105', '1544158789', 'no'),
(4466, '_transient_wcmp_54.221.198.105', 'O:8:\"stdClass\":14:{s:2:\"as\";s:24:\"AS14618 Amazon.com, Inc.\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:10:\"Amazon.com\";s:3:\"lat\";d:39.04809999999999803321770741604268550872802734375;s:3:\"lon\";d:-77.47280000000000654836185276508331298828125;s:3:\"org\";s:10:\"Amazon.com\";s:5:\"query\";s:14:\"54.221.198.105\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(4467, '_transient_timeout_wcmp_54.204.20.250', '1544158807', 'no'),
(4468, '_transient_wcmp_54.204.20.250', 'O:8:\"stdClass\":14:{s:2:\"as\";s:24:\"AS14618 Amazon.com, Inc.\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:10:\"Amazon.com\";s:3:\"lat\";d:39.04809999999999803321770741604268550872802734375;s:3:\"lon\";d:-77.47280000000000654836185276508331298828125;s:3:\"org\";s:10:\"Amazon.com\";s:5:\"query\";s:13:\"54.204.20.250\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(1935, 'pmxi_is_migrated', '4.5.5-beta-2.92', 'yes'),
(1936, 'wp_all_import_db_version', '4.5.4', 'yes'),
(1951, 'PMWI_Plugin_Options', 'a:0:{}', 'yes'),
(1952, 'wp_all_import_woocommerce_addon_db_version', '2.4.1', 'yes'),
(2076, 'post_count', '1', 'yes'),
(5331, '_transient_timeout_acf_plugin_updates', '1543431295', 'no'),
(5332, '_transient_acf_plugin_updates', 'a:4:{s:7:\"plugins\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";a:8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}}s:10:\"expiration\";i:86400;s:6:\"status\";i:1;s:7:\"checked\";a:1:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.3\";}}', 'no'),
(4017, 'woocommerce_correios-sedex_3_settings', 'a:24:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:5:\"SEDEX\";s:16:\"behavior_options\";s:0:\"\";s:15:\"origin_postcode\";s:9:\"20081-000\";s:17:\"shipping_class_id\";s:2:\"-1\";s:18:\"show_delivery_time\";s:2:\"no\";s:15:\"additional_time\";s:1:\"0\";s:3:\"fee\";s:0:\"\";s:17:\"optional_services\";s:0:\"\";s:14:\"receipt_notice\";s:2:\"no\";s:9:\"own_hands\";s:2:\"no\";s:13:\"declare_value\";s:3:\"yes\";s:15:\"service_options\";s:0:\"\";s:11:\"custom_code\";s:0:\"\";s:12:\"service_type\";s:12:\"conventional\";s:5:\"login\";s:0:\"\";s:8:\"password\";s:0:\"\";s:16:\"package_standard\";s:0:\"\";s:14:\"minimum_height\";s:1:\"2\";s:13:\"minimum_width\";s:2:\"11\";s:14:\"minimum_length\";s:2:\"16\";s:12:\"extra_weight\";s:1:\"0\";s:7:\"testing\";s:0:\"\";s:5:\"debug\";s:2:\"no\";}', 'yes'),
(4706, 'wc_ppec_version', '1.6.4', 'yes'),
(4227, '_transient_timeout_wcmp_189.40.74.14', '1543785974', 'no'),
(4228, '_transient_wcmp_189.40.74.14', 'O:8:\"stdClass\":14:{s:2:\"as\";s:24:\"AS26615 Tim Celular S.A.\";s:4:\"city\";s:10:\"São Paulo\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:16:\"Tim Celular S.A.\";s:3:\"lat\";d:-23.573299999999999698729880037717521190643310546875;s:3:\"lon\";d:-46.6417000000000001591615728102624416351318359375;s:3:\"org\";s:16:\"Tim Celular S.A.\";s:5:\"query\";s:12:\"189.40.74.14\";s:6:\"region\";s:2:\"SP\";s:10:\"regionName\";s:9:\"Sao Paulo\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"01323\";}', 'no'),
(2819, '_transient_wc_attribute_taxonomies', 'a:11:{i:0;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"6\";s:14:\"attribute_name\";s:6:\"altura\";s:15:\"attribute_label\";s:6:\"Altura\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:1;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"1\";s:14:\"attribute_name\";s:17:\"codigo-fornecedor\";s:15:\"attribute_label\";s:18:\"Código Fornecedor\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:2;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"2\";s:14:\"attribute_name\";s:5:\"cores\";s:15:\"attribute_label\";s:5:\"Cores\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:3;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"10\";s:14:\"attribute_name\";s:5:\"corpo\";s:15:\"attribute_label\";s:5:\"Corpo\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"1\";}i:4;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"5\";s:14:\"attribute_name\";s:8:\"diametro\";s:15:\"attribute_label\";s:9:\"Diâmetro\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:5;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"7\";s:14:\"attribute_name\";s:7:\"largura\";s:15:\"attribute_label\";s:7:\"Largura\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:6;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"9\";s:14:\"attribute_name\";s:8:\"material\";s:15:\"attribute_label\";s:8:\"Material\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:7;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"4\";s:14:\"attribute_name\";s:16:\"qtd-da-embalagem\";s:15:\"attribute_label\";s:17:\"Qtd. da embalagem\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:8;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:2:\"11\";s:14:\"attribute_name\";s:16:\"tempo-de-entrega\";s:15:\"attribute_label\";s:16:\"Tempo de entrega\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:9;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"3\";s:14:\"attribute_name\";s:17:\"tipo-de-embalagem\";s:15:\"attribute_label\";s:17:\"Tipo de embalagem\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}i:10;O:8:\"stdClass\":6:{s:12:\"attribute_id\";s:1:\"8\";s:14:\"attribute_name\";s:6:\"volume\";s:15:\"attribute_label\";s:6:\"Volume\";s:14:\"attribute_type\";s:6:\"select\";s:17:\"attribute_orderby\";s:10:\"menu_order\";s:16:\"attribute_public\";s:1:\"0\";}}', 'yes'),
(4947, 'product_cat_children', 'a:7:{i:28;a:5:{i:0;i:65;i:1;i:96;i:2;i:111;i:3;i:119;i:4;i:121;}i:64;a:5:{i:0;i:66;i:1;i:97;i:2;i:112;i:3;i:120;i:4;i:122;}i:61;a:2:{i:0;i:76;i:1;i:115;}i:77;a:1:{i:0;i:78;}i:79;a:1:{i:0;i:80;}i:83;a:5:{i:0;i:84;i:1;i:95;i:2;i:100;i:3;i:110;i:4;i:124;}i:117;a:1:{i:0;i:118;}}', 'yes'),
(2074, 'category_children', 'a:0:{}', 'yes'),
(4309, 'nextend_social_login', 's:2791:\"a:64:{s:7:\"enabled\";a:1:{i:0;s:8:\"facebook\";}s:18:\"register-flow-page\";s:0:\"\";s:10:\"proxy-page\";s:0:\"\";s:8:\"ordering\";a:3:{i:0;s:8:\"facebook\";i:1;s:6:\"google\";i:2;s:7:\"twitter\";}s:11:\"license_key\";s:0:\"\";s:14:\"license_key_ok\";s:1:\"0\";s:10:\"terms_show\";i:0;s:5:\"terms\";s:101:\"By clicking Register, you accept our <a href=\"#privacy_policy_url\" target=\"_blank\">Privacy Policy</a>\";s:10:\"store_name\";i:1;s:11:\"store_email\";i:1;s:12:\"avatar_store\";i:1;s:18:\"store_access_token\";i:1;s:25:\"redirect_prevent_external\";i:0;s:8:\"redirect\";s:0:\"\";s:12:\"redirect_reg\";s:0:\"\";s:16:\"default_redirect\";s:0:\"\";s:20:\"default_redirect_reg\";s:0:\"\";s:16:\"blacklisted_urls\";s:0:\"\";s:6:\"target\";s:12:\"prefer-popup\";s:14:\"allow_register\";i:1;s:15:\"show_login_form\";s:4:\"show\";s:22:\"show_registration_form\";s:4:\"show\";s:23:\"login_form_button_style\";s:7:\"default\";s:17:\"login_form_layout\";s:5:\"below\";s:24:\"show_embedded_login_form\";s:4:\"show\";s:32:\"embedded_login_form_button_style\";s:7:\"default\";s:26:\"embedded_login_form_layout\";s:5:\"below\";s:20:\"comment_login_button\";s:4:\"show\";s:20:\"comment_button_style\";s:7:\"default\";s:26:\"buddypress_register_button\";s:32:\"bp_before_account_details_fields\";s:32:\"buddypress_register_button_style\";s:7:\"default\";s:17:\"woocommerce_login\";s:5:\"after\";s:29:\"woocommerce_login_form_layout\";s:7:\"default\";s:20:\"woocommerce_register\";s:5:\"after\";s:32:\"woocommerce_register_form_layout\";s:7:\"default\";s:19:\"woocommerce_billing\";s:6:\"before\";s:31:\"woocommerce_billing_form_layout\";s:7:\"default\";s:30:\"woocoommerce_form_button_style\";s:7:\"default\";s:27:\"woocommerce_account_details\";s:6:\"before\";s:35:\"memberpress_login_form_button_style\";s:7:\"default\";s:29:\"memberpress_login_form_layout\";s:15:\"below-separator\";s:18:\"memberpress_signup\";s:6:\"before\";s:36:\"memberpress_signup_form_button_style\";s:7:\"default\";s:30:\"memberpress_signup_form_layout\";s:15:\"below-separator\";s:27:\"memberpress_account_details\";s:5:\"after\";s:32:\"registration_notification_notify\";s:1:\"0\";s:5:\"debug\";s:1:\"0\";s:17:\"login_restriction\";s:1:\"0\";s:12:\"review_state\";i:-1;s:21:\"woocommerce_dismissed\";i:1;s:23:\"userpro_show_login_form\";s:4:\"show\";s:26:\"userpro_show_register_form\";s:4:\"show\";s:31:\"userpro_login_form_button_style\";s:7:\"default\";s:34:\"userpro_register_form_button_style\";s:7:\"default\";s:25:\"userpro_login_form_layout\";s:5:\"below\";s:28:\"userpro_register_form_layout\";s:5:\"below\";s:20:\"ultimatemember_login\";s:5:\"after\";s:38:\"ultimatemember_login_form_button_style\";s:7:\"default\";s:32:\"ultimatemember_login_form_layout\";s:15:\"below-separator\";s:23:\"ultimatemember_register\";s:5:\"after\";s:41:\"ultimatemember_register_form_button_style\";s:7:\"default\";s:35:\"ultimatemember_register_form_layout\";s:15:\"below-separator\";s:30:\"ultimatemember_account_details\";s:5:\"after\";s:17:\"authorized_domain\";s:0:\"\";}\";', 'yes'),
(4319, '_transient_timeout_wcmp_173.252.95.17', '1543797119', 'no'),
(4320, '_transient_wcmp_173.252.95.17', 'O:8:\"stdClass\":14:{s:2:\"as\";s:22:\"AS32934 Facebook, Inc.\";s:4:\"city\";s:6:\"Newark\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:8:\"Facebook\";s:3:\"lat\";d:40.73570000000000135287336888723075389862060546875;s:3:\"lon\";d:-74.1723999999999961119101499207317829132080078125;s:3:\"org\";s:8:\"Facebook\";s:5:\"query\";s:13:\"173.252.95.17\";s:6:\"region\";s:2:\"NJ\";s:10:\"regionName\";s:10:\"New Jersey\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"07175\";}', 'no'),
(4290, 'apsl-lite-settings', 'a:14:{s:16:\"network_ordering\";a:3:{i:0;s:8:\"facebook\";i:1;s:7:\"twitter\";i:2;s:6:\"google\";}s:22:\"apsl_facebook_settings\";a:5:{s:20:\"apsl_facebook_enable\";s:6:\"enable\";s:20:\"apsl_facebook_app_id\";s:16:\"1928587287440634\";s:24:\"apsl_facebook_app_secret\";s:32:\"2ec3ef16993e17e6a99de2dccd5d30f3\";s:24:\"apsl_profile_image_width\";s:2:\"50\";s:25:\"apsl_profile_image_height\";s:2:\"50\";}s:21:\"apsl_twitter_settings\";a:3:{s:19:\"apsl_twitter_enable\";s:0:\"\";s:20:\"apsl_twitter_api_key\";s:0:\"\";s:23:\"apsl_twitter_api_secret\";s:0:\"\";}s:20:\"apsl_google_settings\";a:3:{s:18:\"apsl_google_enable\";s:0:\"\";s:21:\"apsl_google_client_id\";s:0:\"\";s:25:\"apsl_google_client_secret\";s:0:\"\";}s:26:\"apsl_enable_disable_plugin\";s:3:\"yes\";s:20:\"apsl_display_options\";a:3:{i:0;s:10:\"login_form\";i:1;s:13:\"register_form\";i:2;s:12:\"comment_form\";}s:15:\"apsl_icon_theme\";s:1:\"4\";s:21:\"apsl_title_text_field\";s:0:\"\";s:35:\"apsl_custom_logout_redirect_options\";s:4:\"home\";s:32:\"apsl_custom_logout_redirect_link\";s:0:\"\";s:34:\"apsl_custom_login_redirect_options\";s:4:\"home\";s:31:\"apsl_custom_login_redirect_link\";s:0:\"\";s:24:\"apsl_user_avatar_options\";s:6:\"social\";s:36:\"apsl_send_email_notification_options\";s:3:\"yes\";}', 'yes'),
(5307, '_transient_timeout_wcmp_137.111.13.126', '1548466194', 'no'),
(5308, '_transient_wcmp_137.111.13.126', 'O:8:\"stdClass\":14:{s:2:\"as\";s:57:\"AS7575 Australian Academic and Reasearch Network (AARNet)\";s:4:\"city\";s:8:\"Eastwood\";s:7:\"country\";s:9:\"Australia\";s:11:\"countryCode\";s:2:\"AU\";s:3:\"isp\";s:50:\"Australian Academic and Reasearch Network (AARNet)\";s:3:\"lat\";d:-33.79180000000000205773176276125013828277587890625;s:3:\"lon\";d:151.080600000000004001776687800884246826171875;s:3:\"org\";s:50:\"Australian Academic and Reasearch Network (AARNet)\";s:5:\"query\";s:14:\"137.111.13.126\";s:6:\"region\";s:3:\"NSW\";s:10:\"regionName\";s:15:\"New South Wales\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"Australia/Sydney\";s:3:\"zip\";s:4:\"2122\";}', 'no'),
(4890, '_transient_timeout_external_ip_address_::1', '1543436389', 'no'),
(4891, '_transient_external_ip_address_::1', '179.127.54.14', 'no'),
(4475, '_transient_timeout_wcmp_::1', '1544182979', 'no'),
(4476, '_transient_wcmp_::1', 'O:8:\"stdClass\":3:{s:7:\"message\";s:14:\"reserved range\";s:5:\"query\";s:3:\"::1\";s:6:\"status\";s:4:\"fail\";}', 'no'),
(4594, 'theme_mods_m2distribuidora', 'a:3:{s:18:\"custom_css_post_id\";i:-1;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539730800;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(4835, '_transient_timeout_wc_shipping_method_count_1_1538532094', '1544734372', 'no'),
(4602, 'theme_mods_storefront___', 'a:4:{i:0;b:0;s:18:\"nav_menu_locations\";a:1:{s:7:\"primary\";i:21;}s:18:\"custom_css_post_id\";i:-1;s:16:\"sidebars_widgets\";a:2:{s:4:\"time\";i:1539730882;s:4:\"data\";a:7:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:6:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";i:3;s:10:\"archives-2\";i:4;s:12:\"categories-2\";i:5;s:6:\"meta-2\";}s:8:\"header-1\";a:0:{}s:8:\"footer-1\";a:0:{}s:8:\"footer-2\";a:0:{}s:8:\"footer-3\";a:0:{}s:8:\"footer-4\";a:0:{}}}}', 'yes'),
(4961, '_transient_timeout_wc_product_loop040c1542892498', '1545484579', 'no'),
(4962, '_transient_wc_product_loop040c1542892498', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:496;i:1;i:495;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(4963, '_transient_timeout_wc_product_loopa47f1542892498', '1545484579', 'no'),
(4964, '_transient_wc_product_loopa47f1542892498', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:483;i:1;i:495;i:2;i:496;i:3;i:474;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(4978, '_transient_timeout_wc_product_loop040c1542893817', '1545485864', 'no'),
(4979, '_transient_wc_product_loop040c1542893817', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:496;i:1;i:495;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(4980, '_transient_timeout_wc_product_loopa47f1542893817', '1545485864', 'no'),
(4981, '_transient_wc_product_loopa47f1542893817', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:474;i:1;i:482;i:2;i:483;i:3;i:495;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(4836, '_transient_wc_shipping_method_count_1_1538532094', '4', 'no'),
(4842, '_transient_timeout_wc_product_loop040c1538529256', '1544734372', 'no'),
(4843, '_transient_wc_product_loop040c1538529256', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:496;i:1;i:495;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(4844, '_transient_timeout_wc_product_loopa47f1538529256', '1544734373', 'no'),
(4845, '_transient_wc_product_loopa47f1538529256', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:474;i:1;i:482;i:2;i:483;i:3;i:495;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(5333, '_transient_timeout_cba1aab7f90f99256d9103976aa701d5', '1543348495', 'no'),
(5334, '_transient_cba1aab7f90f99256d9103976aa701d5', 'O:8:\"stdClass\":11:{s:11:\"new_version\";s:5:\"3.1.9\";s:14:\"stable_version\";s:5:\"3.1.9\";s:4:\"name\";s:10:\"ACF Add-On\";s:4:\"slug\";s:15:\"wpai-acf-add-on\";s:3:\"url\";s:76:\"http://www.wpallimport.com/downloads/advanced-custom-fields-add/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-05-20 21:04:54\";s:8:\"homepage\";s:64:\"http://www.wpallimport.com/downloads/advanced-custom-fields-add/\";s:7:\"package\";s:167:\"http://www.wpallimport.com/edd-sl/package_download/MTU3NDg4MDg5NTowOjE1MjA6OWJhNWJiNDkzNjkzMDk4ODRkMTQ4ODU1OWU4ZjIyMGQ6aHR0cHNALy9lZGVydG9uLnh5ei9wcmV2aWV3L2h1YnN0eTow\";s:13:\"download_link\";s:167:\"http://www.wpallimport.com/edd-sl/package_download/MTU3NDg4MDg5NTowOjE1MjA6OWJhNWJiNDkzNjkzMDk4ODRkMTQ4ODU1OWU4ZjIyMGQ6aHR0cHNALy9lZGVydG9uLnh5ei9wcmV2aWV3L2h1YnN0eTow\";s:8:\"sections\";a:2:{s:11:\"description\";s:90:\"<p>Support for unlimited sites</p>\n<p>Lifetime e-mail support</p>\n<p>Lifetime updates</p>\n\";s:9:\"changelog\";s:6165:\"<p>3.1.9</p>\n<ul>\n<li>bug fix: ACF groups visibility on import template screen</li>\n</ul>\n<p>3.1.8</p>\n<ul>\n<li>improvement: render only visible ACF field groups on import template screen</li>\n<li>improvement: added new field support - image_crop</li>\n<li>bug fix: import Relationship field</li>\n<li>bug fix: import taxonomy hierarchy inside Repeater</li>\n<li>bug fix: ignore empty rows for Repeater in csv mode</li>\n<li>bug fix: import checkbox using XPath</li>\n<li>bug fix: import post object field with multiple selection</li>\n<li>bug fix: import Repeater inside Repeater in csv mode</li>\n<li>bug fix: ignore empty rows option</li>\n<li>bug fix: detecting google map api key</li>\n<li>bug fix: date format for date picker field ACF 4.x</li>\n<li>bug fix: update only these fields for ACF 4.x</li>\n<li>bug fix: rendering local ACF fields defined in ACF 4.x syntax</li>\n</ul>\n<p>3.1.7</p>\n<ul>\n<li>bug fix: import nested repeaters in XML mode</li>\n<li>bug fix: \'Ignore empty rows\' doesn\'t ignore empty rows</li>\n<li>bug fix: repeater sub fields not saved in ACF 4.x</li>\n<li>bug fix: unable to set relationship fields when post type is not defined for related content</li>\n<li>bug fix: unable to import taxonomy fields inside repeater fields</li>\n</ul>\n<p>3.1.6</p>\n<ul>\n<li>improvement: added support for link field</li>\n<li>improvement: added support for Font Awesome Icon field</li>\n<li>improvement: added support for range field</li>\n<li>improvement: added support for button_group field</li>\n<li>improvement: render acf groups alphabetically</li>\n<li>bug fix: import post object filed based on acf post type settings</li>\n<li>bug fix: updating acf when update option disabled</li>\n<li>bug fix: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: rendering ACF local fields</li>\n<li>bug fix: import relationship field based on custom types in field settings</li>\n</ul>\n<p>3.1.5</p>\n<ul>\n<li>bug fix: import post object field</li>\n<li>bug fix: matching relationship posts</li>\n<li>bug fix: using google maps api key</li>\n<li>bug fix: import clone group field</li>\n<li>bug fix: date time picker format</li>\n<li>bug fix: import empty image field in repeater</li>\n</ul>\n<p>3.1.4</p>\n<ul>\n<li>improvement: performance optimization</li>\n<li>improvement: added support for Vimeo field type</li>\n<li>bug fix: search for existing files</li>\n<li>bug fix: import images into File field</li>\n<li>bug fix: import relationship inside repeater</li>\n</ul>\n<p>3.1.3</p>\n<ul>\n<li>improvement: added support for new ACF field \'Google Map Extended\'</li>\n<li>bug fix: import ACF repeater in fixed mode</li>\n<li>bug fix: saving ACF taxonomy import template</li>\n<li>bug fix: leave these ACF fields alone, update all other ACF fields</li>\n<li>bug fix: import ACF to taxonomies</li>\n<li>bug fix: saving ACF select field</li>\n</ul>\n<p>3.1.2</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: new field type \'time picker\'</li>\n<li>improvement: new delimiter option for relationship fields</li>\n<li>bug fix: rendering repeater field inside flexible field in case when ACF configuration presented in functions.php file</li>\n<li>bug fix: import 0 value for number field inside repeater</li>\n</ul>\n<p>3.1.1</p>\n<ul>\n<li>improvement: support for clone field</li>\n<li>improvement: new option \'only append new images to the gallery\'</li>\n<li>improvement: new filter pmxi_acf_custom_field</li>\n<li>bug fix: flexible field JS conflict</li>\n<li>bug fix: search for existing image in media gallery</li>\n<li>bug fix: import ACF taxonomies to users</li>\n<li>bug fix: conflict between updating custom fields and ACF</li>\n<li>bug fix: acf grops duplicates</li>\n<li>bug fix: compatibility with php 7</li>\n<li>bug fix: import repeater in repeater for CSV mode</li>\n</ul>\n<p>3.1.0</p>\n<ul>\n<li>fixed ignore blank rows for fixed repeater mode</li>\n<li>fixed import taxonomy field</li>\n<li>fixed import multiple checkbox field in csv repeater mode</li>\n<li>added a \'Search through Media Library\' checkbox for each image field</li>\n<li>added geocode API settings to map field</li>\n</ul>\n<p>3.0.9</p>\n<ul>\n<li>fixed repeater field ( Variable mode XML )</li>\n</ul>\n<p>3.0.8</p>\n<ul>\n<li>fixed import taxonomy field</li>\n<li>fixed search for existing images is case when there are a few files with the same name in database</li>\n</ul>\n<p>3.0.7</p>\n<ul>\n<li>fixed import empty gallery field</li>\n</ul>\n<p>3.0.6</p>\n<ul>\n<li>added a separator option for gallery field</li>\n<li>fixed excessive update requests</li>\n</ul>\n<p>3.0.5</p>\n<ul>\n<li>fixed import field type file</li>\n<li>fixed loading import template</li>\n<li>fixed link to repeater field documentation</li>\n<li>fixed import relationship fields</li>\n</ul>\n<p>3.0.4</p>\n<ul>\n<li>fixed import mapped acf for 5.x version</li>\n<li>improved security</li>\n</ul>\n<p>3.0.3</p>\n<ul>\n<li>fixed import ACF for users</li>\n<li>fixed import image &amp; file fields ( searching image in attachments before download )</li>\n<li>added flexible content field</li>\n</ul>\n<p>3.0.2</p>\n<ul>\n<li>fixed conflict between repeater and taxonomy</li>\n<li>added support validated_field type</li>\n</ul>\n<p>3.0.1</p>\n<ul>\n<li>fixed call to non existing object property php error</li>\n<li>changed main plugin file name</li>\n</ul>\n<p>3.0.0</p>\n<ul>\n<li>New Advanced Custom Fields Add-On for WP All Import 4.0. Works with both ACF4 and ACF5/Pro. Learn more about WP All Import 4.0 at http://www.wpallimport.com/2014/11/introducing-wp-all-import-4-0/</li>\n</ul>\n<p>2.0.1</p>\n<ul>\n<li>Compatibility with ACF 5.0.0</li>\n</ul>\n<p>1.0.0</p>\n<ul>\n<li>fixed import images</li>\n<li>fixed session issue</li>\n<li>fixed data picker</li>\n</ul>\n<p>0.9.7</p>\n<ul>\n<li>fixed: php notices</li>\n<li>fixed: import taxonomies field</li>\n<li>fixed: import file field</li>\n<li>added: new option \"update only mapped ACF\"</li>\n<li>added: possibility to update repeater sub fields in re-import section</li>\n</ul>\n<p>0.9.6</p>\n<ul>\n<li>fixed: sanitizing file names</li>\n<li>fixed: load options template</li>\n<li>fixed: php warnings</li>\n</ul>\n<p>0.9.5</p>\n<ul>\n<li>fixed: php notices</li>\n<li>fixed: import repeater field</li>\n<li>fixed: js errors in taxonomies field</li>\n</ul>\n\";}s:7:\"banners\";a:2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}}', 'no'),
(4923, '_site_transient_timeout_browser_f7d4fd45a7d647a6c39275b579b40d24', '1543494455', 'no'),
(4924, '_site_transient_browser_f7d4fd45a7d647a6c39275b579b40d24', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"64.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:24:\"https://www.firefox.com/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(5132, '_transient_orders-transient-version', '1542931673', 'yes'),
(5335, '_site_transient_timeout_theme_roots', '1543346695', 'no'),
(5336, '_site_transient_theme_roots', 'a:7:{s:15:\"m2distribuidora\";s:7:\"/themes\";s:18:\"storefront - Copia\";s:7:\"/themes\";s:10:\"storefront\";s:7:\"/themes\";s:13:\"storefront___\";s:7:\"/themes\";s:13:\"twentyfifteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:13:\"twentysixteen\";s:7:\"/themes\";}', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5338, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1543344896;s:7:\"checked\";a:17:{s:34:\"advanced-custom-fields-pro/acf.php\";s:5:\"5.7.3\";s:27:\"bulk-delete/bulk-delete.php\";s:5:\"5.6.1\";s:48:\"easyship-woocommerce-shipping-rates/easyship.php\";s:5:\"0.5.1\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:5:\"2.1.9\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:6:\"3.0.14\";s:63:\"accesspress-social-login-lite/accesspress-social-login-lite.php\";s:5:\"3.3.8\";s:37:\"super-socializer/super_socializer.php\";s:6:\"7.12.2\";s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";s:5:\"3.1.3\";s:47:\"wcmp-advance-shipping/wcmp-advance-shipping.php\";s:5:\"1.0.8\";s:27:\"woocommerce/woocommerce.php\";s:5:\"3.4.4\";s:45:\"woocommerce-correios/woocommerce-correios.php\";s:5:\"3.7.1\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:5:\"1.6.4\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:6:\"4.1.13\";s:24:\"wp-all-import/plugin.php\";s:5:\"3.4.6\";s:35:\"wpai-acf-add-on/wpai-acf-add-on.php\";s:5:\"3.1.7\";s:51:\"wpai-woocommerce-add-on/wpai-woocommerce-add-on.php\";s:5:\"2.4.1\";s:39:\"wp-all-import-pro/wp-all-import-pro.php\";s:5:\"4.5.4\";}s:8:\"response\";a:8:{s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:39:\"w.org/plugins/mailchimp-for-woocommerce\";s:4:\"slug\";s:25:\"mailchimp-for-woocommerce\";s:6:\"plugin\";s:51:\"mailchimp-for-woocommerce/mailchimp-woocommerce.php\";s:11:\"new_version\";s:6:\"2.1.11\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/mailchimp-for-woocommerce/\";s:7:\"package\";s:75:\"https://downloads.wordpress.org/plugin/mailchimp-for-woocommerce.2.1.11.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";s:2:\"1x\";s:78:\"https://ps.w.org/mailchimp-for-woocommerce/assets/icon-256x256.png?rev=1509501\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-1544x500.png?rev=1950415\";s:2:\"1x\";s:80:\"https://ps.w.org/mailchimp-for-woocommerce/assets/banner-772x250.jpg?rev=1950415\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:37:\"super-socializer/super_socializer.php\";O:8:\"stdClass\":13:{s:2:\"id\";s:30:\"w.org/plugins/super-socializer\";s:4:\"slug\";s:16:\"super-socializer\";s:6:\"plugin\";s:37:\"super-socializer/super_socializer.php\";s:11:\"new_version\";s:6:\"7.12.4\";s:3:\"url\";s:47:\"https://wordpress.org/plugins/super-socializer/\";s:7:\"package\";s:59:\"https://downloads.wordpress.org/plugin/super-socializer.zip\";s:5:\"icons\";a:1:{s:2:\"1x\";s:69:\"https://ps.w.org/super-socializer/assets/icon-128x128.png?rev=1866723\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:71:\"https://ps.w.org/super-socializer/assets/banner-772x250.png?rev=1866718\";}s:11:\"banners_rtl\";a:0:{}s:14:\"upgrade_notice\";s:150:\"<ul>\n<li>[Bugfix] Added TwitCount.com service to get Twitter share counts working again</li>\n<li>[Improvement] Improved Chinese translation</li>\n</ul>\";s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:41:\"w.org/plugins/dc-woocommerce-multi-vendor\";s:4:\"slug\";s:27:\"dc-woocommerce-multi-vendor\";s:6:\"plugin\";s:49:\"dc-woocommerce-multi-vendor/dc_product_vendor.php\";s:11:\"new_version\";s:5:\"3.2.1\";s:3:\"url\";s:58:\"https://wordpress.org/plugins/dc-woocommerce-multi-vendor/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/dc-woocommerce-multi-vendor.3.2.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/dc-woocommerce-multi-vendor/assets/icon-256x256.png?rev=1636499\";s:2:\"1x\";s:80:\"https://ps.w.org/dc-woocommerce-multi-vendor/assets/icon-128x128.png?rev=1593013\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:82:\"https://ps.w.org/dc-woocommerce-multi-vendor/assets/banner-772x250.jpg?rev=1601838\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";s:3:\"5.6\";s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"3.5.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.3.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=1440831\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=1440831\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=1629184\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=1629184\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:57:\"w.org/plugins/woocommerce-gateway-paypal-express-checkout\";s:4:\"slug\";s:43:\"woocommerce-gateway-paypal-express-checkout\";s:6:\"plugin\";s:91:\"woocommerce-gateway-paypal-express-checkout/woocommerce-gateway-paypal-express-checkout.php\";s:11:\"new_version\";s:5:\"1.6.5\";s:3:\"url\";s:74:\"https://wordpress.org/plugins/woocommerce-gateway-paypal-express-checkout/\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-paypal-express-checkout.1.6.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-256x256.png?rev=1900204\";s:2:\"1x\";s:96:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/icon-128x128.png?rev=1900204\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:99:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-1544x500.png?rev=1948167\";s:2:\"1x\";s:98:\"https://ps.w.org/woocommerce-gateway-paypal-express-checkout/assets/banner-772x250.png?rev=1948167\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.8\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:24:\"wp-all-import/plugin.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:27:\"w.org/plugins/wp-all-import\";s:4:\"slug\";s:13:\"wp-all-import\";s:6:\"plugin\";s:24:\"wp-all-import/plugin.php\";s:11:\"new_version\";s:5:\"3.4.9\";s:3:\"url\";s:44:\"https://wordpress.org/plugins/wp-all-import/\";s:7:\"package\";s:62:\"https://downloads.wordpress.org/plugin/wp-all-import.3.4.9.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:66:\"https://ps.w.org/wp-all-import/assets/icon-256x256.png?rev=1181068\";s:2:\"1x\";s:66:\"https://ps.w.org/wp-all-import/assets/icon-128x128.png?rev=1181068\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:67:\"https://ps.w.org/wp-all-import/assets/banner-772x250.png?rev=735306\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"4.9.6\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}s:34:\"advanced-custom-fields-pro/acf.php\";O:8:\"stdClass\":8:{s:4:\"slug\";s:26:\"advanced-custom-fields-pro\";s:6:\"plugin\";s:34:\"advanced-custom-fields-pro/acf.php\";s:11:\"new_version\";s:5:\"5.7.7\";s:3:\"url\";s:37:\"https://www.advancedcustomfields.com/\";s:6:\"tested\";s:5:\"4.9.9\";s:7:\"package\";s:0:\"\";s:5:\"icons\";a:1:{s:7:\"default\";s:63:\"https://ps.w.org/advanced-custom-fields/assets/icon-256x256.png\";}s:7:\"banners\";a:1:{s:7:\"default\";s:66:\"https://ps.w.org/advanced-custom-fields/assets/banner-1544x500.jpg\";}}s:35:\"wpai-acf-add-on/wpai-acf-add-on.php\";O:8:\"stdClass\":11:{s:11:\"new_version\";s:5:\"3.1.9\";s:14:\"stable_version\";s:5:\"3.1.9\";s:4:\"name\";s:10:\"ACF Add-On\";s:4:\"slug\";s:15:\"wpai-acf-add-on\";s:3:\"url\";s:76:\"http://www.wpallimport.com/downloads/advanced-custom-fields-add/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-05-20 21:04:54\";s:8:\"homepage\";s:64:\"http://www.wpallimport.com/downloads/advanced-custom-fields-add/\";s:7:\"package\";s:167:\"http://www.wpallimport.com/edd-sl/package_download/MTU3NDg4MDg5NTowOjE1MjA6OWJhNWJiNDkzNjkzMDk4ODRkMTQ4ODU1OWU4ZjIyMGQ6aHR0cHNALy9lZGVydG9uLnh5ei9wcmV2aWV3L2h1YnN0eTow\";s:13:\"download_link\";s:167:\"http://www.wpallimport.com/edd-sl/package_download/MTU3NDg4MDg5NTowOjE1MjA6OWJhNWJiNDkzNjkzMDk4ODRkMTQ4ODU1OWU4ZjIyMGQ6aHR0cHNALy9lZGVydG9uLnh5ei9wcmV2aWV3L2h1YnN0eTow\";s:8:\"sections\";a:2:{s:11:\"description\";s:90:\"<p>Support for unlimited sites</p>\n<p>Lifetime e-mail support</p>\n<p>Lifetime updates</p>\n\";s:9:\"changelog\";s:6165:\"<p>3.1.9</p>\n<ul>\n<li>bug fix: ACF groups visibility on import template screen</li>\n</ul>\n<p>3.1.8</p>\n<ul>\n<li>improvement: render only visible ACF field groups on import template screen</li>\n<li>improvement: added new field support - image_crop</li>\n<li>bug fix: import Relationship field</li>\n<li>bug fix: import taxonomy hierarchy inside Repeater</li>\n<li>bug fix: ignore empty rows for Repeater in csv mode</li>\n<li>bug fix: import checkbox using XPath</li>\n<li>bug fix: import post object field with multiple selection</li>\n<li>bug fix: import Repeater inside Repeater in csv mode</li>\n<li>bug fix: ignore empty rows option</li>\n<li>bug fix: detecting google map api key</li>\n<li>bug fix: date format for date picker field ACF 4.x</li>\n<li>bug fix: update only these fields for ACF 4.x</li>\n<li>bug fix: rendering local ACF fields defined in ACF 4.x syntax</li>\n</ul>\n<p>3.1.7</p>\n<ul>\n<li>bug fix: import nested repeaters in XML mode</li>\n<li>bug fix: \'Ignore empty rows\' doesn\'t ignore empty rows</li>\n<li>bug fix: repeater sub fields not saved in ACF 4.x</li>\n<li>bug fix: unable to set relationship fields when post type is not defined for related content</li>\n<li>bug fix: unable to import taxonomy fields inside repeater fields</li>\n</ul>\n<p>3.1.6</p>\n<ul>\n<li>improvement: added support for link field</li>\n<li>improvement: added support for Font Awesome Icon field</li>\n<li>improvement: added support for range field</li>\n<li>improvement: added support for button_group field</li>\n<li>improvement: render acf groups alphabetically</li>\n<li>bug fix: import post object filed based on acf post type settings</li>\n<li>bug fix: updating acf when update option disabled</li>\n<li>bug fix: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: rendering ACF local fields</li>\n<li>bug fix: import relationship field based on custom types in field settings</li>\n</ul>\n<p>3.1.5</p>\n<ul>\n<li>bug fix: import post object field</li>\n<li>bug fix: matching relationship posts</li>\n<li>bug fix: using google maps api key</li>\n<li>bug fix: import clone group field</li>\n<li>bug fix: date time picker format</li>\n<li>bug fix: import empty image field in repeater</li>\n</ul>\n<p>3.1.4</p>\n<ul>\n<li>improvement: performance optimization</li>\n<li>improvement: added support for Vimeo field type</li>\n<li>bug fix: search for existing files</li>\n<li>bug fix: import images into File field</li>\n<li>bug fix: import relationship inside repeater</li>\n</ul>\n<p>3.1.3</p>\n<ul>\n<li>improvement: added support for new ACF field \'Google Map Extended\'</li>\n<li>bug fix: import ACF repeater in fixed mode</li>\n<li>bug fix: saving ACF taxonomy import template</li>\n<li>bug fix: leave these ACF fields alone, update all other ACF fields</li>\n<li>bug fix: import ACF to taxonomies</li>\n<li>bug fix: saving ACF select field</li>\n</ul>\n<p>3.1.2</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: new field type \'time picker\'</li>\n<li>improvement: new delimiter option for relationship fields</li>\n<li>bug fix: rendering repeater field inside flexible field in case when ACF configuration presented in functions.php file</li>\n<li>bug fix: import 0 value for number field inside repeater</li>\n</ul>\n<p>3.1.1</p>\n<ul>\n<li>improvement: support for clone field</li>\n<li>improvement: new option \'only append new images to the gallery\'</li>\n<li>improvement: new filter pmxi_acf_custom_field</li>\n<li>bug fix: flexible field JS conflict</li>\n<li>bug fix: search for existing image in media gallery</li>\n<li>bug fix: import ACF taxonomies to users</li>\n<li>bug fix: conflict between updating custom fields and ACF</li>\n<li>bug fix: acf grops duplicates</li>\n<li>bug fix: compatibility with php 7</li>\n<li>bug fix: import repeater in repeater for CSV mode</li>\n</ul>\n<p>3.1.0</p>\n<ul>\n<li>fixed ignore blank rows for fixed repeater mode</li>\n<li>fixed import taxonomy field</li>\n<li>fixed import multiple checkbox field in csv repeater mode</li>\n<li>added a \'Search through Media Library\' checkbox for each image field</li>\n<li>added geocode API settings to map field</li>\n</ul>\n<p>3.0.9</p>\n<ul>\n<li>fixed repeater field ( Variable mode XML )</li>\n</ul>\n<p>3.0.8</p>\n<ul>\n<li>fixed import taxonomy field</li>\n<li>fixed search for existing images is case when there are a few files with the same name in database</li>\n</ul>\n<p>3.0.7</p>\n<ul>\n<li>fixed import empty gallery field</li>\n</ul>\n<p>3.0.6</p>\n<ul>\n<li>added a separator option for gallery field</li>\n<li>fixed excessive update requests</li>\n</ul>\n<p>3.0.5</p>\n<ul>\n<li>fixed import field type file</li>\n<li>fixed loading import template</li>\n<li>fixed link to repeater field documentation</li>\n<li>fixed import relationship fields</li>\n</ul>\n<p>3.0.4</p>\n<ul>\n<li>fixed import mapped acf for 5.x version</li>\n<li>improved security</li>\n</ul>\n<p>3.0.3</p>\n<ul>\n<li>fixed import ACF for users</li>\n<li>fixed import image &amp; file fields ( searching image in attachments before download )</li>\n<li>added flexible content field</li>\n</ul>\n<p>3.0.2</p>\n<ul>\n<li>fixed conflict between repeater and taxonomy</li>\n<li>added support validated_field type</li>\n</ul>\n<p>3.0.1</p>\n<ul>\n<li>fixed call to non existing object property php error</li>\n<li>changed main plugin file name</li>\n</ul>\n<p>3.0.0</p>\n<ul>\n<li>New Advanced Custom Fields Add-On for WP All Import 4.0. Works with both ACF4 and ACF5/Pro. Learn more about WP All Import 4.0 at http://www.wpallimport.com/2014/11/introducing-wp-all-import-4-0/</li>\n</ul>\n<p>2.0.1</p>\n<ul>\n<li>Compatibility with ACF 5.0.0</li>\n</ul>\n<p>1.0.0</p>\n<ul>\n<li>fixed import images</li>\n<li>fixed session issue</li>\n<li>fixed data picker</li>\n</ul>\n<p>0.9.7</p>\n<ul>\n<li>fixed: php notices</li>\n<li>fixed: import taxonomies field</li>\n<li>fixed: import file field</li>\n<li>added: new option \"update only mapped ACF\"</li>\n<li>added: possibility to update repeater sub fields in re-import section</li>\n</ul>\n<p>0.9.6</p>\n<ul>\n<li>fixed: sanitizing file names</li>\n<li>fixed: load options template</li>\n<li>fixed: php warnings</li>\n</ul>\n<p>0.9.5</p>\n<ul>\n<li>fixed: php notices</li>\n<li>fixed: import repeater field</li>\n<li>fixed: js errors in taxonomies field</li>\n</ul>\n\";}s:7:\"banners\";a:2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}}}s:12:\"translations\";a:0:{}s:9:\"no_update\";a:7:{s:27:\"bulk-delete/bulk-delete.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/bulk-delete\";s:4:\"slug\";s:11:\"bulk-delete\";s:6:\"plugin\";s:27:\"bulk-delete/bulk-delete.php\";s:11:\"new_version\";s:5:\"5.6.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/bulk-delete/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/bulk-delete.5.6.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:63:\"https://ps.w.org/bulk-delete/assets/icon-256x256.png?rev=989343\";s:2:\"1x\";s:63:\"https://ps.w.org/bulk-delete/assets/icon-128x128.png?rev=989343\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/bulk-delete/assets/banner-1544x500.png?rev=1793606\";s:2:\"1x\";s:66:\"https://ps.w.org/bulk-delete/assets/banner-772x250.png?rev=1793606\";}s:11:\"banners_rtl\";a:2:{s:2:\"2x\";s:71:\"https://ps.w.org/bulk-delete/assets/banner-1544x500-rtl.png?rev=1793606\";s:2:\"1x\";s:70:\"https://ps.w.org/bulk-delete/assets/banner-772x250-rtl.png?rev=1793606\";}}s:48:\"easyship-woocommerce-shipping-rates/easyship.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:49:\"w.org/plugins/easyship-woocommerce-shipping-rates\";s:4:\"slug\";s:35:\"easyship-woocommerce-shipping-rates\";s:6:\"plugin\";s:48:\"easyship-woocommerce-shipping-rates/easyship.php\";s:11:\"new_version\";s:5:\"0.5.1\";s:3:\"url\";s:66:\"https://wordpress.org/plugins/easyship-woocommerce-shipping-rates/\";s:7:\"package\";s:84:\"https://downloads.wordpress.org/plugin/easyship-woocommerce-shipping-rates.0.5.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:88:\"https://ps.w.org/easyship-woocommerce-shipping-rates/assets/icon-256x256.png?rev=1938536\";s:2:\"1x\";s:88:\"https://ps.w.org/easyship-woocommerce-shipping-rates/assets/icon-128x128.png?rev=1938536\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:91:\"https://ps.w.org/easyship-woocommerce-shipping-rates/assets/banner-1544x500.png?rev=1916707\";s:2:\"1x\";s:90:\"https://ps.w.org/easyship-woocommerce-shipping-rates/assets/banner-772x250.png?rev=1916707\";}s:11:\"banners_rtl\";a:0:{}}s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:38:\"w.org/plugins/nextend-facebook-connect\";s:4:\"slug\";s:24:\"nextend-facebook-connect\";s:6:\"plugin\";s:53:\"nextend-facebook-connect/nextend-facebook-connect.php\";s:11:\"new_version\";s:6:\"3.0.14\";s:3:\"url\";s:55:\"https://wordpress.org/plugins/nextend-facebook-connect/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/nextend-facebook-connect.3.0.14.zip\";s:5:\"icons\";a:3:{s:2:\"2x\";s:77:\"https://ps.w.org/nextend-facebook-connect/assets/icon-256x256.png?rev=1825061\";s:2:\"1x\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";s:3:\"svg\";s:69:\"https://ps.w.org/nextend-facebook-connect/assets/icon.svg?rev=1825061\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:80:\"https://ps.w.org/nextend-facebook-connect/assets/banner-1544x500.png?rev=1825061\";s:2:\"1x\";s:79:\"https://ps.w.org/nextend-facebook-connect/assets/banner-772x250.png?rev=1825061\";}s:11:\"banners_rtl\";a:0:{}}s:63:\"accesspress-social-login-lite/accesspress-social-login-lite.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:43:\"w.org/plugins/accesspress-social-login-lite\";s:4:\"slug\";s:29:\"accesspress-social-login-lite\";s:6:\"plugin\";s:63:\"accesspress-social-login-lite/accesspress-social-login-lite.php\";s:11:\"new_version\";s:5:\"3.3.8\";s:3:\"url\";s:60:\"https://wordpress.org/plugins/accesspress-social-login-lite/\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/plugin/accesspress-social-login-lite.3.3.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/accesspress-social-login-lite/assets/icon-256x256.jpg?rev=1338634\";s:2:\"1x\";s:82:\"https://ps.w.org/accesspress-social-login-lite/assets/icon-128x128.jpg?rev=1338634\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:85:\"https://ps.w.org/accesspress-social-login-lite/assets/banner-1544x500.jpg?rev=1338634\";s:2:\"1x\";s:84:\"https://ps.w.org/accesspress-social-login-lite/assets/banner-772x250.jpg?rev=1338634\";}s:11:\"banners_rtl\";a:0:{}}s:47:\"wcmp-advance-shipping/wcmp-advance-shipping.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:35:\"w.org/plugins/wcmp-advance-shipping\";s:4:\"slug\";s:21:\"wcmp-advance-shipping\";s:6:\"plugin\";s:47:\"wcmp-advance-shipping/wcmp-advance-shipping.php\";s:11:\"new_version\";s:5:\"1.0.8\";s:3:\"url\";s:52:\"https://wordpress.org/plugins/wcmp-advance-shipping/\";s:7:\"package\";s:70:\"https://downloads.wordpress.org/plugin/wcmp-advance-shipping.1.0.8.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:74:\"https://ps.w.org/wcmp-advance-shipping/assets/icon-256x256.png?rev=1592384\";s:2:\"1x\";s:74:\"https://ps.w.org/wcmp-advance-shipping/assets/icon-128x128.png?rev=1592384\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:76:\"https://ps.w.org/wcmp-advance-shipping/assets/banner-772x250.jpg?rev=1363312\";}s:11:\"banners_rtl\";a:0:{}}s:45:\"woocommerce-correios/woocommerce-correios.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:34:\"w.org/plugins/woocommerce-correios\";s:4:\"slug\";s:20:\"woocommerce-correios\";s:6:\"plugin\";s:45:\"woocommerce-correios/woocommerce-correios.php\";s:11:\"new_version\";s:5:\"3.7.1\";s:3:\"url\";s:51:\"https://wordpress.org/plugins/woocommerce-correios/\";s:7:\"package\";s:69:\"https://downloads.wordpress.org/plugin/woocommerce-correios.3.7.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-256x256.png?rev=1356952\";s:2:\"1x\";s:73:\"https://ps.w.org/woocommerce-correios/assets/icon-128x128.png?rev=1356952\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:76:\"https://ps.w.org/woocommerce-correios/assets/banner-1544x500.png?rev=1356952\";s:2:\"1x\";s:75:\"https://ps.w.org/woocommerce-correios/assets/banner-772x250.png?rev=1356952\";}s:11:\"banners_rtl\";a:0:{}}s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:40:\"w.org/plugins/woocommerce-gateway-stripe\";s:4:\"slug\";s:26:\"woocommerce-gateway-stripe\";s:6:\"plugin\";s:57:\"woocommerce-gateway-stripe/woocommerce-gateway-stripe.php\";s:11:\"new_version\";s:6:\"4.1.13\";s:3:\"url\";s:57:\"https://wordpress.org/plugins/woocommerce-gateway-stripe/\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/plugin/woocommerce-gateway-stripe.4.1.13.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-256x256.png?rev=1917495\";s:2:\"1x\";s:79:\"https://ps.w.org/woocommerce-gateway-stripe/assets/icon-128x128.png?rev=1917495\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:82:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-1544x500.png?rev=1917495\";s:2:\"1x\";s:81:\"https://ps.w.org/woocommerce-gateway-stripe/assets/banner-772x250.png?rev=1917495\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no'),
(5181, 'new_admin_email', 'edertton@gmail.com', 'yes'),
(5175, '_transient_timeout_wcmp_66.249.83.39', '1548118574', 'no'),
(5176, '_transient_wcmp_66.249.83.39', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:13:\"House Springs\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:38.4131000000000000227373675443232059478759765625;s:3:\"lon\";d:-90.5575000000000045474735088646411895751953125;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:12:\"66.249.83.39\";s:6:\"region\";s:2:\"MO\";s:10:\"regionName\";s:8:\"Missouri\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:15:\"America/Chicago\";s:3:\"zip\";s:5:\"63051\";}', 'no'),
(5139, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(5008, '_transient_timeout_wc_term_counts', '1545501477', 'no'),
(5009, '_transient_wc_term_counts', 'a:43:{i:15;s:1:\"5\";i:30;s:1:\"1\";i:27;s:1:\"1\";i:61;s:1:\"1\";i:79;s:1:\"1\";i:83;s:1:\"1\";i:28;s:1:\"4\";i:25;s:1:\"1\";i:129;s:1:\"1\";i:77;s:1:\"1\";i:59;s:1:\"1\";i:26;s:1:\"1\";i:29;s:1:\"1\";i:64;s:1:\"2\";i:24;s:1:\"1\";i:58;s:1:\"1\";i:117;s:1:\"1\";i:76;s:1:\"1\";i:65;s:1:\"4\";i:66;s:1:\"2\";i:124;s:1:\"1\";i:110;s:1:\"0\";i:121;s:1:\"0\";i:122;s:1:\"0\";i:80;s:1:\"1\";i:84;s:1:\"0\";i:95;s:1:\"0\";i:119;s:1:\"0\";i:120;s:1:\"0\";i:111;s:1:\"0\";i:112;s:1:\"0\";i:100;s:1:\"0\";i:78;s:1:\"1\";i:96;s:1:\"0\";i:97;s:1:\"0\";i:115;s:1:\"0\";i:118;s:1:\"1\";i:141;s:1:\"1\";i:142;s:1:\"1\";i:140;s:1:\"1\";i:144;s:1:\"1\";i:139;s:1:\"1\";i:143;s:1:\"1\";}', 'no'),
(5010, '_transient_timeout_wc_featured_products', '1545494061', 'no'),
(5011, '_transient_wc_featured_products', 'a:0:{}', 'no'),
(5012, '_transient_timeout_wc_products_onsale', '1545494061', 'no'),
(5013, '_transient_wc_products_onsale', 'a:0:{}', 'no'),
(5019, '_transient_timeout_wc_product_loop040c1542902049', '1545494125', 'no'),
(5020, '_transient_wc_product_loop040c1542902049', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:2:{i:0;i:496;i:1;i:495;}s:5:\"total\";i:2;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:2;s:12:\"current_page\";i:1;}', 'no'),
(5021, '_transient_timeout_wc_product_loopa47f1542902049', '1545494125', 'no'),
(5022, '_transient_wc_product_loopa47f1542902049', 'O:8:\"stdClass\":5:{s:3:\"ids\";a:4:{i:0;i:474;i:1;i:482;i:2;i:483;i:3;i:495;}s:5:\"total\";i:4;s:11:\"total_pages\";i:1;s:8:\"per_page\";i:4;s:12:\"current_page\";i:1;}', 'no'),
(5033, '_transient_timeout_wcmp_122.148.136.175', '1548099653', 'no'),
(5034, '_transient_wcmp_122.148.136.175', 'O:8:\"stdClass\":14:{s:2:\"as\";s:39:\"AS38285 M2 Telecommunications Group Ltd\";s:4:\"city\";s:12:\"Marrickville\";s:7:\"country\";s:9:\"Australia\";s:11:\"countryCode\";s:2:\"AU\";s:3:\"isp\";s:14:\"Dodo Australia\";s:3:\"lat\";d:-33.903199999999998226485331542789936065673828125;s:3:\"lon\";d:151.151800000000008594724931754171848297119140625;s:3:\"org\";s:14:\"Dodo Australia\";s:5:\"query\";s:15:\"122.148.136.175\";s:6:\"region\";s:3:\"NSW\";s:10:\"regionName\";s:15:\"New South Wales\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"Australia/Sydney\";s:3:\"zip\";s:4:\"2204\";}', 'no'),
(5035, '_transient_timeout_wcmp_189.4.78.48', '1548099670', 'no'),
(5036, '_transient_wcmp_189.4.78.48', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS28573 CLARO S.A.\";s:4:\"city\";s:14:\"Florianópolis\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:10:\"NET Virtua\";s:3:\"lat\";d:-27.590399999999998925659383530728518962860107421875;s:3:\"lon\";d:-48.5758000000000009777068044058978557586669921875;s:3:\"org\";s:10:\"NET Virtua\";s:5:\"query\";s:11:\"189.4.78.48\";s:6:\"region\";s:2:\"SC\";s:10:\"regionName\";s:14:\"Santa Catarina\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"88000\";}', 'no'),
(5038, '_transient_timeout_wcmp_179.127.54.14', '1548100425', 'no'),
(5039, '_transient_wcmp_179.127.54.14', 'O:8:\"stdClass\":14:{s:2:\"as\";s:33:\"AS262659 ULTRAWAVE TELECOM EIRELI\";s:4:\"city\";s:5:\"Bauru\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:24:\"Ultrawave Telecom Eireli\";s:3:\"lat\";d:-22.26350000000000051159076974727213382720947265625;s:3:\"lon\";d:-49.13640000000000185309545486234128475189208984375;s:3:\"org\";s:24:\"Ultrawave Telecom Eireli\";s:5:\"query\";s:13:\"179.127.54.14\";s:6:\"region\";s:2:\"SP\";s:10:\"regionName\";s:9:\"Sao Paulo\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"17000\";}', 'no'),
(5042, '_site_transient_timeout_browser_7c536d82012ce7c421315e5571540a1e', '1543524850', 'no'),
(5043, '_site_transient_browser_7c536d82012ce7c421315e5571540a1e', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.110\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(5044, '_transient_timeout_wc_low_stock_count', '1545512050', 'no'),
(5045, '_transient_wc_low_stock_count', '0', 'no'),
(5046, '_transient_timeout_wc_outofstock_count', '1545512050', 'no'),
(5047, '_transient_wc_outofstock_count', '0', 'no'),
(5154, 'wp-all-import-pro_85b8495febade7a221f67b0bca7d59d9', 'O:8:\"stdClass\":15:{s:11:\"new_version\";s:5:\"4.5.5\";s:14:\"stable_version\";s:5:\"4.5.5\";s:4:\"name\";s:13:\"WP All Import\";s:4:\"slug\";s:17:\"wp-all-import-pro\";s:3:\"url\";s:67:\"http://www.wpallimport.com/downloads/wp-all-import-pro/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-05-23 19:56:07\";s:8:\"homepage\";s:55:\"http://www.wpallimport.com/downloads/wp-all-import-pro/\";s:7:\"package\";s:0:\"\";s:13:\"download_link\";s:0:\"\";s:8:\"sections\";a:2:{s:11:\"description\";s:129:\"<p>Learn more about WP All Import at <a href=\"https://www.wpallimport.com/\" target=\"_blank\">https://www.wpallimport.com/</a></p>\n\";s:9:\"changelog\";s:19697:\"<p>4.5.5</p>\n<ul>\n<li>improvement: do not keep trigger log items in history</li>\n<li>improvement: added new filter wp_all_import_search_image_by_wp_attached_file</li>\n<li>improvement: added new filter wp_all_import_get_existing_image</li>\n<li>improvement: added pmxi_import_failed action</li>\n<li>improvement: search for existing attachments in /files folder</li>\n<li>improvement: set featured image from img tags when importing content</li>\n<li>bug fix: don\'t delete records from pmxi_posts for existing users and taxonomy terms</li>\n<li>bug fix: skipping empty lines during csv to xml convertation</li>\n<li>bug fix: skip post when custom field data is unchanged</li>\n<li>bug fix: import custom field name via XPath</li>\n<li>bug fix: trigger delete_post action when imported posts are deleting</li>\n<li>bug fix: imports that are scheduled to run at 12am/pm</li>\n<li>bug fix: fixed updating custom fields with quotes</li>\n</ul>\n<p>4.5.4</p>\n<ul>\n<li>bug fix: import using stream reader</li>\n<li>bug fix: generation temporary files in system temporary folder</li>\n</ul>\n<p>4.5.3</p>\n<ul>\n<li>improvement: add support for Toolset Types</li>\n<li>bug fix: trigger deleted_user action when import deleting a user</li>\n<li>bug fix: add-ons api - searching for existing images in pmxi_images table</li>\n<li>bug fix: php error on array push alias</li>\n</ul>\n<p>4.5.2</p>\n<ul>\n<li>new feature: Automatic Scheduling - run imports on a schedule</li>\n<li>improvement: search for existing images based on remote image URL</li>\n<li>improvement: various backend improvements to image imports</li>\n<li>improvement: various import speed optimizations</li>\n<li>bug fix: remove deprecated function calls for PHP 7.2 compatibility</li>\n<li>bug fix: delete db tables when mu blog deleted</li>\n<li>bug fix: remove BOM from import templates</li>\n<li>bug fix: saving CSV delimiter when changing import file</li>\n</ul>\n<p>4.5.1</p>\n<ul>\n<li>improvement: import images from dropbox</li>\n<li>improvement: skips import process to the first specific record</li>\n<li>improvement: added new filter wp_all_import_is_render_whole_xml_tree</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter into add-ons api</li>\n<li>bug fix: conflict with InfiniteWP</li>\n<li>bug fix: oddity update notification for Link cloaking add-on</li>\n<li>bug fix: load functions before pmxi_before_xml_import</li>\n<li>bug fix: do not re-count category terms when post imported as draft</li>\n<li>bug fix: import base64 encoded images in add-ons</li>\n<li>bug fix: woo order custom fields auto-detection</li>\n<li>security fix - XSS exploit (Special thanks to Mardan Muhidin for reporting)</li>\n<li>security fix - XSS exploit (Special thanks to Yuji Tounai for reporting)</li>\n</ul>\n<p>4.5.0</p>\n<ul>\n<li>improvement: Make the WooCo Short Description expandable</li>\n<li>improvement: show notice when function editor is not saved</li>\n<li>improvement: added timestamp to import log lines</li>\n<li>improvement: added support for bmp images</li>\n<li>improvement: added new action pmxi_before_post_import_{$addon}</li>\n<li>security fix: patch XSS exploit</li>\n<li>bug fix: import pages hierarchy</li>\n<li>bug fix: error in pclzip.lib.php with php 7.1</li>\n<li>bug fix: import taxonomies hierarchy</li>\n<li>bug fix: json to xml convertation</li>\n<li>bug fix: import password protected feeds with port defined</li>\n</ul>\n<p>4.4.9</p>\n<ul>\n<li>improvement: custom fields detection</li>\n<li>improvement: new action wp_all_import_post_skipped</li>\n<li>improvement: updated history page title</li>\n<li>improvement: optimize large imports deletion</li>\n<li>improvement: added import friendly name to confirm screen</li>\n<li>improvement: sql query optimization on manage imports screen</li>\n<li>improvement: added wp_all_import_shard_delay filter</li>\n<li>improvement: added wp_all_import_images_uploads_dir filter</li>\n<li>bug fix: compatibility with WPML</li>\n<li>bug fix: generation image filename</li>\n<li>bug fix: wp_all_import_specified_records filter</li>\n</ul>\n<p>4.4.8</p>\n<ul>\n<li>improvement: added hungarian translation</li>\n<li>bug fix: csv headers generation</li>\n<li>bug fix: import template from Import Settings works again</li>\n<li>bug fix: users no longer logged out when user is update via import</li>\n<li>bug fix: images with encoded quotes</li>\n</ul>\n<p>4.4.7</p>\n<ul>\n<li>bug fix: cron job completed early for imports with xpath</li>\n<li>bug fix: csv headers with non latin characters</li>\n</ul>\n<p>4.4.6</p>\n<ul>\n<li>bug fix: cron job un-triggered on timeout error</li>\n</ul>\n<p>4.4.5</p>\n<ul>\n<li>bug fix: import xls from dropbox</li>\n<li>bug fix: template preview</li>\n</ul>\n<p>4.4.4</p>\n<ul>\n<li>improvement: new filter \'wp_all_import_phpexcel_delimiter\'</li>\n<li>improvement: new filter \'wp_all_import_is_trim_parsed_data\'</li>\n<li>improvement: added new \'filter wp_all_import_skip_x_csv_rows\'</li>\n<li>improvement: added csv delimiter setting to import options screen</li>\n<li>bug fix: taxonomies dropdown list</li>\n<li>bug fix: cron job was never untriggered when calling to undefined function</li>\n<li>bug fix: taxonomies preview</li>\n<li>bug fix: import duplicate tags</li>\n<li>bug fix: importing taxonomy terms that already exist in a different taxonomies</li>\n</ul>\n<p>4.4.3</p>\n<ul>\n<li>bug fix: parsing images for newly added records</li>\n<li>bug fix: the event calendar conflict</li>\n</ul>\n<p>4.4.2</p>\n<ul>\n<li>improvement: added new filter wp_all_import_phpexcel_object to modify excel data before import</li>\n<li>bug fix: search for images ending with underscores in media</li>\n<li>bug fix: import hierarchical posts and pages</li>\n<li>bug fix: import custom post type page templates</li>\n<li>bug fix: matching taxonomies by name</li>\n<li>bug fix: custom fields validation</li>\n</ul>\n<p>4.4.1</p>\n<ul>\n<li>improvement: compatibility with PHP 7.x</li>\n<li>improvement: search for existing attachments option</li>\n<li>improvement: new filter for file path of functions.php file</li>\n<li>bug fix: images preview</li>\n<li>bug fix: improved matching for images similar to image.com.png</li>\n</ul>\n<p>4.4.0</p>\n<ul>\n<li>new feature: added import taxonomies feature</li>\n<li>bug fix: hierarchy taxonomies preview</li>\n<li>bug fix: empty logs folder generation</li>\n<li>bug fix: \'Keep images currently in Media Library\' option for add-ons</li>\n<li>bug fix: import bundles with gz files</li>\n<li>bug fix: custom functions for attachments</li>\n</ul>\n<p>4.3.2</p>\n<ul>\n<li>improvement: \'Force Stream Reader\' setting</li>\n<li>improvement: tar + gz compression support for remote feeds</li>\n<li>improvement: new filter \'wp_all_import_auto_create_csv_headers\'</li>\n<li>improvement: new filter \'wp_all_import_is_base64_images_allowed\'</li>\n<li>improvement: new filter \'wp_all_import_set_post_terms\' to leave a specific category alone when a post is being updated</li>\n<li>bug fix: cron import timeout when set missing outofstock option is enabled</li>\n<li>bug fix: nodes navigation for xpath like /news/item</li>\n<li>bug fix: frozen import template screen for cyrillic XML feeds</li>\n<li>bug fix: conflict between taxonomies & user import</li>\n<li>bug fix: creating users with the same email</li>\n<li>bug fix: enable keep line breaks option by default</li>\n<li>bug fix: composer namespace conflict</li>\n<li>bug fix: images preview when wp is in subdirectory</li>\n<li>bug fix: \'Instead of deletion, set Custom Field\' option for users import</li>\n</ul>\n<p>4.3.1</p>\n<ul>\n<li>fixed issue with libxml 2.9.3</li>\n<li>execute \'pmxi_article_data\' filter for all posts ( new & existing )</li>\n</ul>\n<p>4.3.0</p>\n<ul>\n<li>added de_CH translation</li>\n<li>added support for .svg images</li>\n<li>added possibility for import excerpts for pages</li>\n<li>added new filter \'wp_all_import_specified_records\'</li>\n<li>added new filter \'wp_all_import_is_post_to_delete\'</li>\n<li>fixed saving function editor</li>\n<li>fixed custom fields mapping rules with \'0\' value</li>\n<li>fixed termination of the import if the \"Delete source XML file after importing\" is checked</li>\n<li>disable XMLReader stream filter for HHVM</li>\n<li>improve search for existing images in media gallery</li>\n</ul>\n<p>4.2.9</p>\n<ul>\n<li>fixed error messages on step 4</li>\n<li>fixed renaming image files</li>\n<li>fixed delete missing records option</li>\n<li>fixed csv to xml convertation in case when there are some equal titles in csv file</li>\n<li>stop using $HTTP_RAW_POST_DATA for PHP 7.x compatibility</li>\n<li>added new action \'pmxi_missing_post\'</li>\n</ul>\n<p>4.2.8</p>\n<ul>\n<li>update required database tables</li>\n</ul>\n<p>4.2.7</p>\n<ul>\n<li>fixed detecting root nodes with colons in names</li>\n<li>fixed php notice \"Undefined variable: existing_meta_keys\"</li>\n<li>fixed rendering special chars in function editor</li>\n<li>fixed css for WordPress 4.4</li>\n<li>added feature to delete only posts not import</li>\n<li>added feature to download template/bundle from import settings</li>\n<li>added new option for importing images \"Use images currently in Media Library\"</li>\n<li>remove periods to hyphens convertation in image name</li>\n<li>auto detect dropbox URLs and change to dl=1</li>\n<li>changed comma delimiting behavior/UI in image meta</li>\n</ul>\n<p>4.2.6</p>\n<ul>\n<li>fixed preview prices</li>\n<li>fixed counting XML nodes</li>\n</ul>\n<p>4.2.5</p>\n<ul>\n<li>fixed \'Delete source XML file after importing\' option</li>\n<li>fixed ‘Instead of deletion, change post status to Draft’ option</li>\n<li>fixed reading XML files with NS in element names</li>\n<li>added ‘WooCommerce Order’ to post type list on step 1</li>\n</ul>\n<p>4.2.4</p>\n<ul>\n<li>fixed duplicate matching by custom field</li>\n<li>fixed error messages on step1 in case when server throws fatal error e.q. time limit exception</li>\n<li>fixed option \"Delete posts that are no longer present in your file\", now it works with empty CSV files which has only one header row</li>\n<li>fixed importing custom fields with the same name</li>\n<li>fixed custom functions in images preview</li>\n<li>added es_ES translation</li>\n<li>added de_DE translation</li>\n<li>added iterative ajax delete process ( deleting associated posts )</li>\n</ul>\n<p>4.2.3</p>\n<ul>\n<li>Fixed removing uploaded XML source file on re-run process</li>\n</ul>\n<p>4.2.2</p>\n<ul>\n<li>Fixed saving function editor</li>\n</ul>\n<p>4.2.1</p>\n<ul>\n<li>fixed duplicate matching by custom field ( cron )</li>\n<li>fixed converting image filenames to lowercase</li>\n<li>fixed import html to image description</li>\n<li>fixed import _wp_old_slug</li>\n<li>added Post ID to manual record matching</li>\n<li>added \'Comment status\' to \'Choose data to update\' section</li>\n<li>added \'cancel\' to cron API /wp-cron.php?import_key=Kt&amp;import_id=407&amp;action=cancel</li>\n<li>added function editor</li>\n</ul>\n<p>4.2.0</p>\n<ul>\n<li>fixed parsing CSV with empty lines</li>\n<li>fixed parsing multiple IF statements</li>\n<li>fixed preview in case when ‘Disable the visual editor when writing’ is enabled</li>\n<li>fixed conflict with WooCommerce - Store Exporter Deluxe</li>\n<li>added possibility to start synchronized cron requests &amp;sync=1</li>\n<li>added notifications for required addons</li>\n<li>added support for wp all export bundle</li>\n<li>added support for manual import bundle</li>\n<li>added feature \'click to download import file\'</li>\n<li>added validation for excerpt and images sections</li>\n<li>added auto-detect a broken Unique ID notification</li>\n<li>added import template notifications</li>\n<li>removed support for importing WooCommerce Orders</li>\n<li>changed absolute paths to relative in db</li>\n<li>updated cron response messages</li>\n<li>moved uploaded files to \'Use existing\' dropdown</li>\n</ul>\n<p>4.1.7</p>\n<ul>\n<li>added support for Excel files ( .xls, .xlsx )</li>\n<li>added new option \'Do not remove images from media gallery\' on import<br />\nsettings screen</li>\n<li>added new options to taxonomies import \'Try to match terms to<br />\nexisting child Product Categories\' &amp; \'Only assign Products to the<br />\nimported Product Category, not the entire hierarchy\'</li>\n<li>fixed excessive update requests</li>\n<li>added options to \'Delete associated posts</li>\n</ul>\n<p>4.1.6</p>\n<ul>\n<li>load ini_set only on plugins pages</li>\n<li>fixed saving import template</li>\n<li>added import post format via XPath</li>\n</ul>\n<p>4.1.5</p>\n<ul>\n<li>fixed import page template</li>\n<li>added a second argument to pmxi_saved_post action ( SimpleXML object ) of current record</li>\n</ul>\n<p>4.1.4</p>\n<ul>\n<li>fixed Apply mapping rules before splitting via separator symbol for manual hierarchy</li>\n<li>fixed path equal or less than</li>\n<li>fixed changing unique key when moving back from confirm screen</li>\n<li>fixed override page template</li>\n<li>fixed unlink images on deleting missing posts</li>\n<li>updated wp_all_import_is_post_to_update filter with second argument XML node as array</li>\n<li>updated compatibility with WP All Export</li>\n<li>added filter wp_all_import_feed_type</li>\n<li>added possibility to use php to calculate URL on first step [add_to_url(\"https://google.com/\")]</li>\n</ul>\n<p>4.1.3</p>\n<ul>\n<li>fixed un triggering issue on cron jobs for empty files</li>\n<li>changed updater priority from 10 to 20</li>\n<li>added post parent option for all hierarchical CPT</li>\n</ul>\n<p>4.1.2</p>\n<ul>\n<li>Important security fixes - additional hardening, prevention of blind SQL injection and reflected XSS attacks</li>\n</ul>\n<p>4.1.1</p>\n<ul>\n<li>critical security fix - stopping non-logged in users from accessing adminInit https://www.wpallimport.com/2015/02/wp-import-4-1-1-mandatory-security-update/</li>\n<li>added new filter wp_all_import_is_post_to_update to skip needed posts add_filter(\'wp_all_import_is_post_to_update\', \'is_post_to_update\', 10, 1);</li>\n<li>added new option Search for existing attachments to prevent duplicates in media library</li>\n<li>fixed imports pagination</li>\n<li>fixed preview taxonomies</li>\n<li>fixed upload folder creation when \'upload_dir\' filter defined</li>\n<li>fixed db schema for wpmu when new site added</li>\n</ul>\n<p>4.1.0</p>\n<ul>\n<li>fixed cron execution when titles are not defined</li>\n<li>added an option to separate hierarchy groups via symbol</li>\n<li>added separator symbol for manually nested taxonomies</li>\n</ul>\n<p>4.0.9</p>\n<ul>\n<li>added license key setting for automatic update</li>\n<li>added option search images through attachments</li>\n<li>added option assign term to the bottom level term in the hierarchy</li>\n</ul>\n<p>4.0.8</p>\n<ul>\n<li>fixed taxonomies preview</li>\n<li>fixed import meta description for images</li>\n<li>added feature to assign posts to needed terms</li>\n<li>added new option for taxonomies Apply mapping rules before splitting via separator symbol</li>\n<li>added set with XPath option for comment status, ping status, page parent, page template</li>\n</ul>\n<p>4.0.7</p>\n<ul>\n<li>fixed feed detection for rss chanels</li>\n<li>fixed parsing json data</li>\n<li>fixed add only new images option</li>\n<li>fixed delete missing records option</li>\n<li>added ability to import custom fields with the same name</li>\n<li>added port setting</li>\n</ul>\n<p>4.0.6</p>\n<ul>\n<li>fixed encoding for taxonomies mapping</li>\n<li>optimization for delete missing records option</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed changes that related to _wp_page_template meta data</li>\n</ul>\n<p>4.0.5</p>\n<ul>\n<li>fixed template parsing when php function arguments contains an array()</li>\n<li>fixed error msg when feed is html page e.g. page 404</li>\n<li>fixed xpath building</li>\n<li>update hierarchy taxonomies options</li>\n</ul>\n<p>4.0.4</p>\n<ul>\n<li>changed main file name to wp-all-import-pro.php</li>\n<li>fixed feed type auto-detection</li>\n<li>fixed bug with empty unique keys</li>\n</ul>\n<p>4.0.3</p>\n<ul>\n<li>fixed re-count record when a file has been changed at an import setting screen</li>\n<li>fixed database schema auto-update</li>\n<li>fixed uploading large files</li>\n<li>fixed auto-detecting root element</li>\n<li>fixed log storage in database</li>\n<li>fixed cron execution when \"do not create new records\" option is enabled</li>\n<li>fixed feed type detection</li>\n<li>fixed unlink attachment source when posts updated/deleted</li>\n<li>fixed specialchars in taxnomies/categories mapping</li>\n<li>updated taxonomies hierarchy settings</li>\n<li>added a limit 10 to the existing meta values</li>\n</ul>\n<p>4.0.2</p>\n<ul>\n<li>speed up the import of taxonomies/categories</li>\n<li>added taxonomies/categories mapping feature</li>\n<li>added custom fields auto-detection feature</li>\n<li>added custom fields mapping feature</li>\n<li>added images/taxonomies preview feature</li>\n<li>added unofficial support for more file formats - json &amp; sql</li>\n<li>added new setting (secure mode) to protect your files</li>\n<li>better import logs</li>\n<li>updated design</li>\n</ul>\n<p>3.4.2</p>\n<ul>\n<li>fixed navigation bug</li>\n<li>fixed search duplicates</li>\n<li>fixed duplicate categories</li>\n<li>fixed path builder for element attributes</li>\n<li>fixed cron processing for already uploaded files (XML)</li>\n<li>added taxonomies for pages</li>\n</ul>\n<p>3.4.1</p>\n<ul>\n<li>fixed pmxi_delete_post action: this action was executed after posts were deleted</li>\n<li>fixed import menu order &amp; post parent for pages</li>\n<li>fixed import log for continue import feature</li>\n<li>added is update author option</li>\n<li>fixed post formats</li>\n<li>fixed cron processing: WP_Error object was not initialized</li>\n<li>fixed cron processing for import where XPath filtering is defined</li>\n<li>fixed UTC dates on manage imports page</li>\n</ul>\n<p>3.4.0</p>\n<ul>\n<li>fixed: import empty content</li>\n<li>fixed: log files</li>\n<li>fixed: detect image extension</li>\n<li>fixed: terms hierarchy on cron job execution</li>\n</ul>\n<p>3.3.9</p>\n<ul>\n<li>added: feature to do not escape shortcodes</li>\n<li>fixed: pre-processing logic</li>\n<li>fixed: downloading images with unicode url</li>\n<li>fixed: clear non ASCII/invalid symbols in CSV files</li>\n<li>fixed: import option \'Instead of using original image file name, set file name(s)\'</li>\n</ul>\n<p>3.3.8</p>\n<ul>\n<li>fixed: admin notices</li>\n<li>fixed: creation duplicates draft post via cron</li>\n<li>fixed: images with encoded symbols</li>\n<li>fixed: upload file via URL</li>\n<li>fixed: php notices</li>\n<li>added: compatibility with WP 3.9</li>\n</ul>\n<p>3.3.7</p>\n<ul>\n<li>updated convertation CSV to XML with XMLWriter</li>\n<li>fixed import *.zip files</li>\n<li>fixed xpath helper on step 2</li>\n<li>fixed showing zeros in XML tree</li>\n<li>allow post content to be empty on step 3</li>\n<li>added autodetect session mode</li>\n<li>delete deprecated settings my csv contain html code and case sensitivity</li>\n<li>fixed deleting history files</li>\n<li>fixed autodetect image extensions</li>\n<li>fixed increasing SQL query length</li>\n<li>added error messages</li>\n<li>fixed \"High Speed Small File Processing\" option</li>\n</ul>\n<p>3.3.6</p>\n<ul>\n<li>fixed: multiple cron execution</li>\n<li>fixed: load options template</li>\n<li>fixed: session initialization</li>\n<li>fixed: import search</li>\n<li>fixed: attachment author on cron execution</li>\n<li>fixed: download images option</li>\n<li>added: errors messages to the log</li>\n<li>added: \"not contains\" filter to step 2</li>\n<li>added: compatibility with categories mapping addon</li>\n<li>updated: cpt navigation on step 4</li>\n</ul>\n<p>3.3.5</p>\n<ul>\n<li>fixed bug with cron processing</li>\n<li>fixed bug with saving wrong image name</li>\n<li>added serialized custom fields feature</li>\n<li>added compatibility with user import add-on</li>\n<li>added compatibility with 3rd party developers</li>\n<li>added new setting \'Cron processing time limit\'</li>\n</ul>\n\";}s:7:\"banners\";a:2:{s:4:\"high\";s:55:\"http://ps.w.org/wp-all-import/assets/banner-772x250.png\";s:3:\"low\";s:0:\"\";}s:8:\"requires\";s:5:\"3.6.1\";s:6:\"tested\";s:5:\"4.9.8\";s:6:\"author\";s:6:\"Soflyy\";s:12:\"contributors\";O:8:\"stdClass\":2:{s:6:\"soflyy\";s:38:\"https://profiles.wordpress.org/soflyy/\";s:11:\"wpallimport\";s:43:\"https://profiles.wordpress.org/wpallimport/\";}}', 'no'),
(5090, 'woocommerce_easyship_settings', 'a:3:{s:13:\"es_oauth_ajax\";s:0:\"\";s:15:\"es_access_token\";s:49:\"prod_INGSl33g3e8jy3pdVqIsYmaO8rEZiiGxeaeINvOg4Cg=\";s:19:\"skip_shipping_class\";s:0:\"\";}', 'yes');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(5160, 'wpai-woocommerce-add-on_080fdc82a3a678dab2d4f10c27ddeb79', 'O:8:\"stdClass\":11:{s:11:\"new_version\";s:5:\"3.0.5\";s:14:\"stable_version\";s:5:\"3.0.5\";s:4:\"name\";s:18:\"WooCommerce Add-On\";s:4:\"slug\";s:23:\"wpai-woocommerce-add-on\";s:3:\"url\";s:65:\"http://www.wpallimport.com/downloads/woocommerce-add/?changelog=1\";s:12:\"last_updated\";s:19:\"2018-10-22 09:07:37\";s:8:\"homepage\";s:53:\"http://www.wpallimport.com/downloads/woocommerce-add/\";s:7:\"package\";s:167:\"http://www.wpallimport.com/edd-sl/package_download/MTU3NDQ2ODEyMjowOjE1Mjk6NjQ1ZjMxYjE4YzRhN2U3YmJkNzM4NzJhZGViY2EzMTI6aHR0cEAvL2VkZXJ0b24ueHl6L3ByZXZpZXcvaHVic3R5OjA=\";s:13:\"download_link\";s:167:\"http://www.wpallimport.com/edd-sl/package_download/MTU3NDQ2ODEyMjowOjE1Mjk6NjQ1ZjMxYjE4YzRhN2U3YmJkNzM4NzJhZGViY2EzMTI6aHR0cEAvL2VkZXJ0b24ueHl6L3ByZXZpZXcvaHVic3R5OjA=\";s:8:\"sections\";a:2:{s:11:\"description\";s:90:\"<p>Support for unlimited sites</p>\n<p>Lifetime e-mail support</p>\n<p>Lifetime updates</p>\n\";s:9:\"changelog\";s:14680:\"<p>3.0.5</p>\n<ul>\n<li>bug fix: updating product sale dates only</li>\n<li>bug fix: prices preview</li>\n<li>bug fix: import custom product types</li>\n<li>bug fix: import product type 5 when attributes are not defined</li>\n<li>bug fix: re-count shipping terms after import completed</li>\n<li>bug fix: import stock status when making variable product simple</li>\n<li>bug fix: import non utf8 attributes for type 5 of import variable products</li>\n<li>bug fix: import pipe delimited attributes</li>\n<li>bug fix: automatically update stock status when _stock is updating</li>\n<li>bug fix: SKU auto-generation for 5th type of import variable products</li>\n<li>bug fix: added missing wp_all_import_variable_product_imported hook</li>\n</ul>\n<p>3.0.4</p>\n<ul>\n<li>bug fix: import shipping class</li>\n<li>bug fix: adjust empty prices</li>\n<li>bug fix: import attributes with non utf-8 characters</li>\n<li>bug fix: import stock quantity for variable products ( variations are children in XML file )</li>\n</ul>\n<p>3.0.3</p>\n<ul>\n<li>bug fix: PHP 5.4 compatibility - fixed \"can\'t use method return value in write context\" error</li>\n<li>bug fix: assing attributes marked as not in variation to parent product</li>\n</ul>\n<p>3.0.2</p>\n<ul>\n<li>bug fix: import attributes marked as not in variation</li>\n<li>bug fix: import attributes with reserved term names </li>\n</ul>\n<p>3.0.1</p>\n<ul>\n<li>bug fix: PHP 7.0 compatibility</li>\n<li>bug fix: sanitize variation attribute names</li>\n<li>bug fix: deleting SKUs during mport with manual records matching enabled</li>\n</ul>\n<p>3.0.0</p>\n<ul>\n<li>improvement: refactored codebase</li>\n<li>improvement: speed up import variable products</li>\n<li>improvement: sync variable product with variations</li>\n<li>bug fix: do not add featured image to the gallery</li>\n<li>bug fix: updating existing products by post ID</li>\n<li>bug fix: adjust prices for variable product imported via option 5</li>\n<li>bug fix: import order notes date</li>\n<li>bug fix: import order refunds date</li>\n<li>bug fix: import order payment method</li>\n<li>bug fix: generate order_key during import orders</li>\n</ul>\n<p>2.4.1</p>\n<ul>\n<li>bug fix: import attributes with special characters</li>\n<li>bug fix: recount product terms when updating post status</li>\n</ul>\n<p>2.4.0</p>\n<ul>\n<li>bug fix: stock status not importing properly when _backorders custom field is not set</li>\n<li>bug fix: product dimensions won\'t import if \'Virtual\' field is not set</li>\n<li>bug fix: compatibility fix WooCommerce 2.6.x</li>\n<li>bug fix: options conflict when creating simple products</li>\n<li>bug fix: remove deprecated function calls for PHP 7.2 compatibility</li>\n<li>bug fix: unable to import 0 as a value for attributes</li>\n<li>bug fix: mirror new WooCommerce core behavior that forces all uncategorized products to be assigned to the Uncategorized category</li>\n<li>bug fix: custom fields not imported to all product variations</li>\n<li>bug fix: stock status not set to outofstock when stock value set to 0 for some product variation imports</li>\n<li>bug fix: \'Stock Quantity\' field not visible for some product variation imports</li>\n<li>bug fix: unable to set \'Catalog visibility\' to \'Search results only\' for External/Affiliate products</li>\n<li>bug fix: unable to import additional variation images for some product variation imports</li>\n<li>bug fix: variable products not imported as simple products when only one variation is imported</li>\n</ul>\n<p>2.3.9</p>\n<ul>\n<li>bug fix: make product simple options when missing variation deleted</li>\n<li>bug fix: set missing records out of stock for link all variations</li>\n<li>bug fix: matching linked products</li>\n<li>bug fix: link all variations - set custom fields for missing records</li>\n<li>bug fix: setting order tax items via xpath</li>\n</ul>\n<p>2.3.9</p>\n<ul>\n<li>bug fix: make product simple options when missing variation deleted</li>\n<li>bug fix: set missing records out of stock for link all variations</li>\n<li>bug fix: matching linked products</li>\n<li>bug fix: link all variations - set custom fields for missing records</li>\n<li>bug fix: setting order tax items via xpath</li>\n</ul>\n<p>2.3.8</p>\n<ul>\n<li>improvement: added new filter wp_all_import_recount_terms_after_import</li>\n<li>improvement: Allow add variations as linked products</li>\n<li>bug fix: compatibility with woo commerce 2.6</li>\n<li>bug fix: error on activation without WP All Import</li>\n<li>bug fix: grouping variable products</li>\n<li>bug fix: Set parent product outofstock if all variations are outofstock</li>\n<li>bug fix: import stock status for 5th type of import variable products</li>\n<li>bug fix: do not update stock_status if _stock is not set to update</li>\n</ul>\n<p>2.3.7</p>\n<ul>\n<li>improvement: added \'WooCommerce Advanced Options\' to re-import section</li>\n<li>bug fix: variations title</li>\n<li>bug fix: import first variation image</li>\n<li>bug fix: send order emails after custom fields were imported</li>\n<li>bug fix: updating featured product status</li>\n<li>bug fix: WPML & link all variations option conflict</li>\n<li>bug fix: add _price field for each variation</li>\n<li>bug fix: terms re-count</li>\n</ul>\n<p>2.3.6</p>\n<ul>\n<li>improvement: new option \'Parent SKU\' for variable products types 2 & 4</li>\n<li>improvement: new action wp_all_import_make_product_simple</li>\n<li>bug fix: import _order_tax</li>\n<li>bug fix: detecting duplicate SKUs</li>\n<li>bug fix: import product visibility WC 3.0</li>\n<li>bug fix: stock threshold</li>\n<li>bug fix: title for first variation</li>\n<li>bug fix: import non latin attributes</li>\n</ul>\n<p>2.3.5</p>\n<ul>\n<li>improvement: add japanese translations</li>\n<li>improvement: compatibility with WC 3.0</li>\n<li>bug fix: import _tax_class</li>\n<li>bug fix: remove orphaned attributes relationships</li>\n<li>bug fix: import order taxes</li>\n</ul>\n<p>2.3.4</p>\n<ul>\n<li>bug fix: import reserved attributes</li>\n<li>bug fix: updating product gallery</li>\n<li>bug fix: WooCommerce reports when importing orders</li>\n</ul>\n<p>2.3.3</p>\n<ul>\n<li>improvement: compatibility PHP 7.x</li>\n<li>improvement: new filter \'wp_all_import_variation_taxonomies\' to control variation taxonomies</li>\n</ul>\n<p>2.3.2</p>\n<ul>\n<li>improvement: customer matching in order imports</li>\n<li>improvement: added ACF to re-import options</li>\n<li>bug fix: term recount for 5th type of import variable products </li>\n<li>bug fix: import shipping class for 5th type of variable products</li>\n<li>bug fix: re-creation variations ( link all variations option )</li>\n<li>bug fix: confirm import screen for order manual record matching</li>\n</ul>\n<p>2.3.1</p>\n<ul>\n<li>improvement: added custom fields section to import options when importing Orders</li>\n<li>bug fix: conflict between updating Product Type & \'Create products with no variations as simple products\' option</li>\n<li>bug fix: \'create products with no variations as simple products\' option for variable product when variations presented as child XML nodes</li>\n</ul>\n<p>2.3.0</p>\n<ul>\n<li>added order imports</li>\n<li>fixed conflict between \'Delete posts that are no longer present in your file\' &amp; \'Link All Variations\' option</li>\n<li>fixed ucwords attributes names</li>\n<li>fixed import attributes which are not in variations</li>\n<li>fixed tooltips &amp; css for woo 2.6 compatibility</li>\n</ul>\n<p>2.2.9</p>\n<ul>\n<li>added \'Allow backorders?\' option for variations as child XML elements</li>\n<li>do not delete missing parent product if there is no parent in import file</li>\n<li>fixed updating stock qty even when manage stock update disabled</li>\n</ul>\n<p>2.2.8</p>\n<ul>\n<li>fixed compatibility with WPML ( import multilingual attributes )</li>\n<li>fixed import attributes with \"Link All Variations\" options enabled</li>\n<li>fixed importing custom fields into product variations</li>\n<li>added possibility to import up &amp; cross sells by product SKU, ID, Title</li>\n</ul>\n<p>2.2.7</p>\n<ul>\n<li>fixed showing simple products on frontend</li>\n<li>import variation images from local folder ( variations presentes as child XML nodes )</li>\n</ul>\n<p>2.2.6</p>\n<ul>\n<li>variable product manual matching speed up</li>\n<li>do not associate variations with categories &amp; tags</li>\n<li>added _product_version meta key &amp; updated .po files</li>\n</ul>\n<p>2.2.5</p>\n<ul>\n<li>fixed updating \'Variation Enabled\' field</li>\n<li>fixed import variation image</li>\n<li>fixed set first variation as default</li>\n<li>fixed update products data ( manual matching by _sku )</li>\n<li>fixed compatibility with WPAI free edition</li>\n<li>added \'product_type_selector\' filter</li>\n<li>added es_ES translation</li>\n</ul>\n<p>2.2.3</p>\n<ul>\n<li>fixed importing custom fields to variations</li>\n</ul>\n<p>2.2.2</p>\n<ul>\n<li>fixed \'Create products with no variations as simple products\' option</li>\n</ul>\n<p>2.2.1</p>\n<ul>\n<li>fixed conflict between options [update only these custom fields &amp; update only these attributes]</li>\n<li>fixed \'create new records\' for import variable products when manual record matching choosen</li>\n<li>fixed do not set variations to draft</li>\n<li>fixed import shipping class for external products</li>\n<li>added feature to dynamically set attribute options</li>\n<li>added new option \"Convert decimal separator to a period\"</li>\n</ul>\n<p>2.2.0</p>\n<ul>\n<li>fixed adjust prices for variation in case when variations presented as XML child elements</li>\n<li>fixed import _stock_status for parent products in cases: link all variation &amp; variations presented as child XML elements</li>\n<li>added Variation Description field</li>\n<li>added auto create shipping classes</li>\n<li>removed the option to use nested child elements for variable product when importing into Existing Items</li>\n<li>removed \'Virtual\' and \'Downloadable\' checkboxes</li>\n<li>hide \'Downloadable\' settings if product not downloadable</li>\n</ul>\n<p>2.1.7</p>\n<ul>\n<li>fixed set default attributes for \'link all variations\' option</li>\n<li>fixed import total_sales</li>\n<li>fixed changelog</li>\n</ul>\n<p>2.1.6</p>\n<ul>\n<li>fixed import total_sales</li>\n</ul>\n<p>2.1.5</p>\n<ul>\n<li>fixed import shipping class</li>\n</ul>\n<p>2.1.3</p>\n<ul>\n<li>fixed import stock status for negative qty</li>\n<li>fixed import shipping class when their slugs presented as numeric values</li>\n</ul>\n<p>2.1.2</p>\n<ul>\n<li>fixed import stock status for variable products</li>\n</ul>\n<p>2.1.1</p>\n<ul>\n<li>fixed import stock status</li>\n</ul>\n<p>2.1.0</p>\n<ul>\n<li>added new option \'save variation image to the gallery\'</li>\n<li>fixed import stock status for variable products</li>\n</ul>\n<p>2.0.9</p>\n<ul>\n<li>fixed stock status out of stock for external products</li>\n</ul>\n<p>2.0.8</p>\n<ul>\n<li>rename disallowed terms</li>\n<li>fixed auto detect stock status</li>\n<li>fixed conflict with woo commerce layered nav widget</li>\n<li>added new action wp_all_import_variable_product_imported</li>\n</ul>\n<p>2.0.7</p>\n<ul>\n<li>fixed importing default selections</li>\n<li>optimize import variable products</li>\n<li>improve security</li>\n</ul>\n<p>2.0.6</p>\n<ul>\n<li>fixed import featured image for first variation</li>\n<li>fixed manual matching for variations</li>\n<li>fixed css styles</li>\n</ul>\n<p>2.0.5</p>\n<ul>\n<li>fixed import shipping class via xpath</li>\n</ul>\n<p>2.0.4</p>\n<ul>\n<li>added manage stock options for variation level</li>\n</ul>\n<p>2.0.3</p>\n<ul>\n<li>fixed import variable downloadable products</li>\n</ul>\n<p>2.0.2</p>\n<ul>\n<li>fixed bug with updating data for variations</li>\n</ul>\n<p>2.0.1</p>\n<ul>\n<li>fixed import empty prices</li>\n<li>fixed update only these product attributes option</li>\n<li>fixed session bug on cron execution</li>\n<li>fixed rounding prices when \"Attempt to convert incorrectly formatted prices to WooCommerce format\" option is disabled</li>\n<li>changed main plugin file name</li>\n</ul>\n<p>2.0.0</p>\n<ul>\n<li>New WooCommerce add-on for WP All Import 4.0. Don\'t upgrade without installing WP All Import 4.0 first. Learn more about WP All Import 4.0 at http://www.wpallimport.com/2014/11/introducing-wp-all-import-4-0/</li>\n</ul>\n<p>1.3.5</p>\n<ul>\n<li>fixed set shipping class to empty value</li>\n<li>fixed option \"create product as simple when no variations\"</li>\n<li>fixed tax classes drop down</li>\n<li>fixed import attributes</li>\n<li>added new option \"set _stock value for parent product</li>\n</ul>\n<p>1.3.4</p>\n<ul>\n<li>fixed saving shipping class option</li>\n<li>fixed import product attributes</li>\n<li>fixed import variable products: updating custom fields in case when fourth variable import type is choosen</li>\n<li>added new option \"combine SKU from variation and parent product {ParentSKU}-{Variation SKU}\" for variable products in case when variations presented as child elements</li>\n</ul>\n<p>1.3.3</p>\n<ul>\n<li>fixed saving attribute values with specialcharacters like ö, ú, ...</li>\n<li>fixed woocommerce currency</li>\n<li>fixed updating shipping class</li>\n<li>fixed updating tax class</li>\n<li>fixed wp_generate_attachment_metadata() error for variations images</li>\n<li>fixed session warnings</li>\n<li>replaced deprecated function …clear_product_transients() to wc_delete_product_transients()</li>\n<li>fixed: load import options</li>\n</ul>\n<p>1.3.2</p>\n<ul>\n<li>fixed: import attributes names with xpath</li>\n<li>fixed: import attributes with encoded symbols</li>\n<li>fixed: import up-sells &amp; cross-sells products</li>\n<li>fixed: updating stock Qty for variations</li>\n<li>fixed: use parent xpath feature for import variable products (case #5</li>\n</ul>\n<p>1.3.1</p>\n<ul>\n<li>updated: matching grouping product</li>\n<li>added: option \"is update product type\"</li>\n<li>fixed: variations tree</li>\n<li>fixed: import zero value in stock qty for variation</li>\n</ul>\n<p>1.3.0</p>\n<ul>\n<li>fixed: automatic fixing of improperly formatted prices</li>\n<li>fixed: manual record matching for variations</li>\n<li>fixed: php notices</li>\n</ul>\n<p>1.2.9</p>\n<ul>\n<li>fixed import zero value for stock quantity for variations</li>\n<li>fixed import attributes for variable products (case 5)</li>\n<li>added \"Disable automatic fixing of improperly formatted prices.\" option</li>\n<li>fixed import empty sale price</li>\n<li>fixed setup stock status with xpath</li>\n<li>fixed import shipping class for variations</li>\n</ul>\n<p>1.2.8</p>\n<ul>\n<li>added: download type option</li>\n<li>added: file names option</li>\n<li>fixed: import attributes</li>\n<li>fixed: attributes duplication</li>\n<li>fixed: grouping products</li>\n</ul>\n<p>1.2.7</p>\n<ul>\n<li>fixed: price conversation</li>\n</ul>\n<p>1.2.5</p>\n<ul>\n<li>added: xpath case for grouping products</li>\n<li>updated: filter prices</li>\n<li>updated: css for compatibility with wocommerce 2.1</li>\n</ul>\n\";}s:7:\"banners\";a:2:{s:4:\"high\";s:0:\"\";s:3:\"low\";s:0:\"\";}}', 'no'),
(5201, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:1:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:6:\"latest\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:6:\"locale\";s:5:\"en_AU\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/en_AU/wordpress-4.9.8.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"4.9.8\";s:7:\"version\";s:5:\"4.9.8\";s:11:\"php_version\";s:5:\"5.2.4\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"4.7\";s:15:\"partial_version\";s:0:\"\";}}s:12:\"last_checked\";i:1543344893;s:15:\"version_checked\";s:5:\"4.9.8\";s:12:\"translations\";a:0:{}}', 'no'),
(5205, '_transient_timeout_wcmp_120.17.231.245', '1548141519', 'no'),
(5206, '_transient_wcmp_120.17.231.245', 'O:8:\"stdClass\":14:{s:2:\"as\";s:35:\"AS133612 Vodafone Australia Pty Ltd\";s:4:\"city\";s:6:\"Sydney\";s:7:\"country\";s:9:\"Australia\";s:11:\"countryCode\";s:2:\"AU\";s:3:\"isp\";s:18:\"Vodafone Australia\";s:3:\"lat\";d:-33.86119999999999663486960344016551971435546875;s:3:\"lon\";d:151.198200000000014142642612569034099578857421875;s:3:\"org\";s:18:\"Vodafone Australia\";s:5:\"query\";s:14:\"120.17.231.245\";s:6:\"region\";s:3:\"NSW\";s:10:\"regionName\";s:15:\"New South Wales\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"Australia/Sydney\";s:3:\"zip\";s:4:\"1001\";}', 'no'),
(5080, 'wc_stripe_version', '4.1.13', 'yes'),
(5083, '_transient_timeout_wc_shipping_method_count_0_1538532094', '1545512534', 'no'),
(5084, '_transient_wc_shipping_method_count_0_1538532094', '4', 'no'),
(5106, '_transient_timeout_wc_shipping_method_count_1_1542921130', '1545513165', 'no'),
(5107, '_transient_wc_shipping_method_count_1_1542921130', '5', 'no'),
(5113, '_transient_timeout_wc_shipping_method_count_0_1542921130', '1545513462', 'no'),
(5114, '_transient_wc_shipping_method_count_0_1542921130', '5', 'no'),
(5122, '_transient_timeout_wcmp_179.180.168.54', '1548114146', 'no'),
(5123, '_transient_wcmp_179.180.168.54', 'O:8:\"stdClass\":14:{s:2:\"as\";s:30:\"AS18881 TELEFÔNICA BRASIL S.A\";s:4:\"city\";s:14:\"Florianópolis\";s:7:\"country\";s:6:\"Brazil\";s:11:\"countryCode\";s:2:\"BR\";s:3:\"isp\";s:4:\"Vivo\";s:3:\"lat\";d:-27.590399999999998925659383530728518962860107421875;s:3:\"lon\";d:-48.5758000000000009777068044058978557586669921875;s:3:\"org\";s:4:\"Vivo\";s:5:\"query\";s:14:\"179.180.168.54\";s:6:\"region\";s:2:\"SC\";s:10:\"regionName\";s:14:\"Santa Catarina\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:17:\"America/Sao_Paulo\";s:3:\"zip\";s:5:\"88000\";}', 'no'),
(5115, 'woocommerce_stripe_settings', 'a:23:{s:7:\"enabled\";s:3:\"yes\";s:5:\"title\";s:28:\"Cartão de crédito (Stripe)\";s:11:\"description\";s:42:\"Pague com cartão de crédito pelo Stripe.\";s:7:\"webhook\";s:0:\"\";s:8:\"testmode\";s:3:\"yes\";s:20:\"test_publishable_key\";s:32:\"pk_test_U1ru8mcGxFx9q2MOgcLO0bWb\";s:15:\"test_secret_key\";s:32:\"sk_test_Rn9xl0fPmxKJDzuefCBXI3gn\";s:15:\"publishable_key\";s:0:\"\";s:10:\"secret_key\";s:0:\"\";s:14:\"inline_cc_form\";s:2:\"no\";s:20:\"statement_descriptor\";s:0:\"\";s:7:\"capture\";s:3:\"yes\";s:14:\"three_d_secure\";s:3:\"yes\";s:15:\"stripe_checkout\";s:2:\"no\";s:21:\"stripe_checkout_image\";s:0:\"\";s:27:\"stripe_checkout_description\";s:0:\"\";s:15:\"payment_request\";s:3:\"yes\";s:27:\"payment_request_button_type\";s:3:\"buy\";s:28:\"payment_request_button_theme\";s:4:\"dark\";s:29:\"payment_request_button_height\";s:2:\"44\";s:11:\"saved_cards\";s:2:\"no\";s:7:\"logging\";s:2:\"no\";s:20:\"apple_pay_domain_set\";s:3:\"yes\";}', 'yes'),
(5116, 'wc_gateway_ppce_prompt_to_connect', 'PayPal Checkout is almost ready. To get started, <a href=\"https://ederton.xyz/preview/hubsty/wp-admin/admin.php?page=wc-settings&#038;tab=checkout&#038;section=ppec_paypal\">connect your PayPal account</a>.', 'yes'),
(5117, 'woocommerce_gateway_order', 'a:15:{s:4:\"bacs\";i:0;s:6:\"cheque\";i:1;s:3:\"cod\";i:2;s:6:\"paypal\";i:3;s:11:\"ppec_paypal\";i:4;s:6:\"stripe\";i:5;s:11:\"stripe_sepa\";i:6;s:17:\"stripe_bancontact\";i:7;s:13:\"stripe_sofort\";i:8;s:14:\"stripe_giropay\";i:9;s:10:\"stripe_eps\";i:10;s:12:\"stripe_ideal\";i:11;s:10:\"stripe_p24\";i:12;s:13:\"stripe_alipay\";i:13;s:17:\"stripe_multibanco\";i:14;}', 'yes'),
(5119, '_transient_timeout_wcmp_64.233.172.163', '1548107445', 'no'),
(5120, '_transient_wcmp_64.233.172.163', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:39.04379999999999739657141617499291896820068359375;s:3:\"lon\";d:-77.4873999999999938381733954884111881256103515625;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:14:\"64.233.172.163\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(5127, '_site_transient_timeout_browser_45042d96ffcb6365f0c618982bb5a7ff', '1543535869', 'no'),
(5128, '_site_transient_browser_45042d96ffcb6365f0c618982bb5a7ff', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"70.0.3538.102\";s:8:\"platform\";s:9:\"Macintosh\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(5172, '_transient_is_multi_author', '0', 'yes'),
(5173, '_transient_timeout_wcmp_66.249.83.32', '1548118572', 'no'),
(5174, '_transient_wcmp_66.249.83.32', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:13:\"House Springs\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:38.4131000000000000227373675443232059478759765625;s:3:\"lon\";d:-90.5575000000000045474735088646411895751953125;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:12:\"66.249.83.32\";s:6:\"region\";s:2:\"MO\";s:10:\"regionName\";s:8:\"Missouri\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:15:\"America/Chicago\";s:3:\"zip\";s:5:\"63051\";}', 'no'),
(5231, '_transient_timeout_wcmp_64.233.172.167', '1548235259', 'no'),
(5232, '_transient_wcmp_64.233.172.167', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:7:\"Ashburn\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:39.04379999999999739657141617499291896820068359375;s:3:\"lon\";d:-77.4873999999999938381733954884111881256103515625;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:14:\"64.233.172.167\";s:6:\"region\";s:2:\"VA\";s:10:\"regionName\";s:8:\"Virginia\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:16:\"America/New_York\";s:3:\"zip\";s:5:\"20149\";}', 'no'),
(5337, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1543344896;s:7:\"checked\";a:7:{s:15:\"m2distribuidora\";s:5:\"2.3.2\";s:18:\"storefront - Copia\";s:5:\"2.3.2\";s:10:\"storefront\";s:5:\"2.3.2\";s:13:\"storefront___\";s:5:\"2.3.2\";s:13:\"twentyfifteen\";s:3:\"2.0\";s:15:\"twentyseventeen\";s:3:\"1.6\";s:13:\"twentysixteen\";s:3:\"1.5\";}s:8:\"response\";a:2:{s:10:\"storefront\";a:4:{s:5:\"theme\";s:10:\"storefront\";s:11:\"new_version\";s:5:\"2.3.5\";s:3:\"url\";s:40:\"https://wordpress.org/themes/storefront/\";s:7:\"package\";s:58:\"https://downloads.wordpress.org/theme/storefront.2.3.5.zip\";}s:15:\"twentyseventeen\";a:4:{s:5:\"theme\";s:15:\"twentyseventeen\";s:11:\"new_version\";s:3:\"1.7\";s:3:\"url\";s:45:\"https://wordpress.org/themes/twentyseventeen/\";s:7:\"package\";s:61:\"https://downloads.wordpress.org/theme/twentyseventeen.1.7.zip\";}}s:12:\"translations\";a:0:{}}', 'no'),
(5272, '_transient_timeout_wcmp_66.249.83.35', '1548342491', 'no'),
(5273, '_transient_wcmp_66.249.83.35', 'O:8:\"stdClass\":14:{s:2:\"as\";s:18:\"AS15169 Google LLC\";s:4:\"city\";s:13:\"House Springs\";s:7:\"country\";s:13:\"United States\";s:11:\"countryCode\";s:2:\"US\";s:3:\"isp\";s:12:\"Google Proxy\";s:3:\"lat\";d:38.4131000000000000227373675443232059478759765625;s:3:\"lon\";d:-90.5575000000000045474735088646411895751953125;s:3:\"org\";s:12:\"Google Proxy\";s:5:\"query\";s:12:\"66.249.83.35\";s:6:\"region\";s:2:\"MO\";s:10:\"regionName\";s:8:\"Missouri\";s:6:\"status\";s:7:\"success\";s:8:\"timezone\";s:15:\"America/Chicago\";s:3:\"zip\";s:5:\"63051\";}', 'no');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pmxi_files`
--

CREATE TABLE `wp_pmxi_files` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_pmxi_files`
--

INSERT INTO `wp_pmxi_files` (`id`, `import_id`, `name`, `path`, `registered_on`) VALUES
(2, 1, 'Planilha_Marketplace_Trevi_2.xlsx', '/wpallimport/uploads/ec738db271ec13ee6978f9db57eb28bb/Planilha_Marketplace_Trevi_2.xml', '2018-08-21 02:31:58'),
(3, 2, 'Planilha_Marketplace_Trevi_planilha_ajustada.csv', '/wpallimport/uploads/d0ec27fb6d49cb86a6fe18fe683daca0/Planilha_Marketplace_Trevi_planilha_ajustada.xml', '2018-08-21 23:47:37'),
(4, 3, 'Planilha_Marketplace_Trevi_planilha_ajustada.csv', '/wpallimport/uploads/03a3fed18abeb2e760b3453fdff26cf9/Planilha_Marketplace_Trevi_planilha_ajustada.xml', '2018-08-21 23:49:19'),
(5, 4, 'Planilha_Marketplace_Trevi_planilha_ajustada_2.csv', '/wpallimport/uploads/a2add8fd22b4ae0bec16bb3f5712de82/Planilha_Marketplace_Trevi_planilha_ajustada_2.xml', '2018-09-27 01:37:47');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pmxi_history`
--

CREATE TABLE `wp_pmxi_history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('manual','processing','trigger','continue','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `time_run` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `summary` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_pmxi_history`
--

INSERT INTO `wp_pmxi_history` (`id`, `import_id`, `type`, `time_run`, `date`, `summary`) VALUES
(1, 1, 'manual', '402', '2018-08-21 02:31:58', '272 Produtos created 54 updated 0 deleted 0 skipped');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pmxi_images`
--

CREATE TABLE `wp_pmxi_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `attachment_id` bigint(20) UNSIGNED NOT NULL,
  `image_url` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image_filename` varchar(600) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_pmxi_images`
--

INSERT INTO `wp_pmxi_images` (`id`, `attachment_id`, `image_url`, `image_filename`) VALUES
(1, 475, '', 'MG_3871.jpg'),
(2, 476, '', '2.jpg'),
(3, 477, '', '3.jpg'),
(4, 478, '', '4.jpg'),
(5, 479, '', '5.jpg'),
(6, 480, '', '6.jpg'),
(7, 489, '', '5.jpg'),
(8, 490, '', 'MG_3871.jpg'),
(9, 491, '', '2.jpg'),
(10, 492, '', '3.jpg'),
(11, 493, '', '4.jpg'),
(12, 494, '', '6.jpg'),
(13, 497, '', 'img-page-11.jpg'),
(14, 499, '', 'user-1.jpg'),
(15, 512, '', 'cat_mini_market.jpg'),
(16, 513, '', 'cat_coffee_shop.jpg'),
(17, 514, '', 'cat_delivery.jpg'),
(18, 515, '', 'cat_restaurant.jpg'),
(19, 516, '', 'cat_catering.jpg'),
(20, 517, '', 'cat_bakery.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pmxi_imports`
--

CREATE TABLE `wp_pmxi_imports` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `parent_import_id` bigint(20) NOT NULL DEFAULT 0,
  `name` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `friendly_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `feed_type` enum('xml','csv','zip','gz','') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `xpath` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registered_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `root_element` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `processing` tinyint(1) NOT NULL DEFAULT 0,
  `executing` tinyint(1) NOT NULL DEFAULT 0,
  `triggered` tinyint(1) NOT NULL DEFAULT 0,
  `queue_chunk_number` bigint(20) NOT NULL DEFAULT 0,
  `first_import` timestamp NOT NULL DEFAULT current_timestamp(),
  `count` bigint(20) NOT NULL DEFAULT 0,
  `imported` bigint(20) NOT NULL DEFAULT 0,
  `created` bigint(20) NOT NULL DEFAULT 0,
  `updated` bigint(20) NOT NULL DEFAULT 0,
  `skipped` bigint(20) NOT NULL DEFAULT 0,
  `deleted` bigint(20) NOT NULL DEFAULT 0,
  `canceled` tinyint(1) NOT NULL DEFAULT 0,
  `canceled_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `failed` tinyint(1) NOT NULL DEFAULT 0,
  `failed_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `settings_update_on` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `last_activity` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `iteration` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_pmxi_imports`
--

INSERT INTO `wp_pmxi_imports` (`id`, `parent_import_id`, `name`, `friendly_name`, `type`, `feed_type`, `path`, `xpath`, `options`, `registered_on`, `root_element`, `processing`, `executing`, `triggered`, `queue_chunk_number`, `first_import`, `count`, `imported`, `created`, `updated`, `skipped`, `deleted`, `canceled`, `canceled_on`, `failed`, `failed_on`, `settings_update_on`, `last_activity`, `iteration`) VALUES
(1, 0, 'Planilha_Marketplace_Trevi_2.xlsx', '', 'upload', '', '/wpallimport/uploads/ec738db271ec13ee6978f9db57eb28bb/Planilha_Marketplace_Trevi_2.xlsx', '/node', 'a:392:{s:4:\"type\";s:4:\"post\";s:21:\"is_override_post_type\";i:0;s:15:\"post_type_xpath\";s:0:\"\";s:8:\"deligate\";s:0:\"\";s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:7:\"product\";s:14:\"featured_delim\";s:1:\",\";s:10:\"atch_delim\";s:1:\",\";s:25:\"is_search_existing_attach\";s:1:\"0\";s:15:\"post_taxonomies\";a:1:{s:11:\"product_cat\";s:185:\"[{\"item_id\":\"1\",\"left\":2,\"right\":5,\"parent_id\":null,\"xpath\":\"{categoria[1]}\",\"assign\":true},{\"item_id\":\"2\",\"left\":3,\"right\":4,\"parent_id\":\"1\",\"xpath\":\"{subcategoria[1]}\",\"assign\":true}]\";}s:6:\"parent\";i:0;s:23:\"is_multiple_page_parent\";s:3:\"yes\";s:18:\"single_page_parent\";s:0:\"\";s:5:\"order\";s:1:\"0\";s:6:\"status\";s:7:\"publish\";s:13:\"page_template\";s:7:\"default\";s:25:\"is_multiple_page_template\";s:3:\"yes\";s:20:\"single_page_template\";s:0:\"\";s:15:\"page_taxonomies\";a:0:{}s:9:\"date_type\";s:8:\"specific\";s:4:\"date\";s:3:\"now\";s:10:\"date_start\";s:3:\"now\";s:8:\"date_end\";s:3:\"now\";s:11:\"custom_name\";a:0:{}s:12:\"custom_value\";a:0:{}s:13:\"custom_format\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:14:\"custom_mapping\";a:0:{}s:17:\"serialized_values\";a:2:{i:0;s:7:\"[\"\",\"\"]\";i:1;s:7:\"[\"\",\"\"]\";}s:20:\"custom_mapping_rules\";a:2:{i:0;s:2:\"[]\";i:1;s:2:\"[]\";}s:14:\"comment_status\";s:4:\"open\";s:20:\"comment_status_xpath\";s:0:\"\";s:11:\"ping_status\";s:4:\"open\";s:17:\"ping_status_xpath\";s:0:\"\";s:12:\"create_draft\";s:2:\"no\";s:6:\"author\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:9:\"post_slug\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:19:\"is_import_specified\";s:1:\"0\";s:16:\"import_specified\";s:0:\"\";s:16:\"is_delete_source\";i:0;s:8:\"is_cloak\";i:0;s:10:\"unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:14:\"tmp_unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:9:\"feed_type\";s:4:\"auto\";s:22:\"search_existing_images\";s:1:\"1\";s:18:\"create_new_records\";s:1:\"1\";s:17:\"is_delete_missing\";s:1:\"0\";s:20:\"set_missing_to_draft\";s:1:\"0\";s:20:\"is_update_missing_cf\";s:1:\"0\";s:22:\"update_missing_cf_name\";s:0:\"\";s:23:\"update_missing_cf_value\";s:0:\"\";s:20:\"is_keep_former_posts\";s:2:\"no\";s:16:\"is_update_status\";s:1:\"1\";s:17:\"is_update_content\";s:1:\"1\";s:15:\"is_update_title\";s:1:\"1\";s:14:\"is_update_slug\";s:1:\"1\";s:17:\"is_update_excerpt\";s:1:\"1\";s:20:\"is_update_categories\";s:1:\"1\";s:16:\"is_update_author\";s:1:\"1\";s:24:\"is_update_comment_status\";s:1:\"1\";s:19:\"is_update_post_type\";s:1:\"1\";s:23:\"update_categories_logic\";s:11:\"full_update\";s:15:\"taxonomies_list\";s:1:\"0\";s:20:\"taxonomies_only_list\";s:0:\"\";s:22:\"taxonomies_except_list\";s:0:\"\";s:21:\"is_update_attachments\";s:1:\"1\";s:16:\"is_update_images\";s:1:\"1\";s:19:\"update_images_logic\";s:11:\"full_update\";s:15:\"is_update_dates\";s:1:\"1\";s:20:\"is_update_menu_order\";s:1:\"1\";s:16:\"is_update_parent\";s:1:\"1\";s:19:\"is_keep_attachments\";s:1:\"0\";s:12:\"is_keep_imgs\";s:1:\"0\";s:20:\"do_not_remove_images\";s:1:\"1\";s:23:\"is_update_custom_fields\";s:1:\"1\";s:26:\"update_custom_fields_logic\";s:11:\"full_update\";s:18:\"custom_fields_list\";s:1:\"0\";s:23:\"custom_fields_only_list\";s:0:\"\";s:25:\"custom_fields_except_list\";s:0:\"\";s:18:\"duplicate_matching\";s:4:\"auto\";s:19:\"duplicate_indicator\";s:5:\"title\";s:21:\"custom_duplicate_name\";s:0:\"\";s:22:\"custom_duplicate_value\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:12:\"is_scheduled\";s:0:\"\";s:16:\"scheduled_period\";s:0:\"\";s:13:\"friendly_name\";s:0:\"\";s:19:\"records_per_request\";s:2:\"20\";s:24:\"auto_records_per_request\";i:0;s:18:\"auto_rename_images\";s:1:\"0\";s:25:\"auto_rename_images_suffix\";s:0:\"\";s:11:\"images_name\";s:8:\"filename\";s:11:\"post_format\";s:8:\"standard\";s:17:\"post_format_xpath\";s:0:\"\";s:8:\"encoding\";s:5:\"UTF-8\";s:9:\"delimiter\";b:0;s:16:\"image_meta_title\";s:0:\"\";s:22:\"image_meta_title_delim\";s:1:\",\";s:18:\"image_meta_caption\";s:0:\"\";s:24:\"image_meta_caption_delim\";s:1:\",\";s:14:\"image_meta_alt\";s:0:\"\";s:20:\"image_meta_alt_delim\";s:1:\",\";s:22:\"image_meta_description\";s:0:\"\";s:28:\"image_meta_description_delim\";s:1:\",\";s:34:\"image_meta_description_delim_logic\";s:8:\"separate\";s:12:\"status_xpath\";s:0:\"\";s:15:\"download_images\";s:2:\"no\";s:17:\"converted_options\";s:1:\"1\";s:15:\"update_all_data\";s:3:\"yes\";s:12:\"is_fast_mode\";s:1:\"0\";s:9:\"chuncking\";s:1:\"1\";s:17:\"import_processing\";s:4:\"ajax\";s:26:\"processing_iteration_logic\";s:4:\"auto\";s:28:\"records_per_request_detected\";i:0;s:16:\"save_template_as\";s:1:\"1\";s:5:\"title\";s:28:\"{descriodoprodutocliente[1]}\";s:7:\"content\";s:39:\"<p>{descritivoprodutofornecedor[1]}</p>\";s:4:\"name\";s:15:\"Produto padrão\";s:18:\"is_keep_linebreaks\";s:1:\"1\";s:13:\"is_leave_html\";s:1:\"0\";s:14:\"fix_characters\";i:0;s:9:\"pid_xpath\";s:0:\"\";s:10:\"slug_xpath\";s:0:\"\";s:11:\"title_xpath\";s:0:\"\";s:14:\"featured_image\";s:16:\"{undefined11[1]}\";s:23:\"download_featured_image\";s:0:\"\";s:23:\"download_featured_delim\";s:1:\",\";s:22:\"gallery_featured_image\";s:0:\"\";s:22:\"gallery_featured_delim\";s:1:\",\";s:11:\"is_featured\";s:1:\"1\";s:17:\"is_featured_xpath\";s:0:\"\";s:20:\"set_image_meta_title\";s:1:\"0\";s:22:\"set_image_meta_caption\";s:1:\"0\";s:18:\"set_image_meta_alt\";s:1:\"0\";s:26:\"set_image_meta_description\";s:1:\"0\";s:18:\"auto_set_extension\";s:1:\"0\";s:13:\"new_extension\";s:0:\"\";s:9:\"tax_logic\";a:4:{s:18:\"product_visibility\";s:6:\"single\";s:11:\"product_cat\";s:12:\"hierarchical\";s:11:\"product_tag\";s:6:\"single\";s:14:\"dc_vendor_shop\";s:6:\"single\";}s:10:\"tax_assing\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:20:\"multiple_term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:23:\"tax_hierarchical_assing\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:1:\"1\";s:6:\"NUMBER\";s:1:\"1\";}}s:34:\"tax_hierarchical_last_level_assign\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:16:\"tax_single_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:18:\"tax_multiple_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:22:\"tax_hierarchical_xpath\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}s:18:\"tax_multiple_delim\";a:4:{s:18:\"product_visibility\";s:1:\",\";s:11:\"product_cat\";s:1:\",\";s:11:\"product_tag\";s:1:\",\";s:14:\"dc_vendor_shop\";s:1:\",\";}s:22:\"tax_hierarchical_delim\";a:1:{s:11:\"product_cat\";s:1:\">\";}s:25:\"tax_manualhierarchy_delim\";a:1:{s:11:\"product_cat\";s:1:\",\";}s:29:\"tax_hierarchical_logic_entire\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:29:\"tax_hierarchical_logic_manual\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:18:\"tax_enable_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:25:\"tax_is_full_search_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:27:\"tax_is_full_search_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:29:\"tax_assign_to_one_term_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"tax_assign_to_one_term_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"tax_mapping\";a:4:{s:18:\"product_visibility\";s:2:\"[]\";s:11:\"product_cat\";s:2:\"[]\";s:11:\"product_tag\";s:2:\"[]\";s:14:\"dc_vendor_shop\";s:2:\"[]\";}s:17:\"tax_logic_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"is_tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:28:\"tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"|\";}s:12:\"nested_files\";a:0:{}s:17:\"xml_reader_engine\";s:1:\"0\";s:13:\"taxonomy_type\";s:0:\"\";s:15:\"taxonomy_parent\";s:0:\"\";s:13:\"taxonomy_slug\";s:4:\"auto\";s:19:\"taxonomy_slug_xpath\";s:0:\"\";s:15:\"import_img_tags\";s:1:\"0\";s:28:\"search_existing_images_logic\";s:6:\"by_url\";s:24:\"enable_import_scheduling\";s:5:\"false\";s:17:\"scheduling_enable\";s:1:\"0\";s:22:\"scheduling_weekly_days\";s:0:\"\";s:17:\"scheduling_run_on\";s:6:\"weekly\";s:22:\"scheduling_monthly_day\";s:0:\"\";s:16:\"scheduling_times\";a:1:{i:0;s:0:\"\";}s:19:\"scheduling_timezone\";s:17:\"America/Sao_Paulo\";s:24:\"is_multiple_product_type\";s:3:\"yes\";s:21:\"multiple_product_type\";s:6:\"simple\";s:19:\"single_product_type\";s:0:\"\";s:18:\"is_product_virtual\";s:2:\"no\";s:22:\"single_product_virtual\";s:0:\"\";s:23:\"is_product_downloadable\";s:2:\"no\";s:27:\"single_product_downloadable\";s:0:\"\";s:18:\"is_product_enabled\";s:3:\"yes\";s:22:\"single_product_enabled\";s:0:\"\";s:20:\"is_variation_enabled\";s:3:\"yes\";s:24:\"single_variation_enabled\";s:0:\"\";s:19:\"is_product_featured\";s:2:\"no\";s:23:\"single_product_featured\";s:0:\"\";s:21:\"is_product_visibility\";s:7:\"visible\";s:25:\"single_product_visibility\";s:0:\"\";s:18:\"single_product_sku\";s:21:\"{codigofornecedor[1]}\";s:18:\"single_product_url\";s:0:\"\";s:26:\"single_product_button_text\";s:0:\"\";s:28:\"single_product_regular_price\";s:9:\"{preo[1]}\";s:25:\"single_product_sale_price\";s:0:\"\";s:20:\"single_product_files\";s:0:\"\";s:26:\"single_product_files_names\";s:0:\"\";s:29:\"single_product_download_limit\";s:0:\"\";s:30:\"single_product_download_expiry\";s:0:\"\";s:28:\"single_product_download_type\";s:0:\"\";s:30:\"is_multiple_product_tax_status\";s:3:\"yes\";s:27:\"multiple_product_tax_status\";s:4:\"none\";s:25:\"single_product_tax_status\";s:0:\"\";s:29:\"is_multiple_product_tax_class\";s:3:\"yes\";s:26:\"multiple_product_tax_class\";s:0:\"\";s:24:\"single_product_tax_class\";s:0:\"\";s:23:\"is_product_manage_stock\";s:2:\"no\";s:27:\"single_product_manage_stock\";s:0:\"\";s:24:\"single_product_stock_qty\";s:0:\"\";s:20:\"product_stock_status\";s:4:\"auto\";s:27:\"single_product_stock_status\";s:0:\"\";s:24:\"product_allow_backorders\";s:2:\"no\";s:31:\"single_product_allow_backorders\";s:0:\"\";s:25:\"product_sold_individually\";s:2:\"no\";s:32:\"single_product_sold_individually\";s:0:\"\";s:21:\"single_product_weight\";s:0:\"\";s:21:\"single_product_length\";s:0:\"\";s:20:\"single_product_width\";s:0:\"\";s:21:\"single_product_height\";s:0:\"\";s:34:\"is_multiple_product_shipping_class\";s:3:\"yes\";s:31:\"multiple_product_shipping_class\";s:2:\"-1\";s:29:\"single_product_shipping_class\";s:0:\"\";s:28:\"is_multiple_grouping_product\";s:3:\"yes\";s:25:\"multiple_grouping_product\";s:0:\"\";s:23:\"single_grouping_product\";s:0:\"\";s:23:\"single_product_up_sells\";s:0:\"\";s:26:\"single_product_cross_sells\";s:0:\"\";s:14:\"attribute_name\";a:3:{i:0;s:5:\"Corpo\";i:1;s:8:\"Material\";i:2;s:6:\"Volume\";}s:15:\"attribute_value\";a:3:{i:0;s:8:\"{cor[1]}\";i:1;s:13:\"{material[1]}\";i:2;s:11:\"{volume[1]}\";}s:13:\"in_variations\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:10:\"is_visible\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_taxonomy\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:29:\"create_taxonomy_in_not_exists\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_advanced\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:22:\"advanced_in_variations\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:28:\"advanced_in_variations_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:19:\"advanced_is_visible\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:25:\"advanced_is_visible_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:20:\"advanced_is_taxonomy\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:26:\"advanced_is_taxonomy_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:24:\"advanced_is_create_terms\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:30:\"advanced_is_create_terms_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:28:\"single_product_purchase_note\";s:0:\"\";s:25:\"single_product_menu_order\";s:1:\"0\";s:25:\"is_product_enable_reviews\";s:2:\"no\";s:29:\"single_product_enable_reviews\";s:0:\"\";s:17:\"single_product_id\";s:0:\"\";s:24:\"single_product_parent_id\";s:0:\"\";s:36:\"single_product_id_first_is_parent_id\";s:0:\"\";s:44:\"single_product_first_is_parent_id_parent_sku\";s:0:\"\";s:39:\"single_product_id_first_is_parent_title\";s:28:\"{descriodoprodutocliente[1]}\";s:47:\"single_product_first_is_parent_title_parent_sku\";s:0:\"\";s:36:\"single_product_id_first_is_variation\";s:28:\"{descriodoprodutocliente[1]}\";s:8:\"_virtual\";i:0;s:13:\"_downloadable\";i:0;s:24:\"is_regular_price_shedule\";s:1:\"0\";s:28:\"single_sale_price_dates_from\";s:3:\"now\";s:26:\"single_sale_price_dates_to\";s:3:\"now\";s:19:\"product_files_delim\";s:1:\",\";s:25:\"product_files_names_delim\";s:1:\",\";s:15:\"matching_parent\";s:4:\"auto\";s:16:\"parent_indicator\";s:12:\"custom field\";s:28:\"custom_parent_indicator_name\";s:0:\"\";s:29:\"custom_parent_indicator_value\";s:0:\"\";s:28:\"missing_records_stock_status\";s:1:\"0\";s:16:\"variations_xpath\";s:0:\"\";s:17:\"_variable_virtual\";s:0:\"\";s:22:\"_variable_downloadable\";s:0:\"\";s:14:\"variable_stock\";s:0:\"\";s:22:\"variable_regular_price\";s:0:\"\";s:19:\"variable_sale_price\";s:0:\"\";s:30:\"is_variable_sale_price_shedule\";s:1:\"0\";s:30:\"variable_sale_price_dates_from\";s:0:\"\";s:28:\"variable_sale_price_dates_to\";s:0:\"\";s:15:\"variable_weight\";s:0:\"\";s:15:\"variable_length\";s:0:\"\";s:14:\"variable_width\";s:0:\"\";s:15:\"variable_height\";s:0:\"\";s:23:\"variable_shipping_class\";s:0:\"\";s:18:\"variable_tax_class\";s:0:\"\";s:19:\"variable_file_paths\";s:0:\"\";s:19:\"variable_file_names\";s:0:\"\";s:23:\"variable_download_limit\";s:0:\"\";s:24:\"variable_download_expiry\";s:0:\"\";s:27:\"is_variable_product_virtual\";s:2:\"no\";s:32:\"is_variable_product_manage_stock\";s:2:\"no\";s:43:\"is_multiple_variable_product_shipping_class\";s:3:\"yes\";s:40:\"multiple_variable_product_shipping_class\";s:2:\"-1\";s:38:\"single_variable_product_shipping_class\";s:0:\"\";s:38:\"is_multiple_variable_product_tax_class\";s:3:\"yes\";s:35:\"multiple_variable_product_tax_class\";s:6:\"parent\";s:33:\"single_variable_product_tax_class\";s:0:\"\";s:21:\"variable_stock_status\";s:7:\"instock\";s:28:\"single_variable_stock_status\";s:0:\"\";s:25:\"variable_allow_backorders\";s:2:\"no\";s:32:\"single_variable_allow_backorders\";s:0:\"\";s:32:\"is_variable_product_downloadable\";s:2:\"no\";s:36:\"single_variable_product_downloadable\";s:0:\"\";s:23:\"variable_attribute_name\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"variable_attribute_value\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:22:\"variable_in_variations\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:19:\"variable_is_visible\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:20:\"variable_is_taxonomy\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:38:\"variable_create_taxonomy_in_not_exists\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:28:\"variable_product_files_delim\";s:1:\",\";s:34:\"variable_product_files_names_delim\";s:1:\",\";s:14:\"variable_image\";s:0:\"\";s:12:\"variable_sku\";s:0:\"\";s:27:\"is_variable_product_enabled\";s:3:\"yes\";s:31:\"single_variable_product_enabled\";s:0:\"\";s:19:\"link_all_variations\";s:1:\"0\";s:25:\"variable_stock_use_parent\";s:1:\"0\";s:33:\"variable_regular_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_dates_use_parent\";s:1:\"0\";s:26:\"variable_weight_use_parent\";s:1:\"0\";s:31:\"single_variable_product_virtual\";s:0:\"\";s:42:\"single_variable_product_virtual_use_parent\";s:1:\"0\";s:36:\"single_variable_product_manage_stock\";s:0:\"\";s:47:\"single_variable_product_manage_stock_use_parent\";s:1:\"0\";s:30:\"variable_dimensions_use_parent\";s:1:\"0\";s:25:\"variable_image_use_parent\";s:1:\"0\";s:49:\"single_variable_product_shipping_class_use_parent\";s:1:\"0\";s:44:\"single_variable_product_tax_class_use_parent\";s:1:\"0\";s:47:\"single_variable_product_downloadable_use_parent\";s:1:\"0\";s:34:\"variable_download_limit_use_parent\";s:1:\"0\";s:35:\"variable_download_expiry_use_parent\";s:1:\"0\";s:36:\"single_product_variation_description\";s:0:\"\";s:20:\"variable_description\";s:0:\"\";s:31:\"variable_description_use_parent\";s:1:\"0\";s:15:\"first_is_parent\";s:3:\"yes\";s:28:\"single_product_whosale_price\";s:0:\"\";s:22:\"variable_whosale_price\";s:0:\"\";s:33:\"variable_whosale_price_use_parent\";i:0;s:27:\"disable_auto_sku_generation\";s:1:\"0\";s:21:\"is_default_attributes\";s:1:\"0\";s:23:\"default_attributes_type\";s:5:\"first\";s:20:\"disable_sku_matching\";s:1:\"1\";s:21:\"disable_prepare_price\";s:1:\"1\";s:27:\"prepare_price_to_woo_format\";s:1:\"0\";s:25:\"convert_decimal_separator\";s:1:\"1\";s:18:\"grouping_indicator\";s:5:\"xpath\";s:30:\"custom_grouping_indicator_name\";s:0:\"\";s:31:\"custom_grouping_indicator_value\";s:0:\"\";s:22:\"is_update_product_type\";s:1:\"1\";s:19:\"make_simple_product\";s:1:\"1\";s:23:\"variable_sku_add_parent\";s:1:\"0\";s:16:\"set_parent_stock\";s:1:\"0\";s:35:\"single_product_regular_price_adjust\";s:0:\"\";s:40:\"single_product_regular_price_adjust_type\";s:1:\"%\";s:32:\"single_product_sale_price_adjust\";s:0:\"\";s:37:\"single_product_sale_price_adjust_type\";s:1:\"%\";s:20:\"is_update_attributes\";s:1:\"1\";s:23:\"update_attributes_logic\";s:11:\"full_update\";s:15:\"attributes_list\";s:1:\"0\";s:20:\"attributes_only_list\";s:0:\"\";s:22:\"attributes_except_list\";s:0:\"\";s:33:\"is_variation_product_manage_stock\";s:2:\"no\";s:37:\"single_variation_product_manage_stock\";s:0:\"\";s:15:\"variation_stock\";s:0:\"\";s:22:\"variation_stock_status\";s:4:\"auto\";s:30:\"put_variation_image_to_gallery\";s:1:\"0\";s:34:\"import_additional_variation_images\";i:0;s:29:\"single_variation_stock_status\";s:0:\"\";s:10:\"pmwi_order\";a:88:{s:6:\"status\";s:10:\"wc-pending\";s:12:\"status_xpath\";s:0:\"\";s:4:\"date\";s:3:\"now\";s:14:\"billing_source\";s:5:\"guest\";s:23:\"billing_source_match_by\";s:8:\"username\";s:23:\"billing_source_username\";s:0:\"\";s:20:\"billing_source_email\";s:0:\"\";s:17:\"billing_source_id\";s:0:\"\";s:22:\"billing_source_cf_name\";s:0:\"\";s:23:\"billing_source_cf_value\";s:0:\"\";s:18:\"billing_first_name\";s:0:\"\";s:17:\"billing_last_name\";s:0:\"\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:0:\"\";s:13:\"billing_state\";s:0:\"\";s:13:\"billing_email\";s:0:\"\";s:13:\"billing_phone\";s:0:\"\";s:24:\"guest_billing_first_name\";s:0:\"\";s:23:\"guest_billing_last_name\";s:0:\"\";s:21:\"guest_billing_company\";s:0:\"\";s:23:\"guest_billing_address_1\";s:0:\"\";s:23:\"guest_billing_address_2\";s:0:\"\";s:18:\"guest_billing_city\";s:0:\"\";s:22:\"guest_billing_postcode\";s:0:\"\";s:21:\"guest_billing_country\";s:0:\"\";s:19:\"guest_billing_state\";s:0:\"\";s:19:\"guest_billing_email\";s:0:\"\";s:19:\"guest_billing_phone\";s:0:\"\";s:17:\"is_guest_matching\";i:0;s:15:\"shipping_source\";s:4:\"copy\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:14:\"shipping_email\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:17:\"copy_from_billing\";i:0;s:22:\"customer_provided_note\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:20:\"payment_method_xpath\";s:0:\"\";s:14:\"transaction_id\";s:0:\"\";s:22:\"products_repeater_mode\";s:3:\"csv\";s:32:\"products_repeater_mode_separator\";s:1:\"|\";s:30:\"products_repeater_mode_foreach\";s:0:\"\";s:15:\"products_source\";s:8:\"existing\";s:8:\"products\";a:0:{}s:15:\"manual_products\";a:0:{}s:18:\"fees_repeater_mode\";s:3:\"csv\";s:28:\"fees_repeater_mode_separator\";s:1:\"|\";s:26:\"fees_repeater_mode_foreach\";s:0:\"\";s:4:\"fees\";a:0:{}s:21:\"coupons_repeater_mode\";s:3:\"csv\";s:31:\"coupons_repeater_mode_separator\";s:1:\"|\";s:29:\"coupons_repeater_mode_foreach\";s:0:\"\";s:7:\"coupons\";a:0:{}s:22:\"shipping_repeater_mode\";s:3:\"csv\";s:32:\"shipping_repeater_mode_separator\";s:1:\"|\";s:30:\"shipping_repeater_mode_foreach\";s:0:\"\";s:8:\"shipping\";a:0:{}s:19:\"taxes_repeater_mode\";s:3:\"csv\";s:29:\"taxes_repeater_mode_separator\";s:1:\"|\";s:27:\"taxes_repeater_mode_foreach\";s:0:\"\";s:5:\"taxes\";a:0:{}s:17:\"order_total_logic\";s:4:\"auto\";s:17:\"order_total_xpath\";s:0:\"\";s:19:\"order_refund_amount\";s:0:\"\";s:19:\"order_refund_reason\";s:0:\"\";s:17:\"order_refund_date\";s:3:\"now\";s:26:\"order_refund_issued_source\";s:8:\"existing\";s:28:\"order_refund_issued_match_by\";s:8:\"username\";s:28:\"order_refund_issued_username\";s:0:\"\";s:25:\"order_refund_issued_email\";s:0:\"\";s:27:\"order_refund_issued_cf_name\";s:0:\"\";s:28:\"order_refund_issued_cf_value\";s:0:\"\";s:22:\"order_refund_issued_id\";s:0:\"\";s:19:\"notes_repeater_mode\";s:3:\"csv\";s:29:\"notes_repeater_mode_separator\";s:1:\"|\";s:27:\"notes_repeater_mode_foreach\";s:0:\"\";s:5:\"notes\";a:0:{}}s:25:\"is_update_billing_details\";i:1;s:26:\"is_update_shipping_details\";i:1;s:17:\"is_update_payment\";i:1;s:15:\"is_update_notes\";i:1;s:18:\"is_update_products\";i:1;s:21:\"update_products_logic\";s:11:\"full_update\";s:14:\"is_update_fees\";i:1;s:17:\"is_update_coupons\";i:1;s:18:\"is_update_shipping\";i:1;s:15:\"is_update_taxes\";i:1;s:17:\"is_update_refunds\";i:1;s:15:\"is_update_total\";i:1;s:31:\"do_not_send_order_notifications\";i:1;s:26:\"is_update_advanced_options\";s:1:\"1\";s:28:\"is_update_catalog_visibility\";s:1:\"1\";s:25:\"is_update_featured_status\";s:1:\"1\";s:3:\"acf\";a:9:{i:92;s:1:\"0\";i:153;s:1:\"0\";i:95;s:1:\"0\";i:102;s:1:\"0\";i:110;s:1:\"0\";i:116;s:1:\"0\";i:124;s:1:\"0\";i:129;s:1:\"0\";i:134;s:1:\"0\";}s:6:\"fields\";a:0:{}s:23:\"is_multiple_field_value\";a:0:{}s:14:\"multiple_value\";a:0:{}s:16:\"fields_delimiter\";a:0:{}s:13:\"is_update_acf\";s:1:\"1\";s:16:\"update_acf_logic\";s:11:\"full_update\";s:8:\"acf_list\";s:1:\"0\";s:13:\"acf_only_list\";s:0:\"\";s:15:\"acf_except_list\";s:0:\"\";}', '2018-08-21 02:38:40', 'node', 0, 0, 0, 0, '2018-08-21 02:04:38', 326, 326, 272, 54, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '2018-08-21 02:38:37', 1),
(2, 0, 'Planilha_Marketplace_Trevi_planilha_ajustada.csv', '', 'upload', '', '/wpallimport/uploads/d0ec27fb6d49cb86a6fe18fe683daca0/Planilha_Marketplace_Trevi_planilha_ajustada.csv', '/node', 'a:392:{s:4:\"type\";s:4:\"post\";s:21:\"is_override_post_type\";i:0;s:15:\"post_type_xpath\";s:0:\"\";s:8:\"deligate\";s:0:\"\";s:11:\"wizard_type\";s:8:\"matching\";s:11:\"custom_type\";s:7:\"product\";s:14:\"featured_delim\";s:1:\",\";s:10:\"atch_delim\";s:1:\",\";s:25:\"is_search_existing_attach\";s:1:\"0\";s:15:\"post_taxonomies\";a:1:{s:11:\"product_cat\";s:185:\"[{\"item_id\":\"1\",\"left\":2,\"right\":5,\"parent_id\":null,\"xpath\":\"{categoria[1]}\",\"assign\":true},{\"item_id\":\"2\",\"left\":3,\"right\":4,\"parent_id\":\"1\",\"xpath\":\"{subcategoria[1]}\",\"assign\":true}]\";}s:6:\"parent\";i:0;s:23:\"is_multiple_page_parent\";s:3:\"yes\";s:18:\"single_page_parent\";s:0:\"\";s:5:\"order\";s:1:\"0\";s:6:\"status\";s:7:\"publish\";s:13:\"page_template\";s:7:\"default\";s:25:\"is_multiple_page_template\";s:3:\"yes\";s:20:\"single_page_template\";s:0:\"\";s:15:\"page_taxonomies\";a:0:{}s:9:\"date_type\";s:8:\"specific\";s:4:\"date\";s:3:\"now\";s:10:\"date_start\";s:3:\"now\";s:8:\"date_end\";s:3:\"now\";s:11:\"custom_name\";a:0:{}s:12:\"custom_value\";a:0:{}s:13:\"custom_format\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:14:\"custom_mapping\";a:0:{}s:17:\"serialized_values\";a:2:{i:0;s:7:\"[\"\",\"\"]\";i:1;s:7:\"[\"\",\"\"]\";}s:20:\"custom_mapping_rules\";a:2:{i:0;s:2:\"[]\";i:1;s:2:\"[]\";}s:14:\"comment_status\";s:4:\"open\";s:20:\"comment_status_xpath\";s:0:\"\";s:11:\"ping_status\";s:4:\"open\";s:17:\"ping_status_xpath\";s:0:\"\";s:12:\"create_draft\";s:2:\"no\";s:6:\"author\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:9:\"post_slug\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:19:\"is_import_specified\";s:1:\"0\";s:16:\"import_specified\";s:0:\"\";s:16:\"is_delete_source\";i:0;s:8:\"is_cloak\";i:0;s:10:\"unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:14:\"tmp_unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:9:\"feed_type\";s:4:\"auto\";s:22:\"search_existing_images\";s:1:\"1\";s:18:\"create_new_records\";s:1:\"1\";s:17:\"is_delete_missing\";s:1:\"0\";s:20:\"set_missing_to_draft\";s:1:\"0\";s:20:\"is_update_missing_cf\";s:1:\"0\";s:22:\"update_missing_cf_name\";s:0:\"\";s:23:\"update_missing_cf_value\";s:0:\"\";s:20:\"is_keep_former_posts\";s:2:\"no\";s:16:\"is_update_status\";s:1:\"1\";s:17:\"is_update_content\";s:1:\"1\";s:15:\"is_update_title\";s:1:\"1\";s:14:\"is_update_slug\";s:1:\"1\";s:17:\"is_update_excerpt\";s:1:\"1\";s:20:\"is_update_categories\";s:1:\"1\";s:16:\"is_update_author\";s:1:\"1\";s:24:\"is_update_comment_status\";s:1:\"1\";s:19:\"is_update_post_type\";s:1:\"1\";s:23:\"update_categories_logic\";s:11:\"full_update\";s:15:\"taxonomies_list\";s:1:\"0\";s:20:\"taxonomies_only_list\";s:0:\"\";s:22:\"taxonomies_except_list\";s:0:\"\";s:21:\"is_update_attachments\";s:1:\"1\";s:16:\"is_update_images\";s:1:\"1\";s:19:\"update_images_logic\";s:11:\"full_update\";s:15:\"is_update_dates\";s:1:\"1\";s:20:\"is_update_menu_order\";s:1:\"1\";s:16:\"is_update_parent\";s:1:\"1\";s:19:\"is_keep_attachments\";s:1:\"0\";s:12:\"is_keep_imgs\";s:1:\"0\";s:20:\"do_not_remove_images\";s:1:\"1\";s:23:\"is_update_custom_fields\";s:1:\"1\";s:26:\"update_custom_fields_logic\";s:11:\"full_update\";s:18:\"custom_fields_list\";s:1:\"0\";s:23:\"custom_fields_only_list\";s:0:\"\";s:25:\"custom_fields_except_list\";s:0:\"\";s:18:\"duplicate_matching\";s:6:\"manual\";s:19:\"duplicate_indicator\";s:5:\"title\";s:21:\"custom_duplicate_name\";s:4:\"_sku\";s:22:\"custom_duplicate_value\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:12:\"is_scheduled\";s:0:\"\";s:16:\"scheduled_period\";s:0:\"\";s:13:\"friendly_name\";s:0:\"\";s:19:\"records_per_request\";s:2:\"20\";s:24:\"auto_records_per_request\";i:0;s:18:\"auto_rename_images\";s:1:\"0\";s:25:\"auto_rename_images_suffix\";s:0:\"\";s:11:\"images_name\";s:8:\"filename\";s:11:\"post_format\";s:8:\"standard\";s:17:\"post_format_xpath\";s:0:\"\";s:8:\"encoding\";s:5:\"UTF-8\";s:9:\"delimiter\";s:1:\",\";s:16:\"image_meta_title\";s:0:\"\";s:22:\"image_meta_title_delim\";s:1:\",\";s:18:\"image_meta_caption\";s:0:\"\";s:24:\"image_meta_caption_delim\";s:1:\",\";s:14:\"image_meta_alt\";s:0:\"\";s:20:\"image_meta_alt_delim\";s:1:\",\";s:22:\"image_meta_description\";s:0:\"\";s:28:\"image_meta_description_delim\";s:1:\",\";s:34:\"image_meta_description_delim_logic\";s:8:\"separate\";s:12:\"status_xpath\";s:0:\"\";s:15:\"download_images\";s:2:\"no\";s:17:\"converted_options\";s:1:\"1\";s:15:\"update_all_data\";s:3:\"yes\";s:12:\"is_fast_mode\";s:1:\"0\";s:9:\"chuncking\";s:1:\"1\";s:17:\"import_processing\";s:4:\"ajax\";s:26:\"processing_iteration_logic\";s:4:\"auto\";s:28:\"records_per_request_detected\";i:0;s:16:\"save_template_as\";s:1:\"1\";s:5:\"title\";s:28:\"{descriodoprodutocliente[1]}\";s:7:\"content\";s:32:\"{descritivoprodutofornecedor[1]}\";s:4:\"name\";s:15:\"Produto padrão\";s:18:\"is_keep_linebreaks\";s:1:\"1\";s:13:\"is_leave_html\";s:1:\"0\";s:14:\"fix_characters\";i:0;s:9:\"pid_xpath\";s:0:\"\";s:10:\"slug_xpath\";s:0:\"\";s:11:\"title_xpath\";s:0:\"\";s:14:\"featured_image\";s:16:\"{undefined11[1]}\";s:23:\"download_featured_image\";s:0:\"\";s:23:\"download_featured_delim\";s:1:\",\";s:22:\"gallery_featured_image\";s:0:\"\";s:22:\"gallery_featured_delim\";s:1:\",\";s:11:\"is_featured\";s:1:\"1\";s:17:\"is_featured_xpath\";s:0:\"\";s:20:\"set_image_meta_title\";s:1:\"0\";s:22:\"set_image_meta_caption\";s:1:\"0\";s:18:\"set_image_meta_alt\";s:1:\"0\";s:26:\"set_image_meta_description\";s:1:\"0\";s:18:\"auto_set_extension\";s:1:\"0\";s:13:\"new_extension\";s:0:\"\";s:9:\"tax_logic\";a:4:{s:18:\"product_visibility\";s:6:\"single\";s:11:\"product_cat\";s:12:\"hierarchical\";s:11:\"product_tag\";s:6:\"single\";s:14:\"dc_vendor_shop\";s:6:\"single\";}s:10:\"tax_assing\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:20:\"multiple_term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:23:\"tax_hierarchical_assing\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:1:\"1\";s:6:\"NUMBER\";s:1:\"1\";}}s:34:\"tax_hierarchical_last_level_assign\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:16:\"tax_single_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:18:\"tax_multiple_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:22:\"tax_hierarchical_xpath\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}s:18:\"tax_multiple_delim\";a:4:{s:18:\"product_visibility\";s:1:\",\";s:11:\"product_cat\";s:1:\",\";s:11:\"product_tag\";s:1:\",\";s:14:\"dc_vendor_shop\";s:1:\",\";}s:22:\"tax_hierarchical_delim\";a:1:{s:11:\"product_cat\";s:1:\">\";}s:25:\"tax_manualhierarchy_delim\";a:1:{s:11:\"product_cat\";s:1:\",\";}s:29:\"tax_hierarchical_logic_entire\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:29:\"tax_hierarchical_logic_manual\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:18:\"tax_enable_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:25:\"tax_is_full_search_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:27:\"tax_is_full_search_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:29:\"tax_assign_to_one_term_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"tax_assign_to_one_term_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"tax_mapping\";a:4:{s:18:\"product_visibility\";s:2:\"[]\";s:11:\"product_cat\";s:2:\"[]\";s:11:\"product_tag\";s:2:\"[]\";s:14:\"dc_vendor_shop\";s:2:\"[]\";}s:17:\"tax_logic_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"is_tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:28:\"tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"|\";}s:12:\"nested_files\";a:0:{}s:17:\"xml_reader_engine\";s:1:\"0\";s:13:\"taxonomy_type\";s:0:\"\";s:15:\"taxonomy_parent\";s:0:\"\";s:13:\"taxonomy_slug\";s:4:\"auto\";s:19:\"taxonomy_slug_xpath\";s:0:\"\";s:15:\"import_img_tags\";s:1:\"0\";s:28:\"search_existing_images_logic\";s:6:\"by_url\";s:24:\"enable_import_scheduling\";s:5:\"false\";s:17:\"scheduling_enable\";s:1:\"0\";s:22:\"scheduling_weekly_days\";s:0:\"\";s:17:\"scheduling_run_on\";s:6:\"weekly\";s:22:\"scheduling_monthly_day\";s:0:\"\";s:16:\"scheduling_times\";a:1:{i:0;s:0:\"\";}s:19:\"scheduling_timezone\";s:17:\"America/Sao_Paulo\";s:24:\"is_multiple_product_type\";s:3:\"yes\";s:21:\"multiple_product_type\";s:6:\"simple\";s:19:\"single_product_type\";s:0:\"\";s:18:\"is_product_virtual\";s:2:\"no\";s:22:\"single_product_virtual\";s:0:\"\";s:23:\"is_product_downloadable\";s:2:\"no\";s:27:\"single_product_downloadable\";s:0:\"\";s:18:\"is_product_enabled\";s:3:\"yes\";s:22:\"single_product_enabled\";s:0:\"\";s:20:\"is_variation_enabled\";s:3:\"yes\";s:24:\"single_variation_enabled\";s:0:\"\";s:19:\"is_product_featured\";s:2:\"no\";s:23:\"single_product_featured\";s:0:\"\";s:21:\"is_product_visibility\";s:7:\"visible\";s:25:\"single_product_visibility\";s:0:\"\";s:18:\"single_product_sku\";s:21:\"{codigofornecedor[1]}\";s:18:\"single_product_url\";s:0:\"\";s:26:\"single_product_button_text\";s:0:\"\";s:28:\"single_product_regular_price\";s:9:\"{preo[1]}\";s:25:\"single_product_sale_price\";s:0:\"\";s:20:\"single_product_files\";s:0:\"\";s:26:\"single_product_files_names\";s:0:\"\";s:29:\"single_product_download_limit\";s:0:\"\";s:30:\"single_product_download_expiry\";s:0:\"\";s:28:\"single_product_download_type\";s:0:\"\";s:30:\"is_multiple_product_tax_status\";s:3:\"yes\";s:27:\"multiple_product_tax_status\";s:4:\"none\";s:25:\"single_product_tax_status\";s:0:\"\";s:29:\"is_multiple_product_tax_class\";s:3:\"yes\";s:26:\"multiple_product_tax_class\";s:0:\"\";s:24:\"single_product_tax_class\";s:0:\"\";s:23:\"is_product_manage_stock\";s:2:\"no\";s:27:\"single_product_manage_stock\";s:0:\"\";s:24:\"single_product_stock_qty\";s:0:\"\";s:20:\"product_stock_status\";s:4:\"auto\";s:27:\"single_product_stock_status\";s:0:\"\";s:24:\"product_allow_backorders\";s:2:\"no\";s:31:\"single_product_allow_backorders\";s:0:\"\";s:25:\"product_sold_individually\";s:2:\"no\";s:32:\"single_product_sold_individually\";s:0:\"\";s:21:\"single_product_weight\";s:0:\"\";s:21:\"single_product_length\";s:0:\"\";s:20:\"single_product_width\";s:0:\"\";s:21:\"single_product_height\";s:0:\"\";s:34:\"is_multiple_product_shipping_class\";s:3:\"yes\";s:31:\"multiple_product_shipping_class\";s:2:\"-1\";s:29:\"single_product_shipping_class\";s:0:\"\";s:28:\"is_multiple_grouping_product\";s:3:\"yes\";s:25:\"multiple_grouping_product\";s:0:\"\";s:23:\"single_grouping_product\";s:0:\"\";s:23:\"single_product_up_sells\";s:0:\"\";s:26:\"single_product_cross_sells\";s:0:\"\";s:14:\"attribute_name\";a:3:{i:0;s:5:\"Corpo\";i:1;s:8:\"Material\";i:2;s:6:\"Volume\";}s:15:\"attribute_value\";a:3:{i:0;s:8:\"{cor[1]}\";i:1;s:13:\"{material[1]}\";i:2;s:11:\"{volume[1]}\";}s:13:\"in_variations\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:10:\"is_visible\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_taxonomy\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:29:\"create_taxonomy_in_not_exists\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_advanced\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:22:\"advanced_in_variations\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:28:\"advanced_in_variations_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:19:\"advanced_is_visible\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:25:\"advanced_is_visible_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:20:\"advanced_is_taxonomy\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:26:\"advanced_is_taxonomy_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:24:\"advanced_is_create_terms\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:30:\"advanced_is_create_terms_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:28:\"single_product_purchase_note\";s:0:\"\";s:25:\"single_product_menu_order\";s:1:\"0\";s:25:\"is_product_enable_reviews\";s:2:\"no\";s:29:\"single_product_enable_reviews\";s:0:\"\";s:17:\"single_product_id\";s:0:\"\";s:24:\"single_product_parent_id\";s:0:\"\";s:36:\"single_product_id_first_is_parent_id\";s:0:\"\";s:44:\"single_product_first_is_parent_id_parent_sku\";s:0:\"\";s:39:\"single_product_id_first_is_parent_title\";s:28:\"{descriodoprodutocliente[1]}\";s:47:\"single_product_first_is_parent_title_parent_sku\";s:0:\"\";s:36:\"single_product_id_first_is_variation\";s:28:\"{descriodoprodutocliente[1]}\";s:8:\"_virtual\";i:0;s:13:\"_downloadable\";i:0;s:24:\"is_regular_price_shedule\";s:1:\"0\";s:28:\"single_sale_price_dates_from\";s:3:\"now\";s:26:\"single_sale_price_dates_to\";s:3:\"now\";s:19:\"product_files_delim\";s:1:\",\";s:25:\"product_files_names_delim\";s:1:\",\";s:15:\"matching_parent\";s:4:\"auto\";s:16:\"parent_indicator\";s:12:\"custom field\";s:28:\"custom_parent_indicator_name\";s:0:\"\";s:29:\"custom_parent_indicator_value\";s:0:\"\";s:28:\"missing_records_stock_status\";s:1:\"0\";s:16:\"variations_xpath\";s:0:\"\";s:17:\"_variable_virtual\";s:0:\"\";s:22:\"_variable_downloadable\";s:0:\"\";s:14:\"variable_stock\";s:0:\"\";s:22:\"variable_regular_price\";s:0:\"\";s:19:\"variable_sale_price\";s:0:\"\";s:30:\"is_variable_sale_price_shedule\";s:1:\"0\";s:30:\"variable_sale_price_dates_from\";s:0:\"\";s:28:\"variable_sale_price_dates_to\";s:0:\"\";s:15:\"variable_weight\";s:0:\"\";s:15:\"variable_length\";s:0:\"\";s:14:\"variable_width\";s:0:\"\";s:15:\"variable_height\";s:0:\"\";s:23:\"variable_shipping_class\";s:0:\"\";s:18:\"variable_tax_class\";s:0:\"\";s:19:\"variable_file_paths\";s:0:\"\";s:19:\"variable_file_names\";s:0:\"\";s:23:\"variable_download_limit\";s:0:\"\";s:24:\"variable_download_expiry\";s:0:\"\";s:27:\"is_variable_product_virtual\";s:2:\"no\";s:32:\"is_variable_product_manage_stock\";s:2:\"no\";s:43:\"is_multiple_variable_product_shipping_class\";s:3:\"yes\";s:40:\"multiple_variable_product_shipping_class\";s:2:\"-1\";s:38:\"single_variable_product_shipping_class\";s:0:\"\";s:38:\"is_multiple_variable_product_tax_class\";s:3:\"yes\";s:35:\"multiple_variable_product_tax_class\";s:6:\"parent\";s:33:\"single_variable_product_tax_class\";s:0:\"\";s:21:\"variable_stock_status\";s:7:\"instock\";s:28:\"single_variable_stock_status\";s:0:\"\";s:25:\"variable_allow_backorders\";s:2:\"no\";s:32:\"single_variable_allow_backorders\";s:0:\"\";s:32:\"is_variable_product_downloadable\";s:2:\"no\";s:36:\"single_variable_product_downloadable\";s:0:\"\";s:23:\"variable_attribute_name\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"variable_attribute_value\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:22:\"variable_in_variations\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:19:\"variable_is_visible\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:20:\"variable_is_taxonomy\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:38:\"variable_create_taxonomy_in_not_exists\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:28:\"variable_product_files_delim\";s:1:\",\";s:34:\"variable_product_files_names_delim\";s:1:\",\";s:14:\"variable_image\";s:0:\"\";s:12:\"variable_sku\";s:0:\"\";s:27:\"is_variable_product_enabled\";s:3:\"yes\";s:31:\"single_variable_product_enabled\";s:0:\"\";s:19:\"link_all_variations\";s:1:\"0\";s:25:\"variable_stock_use_parent\";s:1:\"0\";s:33:\"variable_regular_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_dates_use_parent\";s:1:\"0\";s:26:\"variable_weight_use_parent\";s:1:\"0\";s:31:\"single_variable_product_virtual\";s:0:\"\";s:42:\"single_variable_product_virtual_use_parent\";s:1:\"0\";s:36:\"single_variable_product_manage_stock\";s:0:\"\";s:47:\"single_variable_product_manage_stock_use_parent\";s:1:\"0\";s:30:\"variable_dimensions_use_parent\";s:1:\"0\";s:25:\"variable_image_use_parent\";s:1:\"0\";s:49:\"single_variable_product_shipping_class_use_parent\";s:1:\"0\";s:44:\"single_variable_product_tax_class_use_parent\";s:1:\"0\";s:47:\"single_variable_product_downloadable_use_parent\";s:1:\"0\";s:34:\"variable_download_limit_use_parent\";s:1:\"0\";s:35:\"variable_download_expiry_use_parent\";s:1:\"0\";s:36:\"single_product_variation_description\";s:0:\"\";s:20:\"variable_description\";s:0:\"\";s:31:\"variable_description_use_parent\";s:1:\"0\";s:15:\"first_is_parent\";s:3:\"yes\";s:28:\"single_product_whosale_price\";s:0:\"\";s:22:\"variable_whosale_price\";s:0:\"\";s:33:\"variable_whosale_price_use_parent\";i:0;s:27:\"disable_auto_sku_generation\";s:1:\"0\";s:21:\"is_default_attributes\";s:1:\"0\";s:23:\"default_attributes_type\";s:5:\"first\";s:20:\"disable_sku_matching\";s:1:\"1\";s:21:\"disable_prepare_price\";s:1:\"1\";s:27:\"prepare_price_to_woo_format\";s:1:\"0\";s:25:\"convert_decimal_separator\";s:1:\"1\";s:18:\"grouping_indicator\";s:5:\"xpath\";s:30:\"custom_grouping_indicator_name\";s:0:\"\";s:31:\"custom_grouping_indicator_value\";s:0:\"\";s:22:\"is_update_product_type\";s:1:\"1\";s:19:\"make_simple_product\";s:1:\"1\";s:23:\"variable_sku_add_parent\";s:1:\"0\";s:16:\"set_parent_stock\";s:1:\"0\";s:35:\"single_product_regular_price_adjust\";s:0:\"\";s:40:\"single_product_regular_price_adjust_type\";s:1:\"%\";s:32:\"single_product_sale_price_adjust\";s:0:\"\";s:37:\"single_product_sale_price_adjust_type\";s:1:\"%\";s:20:\"is_update_attributes\";s:1:\"1\";s:23:\"update_attributes_logic\";s:11:\"full_update\";s:15:\"attributes_list\";s:1:\"0\";s:20:\"attributes_only_list\";s:0:\"\";s:22:\"attributes_except_list\";s:0:\"\";s:33:\"is_variation_product_manage_stock\";s:2:\"no\";s:37:\"single_variation_product_manage_stock\";s:0:\"\";s:15:\"variation_stock\";s:0:\"\";s:22:\"variation_stock_status\";s:4:\"auto\";s:30:\"put_variation_image_to_gallery\";s:1:\"0\";s:34:\"import_additional_variation_images\";i:0;s:29:\"single_variation_stock_status\";s:0:\"\";s:10:\"pmwi_order\";a:88:{s:6:\"status\";s:10:\"wc-pending\";s:12:\"status_xpath\";s:0:\"\";s:4:\"date\";s:3:\"now\";s:14:\"billing_source\";s:5:\"guest\";s:23:\"billing_source_match_by\";s:8:\"username\";s:23:\"billing_source_username\";s:0:\"\";s:20:\"billing_source_email\";s:0:\"\";s:17:\"billing_source_id\";s:0:\"\";s:22:\"billing_source_cf_name\";s:0:\"\";s:23:\"billing_source_cf_value\";s:0:\"\";s:18:\"billing_first_name\";s:0:\"\";s:17:\"billing_last_name\";s:0:\"\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:0:\"\";s:13:\"billing_state\";s:0:\"\";s:13:\"billing_email\";s:0:\"\";s:13:\"billing_phone\";s:0:\"\";s:24:\"guest_billing_first_name\";s:0:\"\";s:23:\"guest_billing_last_name\";s:0:\"\";s:21:\"guest_billing_company\";s:0:\"\";s:23:\"guest_billing_address_1\";s:0:\"\";s:23:\"guest_billing_address_2\";s:0:\"\";s:18:\"guest_billing_city\";s:0:\"\";s:22:\"guest_billing_postcode\";s:0:\"\";s:21:\"guest_billing_country\";s:0:\"\";s:19:\"guest_billing_state\";s:0:\"\";s:19:\"guest_billing_email\";s:0:\"\";s:19:\"guest_billing_phone\";s:0:\"\";s:17:\"is_guest_matching\";i:0;s:15:\"shipping_source\";s:4:\"copy\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:14:\"shipping_email\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:17:\"copy_from_billing\";i:0;s:22:\"customer_provided_note\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:20:\"payment_method_xpath\";s:0:\"\";s:14:\"transaction_id\";s:0:\"\";s:22:\"products_repeater_mode\";s:3:\"csv\";s:32:\"products_repeater_mode_separator\";s:1:\"|\";s:30:\"products_repeater_mode_foreach\";s:0:\"\";s:15:\"products_source\";s:8:\"existing\";s:8:\"products\";a:0:{}s:15:\"manual_products\";a:0:{}s:18:\"fees_repeater_mode\";s:3:\"csv\";s:28:\"fees_repeater_mode_separator\";s:1:\"|\";s:26:\"fees_repeater_mode_foreach\";s:0:\"\";s:4:\"fees\";a:0:{}s:21:\"coupons_repeater_mode\";s:3:\"csv\";s:31:\"coupons_repeater_mode_separator\";s:1:\"|\";s:29:\"coupons_repeater_mode_foreach\";s:0:\"\";s:7:\"coupons\";a:0:{}s:22:\"shipping_repeater_mode\";s:3:\"csv\";s:32:\"shipping_repeater_mode_separator\";s:1:\"|\";s:30:\"shipping_repeater_mode_foreach\";s:0:\"\";s:8:\"shipping\";a:0:{}s:19:\"taxes_repeater_mode\";s:3:\"csv\";s:29:\"taxes_repeater_mode_separator\";s:1:\"|\";s:27:\"taxes_repeater_mode_foreach\";s:0:\"\";s:5:\"taxes\";a:0:{}s:17:\"order_total_logic\";s:4:\"auto\";s:17:\"order_total_xpath\";s:0:\"\";s:19:\"order_refund_amount\";s:0:\"\";s:19:\"order_refund_reason\";s:0:\"\";s:17:\"order_refund_date\";s:3:\"now\";s:26:\"order_refund_issued_source\";s:8:\"existing\";s:28:\"order_refund_issued_match_by\";s:8:\"username\";s:28:\"order_refund_issued_username\";s:0:\"\";s:25:\"order_refund_issued_email\";s:0:\"\";s:27:\"order_refund_issued_cf_name\";s:0:\"\";s:28:\"order_refund_issued_cf_value\";s:0:\"\";s:22:\"order_refund_issued_id\";s:0:\"\";s:19:\"notes_repeater_mode\";s:3:\"csv\";s:29:\"notes_repeater_mode_separator\";s:1:\"|\";s:27:\"notes_repeater_mode_foreach\";s:0:\"\";s:5:\"notes\";a:0:{}}s:25:\"is_update_billing_details\";i:1;s:26:\"is_update_shipping_details\";i:1;s:17:\"is_update_payment\";i:1;s:15:\"is_update_notes\";i:1;s:18:\"is_update_products\";i:1;s:21:\"update_products_logic\";s:11:\"full_update\";s:14:\"is_update_fees\";i:1;s:17:\"is_update_coupons\";i:1;s:18:\"is_update_shipping\";i:1;s:15:\"is_update_taxes\";i:1;s:17:\"is_update_refunds\";i:1;s:15:\"is_update_total\";i:1;s:31:\"do_not_send_order_notifications\";i:1;s:26:\"is_update_advanced_options\";s:1:\"1\";s:28:\"is_update_catalog_visibility\";s:1:\"1\";s:25:\"is_update_featured_status\";s:1:\"1\";s:3:\"acf\";a:9:{i:92;s:1:\"0\";i:153;s:1:\"0\";i:95;s:1:\"0\";i:102;s:1:\"0\";i:110;s:1:\"0\";i:116;s:1:\"0\";i:124;s:1:\"0\";i:129;s:1:\"0\";i:134;s:1:\"0\";}s:6:\"fields\";a:0:{}s:23:\"is_multiple_field_value\";a:0:{}s:14:\"multiple_value\";a:0:{}s:16:\"fields_delimiter\";a:0:{}s:13:\"is_update_acf\";s:1:\"1\";s:16:\"update_acf_logic\";s:11:\"full_update\";s:8:\"acf_list\";s:1:\"0\";s:13:\"acf_only_list\";s:0:\"\";s:15:\"acf_except_list\";s:0:\"\";}', '0000-00-00 00:00:00', 'node', 0, 0, 0, 0, '2018-08-21 23:46:20', 326, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);
INSERT INTO `wp_pmxi_imports` (`id`, `parent_import_id`, `name`, `friendly_name`, `type`, `feed_type`, `path`, `xpath`, `options`, `registered_on`, `root_element`, `processing`, `executing`, `triggered`, `queue_chunk_number`, `first_import`, `count`, `imported`, `created`, `updated`, `skipped`, `deleted`, `canceled`, `canceled_on`, `failed`, `failed_on`, `settings_update_on`, `last_activity`, `iteration`) VALUES
(3, 0, 'Planilha_Marketplace_Trevi_planilha_ajustada.csv', '', 'upload', '', '/wpallimport/uploads/03a3fed18abeb2e760b3453fdff26cf9/Planilha_Marketplace_Trevi_planilha_ajustada.csv', '/node', 'a:392:{s:14:\"tmp_unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:4:\"type\";s:4:\"post\";s:21:\"is_override_post_type\";i:0;s:15:\"post_type_xpath\";s:0:\"\";s:8:\"deligate\";s:0:\"\";s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:7:\"product\";s:14:\"featured_delim\";s:1:\",\";s:10:\"atch_delim\";s:1:\",\";s:25:\"is_search_existing_attach\";s:1:\"0\";s:15:\"post_taxonomies\";a:1:{s:11:\"product_cat\";s:185:\"[{\"item_id\":\"1\",\"left\":2,\"right\":5,\"parent_id\":null,\"xpath\":\"{categoria[1]}\",\"assign\":true},{\"item_id\":\"2\",\"left\":3,\"right\":4,\"parent_id\":\"1\",\"xpath\":\"{subcategoria[1]}\",\"assign\":true}]\";}s:6:\"parent\";i:0;s:23:\"is_multiple_page_parent\";s:3:\"yes\";s:18:\"single_page_parent\";s:0:\"\";s:5:\"order\";s:1:\"0\";s:6:\"status\";s:7:\"publish\";s:13:\"page_template\";s:7:\"default\";s:25:\"is_multiple_page_template\";s:3:\"yes\";s:20:\"single_page_template\";s:0:\"\";s:15:\"page_taxonomies\";a:0:{}s:9:\"date_type\";s:8:\"specific\";s:4:\"date\";s:3:\"now\";s:10:\"date_start\";s:3:\"now\";s:8:\"date_end\";s:3:\"now\";s:11:\"custom_name\";a:0:{}s:12:\"custom_value\";a:0:{}s:13:\"custom_format\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:14:\"custom_mapping\";a:0:{}s:17:\"serialized_values\";a:2:{i:0;s:7:\"[\"\",\"\"]\";i:1;s:7:\"[\"\",\"\"]\";}s:20:\"custom_mapping_rules\";a:2:{i:0;s:2:\"[]\";i:1;s:2:\"[]\";}s:14:\"comment_status\";s:4:\"open\";s:20:\"comment_status_xpath\";s:0:\"\";s:11:\"ping_status\";s:4:\"open\";s:17:\"ping_status_xpath\";s:0:\"\";s:12:\"create_draft\";s:2:\"no\";s:6:\"author\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:9:\"post_slug\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:19:\"is_import_specified\";s:1:\"0\";s:16:\"import_specified\";s:0:\"\";s:16:\"is_delete_source\";i:0;s:8:\"is_cloak\";i:0;s:10:\"unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:9:\"feed_type\";s:4:\"auto\";s:22:\"search_existing_images\";s:1:\"1\";s:18:\"create_new_records\";i:1;s:17:\"is_delete_missing\";s:1:\"0\";s:20:\"set_missing_to_draft\";s:1:\"0\";s:20:\"is_update_missing_cf\";s:1:\"0\";s:22:\"update_missing_cf_name\";s:0:\"\";s:23:\"update_missing_cf_value\";s:0:\"\";s:20:\"is_keep_former_posts\";s:2:\"no\";s:16:\"is_update_status\";s:1:\"1\";s:17:\"is_update_content\";s:1:\"1\";s:15:\"is_update_title\";s:1:\"1\";s:14:\"is_update_slug\";s:1:\"1\";s:17:\"is_update_excerpt\";s:1:\"1\";s:20:\"is_update_categories\";s:1:\"1\";s:16:\"is_update_author\";s:1:\"1\";s:24:\"is_update_comment_status\";s:1:\"1\";s:19:\"is_update_post_type\";s:1:\"1\";s:23:\"update_categories_logic\";s:11:\"full_update\";s:15:\"taxonomies_list\";s:1:\"0\";s:20:\"taxonomies_only_list\";s:0:\"\";s:22:\"taxonomies_except_list\";s:0:\"\";s:21:\"is_update_attachments\";s:1:\"1\";s:16:\"is_update_images\";s:1:\"1\";s:19:\"update_images_logic\";s:11:\"full_update\";s:15:\"is_update_dates\";s:1:\"1\";s:20:\"is_update_menu_order\";s:1:\"1\";s:16:\"is_update_parent\";s:1:\"1\";s:19:\"is_keep_attachments\";s:1:\"0\";s:12:\"is_keep_imgs\";s:1:\"0\";s:20:\"do_not_remove_images\";s:1:\"1\";s:23:\"is_update_custom_fields\";s:1:\"1\";s:26:\"update_custom_fields_logic\";s:11:\"full_update\";s:18:\"custom_fields_list\";s:1:\"0\";s:23:\"custom_fields_only_list\";s:0:\"\";s:25:\"custom_fields_except_list\";s:0:\"\";s:18:\"duplicate_matching\";s:6:\"manual\";s:19:\"duplicate_indicator\";s:5:\"title\";s:21:\"custom_duplicate_name\";s:4:\"_sku\";s:22:\"custom_duplicate_value\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:12:\"is_scheduled\";s:0:\"\";s:16:\"scheduled_period\";s:0:\"\";s:13:\"friendly_name\";s:0:\"\";s:19:\"records_per_request\";s:2:\"20\";s:24:\"auto_records_per_request\";i:0;s:18:\"auto_rename_images\";s:1:\"0\";s:25:\"auto_rename_images_suffix\";s:0:\"\";s:11:\"images_name\";s:8:\"filename\";s:11:\"post_format\";s:8:\"standard\";s:17:\"post_format_xpath\";s:0:\"\";s:8:\"encoding\";s:5:\"UTF-8\";s:9:\"delimiter\";s:1:\",\";s:16:\"image_meta_title\";s:0:\"\";s:22:\"image_meta_title_delim\";s:1:\",\";s:18:\"image_meta_caption\";s:0:\"\";s:24:\"image_meta_caption_delim\";s:1:\",\";s:14:\"image_meta_alt\";s:0:\"\";s:20:\"image_meta_alt_delim\";s:1:\",\";s:22:\"image_meta_description\";s:0:\"\";s:28:\"image_meta_description_delim\";s:1:\",\";s:34:\"image_meta_description_delim_logic\";s:8:\"separate\";s:12:\"status_xpath\";s:0:\"\";s:15:\"download_images\";s:2:\"no\";s:17:\"converted_options\";s:1:\"1\";s:15:\"update_all_data\";s:3:\"yes\";s:12:\"is_fast_mode\";s:1:\"0\";s:9:\"chuncking\";s:1:\"1\";s:17:\"import_processing\";s:4:\"ajax\";s:26:\"processing_iteration_logic\";s:4:\"auto\";s:28:\"records_per_request_detected\";i:0;s:16:\"save_template_as\";s:1:\"1\";s:5:\"title\";s:28:\"{descriodoprodutocliente[1]}\";s:7:\"content\";s:32:\"{descritivoprodutofornecedor[1]}\";s:4:\"name\";s:15:\"Produto padrão\";s:18:\"is_keep_linebreaks\";s:1:\"1\";s:13:\"is_leave_html\";s:1:\"0\";s:14:\"fix_characters\";i:0;s:9:\"pid_xpath\";s:0:\"\";s:10:\"slug_xpath\";s:0:\"\";s:11:\"title_xpath\";s:0:\"\";s:14:\"featured_image\";s:16:\"{undefined11[1]}\";s:23:\"download_featured_image\";s:0:\"\";s:23:\"download_featured_delim\";s:1:\",\";s:22:\"gallery_featured_image\";s:0:\"\";s:22:\"gallery_featured_delim\";s:1:\",\";s:11:\"is_featured\";s:1:\"1\";s:17:\"is_featured_xpath\";s:0:\"\";s:20:\"set_image_meta_title\";s:1:\"0\";s:22:\"set_image_meta_caption\";s:1:\"0\";s:18:\"set_image_meta_alt\";s:1:\"0\";s:26:\"set_image_meta_description\";s:1:\"0\";s:18:\"auto_set_extension\";s:1:\"0\";s:13:\"new_extension\";s:0:\"\";s:9:\"tax_logic\";a:4:{s:18:\"product_visibility\";s:6:\"single\";s:11:\"product_cat\";s:12:\"hierarchical\";s:11:\"product_tag\";s:6:\"single\";s:14:\"dc_vendor_shop\";s:6:\"single\";}s:10:\"tax_assing\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:20:\"multiple_term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:23:\"tax_hierarchical_assing\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:1:\"1\";s:6:\"NUMBER\";s:1:\"1\";}}s:34:\"tax_hierarchical_last_level_assign\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:16:\"tax_single_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:18:\"tax_multiple_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:22:\"tax_hierarchical_xpath\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}s:18:\"tax_multiple_delim\";a:4:{s:18:\"product_visibility\";s:1:\",\";s:11:\"product_cat\";s:1:\",\";s:11:\"product_tag\";s:1:\",\";s:14:\"dc_vendor_shop\";s:1:\",\";}s:22:\"tax_hierarchical_delim\";a:1:{s:11:\"product_cat\";s:1:\">\";}s:25:\"tax_manualhierarchy_delim\";a:1:{s:11:\"product_cat\";s:1:\",\";}s:29:\"tax_hierarchical_logic_entire\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:29:\"tax_hierarchical_logic_manual\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:18:\"tax_enable_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:25:\"tax_is_full_search_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:27:\"tax_is_full_search_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:29:\"tax_assign_to_one_term_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"tax_assign_to_one_term_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"tax_mapping\";a:4:{s:18:\"product_visibility\";s:2:\"[]\";s:11:\"product_cat\";s:2:\"[]\";s:11:\"product_tag\";s:2:\"[]\";s:14:\"dc_vendor_shop\";s:2:\"[]\";}s:17:\"tax_logic_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"is_tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:28:\"tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"|\";}s:12:\"nested_files\";a:0:{}s:17:\"xml_reader_engine\";s:1:\"0\";s:13:\"taxonomy_type\";s:0:\"\";s:15:\"taxonomy_parent\";s:0:\"\";s:13:\"taxonomy_slug\";s:4:\"auto\";s:19:\"taxonomy_slug_xpath\";s:0:\"\";s:15:\"import_img_tags\";s:1:\"0\";s:28:\"search_existing_images_logic\";s:6:\"by_url\";s:24:\"enable_import_scheduling\";s:5:\"false\";s:17:\"scheduling_enable\";s:1:\"0\";s:22:\"scheduling_weekly_days\";s:0:\"\";s:17:\"scheduling_run_on\";s:6:\"weekly\";s:22:\"scheduling_monthly_day\";s:0:\"\";s:16:\"scheduling_times\";a:1:{i:0;s:0:\"\";}s:19:\"scheduling_timezone\";s:17:\"America/Sao_Paulo\";s:24:\"is_multiple_product_type\";s:3:\"yes\";s:21:\"multiple_product_type\";s:6:\"simple\";s:19:\"single_product_type\";s:0:\"\";s:18:\"is_product_virtual\";s:2:\"no\";s:22:\"single_product_virtual\";s:0:\"\";s:23:\"is_product_downloadable\";s:2:\"no\";s:27:\"single_product_downloadable\";s:0:\"\";s:18:\"is_product_enabled\";s:3:\"yes\";s:22:\"single_product_enabled\";s:0:\"\";s:20:\"is_variation_enabled\";s:3:\"yes\";s:24:\"single_variation_enabled\";s:0:\"\";s:19:\"is_product_featured\";s:2:\"no\";s:23:\"single_product_featured\";s:0:\"\";s:21:\"is_product_visibility\";s:7:\"visible\";s:25:\"single_product_visibility\";s:0:\"\";s:18:\"single_product_sku\";s:21:\"{codigofornecedor[1]}\";s:18:\"single_product_url\";s:0:\"\";s:26:\"single_product_button_text\";s:0:\"\";s:28:\"single_product_regular_price\";s:9:\"{preo[1]}\";s:25:\"single_product_sale_price\";s:0:\"\";s:20:\"single_product_files\";s:0:\"\";s:26:\"single_product_files_names\";s:0:\"\";s:29:\"single_product_download_limit\";s:0:\"\";s:30:\"single_product_download_expiry\";s:0:\"\";s:28:\"single_product_download_type\";s:0:\"\";s:30:\"is_multiple_product_tax_status\";s:3:\"yes\";s:27:\"multiple_product_tax_status\";s:4:\"none\";s:25:\"single_product_tax_status\";s:0:\"\";s:29:\"is_multiple_product_tax_class\";s:3:\"yes\";s:26:\"multiple_product_tax_class\";s:0:\"\";s:24:\"single_product_tax_class\";s:0:\"\";s:23:\"is_product_manage_stock\";s:2:\"no\";s:27:\"single_product_manage_stock\";s:0:\"\";s:24:\"single_product_stock_qty\";s:0:\"\";s:20:\"product_stock_status\";s:4:\"auto\";s:27:\"single_product_stock_status\";s:0:\"\";s:24:\"product_allow_backorders\";s:2:\"no\";s:31:\"single_product_allow_backorders\";s:0:\"\";s:25:\"product_sold_individually\";s:2:\"no\";s:32:\"single_product_sold_individually\";s:0:\"\";s:21:\"single_product_weight\";s:0:\"\";s:21:\"single_product_length\";s:0:\"\";s:20:\"single_product_width\";s:0:\"\";s:21:\"single_product_height\";s:0:\"\";s:34:\"is_multiple_product_shipping_class\";s:3:\"yes\";s:31:\"multiple_product_shipping_class\";s:2:\"-1\";s:29:\"single_product_shipping_class\";s:0:\"\";s:28:\"is_multiple_grouping_product\";s:3:\"yes\";s:25:\"multiple_grouping_product\";s:0:\"\";s:23:\"single_grouping_product\";s:0:\"\";s:23:\"single_product_up_sells\";s:0:\"\";s:26:\"single_product_cross_sells\";s:0:\"\";s:14:\"attribute_name\";a:3:{i:0;s:5:\"Corpo\";i:1;s:8:\"Material\";i:2;s:6:\"Volume\";}s:15:\"attribute_value\";a:3:{i:0;s:8:\"{cor[1]}\";i:1;s:13:\"{material[1]}\";i:2;s:11:\"{volume[1]}\";}s:13:\"in_variations\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:10:\"is_visible\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_taxonomy\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:29:\"create_taxonomy_in_not_exists\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_advanced\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:22:\"advanced_in_variations\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:28:\"advanced_in_variations_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:19:\"advanced_is_visible\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:25:\"advanced_is_visible_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:20:\"advanced_is_taxonomy\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:26:\"advanced_is_taxonomy_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:24:\"advanced_is_create_terms\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:30:\"advanced_is_create_terms_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:28:\"single_product_purchase_note\";s:0:\"\";s:25:\"single_product_menu_order\";s:1:\"0\";s:25:\"is_product_enable_reviews\";s:2:\"no\";s:29:\"single_product_enable_reviews\";s:0:\"\";s:17:\"single_product_id\";s:0:\"\";s:24:\"single_product_parent_id\";s:0:\"\";s:36:\"single_product_id_first_is_parent_id\";s:0:\"\";s:44:\"single_product_first_is_parent_id_parent_sku\";s:0:\"\";s:39:\"single_product_id_first_is_parent_title\";s:28:\"{descriodoprodutocliente[1]}\";s:47:\"single_product_first_is_parent_title_parent_sku\";s:0:\"\";s:36:\"single_product_id_first_is_variation\";s:28:\"{descriodoprodutocliente[1]}\";s:8:\"_virtual\";i:0;s:13:\"_downloadable\";i:0;s:24:\"is_regular_price_shedule\";s:1:\"0\";s:28:\"single_sale_price_dates_from\";s:3:\"now\";s:26:\"single_sale_price_dates_to\";s:3:\"now\";s:19:\"product_files_delim\";s:1:\",\";s:25:\"product_files_names_delim\";s:1:\",\";s:15:\"matching_parent\";s:4:\"auto\";s:16:\"parent_indicator\";s:12:\"custom field\";s:28:\"custom_parent_indicator_name\";s:0:\"\";s:29:\"custom_parent_indicator_value\";s:0:\"\";s:28:\"missing_records_stock_status\";s:1:\"0\";s:16:\"variations_xpath\";s:0:\"\";s:17:\"_variable_virtual\";s:0:\"\";s:22:\"_variable_downloadable\";s:0:\"\";s:14:\"variable_stock\";s:0:\"\";s:22:\"variable_regular_price\";s:0:\"\";s:19:\"variable_sale_price\";s:0:\"\";s:30:\"is_variable_sale_price_shedule\";s:1:\"0\";s:30:\"variable_sale_price_dates_from\";s:0:\"\";s:28:\"variable_sale_price_dates_to\";s:0:\"\";s:15:\"variable_weight\";s:0:\"\";s:15:\"variable_length\";s:0:\"\";s:14:\"variable_width\";s:0:\"\";s:15:\"variable_height\";s:0:\"\";s:23:\"variable_shipping_class\";s:0:\"\";s:18:\"variable_tax_class\";s:0:\"\";s:19:\"variable_file_paths\";s:0:\"\";s:19:\"variable_file_names\";s:0:\"\";s:23:\"variable_download_limit\";s:0:\"\";s:24:\"variable_download_expiry\";s:0:\"\";s:27:\"is_variable_product_virtual\";s:2:\"no\";s:32:\"is_variable_product_manage_stock\";s:2:\"no\";s:43:\"is_multiple_variable_product_shipping_class\";s:3:\"yes\";s:40:\"multiple_variable_product_shipping_class\";s:2:\"-1\";s:38:\"single_variable_product_shipping_class\";s:0:\"\";s:38:\"is_multiple_variable_product_tax_class\";s:3:\"yes\";s:35:\"multiple_variable_product_tax_class\";s:6:\"parent\";s:33:\"single_variable_product_tax_class\";s:0:\"\";s:21:\"variable_stock_status\";s:7:\"instock\";s:28:\"single_variable_stock_status\";s:0:\"\";s:25:\"variable_allow_backorders\";s:2:\"no\";s:32:\"single_variable_allow_backorders\";s:0:\"\";s:32:\"is_variable_product_downloadable\";s:2:\"no\";s:36:\"single_variable_product_downloadable\";s:0:\"\";s:23:\"variable_attribute_name\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"variable_attribute_value\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:22:\"variable_in_variations\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:19:\"variable_is_visible\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:20:\"variable_is_taxonomy\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:38:\"variable_create_taxonomy_in_not_exists\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:28:\"variable_product_files_delim\";s:1:\",\";s:34:\"variable_product_files_names_delim\";s:1:\",\";s:14:\"variable_image\";s:0:\"\";s:12:\"variable_sku\";s:0:\"\";s:27:\"is_variable_product_enabled\";s:3:\"yes\";s:31:\"single_variable_product_enabled\";s:0:\"\";s:19:\"link_all_variations\";s:1:\"0\";s:25:\"variable_stock_use_parent\";s:1:\"0\";s:33:\"variable_regular_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_dates_use_parent\";s:1:\"0\";s:26:\"variable_weight_use_parent\";s:1:\"0\";s:31:\"single_variable_product_virtual\";s:0:\"\";s:42:\"single_variable_product_virtual_use_parent\";s:1:\"0\";s:36:\"single_variable_product_manage_stock\";s:0:\"\";s:47:\"single_variable_product_manage_stock_use_parent\";s:1:\"0\";s:30:\"variable_dimensions_use_parent\";s:1:\"0\";s:25:\"variable_image_use_parent\";s:1:\"0\";s:49:\"single_variable_product_shipping_class_use_parent\";s:1:\"0\";s:44:\"single_variable_product_tax_class_use_parent\";s:1:\"0\";s:47:\"single_variable_product_downloadable_use_parent\";s:1:\"0\";s:34:\"variable_download_limit_use_parent\";s:1:\"0\";s:35:\"variable_download_expiry_use_parent\";s:1:\"0\";s:36:\"single_product_variation_description\";s:0:\"\";s:20:\"variable_description\";s:0:\"\";s:31:\"variable_description_use_parent\";s:1:\"0\";s:15:\"first_is_parent\";s:3:\"yes\";s:28:\"single_product_whosale_price\";s:0:\"\";s:22:\"variable_whosale_price\";s:0:\"\";s:33:\"variable_whosale_price_use_parent\";i:0;s:27:\"disable_auto_sku_generation\";s:1:\"0\";s:21:\"is_default_attributes\";s:1:\"0\";s:23:\"default_attributes_type\";s:5:\"first\";s:20:\"disable_sku_matching\";s:1:\"1\";s:21:\"disable_prepare_price\";s:1:\"1\";s:27:\"prepare_price_to_woo_format\";s:1:\"0\";s:25:\"convert_decimal_separator\";s:1:\"1\";s:18:\"grouping_indicator\";s:5:\"xpath\";s:30:\"custom_grouping_indicator_name\";s:0:\"\";s:31:\"custom_grouping_indicator_value\";s:0:\"\";s:22:\"is_update_product_type\";s:1:\"1\";s:19:\"make_simple_product\";s:1:\"1\";s:23:\"variable_sku_add_parent\";s:1:\"0\";s:16:\"set_parent_stock\";s:1:\"0\";s:35:\"single_product_regular_price_adjust\";s:0:\"\";s:40:\"single_product_regular_price_adjust_type\";s:1:\"%\";s:32:\"single_product_sale_price_adjust\";s:0:\"\";s:37:\"single_product_sale_price_adjust_type\";s:1:\"%\";s:20:\"is_update_attributes\";s:1:\"1\";s:23:\"update_attributes_logic\";s:11:\"full_update\";s:15:\"attributes_list\";s:1:\"0\";s:20:\"attributes_only_list\";s:0:\"\";s:22:\"attributes_except_list\";s:0:\"\";s:33:\"is_variation_product_manage_stock\";s:2:\"no\";s:37:\"single_variation_product_manage_stock\";s:0:\"\";s:15:\"variation_stock\";s:0:\"\";s:22:\"variation_stock_status\";s:4:\"auto\";s:30:\"put_variation_image_to_gallery\";s:1:\"0\";s:34:\"import_additional_variation_images\";i:0;s:29:\"single_variation_stock_status\";s:0:\"\";s:10:\"pmwi_order\";a:88:{s:6:\"status\";s:10:\"wc-pending\";s:12:\"status_xpath\";s:0:\"\";s:4:\"date\";s:3:\"now\";s:14:\"billing_source\";s:5:\"guest\";s:23:\"billing_source_match_by\";s:8:\"username\";s:23:\"billing_source_username\";s:0:\"\";s:20:\"billing_source_email\";s:0:\"\";s:17:\"billing_source_id\";s:0:\"\";s:22:\"billing_source_cf_name\";s:0:\"\";s:23:\"billing_source_cf_value\";s:0:\"\";s:18:\"billing_first_name\";s:0:\"\";s:17:\"billing_last_name\";s:0:\"\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:0:\"\";s:13:\"billing_state\";s:0:\"\";s:13:\"billing_email\";s:0:\"\";s:13:\"billing_phone\";s:0:\"\";s:24:\"guest_billing_first_name\";s:0:\"\";s:23:\"guest_billing_last_name\";s:0:\"\";s:21:\"guest_billing_company\";s:0:\"\";s:23:\"guest_billing_address_1\";s:0:\"\";s:23:\"guest_billing_address_2\";s:0:\"\";s:18:\"guest_billing_city\";s:0:\"\";s:22:\"guest_billing_postcode\";s:0:\"\";s:21:\"guest_billing_country\";s:0:\"\";s:19:\"guest_billing_state\";s:0:\"\";s:19:\"guest_billing_email\";s:0:\"\";s:19:\"guest_billing_phone\";s:0:\"\";s:17:\"is_guest_matching\";i:0;s:15:\"shipping_source\";s:4:\"copy\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:14:\"shipping_email\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:17:\"copy_from_billing\";i:0;s:22:\"customer_provided_note\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:20:\"payment_method_xpath\";s:0:\"\";s:14:\"transaction_id\";s:0:\"\";s:22:\"products_repeater_mode\";s:3:\"csv\";s:32:\"products_repeater_mode_separator\";s:1:\"|\";s:30:\"products_repeater_mode_foreach\";s:0:\"\";s:15:\"products_source\";s:8:\"existing\";s:8:\"products\";a:0:{}s:15:\"manual_products\";a:0:{}s:18:\"fees_repeater_mode\";s:3:\"csv\";s:28:\"fees_repeater_mode_separator\";s:1:\"|\";s:26:\"fees_repeater_mode_foreach\";s:0:\"\";s:4:\"fees\";a:0:{}s:21:\"coupons_repeater_mode\";s:3:\"csv\";s:31:\"coupons_repeater_mode_separator\";s:1:\"|\";s:29:\"coupons_repeater_mode_foreach\";s:0:\"\";s:7:\"coupons\";a:0:{}s:22:\"shipping_repeater_mode\";s:3:\"csv\";s:32:\"shipping_repeater_mode_separator\";s:1:\"|\";s:30:\"shipping_repeater_mode_foreach\";s:0:\"\";s:8:\"shipping\";a:0:{}s:19:\"taxes_repeater_mode\";s:3:\"csv\";s:29:\"taxes_repeater_mode_separator\";s:1:\"|\";s:27:\"taxes_repeater_mode_foreach\";s:0:\"\";s:5:\"taxes\";a:0:{}s:17:\"order_total_logic\";s:4:\"auto\";s:17:\"order_total_xpath\";s:0:\"\";s:19:\"order_refund_amount\";s:0:\"\";s:19:\"order_refund_reason\";s:0:\"\";s:17:\"order_refund_date\";s:3:\"now\";s:26:\"order_refund_issued_source\";s:8:\"existing\";s:28:\"order_refund_issued_match_by\";s:8:\"username\";s:28:\"order_refund_issued_username\";s:0:\"\";s:25:\"order_refund_issued_email\";s:0:\"\";s:27:\"order_refund_issued_cf_name\";s:0:\"\";s:28:\"order_refund_issued_cf_value\";s:0:\"\";s:22:\"order_refund_issued_id\";s:0:\"\";s:19:\"notes_repeater_mode\";s:3:\"csv\";s:29:\"notes_repeater_mode_separator\";s:1:\"|\";s:27:\"notes_repeater_mode_foreach\";s:0:\"\";s:5:\"notes\";a:0:{}}s:25:\"is_update_billing_details\";i:1;s:26:\"is_update_shipping_details\";i:1;s:17:\"is_update_payment\";i:1;s:15:\"is_update_notes\";i:1;s:18:\"is_update_products\";i:1;s:21:\"update_products_logic\";s:11:\"full_update\";s:14:\"is_update_fees\";i:1;s:17:\"is_update_coupons\";i:1;s:18:\"is_update_shipping\";i:1;s:15:\"is_update_taxes\";i:1;s:17:\"is_update_refunds\";i:1;s:15:\"is_update_total\";i:1;s:31:\"do_not_send_order_notifications\";i:1;s:26:\"is_update_advanced_options\";s:1:\"1\";s:28:\"is_update_catalog_visibility\";s:1:\"1\";s:25:\"is_update_featured_status\";s:1:\"1\";s:3:\"acf\";a:9:{i:92;s:1:\"0\";i:153;s:1:\"0\";i:95;s:1:\"0\";i:102;s:1:\"0\";i:110;s:1:\"0\";i:116;s:1:\"0\";i:124;s:1:\"0\";i:129;s:1:\"0\";i:134;s:1:\"0\";}s:6:\"fields\";a:0:{}s:23:\"is_multiple_field_value\";a:0:{}s:14:\"multiple_value\";a:0:{}s:16:\"fields_delimiter\";a:0:{}s:13:\"is_update_acf\";s:1:\"1\";s:16:\"update_acf_logic\";s:11:\"full_update\";s:8:\"acf_list\";s:1:\"0\";s:13:\"acf_only_list\";s:0:\"\";s:15:\"acf_except_list\";s:0:\"\";}', '0000-00-00 00:00:00', 'node', 0, 0, 0, 0, '2018-08-21 23:48:54', 326, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0),
(4, 0, 'Planilha_Marketplace_Trevi_planilha_ajustada_2.csv', '', 'upload', '', '/wpallimport/uploads/a2add8fd22b4ae0bec16bb3f5712de82/Planilha_Marketplace_Trevi_planilha_ajustada_2.csv', '/node', 'a:392:{s:14:\"tmp_unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:4:\"type\";s:4:\"post\";s:21:\"is_override_post_type\";i:0;s:15:\"post_type_xpath\";s:0:\"\";s:8:\"deligate\";s:0:\"\";s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:7:\"product\";s:14:\"featured_delim\";s:1:\",\";s:10:\"atch_delim\";s:1:\",\";s:25:\"is_search_existing_attach\";s:1:\"0\";s:15:\"post_taxonomies\";a:1:{s:11:\"product_cat\";s:185:\"[{\"item_id\":\"1\",\"left\":2,\"right\":5,\"parent_id\":null,\"xpath\":\"{categoria[1]}\",\"assign\":true},{\"item_id\":\"2\",\"left\":3,\"right\":4,\"parent_id\":\"1\",\"xpath\":\"{subcategoria[1]}\",\"assign\":true}]\";}s:6:\"parent\";i:0;s:23:\"is_multiple_page_parent\";s:3:\"yes\";s:18:\"single_page_parent\";s:0:\"\";s:5:\"order\";s:1:\"0\";s:6:\"status\";s:7:\"publish\";s:13:\"page_template\";s:7:\"default\";s:25:\"is_multiple_page_template\";s:3:\"yes\";s:20:\"single_page_template\";s:0:\"\";s:15:\"page_taxonomies\";a:0:{}s:9:\"date_type\";s:8:\"specific\";s:4:\"date\";s:3:\"now\";s:10:\"date_start\";s:3:\"now\";s:8:\"date_end\";s:3:\"now\";s:11:\"custom_name\";a:0:{}s:12:\"custom_value\";a:0:{}s:13:\"custom_format\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:14:\"custom_mapping\";a:0:{}s:17:\"serialized_values\";a:2:{i:0;s:7:\"[\"\",\"\"]\";i:1;s:7:\"[\"\",\"\"]\";}s:20:\"custom_mapping_rules\";a:2:{i:0;s:2:\"[]\";i:1;s:2:\"[]\";}s:14:\"comment_status\";s:4:\"open\";s:20:\"comment_status_xpath\";s:0:\"\";s:11:\"ping_status\";s:4:\"open\";s:17:\"ping_status_xpath\";s:0:\"\";s:12:\"create_draft\";s:2:\"no\";s:6:\"author\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:9:\"post_slug\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:19:\"is_import_specified\";s:1:\"0\";s:16:\"import_specified\";s:0:\"\";s:16:\"is_delete_source\";i:0;s:8:\"is_cloak\";i:0;s:10:\"unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:9:\"feed_type\";s:4:\"auto\";s:22:\"search_existing_images\";s:1:\"1\";s:18:\"create_new_records\";i:1;s:17:\"is_delete_missing\";s:1:\"0\";s:20:\"set_missing_to_draft\";s:1:\"0\";s:20:\"is_update_missing_cf\";s:1:\"0\";s:22:\"update_missing_cf_name\";s:0:\"\";s:23:\"update_missing_cf_value\";s:0:\"\";s:20:\"is_keep_former_posts\";s:2:\"no\";s:16:\"is_update_status\";s:1:\"1\";s:17:\"is_update_content\";s:1:\"1\";s:15:\"is_update_title\";s:1:\"1\";s:14:\"is_update_slug\";s:1:\"1\";s:17:\"is_update_excerpt\";s:1:\"1\";s:20:\"is_update_categories\";s:1:\"1\";s:16:\"is_update_author\";s:1:\"1\";s:24:\"is_update_comment_status\";s:1:\"1\";s:19:\"is_update_post_type\";s:1:\"1\";s:23:\"update_categories_logic\";s:11:\"full_update\";s:15:\"taxonomies_list\";s:1:\"0\";s:20:\"taxonomies_only_list\";s:0:\"\";s:22:\"taxonomies_except_list\";s:0:\"\";s:21:\"is_update_attachments\";s:1:\"1\";s:16:\"is_update_images\";s:1:\"1\";s:19:\"update_images_logic\";s:11:\"full_update\";s:15:\"is_update_dates\";s:1:\"1\";s:20:\"is_update_menu_order\";s:1:\"1\";s:16:\"is_update_parent\";s:1:\"1\";s:19:\"is_keep_attachments\";s:1:\"0\";s:12:\"is_keep_imgs\";s:1:\"0\";s:20:\"do_not_remove_images\";s:1:\"1\";s:23:\"is_update_custom_fields\";s:1:\"1\";s:26:\"update_custom_fields_logic\";s:11:\"full_update\";s:18:\"custom_fields_list\";s:1:\"0\";s:23:\"custom_fields_only_list\";s:0:\"\";s:25:\"custom_fields_except_list\";s:0:\"\";s:18:\"duplicate_matching\";s:6:\"manual\";s:19:\"duplicate_indicator\";s:5:\"title\";s:21:\"custom_duplicate_name\";s:4:\"_sku\";s:22:\"custom_duplicate_value\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:12:\"is_scheduled\";s:0:\"\";s:16:\"scheduled_period\";s:0:\"\";s:13:\"friendly_name\";s:0:\"\";s:19:\"records_per_request\";s:2:\"20\";s:24:\"auto_records_per_request\";i:0;s:18:\"auto_rename_images\";s:1:\"0\";s:25:\"auto_rename_images_suffix\";s:0:\"\";s:11:\"images_name\";s:8:\"filename\";s:11:\"post_format\";s:8:\"standard\";s:17:\"post_format_xpath\";s:0:\"\";s:8:\"encoding\";s:5:\"UTF-8\";s:9:\"delimiter\";s:1:\",\";s:16:\"image_meta_title\";s:0:\"\";s:22:\"image_meta_title_delim\";s:1:\",\";s:18:\"image_meta_caption\";s:0:\"\";s:24:\"image_meta_caption_delim\";s:1:\",\";s:14:\"image_meta_alt\";s:0:\"\";s:20:\"image_meta_alt_delim\";s:1:\",\";s:22:\"image_meta_description\";s:0:\"\";s:28:\"image_meta_description_delim\";s:1:\",\";s:34:\"image_meta_description_delim_logic\";s:8:\"separate\";s:12:\"status_xpath\";s:0:\"\";s:15:\"download_images\";s:2:\"no\";s:17:\"converted_options\";s:1:\"1\";s:15:\"update_all_data\";s:3:\"yes\";s:12:\"is_fast_mode\";s:1:\"0\";s:9:\"chuncking\";s:1:\"1\";s:17:\"import_processing\";s:4:\"ajax\";s:26:\"processing_iteration_logic\";s:4:\"auto\";s:28:\"records_per_request_detected\";i:0;s:16:\"save_template_as\";s:1:\"1\";s:5:\"title\";s:28:\"{descriodoprodutocliente[1]}\";s:7:\"content\";s:32:\"{descritivoprodutofornecedor[1]}\";s:4:\"name\";s:13:\"Produto final\";s:18:\"is_keep_linebreaks\";s:1:\"1\";s:13:\"is_leave_html\";s:1:\"0\";s:14:\"fix_characters\";i:0;s:9:\"pid_xpath\";s:0:\"\";s:10:\"slug_xpath\";s:0:\"\";s:11:\"title_xpath\";s:0:\"\";s:14:\"featured_image\";s:16:\"{undefined11[1]}\";s:23:\"download_featured_image\";s:0:\"\";s:23:\"download_featured_delim\";s:1:\",\";s:22:\"gallery_featured_image\";s:0:\"\";s:22:\"gallery_featured_delim\";s:1:\",\";s:11:\"is_featured\";s:1:\"1\";s:17:\"is_featured_xpath\";s:0:\"\";s:20:\"set_image_meta_title\";s:1:\"0\";s:22:\"set_image_meta_caption\";s:1:\"0\";s:18:\"set_image_meta_alt\";s:1:\"0\";s:26:\"set_image_meta_description\";s:1:\"0\";s:18:\"auto_set_extension\";s:1:\"0\";s:13:\"new_extension\";s:0:\"\";s:9:\"tax_logic\";a:4:{s:18:\"product_visibility\";s:6:\"single\";s:11:\"product_cat\";s:12:\"hierarchical\";s:11:\"product_tag\";s:6:\"single\";s:14:\"dc_vendor_shop\";s:6:\"single\";}s:10:\"tax_assing\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:20:\"multiple_term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:23:\"tax_hierarchical_assing\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:1:\"1\";s:6:\"NUMBER\";s:1:\"1\";}}s:34:\"tax_hierarchical_last_level_assign\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:16:\"tax_single_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:18:\"tax_multiple_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:22:\"tax_hierarchical_xpath\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}s:18:\"tax_multiple_delim\";a:4:{s:18:\"product_visibility\";s:1:\",\";s:11:\"product_cat\";s:1:\",\";s:11:\"product_tag\";s:1:\",\";s:14:\"dc_vendor_shop\";s:1:\",\";}s:22:\"tax_hierarchical_delim\";a:1:{s:11:\"product_cat\";s:1:\">\";}s:25:\"tax_manualhierarchy_delim\";a:1:{s:11:\"product_cat\";s:1:\",\";}s:29:\"tax_hierarchical_logic_entire\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:29:\"tax_hierarchical_logic_manual\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:18:\"tax_enable_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:25:\"tax_is_full_search_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:27:\"tax_is_full_search_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:29:\"tax_assign_to_one_term_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"tax_assign_to_one_term_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"tax_mapping\";a:4:{s:18:\"product_visibility\";s:2:\"[]\";s:11:\"product_cat\";s:2:\"[]\";s:11:\"product_tag\";s:2:\"[]\";s:14:\"dc_vendor_shop\";s:2:\"[]\";}s:17:\"tax_logic_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"is_tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:28:\"tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"|\";}s:12:\"nested_files\";a:0:{}s:17:\"xml_reader_engine\";s:1:\"0\";s:13:\"taxonomy_type\";s:0:\"\";s:15:\"taxonomy_parent\";s:0:\"\";s:13:\"taxonomy_slug\";s:4:\"auto\";s:19:\"taxonomy_slug_xpath\";s:0:\"\";s:15:\"import_img_tags\";s:1:\"0\";s:28:\"search_existing_images_logic\";s:6:\"by_url\";s:24:\"enable_import_scheduling\";s:5:\"false\";s:17:\"scheduling_enable\";s:1:\"0\";s:22:\"scheduling_weekly_days\";s:0:\"\";s:17:\"scheduling_run_on\";s:6:\"weekly\";s:22:\"scheduling_monthly_day\";s:0:\"\";s:16:\"scheduling_times\";a:1:{i:0;s:0:\"\";}s:19:\"scheduling_timezone\";s:17:\"America/Sao_Paulo\";s:24:\"is_multiple_product_type\";s:3:\"yes\";s:21:\"multiple_product_type\";s:6:\"simple\";s:19:\"single_product_type\";s:0:\"\";s:18:\"is_product_virtual\";s:2:\"no\";s:22:\"single_product_virtual\";s:0:\"\";s:23:\"is_product_downloadable\";s:2:\"no\";s:27:\"single_product_downloadable\";s:0:\"\";s:18:\"is_product_enabled\";s:3:\"yes\";s:22:\"single_product_enabled\";s:0:\"\";s:20:\"is_variation_enabled\";s:3:\"yes\";s:24:\"single_variation_enabled\";s:0:\"\";s:19:\"is_product_featured\";s:2:\"no\";s:23:\"single_product_featured\";s:0:\"\";s:21:\"is_product_visibility\";s:7:\"visible\";s:25:\"single_product_visibility\";s:0:\"\";s:18:\"single_product_sku\";s:21:\"{codigofornecedor[1]}\";s:18:\"single_product_url\";s:0:\"\";s:26:\"single_product_button_text\";s:0:\"\";s:28:\"single_product_regular_price\";s:9:\"{preo[1]}\";s:25:\"single_product_sale_price\";s:0:\"\";s:20:\"single_product_files\";s:0:\"\";s:26:\"single_product_files_names\";s:0:\"\";s:29:\"single_product_download_limit\";s:0:\"\";s:30:\"single_product_download_expiry\";s:0:\"\";s:28:\"single_product_download_type\";s:0:\"\";s:30:\"is_multiple_product_tax_status\";s:3:\"yes\";s:27:\"multiple_product_tax_status\";s:4:\"none\";s:25:\"single_product_tax_status\";s:0:\"\";s:29:\"is_multiple_product_tax_class\";s:3:\"yes\";s:26:\"multiple_product_tax_class\";s:0:\"\";s:24:\"single_product_tax_class\";s:0:\"\";s:23:\"is_product_manage_stock\";s:2:\"no\";s:27:\"single_product_manage_stock\";s:0:\"\";s:24:\"single_product_stock_qty\";s:0:\"\";s:20:\"product_stock_status\";s:4:\"auto\";s:27:\"single_product_stock_status\";s:0:\"\";s:24:\"product_allow_backorders\";s:2:\"no\";s:31:\"single_product_allow_backorders\";s:0:\"\";s:25:\"product_sold_individually\";s:2:\"no\";s:32:\"single_product_sold_individually\";s:0:\"\";s:21:\"single_product_weight\";s:0:\"\";s:21:\"single_product_length\";s:0:\"\";s:20:\"single_product_width\";s:0:\"\";s:21:\"single_product_height\";s:0:\"\";s:34:\"is_multiple_product_shipping_class\";s:3:\"yes\";s:31:\"multiple_product_shipping_class\";s:2:\"-1\";s:29:\"single_product_shipping_class\";s:0:\"\";s:28:\"is_multiple_grouping_product\";s:3:\"yes\";s:25:\"multiple_grouping_product\";s:0:\"\";s:23:\"single_grouping_product\";s:0:\"\";s:23:\"single_product_up_sells\";s:0:\"\";s:26:\"single_product_cross_sells\";s:0:\"\";s:14:\"attribute_name\";a:9:{i:0;s:5:\"Corpo\";i:1;s:8:\"Material\";i:2;s:6:\"Volume\";i:3;s:7:\"Largura\";i:4;s:12:\"Profundidade\";i:5;s:6:\"Altura\";i:6;s:8:\"Impresso\";i:7;s:21:\"Código do Fornecedor\";i:8;s:5:\"Marca\";}s:15:\"attribute_value\";a:9:{i:0;s:8:\"{cor[1]}\";i:1;s:13:\"{material[1]}\";i:2;s:11:\"{volume[1]}\";i:3;s:15:\"{undefined7[1]}\";i:4;s:15:\"{undefined7[1]}\";i:5;s:12:\"{tamanho[1]}\";i:6;s:13:\"{impresso[1]}\";i:7;s:18:\"{codfornecedor[1]}\";i:8;s:10:\"{marca[1]}\";}s:13:\"in_variations\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:10:\"is_visible\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:11:\"is_taxonomy\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:29:\"create_taxonomy_in_not_exists\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:11:\"is_advanced\";a:10:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";}s:22:\"advanced_in_variations\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";}s:28:\"advanced_in_variations_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:19:\"advanced_is_visible\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";}s:25:\"advanced_is_visible_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:20:\"advanced_is_taxonomy\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";}s:26:\"advanced_is_taxonomy_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:24:\"advanced_is_create_terms\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";}s:30:\"advanced_is_create_terms_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:28:\"single_product_purchase_note\";s:0:\"\";s:25:\"single_product_menu_order\";s:1:\"0\";s:25:\"is_product_enable_reviews\";s:2:\"no\";s:29:\"single_product_enable_reviews\";s:0:\"\";s:17:\"single_product_id\";s:0:\"\";s:24:\"single_product_parent_id\";s:0:\"\";s:36:\"single_product_id_first_is_parent_id\";s:0:\"\";s:44:\"single_product_first_is_parent_id_parent_sku\";s:0:\"\";s:39:\"single_product_id_first_is_parent_title\";s:28:\"{descriodoprodutocliente[1]}\";s:47:\"single_product_first_is_parent_title_parent_sku\";s:0:\"\";s:36:\"single_product_id_first_is_variation\";s:28:\"{descriodoprodutocliente[1]}\";s:8:\"_virtual\";i:0;s:13:\"_downloadable\";i:0;s:24:\"is_regular_price_shedule\";s:1:\"0\";s:28:\"single_sale_price_dates_from\";s:3:\"now\";s:26:\"single_sale_price_dates_to\";s:3:\"now\";s:19:\"product_files_delim\";s:1:\",\";s:25:\"product_files_names_delim\";s:1:\",\";s:15:\"matching_parent\";s:4:\"auto\";s:16:\"parent_indicator\";s:12:\"custom field\";s:28:\"custom_parent_indicator_name\";s:0:\"\";s:29:\"custom_parent_indicator_value\";s:0:\"\";s:28:\"missing_records_stock_status\";s:1:\"0\";s:16:\"variations_xpath\";s:0:\"\";s:17:\"_variable_virtual\";s:0:\"\";s:22:\"_variable_downloadable\";s:0:\"\";s:14:\"variable_stock\";s:0:\"\";s:22:\"variable_regular_price\";s:0:\"\";s:19:\"variable_sale_price\";s:0:\"\";s:30:\"is_variable_sale_price_shedule\";s:1:\"0\";s:30:\"variable_sale_price_dates_from\";s:0:\"\";s:28:\"variable_sale_price_dates_to\";s:0:\"\";s:15:\"variable_weight\";s:0:\"\";s:15:\"variable_length\";s:0:\"\";s:14:\"variable_width\";s:0:\"\";s:15:\"variable_height\";s:0:\"\";s:23:\"variable_shipping_class\";s:0:\"\";s:18:\"variable_tax_class\";s:0:\"\";s:19:\"variable_file_paths\";s:0:\"\";s:19:\"variable_file_names\";s:0:\"\";s:23:\"variable_download_limit\";s:0:\"\";s:24:\"variable_download_expiry\";s:0:\"\";s:27:\"is_variable_product_virtual\";s:2:\"no\";s:32:\"is_variable_product_manage_stock\";s:2:\"no\";s:43:\"is_multiple_variable_product_shipping_class\";s:3:\"yes\";s:40:\"multiple_variable_product_shipping_class\";s:2:\"-1\";s:38:\"single_variable_product_shipping_class\";s:0:\"\";s:38:\"is_multiple_variable_product_tax_class\";s:3:\"yes\";s:35:\"multiple_variable_product_tax_class\";s:6:\"parent\";s:33:\"single_variable_product_tax_class\";s:0:\"\";s:21:\"variable_stock_status\";s:7:\"instock\";s:28:\"single_variable_stock_status\";s:0:\"\";s:25:\"variable_allow_backorders\";s:2:\"no\";s:32:\"single_variable_allow_backorders\";s:0:\"\";s:32:\"is_variable_product_downloadable\";s:2:\"no\";s:36:\"single_variable_product_downloadable\";s:0:\"\";s:23:\"variable_attribute_name\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"variable_attribute_value\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:22:\"variable_in_variations\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:19:\"variable_is_visible\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:20:\"variable_is_taxonomy\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:38:\"variable_create_taxonomy_in_not_exists\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:28:\"variable_product_files_delim\";s:1:\",\";s:34:\"variable_product_files_names_delim\";s:1:\",\";s:14:\"variable_image\";s:0:\"\";s:12:\"variable_sku\";s:0:\"\";s:27:\"is_variable_product_enabled\";s:3:\"yes\";s:31:\"single_variable_product_enabled\";s:0:\"\";s:19:\"link_all_variations\";s:1:\"0\";s:25:\"variable_stock_use_parent\";s:1:\"0\";s:33:\"variable_regular_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_dates_use_parent\";s:1:\"0\";s:26:\"variable_weight_use_parent\";s:1:\"0\";s:31:\"single_variable_product_virtual\";s:0:\"\";s:42:\"single_variable_product_virtual_use_parent\";s:1:\"0\";s:36:\"single_variable_product_manage_stock\";s:0:\"\";s:47:\"single_variable_product_manage_stock_use_parent\";s:1:\"0\";s:30:\"variable_dimensions_use_parent\";s:1:\"0\";s:25:\"variable_image_use_parent\";s:1:\"0\";s:49:\"single_variable_product_shipping_class_use_parent\";s:1:\"0\";s:44:\"single_variable_product_tax_class_use_parent\";s:1:\"0\";s:47:\"single_variable_product_downloadable_use_parent\";s:1:\"0\";s:34:\"variable_download_limit_use_parent\";s:1:\"0\";s:35:\"variable_download_expiry_use_parent\";s:1:\"0\";s:36:\"single_product_variation_description\";s:0:\"\";s:20:\"variable_description\";s:0:\"\";s:31:\"variable_description_use_parent\";s:1:\"0\";s:15:\"first_is_parent\";s:3:\"yes\";s:28:\"single_product_whosale_price\";s:0:\"\";s:22:\"variable_whosale_price\";s:0:\"\";s:33:\"variable_whosale_price_use_parent\";i:0;s:27:\"disable_auto_sku_generation\";s:1:\"0\";s:21:\"is_default_attributes\";s:1:\"0\";s:23:\"default_attributes_type\";s:5:\"first\";s:20:\"disable_sku_matching\";s:1:\"1\";s:21:\"disable_prepare_price\";s:1:\"1\";s:27:\"prepare_price_to_woo_format\";s:1:\"0\";s:25:\"convert_decimal_separator\";s:1:\"1\";s:18:\"grouping_indicator\";s:5:\"xpath\";s:30:\"custom_grouping_indicator_name\";s:0:\"\";s:31:\"custom_grouping_indicator_value\";s:0:\"\";s:22:\"is_update_product_type\";s:1:\"1\";s:19:\"make_simple_product\";s:1:\"1\";s:23:\"variable_sku_add_parent\";s:1:\"0\";s:16:\"set_parent_stock\";s:1:\"0\";s:35:\"single_product_regular_price_adjust\";s:0:\"\";s:40:\"single_product_regular_price_adjust_type\";s:1:\"%\";s:32:\"single_product_sale_price_adjust\";s:0:\"\";s:37:\"single_product_sale_price_adjust_type\";s:1:\"%\";s:20:\"is_update_attributes\";s:1:\"1\";s:23:\"update_attributes_logic\";s:11:\"full_update\";s:15:\"attributes_list\";s:1:\"0\";s:20:\"attributes_only_list\";s:0:\"\";s:22:\"attributes_except_list\";s:0:\"\";s:33:\"is_variation_product_manage_stock\";s:2:\"no\";s:37:\"single_variation_product_manage_stock\";s:0:\"\";s:15:\"variation_stock\";s:0:\"\";s:22:\"variation_stock_status\";s:4:\"auto\";s:30:\"put_variation_image_to_gallery\";s:1:\"0\";s:34:\"import_additional_variation_images\";i:0;s:29:\"single_variation_stock_status\";s:0:\"\";s:10:\"pmwi_order\";a:88:{s:6:\"status\";s:10:\"wc-pending\";s:12:\"status_xpath\";s:0:\"\";s:4:\"date\";s:3:\"now\";s:14:\"billing_source\";s:5:\"guest\";s:23:\"billing_source_match_by\";s:8:\"username\";s:23:\"billing_source_username\";s:0:\"\";s:20:\"billing_source_email\";s:0:\"\";s:17:\"billing_source_id\";s:0:\"\";s:22:\"billing_source_cf_name\";s:0:\"\";s:23:\"billing_source_cf_value\";s:0:\"\";s:18:\"billing_first_name\";s:0:\"\";s:17:\"billing_last_name\";s:0:\"\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:0:\"\";s:13:\"billing_state\";s:0:\"\";s:13:\"billing_email\";s:0:\"\";s:13:\"billing_phone\";s:0:\"\";s:24:\"guest_billing_first_name\";s:0:\"\";s:23:\"guest_billing_last_name\";s:0:\"\";s:21:\"guest_billing_company\";s:0:\"\";s:23:\"guest_billing_address_1\";s:0:\"\";s:23:\"guest_billing_address_2\";s:0:\"\";s:18:\"guest_billing_city\";s:0:\"\";s:22:\"guest_billing_postcode\";s:0:\"\";s:21:\"guest_billing_country\";s:0:\"\";s:19:\"guest_billing_state\";s:0:\"\";s:19:\"guest_billing_email\";s:0:\"\";s:19:\"guest_billing_phone\";s:0:\"\";s:17:\"is_guest_matching\";i:0;s:15:\"shipping_source\";s:4:\"copy\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:14:\"shipping_email\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:17:\"copy_from_billing\";i:0;s:22:\"customer_provided_note\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:20:\"payment_method_xpath\";s:0:\"\";s:14:\"transaction_id\";s:0:\"\";s:22:\"products_repeater_mode\";s:3:\"csv\";s:32:\"products_repeater_mode_separator\";s:1:\"|\";s:30:\"products_repeater_mode_foreach\";s:0:\"\";s:15:\"products_source\";s:8:\"existing\";s:8:\"products\";a:0:{}s:15:\"manual_products\";a:0:{}s:18:\"fees_repeater_mode\";s:3:\"csv\";s:28:\"fees_repeater_mode_separator\";s:1:\"|\";s:26:\"fees_repeater_mode_foreach\";s:0:\"\";s:4:\"fees\";a:0:{}s:21:\"coupons_repeater_mode\";s:3:\"csv\";s:31:\"coupons_repeater_mode_separator\";s:1:\"|\";s:29:\"coupons_repeater_mode_foreach\";s:0:\"\";s:7:\"coupons\";a:0:{}s:22:\"shipping_repeater_mode\";s:3:\"csv\";s:32:\"shipping_repeater_mode_separator\";s:1:\"|\";s:30:\"shipping_repeater_mode_foreach\";s:0:\"\";s:8:\"shipping\";a:0:{}s:19:\"taxes_repeater_mode\";s:3:\"csv\";s:29:\"taxes_repeater_mode_separator\";s:1:\"|\";s:27:\"taxes_repeater_mode_foreach\";s:0:\"\";s:5:\"taxes\";a:0:{}s:17:\"order_total_logic\";s:4:\"auto\";s:17:\"order_total_xpath\";s:0:\"\";s:19:\"order_refund_amount\";s:0:\"\";s:19:\"order_refund_reason\";s:0:\"\";s:17:\"order_refund_date\";s:3:\"now\";s:26:\"order_refund_issued_source\";s:8:\"existing\";s:28:\"order_refund_issued_match_by\";s:8:\"username\";s:28:\"order_refund_issued_username\";s:0:\"\";s:25:\"order_refund_issued_email\";s:0:\"\";s:27:\"order_refund_issued_cf_name\";s:0:\"\";s:28:\"order_refund_issued_cf_value\";s:0:\"\";s:22:\"order_refund_issued_id\";s:0:\"\";s:19:\"notes_repeater_mode\";s:3:\"csv\";s:29:\"notes_repeater_mode_separator\";s:1:\"|\";s:27:\"notes_repeater_mode_foreach\";s:0:\"\";s:5:\"notes\";a:0:{}}s:25:\"is_update_billing_details\";i:1;s:26:\"is_update_shipping_details\";i:1;s:17:\"is_update_payment\";i:1;s:15:\"is_update_notes\";i:1;s:18:\"is_update_products\";i:1;s:21:\"update_products_logic\";s:11:\"full_update\";s:14:\"is_update_fees\";i:1;s:17:\"is_update_coupons\";i:1;s:18:\"is_update_shipping\";i:1;s:15:\"is_update_taxes\";i:1;s:17:\"is_update_refunds\";i:1;s:15:\"is_update_total\";i:1;s:31:\"do_not_send_order_notifications\";i:1;s:26:\"is_update_advanced_options\";s:1:\"1\";s:28:\"is_update_catalog_visibility\";s:1:\"1\";s:25:\"is_update_featured_status\";s:1:\"1\";s:3:\"acf\";a:9:{i:92;s:1:\"0\";i:153;s:1:\"0\";i:95;s:1:\"0\";i:102;s:1:\"0\";i:110;s:1:\"0\";i:116;s:1:\"0\";i:124;s:1:\"0\";i:129;s:1:\"0\";i:134;s:1:\"0\";}s:6:\"fields\";a:0:{}s:23:\"is_multiple_field_value\";a:0:{}s:14:\"multiple_value\";a:0:{}s:16:\"fields_delimiter\";a:0:{}s:13:\"is_update_acf\";s:1:\"1\";s:16:\"update_acf_logic\";s:11:\"full_update\";s:8:\"acf_list\";s:1:\"0\";s:13:\"acf_only_list\";s:0:\"\";s:15:\"acf_except_list\";s:0:\"\";}', '0000-00-00 00:00:00', 'node', 0, 0, 0, 0, '2018-09-27 01:31:40', 326, 0, 0, 0, 0, 0, 0, '0000-00-00 00:00:00', 0, '0000-00-00 00:00:00', '0000-00-00 00:00:00', '0000-00-00 00:00:00', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pmxi_posts`
--

CREATE TABLE `wp_pmxi_posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL,
  `import_id` bigint(20) UNSIGNED NOT NULL,
  `unique_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_key` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `iteration` bigint(20) NOT NULL DEFAULT 0,
  `specified` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_pmxi_posts`
--

INSERT INTO `wp_pmxi_posts` (`id`, `post_id`, `import_id`, `unique_key`, `product_key`, `iteration`, `specified`) VALUES
(99, 273, 1, 'Bandeja de espuma | Mais resistente | Retangular | Branco | Contém 100 unidadesBranca-Eps/Espuma-', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_pmxi_templates`
--

CREATE TABLE `wp_pmxi_templates` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scheduled` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `title` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_keep_linebreaks` tinyint(1) NOT NULL DEFAULT 0,
  `is_leave_html` tinyint(1) NOT NULL DEFAULT 0,
  `fix_characters` tinyint(1) NOT NULL DEFAULT 0,
  `meta` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `wp_pmxi_templates`
--

INSERT INTO `wp_pmxi_templates` (`id`, `options`, `scheduled`, `name`, `title`, `content`, `is_keep_linebreaks`, `is_leave_html`, `fix_characters`, `meta`) VALUES
(1, 'a:392:{s:4:\"type\";s:4:\"post\";s:21:\"is_override_post_type\";i:0;s:15:\"post_type_xpath\";s:0:\"\";s:8:\"deligate\";s:0:\"\";s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:7:\"product\";s:14:\"featured_delim\";s:1:\",\";s:10:\"atch_delim\";s:1:\",\";s:25:\"is_search_existing_attach\";s:1:\"0\";s:15:\"post_taxonomies\";a:1:{s:11:\"product_cat\";s:185:\"[{\"item_id\":\"1\",\"left\":2,\"right\":5,\"parent_id\":null,\"xpath\":\"{categoria[1]}\",\"assign\":true},{\"item_id\":\"2\",\"left\":3,\"right\":4,\"parent_id\":\"1\",\"xpath\":\"{subcategoria[1]}\",\"assign\":true}]\";}s:6:\"parent\";i:0;s:23:\"is_multiple_page_parent\";s:3:\"yes\";s:18:\"single_page_parent\";s:0:\"\";s:5:\"order\";s:1:\"0\";s:6:\"status\";s:7:\"publish\";s:13:\"page_template\";s:7:\"default\";s:25:\"is_multiple_page_template\";s:3:\"yes\";s:20:\"single_page_template\";s:0:\"\";s:15:\"page_taxonomies\";a:0:{}s:9:\"date_type\";s:8:\"specific\";s:4:\"date\";s:3:\"now\";s:10:\"date_start\";s:3:\"now\";s:8:\"date_end\";s:3:\"now\";s:11:\"custom_name\";a:0:{}s:12:\"custom_value\";a:0:{}s:13:\"custom_format\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:14:\"custom_mapping\";a:0:{}s:17:\"serialized_values\";a:2:{i:0;s:7:\"[\"\",\"\"]\";i:1;s:7:\"[\"\",\"\"]\";}s:20:\"custom_mapping_rules\";a:2:{i:0;s:2:\"[]\";i:1;s:2:\"[]\";}s:14:\"comment_status\";s:4:\"open\";s:20:\"comment_status_xpath\";s:0:\"\";s:11:\"ping_status\";s:4:\"open\";s:17:\"ping_status_xpath\";s:0:\"\";s:12:\"create_draft\";s:2:\"no\";s:6:\"author\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:9:\"post_slug\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:19:\"is_import_specified\";s:1:\"0\";s:16:\"import_specified\";s:0:\"\";s:16:\"is_delete_source\";i:0;s:8:\"is_cloak\";i:0;s:10:\"unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:14:\"tmp_unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:9:\"feed_type\";s:4:\"auto\";s:22:\"search_existing_images\";s:1:\"1\";s:18:\"create_new_records\";i:1;s:17:\"is_delete_missing\";s:1:\"0\";s:20:\"set_missing_to_draft\";s:1:\"0\";s:20:\"is_update_missing_cf\";s:1:\"0\";s:22:\"update_missing_cf_name\";s:0:\"\";s:23:\"update_missing_cf_value\";s:0:\"\";s:20:\"is_keep_former_posts\";s:2:\"no\";s:16:\"is_update_status\";s:1:\"1\";s:17:\"is_update_content\";s:1:\"1\";s:15:\"is_update_title\";s:1:\"1\";s:14:\"is_update_slug\";s:1:\"1\";s:17:\"is_update_excerpt\";s:1:\"1\";s:20:\"is_update_categories\";s:1:\"1\";s:16:\"is_update_author\";s:1:\"1\";s:24:\"is_update_comment_status\";s:1:\"1\";s:19:\"is_update_post_type\";s:1:\"1\";s:23:\"update_categories_logic\";s:11:\"full_update\";s:15:\"taxonomies_list\";s:1:\"0\";s:20:\"taxonomies_only_list\";s:0:\"\";s:22:\"taxonomies_except_list\";s:0:\"\";s:21:\"is_update_attachments\";s:1:\"1\";s:16:\"is_update_images\";s:1:\"1\";s:19:\"update_images_logic\";s:11:\"full_update\";s:15:\"is_update_dates\";s:1:\"1\";s:20:\"is_update_menu_order\";s:1:\"1\";s:16:\"is_update_parent\";s:1:\"1\";s:19:\"is_keep_attachments\";s:1:\"0\";s:12:\"is_keep_imgs\";s:1:\"0\";s:20:\"do_not_remove_images\";s:1:\"1\";s:23:\"is_update_custom_fields\";s:1:\"1\";s:26:\"update_custom_fields_logic\";s:11:\"full_update\";s:18:\"custom_fields_list\";s:1:\"0\";s:23:\"custom_fields_only_list\";s:0:\"\";s:25:\"custom_fields_except_list\";s:0:\"\";s:18:\"duplicate_matching\";s:6:\"manual\";s:19:\"duplicate_indicator\";s:5:\"title\";s:21:\"custom_duplicate_name\";s:4:\"_sku\";s:22:\"custom_duplicate_value\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:12:\"is_scheduled\";s:0:\"\";s:16:\"scheduled_period\";s:0:\"\";s:13:\"friendly_name\";s:0:\"\";s:19:\"records_per_request\";s:2:\"20\";s:24:\"auto_records_per_request\";i:0;s:18:\"auto_rename_images\";s:1:\"0\";s:25:\"auto_rename_images_suffix\";s:0:\"\";s:11:\"images_name\";s:8:\"filename\";s:11:\"post_format\";s:8:\"standard\";s:17:\"post_format_xpath\";s:0:\"\";s:8:\"encoding\";s:5:\"UTF-8\";s:9:\"delimiter\";s:1:\",\";s:16:\"image_meta_title\";s:0:\"\";s:22:\"image_meta_title_delim\";s:1:\",\";s:18:\"image_meta_caption\";s:0:\"\";s:24:\"image_meta_caption_delim\";s:1:\",\";s:14:\"image_meta_alt\";s:0:\"\";s:20:\"image_meta_alt_delim\";s:1:\",\";s:22:\"image_meta_description\";s:0:\"\";s:28:\"image_meta_description_delim\";s:1:\",\";s:34:\"image_meta_description_delim_logic\";s:8:\"separate\";s:12:\"status_xpath\";s:0:\"\";s:15:\"download_images\";s:2:\"no\";s:17:\"converted_options\";s:1:\"1\";s:15:\"update_all_data\";s:3:\"yes\";s:12:\"is_fast_mode\";s:1:\"0\";s:9:\"chuncking\";s:1:\"1\";s:17:\"import_processing\";s:4:\"ajax\";s:26:\"processing_iteration_logic\";s:4:\"auto\";s:28:\"records_per_request_detected\";i:0;s:16:\"save_template_as\";s:1:\"1\";s:5:\"title\";s:28:\"{descriodoprodutocliente[1]}\";s:7:\"content\";s:32:\"{descritivoprodutofornecedor[1]}\";s:4:\"name\";s:15:\"Produto padrão\";s:18:\"is_keep_linebreaks\";s:1:\"1\";s:13:\"is_leave_html\";s:1:\"0\";s:14:\"fix_characters\";i:0;s:9:\"pid_xpath\";s:0:\"\";s:10:\"slug_xpath\";s:0:\"\";s:11:\"title_xpath\";s:0:\"\";s:14:\"featured_image\";s:16:\"{undefined11[1]}\";s:23:\"download_featured_image\";s:0:\"\";s:23:\"download_featured_delim\";s:1:\",\";s:22:\"gallery_featured_image\";s:0:\"\";s:22:\"gallery_featured_delim\";s:1:\",\";s:11:\"is_featured\";s:1:\"1\";s:17:\"is_featured_xpath\";s:0:\"\";s:20:\"set_image_meta_title\";s:1:\"0\";s:22:\"set_image_meta_caption\";s:1:\"0\";s:18:\"set_image_meta_alt\";s:1:\"0\";s:26:\"set_image_meta_description\";s:1:\"0\";s:18:\"auto_set_extension\";s:1:\"0\";s:13:\"new_extension\";s:0:\"\";s:9:\"tax_logic\";a:4:{s:18:\"product_visibility\";s:6:\"single\";s:11:\"product_cat\";s:12:\"hierarchical\";s:11:\"product_tag\";s:6:\"single\";s:14:\"dc_vendor_shop\";s:6:\"single\";}s:10:\"tax_assing\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:20:\"multiple_term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:23:\"tax_hierarchical_assing\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:1:\"1\";s:6:\"NUMBER\";s:1:\"1\";}}s:34:\"tax_hierarchical_last_level_assign\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:16:\"tax_single_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:18:\"tax_multiple_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:22:\"tax_hierarchical_xpath\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}s:18:\"tax_multiple_delim\";a:4:{s:18:\"product_visibility\";s:1:\",\";s:11:\"product_cat\";s:1:\",\";s:11:\"product_tag\";s:1:\",\";s:14:\"dc_vendor_shop\";s:1:\",\";}s:22:\"tax_hierarchical_delim\";a:1:{s:11:\"product_cat\";s:1:\">\";}s:25:\"tax_manualhierarchy_delim\";a:1:{s:11:\"product_cat\";s:1:\",\";}s:29:\"tax_hierarchical_logic_entire\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:29:\"tax_hierarchical_logic_manual\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:18:\"tax_enable_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:25:\"tax_is_full_search_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:27:\"tax_is_full_search_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:29:\"tax_assign_to_one_term_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"tax_assign_to_one_term_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"tax_mapping\";a:4:{s:18:\"product_visibility\";s:2:\"[]\";s:11:\"product_cat\";s:2:\"[]\";s:11:\"product_tag\";s:2:\"[]\";s:14:\"dc_vendor_shop\";s:2:\"[]\";}s:17:\"tax_logic_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"is_tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:28:\"tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"|\";}s:12:\"nested_files\";a:0:{}s:17:\"xml_reader_engine\";s:1:\"0\";s:13:\"taxonomy_type\";s:0:\"\";s:15:\"taxonomy_parent\";s:0:\"\";s:13:\"taxonomy_slug\";s:4:\"auto\";s:19:\"taxonomy_slug_xpath\";s:0:\"\";s:15:\"import_img_tags\";s:1:\"0\";s:28:\"search_existing_images_logic\";s:6:\"by_url\";s:24:\"enable_import_scheduling\";s:5:\"false\";s:17:\"scheduling_enable\";s:1:\"0\";s:22:\"scheduling_weekly_days\";s:0:\"\";s:17:\"scheduling_run_on\";s:6:\"weekly\";s:22:\"scheduling_monthly_day\";s:0:\"\";s:16:\"scheduling_times\";a:1:{i:0;s:0:\"\";}s:19:\"scheduling_timezone\";s:17:\"America/Sao_Paulo\";s:24:\"is_multiple_product_type\";s:3:\"yes\";s:21:\"multiple_product_type\";s:6:\"simple\";s:19:\"single_product_type\";s:0:\"\";s:18:\"is_product_virtual\";s:2:\"no\";s:22:\"single_product_virtual\";s:0:\"\";s:23:\"is_product_downloadable\";s:2:\"no\";s:27:\"single_product_downloadable\";s:0:\"\";s:18:\"is_product_enabled\";s:3:\"yes\";s:22:\"single_product_enabled\";s:0:\"\";s:20:\"is_variation_enabled\";s:3:\"yes\";s:24:\"single_variation_enabled\";s:0:\"\";s:19:\"is_product_featured\";s:2:\"no\";s:23:\"single_product_featured\";s:0:\"\";s:21:\"is_product_visibility\";s:7:\"visible\";s:25:\"single_product_visibility\";s:0:\"\";s:18:\"single_product_sku\";s:21:\"{codigofornecedor[1]}\";s:18:\"single_product_url\";s:0:\"\";s:26:\"single_product_button_text\";s:0:\"\";s:28:\"single_product_regular_price\";s:9:\"{preo[1]}\";s:25:\"single_product_sale_price\";s:0:\"\";s:20:\"single_product_files\";s:0:\"\";s:26:\"single_product_files_names\";s:0:\"\";s:29:\"single_product_download_limit\";s:0:\"\";s:30:\"single_product_download_expiry\";s:0:\"\";s:28:\"single_product_download_type\";s:0:\"\";s:30:\"is_multiple_product_tax_status\";s:3:\"yes\";s:27:\"multiple_product_tax_status\";s:4:\"none\";s:25:\"single_product_tax_status\";s:0:\"\";s:29:\"is_multiple_product_tax_class\";s:3:\"yes\";s:26:\"multiple_product_tax_class\";s:0:\"\";s:24:\"single_product_tax_class\";s:0:\"\";s:23:\"is_product_manage_stock\";s:2:\"no\";s:27:\"single_product_manage_stock\";s:0:\"\";s:24:\"single_product_stock_qty\";s:0:\"\";s:20:\"product_stock_status\";s:4:\"auto\";s:27:\"single_product_stock_status\";s:0:\"\";s:24:\"product_allow_backorders\";s:2:\"no\";s:31:\"single_product_allow_backorders\";s:0:\"\";s:25:\"product_sold_individually\";s:2:\"no\";s:32:\"single_product_sold_individually\";s:0:\"\";s:21:\"single_product_weight\";s:0:\"\";s:21:\"single_product_length\";s:0:\"\";s:20:\"single_product_width\";s:0:\"\";s:21:\"single_product_height\";s:0:\"\";s:34:\"is_multiple_product_shipping_class\";s:3:\"yes\";s:31:\"multiple_product_shipping_class\";s:2:\"-1\";s:29:\"single_product_shipping_class\";s:0:\"\";s:28:\"is_multiple_grouping_product\";s:3:\"yes\";s:25:\"multiple_grouping_product\";s:0:\"\";s:23:\"single_grouping_product\";s:0:\"\";s:23:\"single_product_up_sells\";s:0:\"\";s:26:\"single_product_cross_sells\";s:0:\"\";s:14:\"attribute_name\";a:3:{i:0;s:5:\"Corpo\";i:1;s:8:\"Material\";i:2;s:6:\"Volume\";}s:15:\"attribute_value\";a:3:{i:0;s:8:\"{cor[1]}\";i:1;s:13:\"{material[1]}\";i:2;s:11:\"{volume[1]}\";}s:13:\"in_variations\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:10:\"is_visible\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_taxonomy\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:29:\"create_taxonomy_in_not_exists\";a:4:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";}s:11:\"is_advanced\";a:4:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";}s:22:\"advanced_in_variations\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:28:\"advanced_in_variations_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:19:\"advanced_is_visible\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:25:\"advanced_is_visible_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:20:\"advanced_is_taxonomy\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:26:\"advanced_is_taxonomy_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:24:\"advanced_is_create_terms\";a:4:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:30:\"advanced_is_create_terms_xpath\";a:4:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";s:2:\"00\";s:0:\"\";}s:28:\"single_product_purchase_note\";s:0:\"\";s:25:\"single_product_menu_order\";s:1:\"0\";s:25:\"is_product_enable_reviews\";s:2:\"no\";s:29:\"single_product_enable_reviews\";s:0:\"\";s:17:\"single_product_id\";s:0:\"\";s:24:\"single_product_parent_id\";s:0:\"\";s:36:\"single_product_id_first_is_parent_id\";s:0:\"\";s:44:\"single_product_first_is_parent_id_parent_sku\";s:0:\"\";s:39:\"single_product_id_first_is_parent_title\";s:28:\"{descriodoprodutocliente[1]}\";s:47:\"single_product_first_is_parent_title_parent_sku\";s:0:\"\";s:36:\"single_product_id_first_is_variation\";s:28:\"{descriodoprodutocliente[1]}\";s:8:\"_virtual\";i:0;s:13:\"_downloadable\";i:0;s:24:\"is_regular_price_shedule\";s:1:\"0\";s:28:\"single_sale_price_dates_from\";s:3:\"now\";s:26:\"single_sale_price_dates_to\";s:3:\"now\";s:19:\"product_files_delim\";s:1:\",\";s:25:\"product_files_names_delim\";s:1:\",\";s:15:\"matching_parent\";s:4:\"auto\";s:16:\"parent_indicator\";s:12:\"custom field\";s:28:\"custom_parent_indicator_name\";s:0:\"\";s:29:\"custom_parent_indicator_value\";s:0:\"\";s:28:\"missing_records_stock_status\";s:1:\"0\";s:16:\"variations_xpath\";s:0:\"\";s:17:\"_variable_virtual\";s:0:\"\";s:22:\"_variable_downloadable\";s:0:\"\";s:14:\"variable_stock\";s:0:\"\";s:22:\"variable_regular_price\";s:0:\"\";s:19:\"variable_sale_price\";s:0:\"\";s:30:\"is_variable_sale_price_shedule\";s:1:\"0\";s:30:\"variable_sale_price_dates_from\";s:0:\"\";s:28:\"variable_sale_price_dates_to\";s:0:\"\";s:15:\"variable_weight\";s:0:\"\";s:15:\"variable_length\";s:0:\"\";s:14:\"variable_width\";s:0:\"\";s:15:\"variable_height\";s:0:\"\";s:23:\"variable_shipping_class\";s:0:\"\";s:18:\"variable_tax_class\";s:0:\"\";s:19:\"variable_file_paths\";s:0:\"\";s:19:\"variable_file_names\";s:0:\"\";s:23:\"variable_download_limit\";s:0:\"\";s:24:\"variable_download_expiry\";s:0:\"\";s:27:\"is_variable_product_virtual\";s:2:\"no\";s:32:\"is_variable_product_manage_stock\";s:2:\"no\";s:43:\"is_multiple_variable_product_shipping_class\";s:3:\"yes\";s:40:\"multiple_variable_product_shipping_class\";s:2:\"-1\";s:38:\"single_variable_product_shipping_class\";s:0:\"\";s:38:\"is_multiple_variable_product_tax_class\";s:3:\"yes\";s:35:\"multiple_variable_product_tax_class\";s:6:\"parent\";s:33:\"single_variable_product_tax_class\";s:0:\"\";s:21:\"variable_stock_status\";s:7:\"instock\";s:28:\"single_variable_stock_status\";s:0:\"\";s:25:\"variable_allow_backorders\";s:2:\"no\";s:32:\"single_variable_allow_backorders\";s:0:\"\";s:32:\"is_variable_product_downloadable\";s:2:\"no\";s:36:\"single_variable_product_downloadable\";s:0:\"\";s:23:\"variable_attribute_name\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"variable_attribute_value\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:22:\"variable_in_variations\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:19:\"variable_is_visible\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:20:\"variable_is_taxonomy\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:38:\"variable_create_taxonomy_in_not_exists\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:28:\"variable_product_files_delim\";s:1:\",\";s:34:\"variable_product_files_names_delim\";s:1:\",\";s:14:\"variable_image\";s:0:\"\";s:12:\"variable_sku\";s:0:\"\";s:27:\"is_variable_product_enabled\";s:3:\"yes\";s:31:\"single_variable_product_enabled\";s:0:\"\";s:19:\"link_all_variations\";s:1:\"0\";s:25:\"variable_stock_use_parent\";s:1:\"0\";s:33:\"variable_regular_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_dates_use_parent\";s:1:\"0\";s:26:\"variable_weight_use_parent\";s:1:\"0\";s:31:\"single_variable_product_virtual\";s:0:\"\";s:42:\"single_variable_product_virtual_use_parent\";s:1:\"0\";s:36:\"single_variable_product_manage_stock\";s:0:\"\";s:47:\"single_variable_product_manage_stock_use_parent\";s:1:\"0\";s:30:\"variable_dimensions_use_parent\";s:1:\"0\";s:25:\"variable_image_use_parent\";s:1:\"0\";s:49:\"single_variable_product_shipping_class_use_parent\";s:1:\"0\";s:44:\"single_variable_product_tax_class_use_parent\";s:1:\"0\";s:47:\"single_variable_product_downloadable_use_parent\";s:1:\"0\";s:34:\"variable_download_limit_use_parent\";s:1:\"0\";s:35:\"variable_download_expiry_use_parent\";s:1:\"0\";s:36:\"single_product_variation_description\";s:0:\"\";s:20:\"variable_description\";s:0:\"\";s:31:\"variable_description_use_parent\";s:1:\"0\";s:15:\"first_is_parent\";s:3:\"yes\";s:28:\"single_product_whosale_price\";s:0:\"\";s:22:\"variable_whosale_price\";s:0:\"\";s:33:\"variable_whosale_price_use_parent\";i:0;s:27:\"disable_auto_sku_generation\";s:1:\"0\";s:21:\"is_default_attributes\";s:1:\"0\";s:23:\"default_attributes_type\";s:5:\"first\";s:20:\"disable_sku_matching\";s:1:\"1\";s:21:\"disable_prepare_price\";s:1:\"1\";s:27:\"prepare_price_to_woo_format\";s:1:\"0\";s:25:\"convert_decimal_separator\";s:1:\"1\";s:18:\"grouping_indicator\";s:5:\"xpath\";s:30:\"custom_grouping_indicator_name\";s:0:\"\";s:31:\"custom_grouping_indicator_value\";s:0:\"\";s:22:\"is_update_product_type\";s:1:\"1\";s:19:\"make_simple_product\";s:1:\"1\";s:23:\"variable_sku_add_parent\";s:1:\"0\";s:16:\"set_parent_stock\";s:1:\"0\";s:35:\"single_product_regular_price_adjust\";s:0:\"\";s:40:\"single_product_regular_price_adjust_type\";s:1:\"%\";s:32:\"single_product_sale_price_adjust\";s:0:\"\";s:37:\"single_product_sale_price_adjust_type\";s:1:\"%\";s:20:\"is_update_attributes\";s:1:\"1\";s:23:\"update_attributes_logic\";s:11:\"full_update\";s:15:\"attributes_list\";s:1:\"0\";s:20:\"attributes_only_list\";s:0:\"\";s:22:\"attributes_except_list\";s:0:\"\";s:33:\"is_variation_product_manage_stock\";s:2:\"no\";s:37:\"single_variation_product_manage_stock\";s:0:\"\";s:15:\"variation_stock\";s:0:\"\";s:22:\"variation_stock_status\";s:4:\"auto\";s:30:\"put_variation_image_to_gallery\";s:1:\"0\";s:34:\"import_additional_variation_images\";i:0;s:29:\"single_variation_stock_status\";s:0:\"\";s:10:\"pmwi_order\";a:88:{s:6:\"status\";s:10:\"wc-pending\";s:12:\"status_xpath\";s:0:\"\";s:4:\"date\";s:3:\"now\";s:14:\"billing_source\";s:5:\"guest\";s:23:\"billing_source_match_by\";s:8:\"username\";s:23:\"billing_source_username\";s:0:\"\";s:20:\"billing_source_email\";s:0:\"\";s:17:\"billing_source_id\";s:0:\"\";s:22:\"billing_source_cf_name\";s:0:\"\";s:23:\"billing_source_cf_value\";s:0:\"\";s:18:\"billing_first_name\";s:0:\"\";s:17:\"billing_last_name\";s:0:\"\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:0:\"\";s:13:\"billing_state\";s:0:\"\";s:13:\"billing_email\";s:0:\"\";s:13:\"billing_phone\";s:0:\"\";s:24:\"guest_billing_first_name\";s:0:\"\";s:23:\"guest_billing_last_name\";s:0:\"\";s:21:\"guest_billing_company\";s:0:\"\";s:23:\"guest_billing_address_1\";s:0:\"\";s:23:\"guest_billing_address_2\";s:0:\"\";s:18:\"guest_billing_city\";s:0:\"\";s:22:\"guest_billing_postcode\";s:0:\"\";s:21:\"guest_billing_country\";s:0:\"\";s:19:\"guest_billing_state\";s:0:\"\";s:19:\"guest_billing_email\";s:0:\"\";s:19:\"guest_billing_phone\";s:0:\"\";s:17:\"is_guest_matching\";i:0;s:15:\"shipping_source\";s:4:\"copy\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:14:\"shipping_email\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:17:\"copy_from_billing\";i:0;s:22:\"customer_provided_note\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:20:\"payment_method_xpath\";s:0:\"\";s:14:\"transaction_id\";s:0:\"\";s:22:\"products_repeater_mode\";s:3:\"csv\";s:32:\"products_repeater_mode_separator\";s:1:\"|\";s:30:\"products_repeater_mode_foreach\";s:0:\"\";s:15:\"products_source\";s:8:\"existing\";s:8:\"products\";a:0:{}s:15:\"manual_products\";a:0:{}s:18:\"fees_repeater_mode\";s:3:\"csv\";s:28:\"fees_repeater_mode_separator\";s:1:\"|\";s:26:\"fees_repeater_mode_foreach\";s:0:\"\";s:4:\"fees\";a:0:{}s:21:\"coupons_repeater_mode\";s:3:\"csv\";s:31:\"coupons_repeater_mode_separator\";s:1:\"|\";s:29:\"coupons_repeater_mode_foreach\";s:0:\"\";s:7:\"coupons\";a:0:{}s:22:\"shipping_repeater_mode\";s:3:\"csv\";s:32:\"shipping_repeater_mode_separator\";s:1:\"|\";s:30:\"shipping_repeater_mode_foreach\";s:0:\"\";s:8:\"shipping\";a:0:{}s:19:\"taxes_repeater_mode\";s:3:\"csv\";s:29:\"taxes_repeater_mode_separator\";s:1:\"|\";s:27:\"taxes_repeater_mode_foreach\";s:0:\"\";s:5:\"taxes\";a:0:{}s:17:\"order_total_logic\";s:4:\"auto\";s:17:\"order_total_xpath\";s:0:\"\";s:19:\"order_refund_amount\";s:0:\"\";s:19:\"order_refund_reason\";s:0:\"\";s:17:\"order_refund_date\";s:3:\"now\";s:26:\"order_refund_issued_source\";s:8:\"existing\";s:28:\"order_refund_issued_match_by\";s:8:\"username\";s:28:\"order_refund_issued_username\";s:0:\"\";s:25:\"order_refund_issued_email\";s:0:\"\";s:27:\"order_refund_issued_cf_name\";s:0:\"\";s:28:\"order_refund_issued_cf_value\";s:0:\"\";s:22:\"order_refund_issued_id\";s:0:\"\";s:19:\"notes_repeater_mode\";s:3:\"csv\";s:29:\"notes_repeater_mode_separator\";s:1:\"|\";s:27:\"notes_repeater_mode_foreach\";s:0:\"\";s:5:\"notes\";a:0:{}}s:25:\"is_update_billing_details\";i:1;s:26:\"is_update_shipping_details\";i:1;s:17:\"is_update_payment\";i:1;s:15:\"is_update_notes\";i:1;s:18:\"is_update_products\";i:1;s:21:\"update_products_logic\";s:11:\"full_update\";s:14:\"is_update_fees\";i:1;s:17:\"is_update_coupons\";i:1;s:18:\"is_update_shipping\";i:1;s:15:\"is_update_taxes\";i:1;s:17:\"is_update_refunds\";i:1;s:15:\"is_update_total\";i:1;s:31:\"do_not_send_order_notifications\";i:1;s:26:\"is_update_advanced_options\";s:1:\"1\";s:28:\"is_update_catalog_visibility\";s:1:\"1\";s:25:\"is_update_featured_status\";s:1:\"1\";s:3:\"acf\";a:9:{i:92;s:1:\"0\";i:153;s:1:\"0\";i:95;s:1:\"0\";i:102;s:1:\"0\";i:110;s:1:\"0\";i:116;s:1:\"0\";i:124;s:1:\"0\";i:129;s:1:\"0\";i:134;s:1:\"0\";}s:6:\"fields\";a:0:{}s:23:\"is_multiple_field_value\";a:0:{}s:14:\"multiple_value\";a:0:{}s:16:\"fields_delimiter\";a:0:{}s:13:\"is_update_acf\";s:1:\"1\";s:16:\"update_acf_logic\";s:11:\"full_update\";s:8:\"acf_list\";s:1:\"0\";s:13:\"acf_only_list\";s:0:\"\";s:15:\"acf_except_list\";s:0:\"\";}', '', 'Produto padrão', 'N;', 'N;', 1, 0, 0, 'N;'),
(2, 'a:392:{s:4:\"type\";s:4:\"post\";s:21:\"is_override_post_type\";i:0;s:15:\"post_type_xpath\";s:0:\"\";s:8:\"deligate\";s:0:\"\";s:11:\"wizard_type\";s:3:\"new\";s:11:\"custom_type\";s:7:\"product\";s:14:\"featured_delim\";s:1:\",\";s:10:\"atch_delim\";s:1:\",\";s:25:\"is_search_existing_attach\";s:1:\"0\";s:15:\"post_taxonomies\";a:1:{s:11:\"product_cat\";s:185:\"[{\"item_id\":\"1\",\"left\":2,\"right\":5,\"parent_id\":null,\"xpath\":\"{categoria[1]}\",\"assign\":true},{\"item_id\":\"2\",\"left\":3,\"right\":4,\"parent_id\":\"1\",\"xpath\":\"{subcategoria[1]}\",\"assign\":true}]\";}s:6:\"parent\";i:0;s:23:\"is_multiple_page_parent\";s:3:\"yes\";s:18:\"single_page_parent\";s:0:\"\";s:5:\"order\";s:1:\"0\";s:6:\"status\";s:7:\"publish\";s:13:\"page_template\";s:7:\"default\";s:25:\"is_multiple_page_template\";s:3:\"yes\";s:20:\"single_page_template\";s:0:\"\";s:15:\"page_taxonomies\";a:0:{}s:9:\"date_type\";s:8:\"specific\";s:4:\"date\";s:3:\"now\";s:10:\"date_start\";s:3:\"now\";s:8:\"date_end\";s:3:\"now\";s:11:\"custom_name\";a:0:{}s:12:\"custom_value\";a:0:{}s:13:\"custom_format\";a:2:{i:0;s:1:\"0\";i:1;s:1:\"0\";}s:14:\"custom_mapping\";a:0:{}s:17:\"serialized_values\";a:2:{i:0;s:7:\"[\"\",\"\"]\";i:1;s:7:\"[\"\",\"\"]\";}s:20:\"custom_mapping_rules\";a:2:{i:0;s:2:\"[]\";i:1;s:2:\"[]\";}s:14:\"comment_status\";s:4:\"open\";s:20:\"comment_status_xpath\";s:0:\"\";s:11:\"ping_status\";s:4:\"open\";s:17:\"ping_status_xpath\";s:0:\"\";s:12:\"create_draft\";s:2:\"no\";s:6:\"author\";s:0:\"\";s:12:\"post_excerpt\";s:0:\"\";s:9:\"post_slug\";s:0:\"\";s:11:\"attachments\";s:0:\"\";s:19:\"is_import_specified\";s:1:\"0\";s:16:\"import_specified\";s:0:\"\";s:16:\"is_delete_source\";i:0;s:8:\"is_cloak\";i:0;s:10:\"unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:14:\"tmp_unique_key\";s:62:\"{descriodoprodutocliente[1]}{cor[1]}-{material[1]}-{volume[1]}\";s:9:\"feed_type\";s:4:\"auto\";s:22:\"search_existing_images\";s:1:\"1\";s:18:\"create_new_records\";i:1;s:17:\"is_delete_missing\";s:1:\"0\";s:20:\"set_missing_to_draft\";s:1:\"0\";s:20:\"is_update_missing_cf\";s:1:\"0\";s:22:\"update_missing_cf_name\";s:0:\"\";s:23:\"update_missing_cf_value\";s:0:\"\";s:20:\"is_keep_former_posts\";s:2:\"no\";s:16:\"is_update_status\";s:1:\"1\";s:17:\"is_update_content\";s:1:\"1\";s:15:\"is_update_title\";s:1:\"1\";s:14:\"is_update_slug\";s:1:\"1\";s:17:\"is_update_excerpt\";s:1:\"1\";s:20:\"is_update_categories\";s:1:\"1\";s:16:\"is_update_author\";s:1:\"1\";s:24:\"is_update_comment_status\";s:1:\"1\";s:19:\"is_update_post_type\";s:1:\"1\";s:23:\"update_categories_logic\";s:11:\"full_update\";s:15:\"taxonomies_list\";s:1:\"0\";s:20:\"taxonomies_only_list\";s:0:\"\";s:22:\"taxonomies_except_list\";s:0:\"\";s:21:\"is_update_attachments\";s:1:\"1\";s:16:\"is_update_images\";s:1:\"1\";s:19:\"update_images_logic\";s:11:\"full_update\";s:15:\"is_update_dates\";s:1:\"1\";s:20:\"is_update_menu_order\";s:1:\"1\";s:16:\"is_update_parent\";s:1:\"1\";s:19:\"is_keep_attachments\";s:1:\"0\";s:12:\"is_keep_imgs\";s:1:\"0\";s:20:\"do_not_remove_images\";s:1:\"1\";s:23:\"is_update_custom_fields\";s:1:\"1\";s:26:\"update_custom_fields_logic\";s:11:\"full_update\";s:18:\"custom_fields_list\";s:1:\"0\";s:23:\"custom_fields_only_list\";s:0:\"\";s:25:\"custom_fields_except_list\";s:0:\"\";s:18:\"duplicate_matching\";s:6:\"manual\";s:19:\"duplicate_indicator\";s:5:\"title\";s:21:\"custom_duplicate_name\";s:4:\"_sku\";s:22:\"custom_duplicate_value\";s:0:\"\";s:18:\"is_update_previous\";i:0;s:12:\"is_scheduled\";s:0:\"\";s:16:\"scheduled_period\";s:0:\"\";s:13:\"friendly_name\";s:0:\"\";s:19:\"records_per_request\";s:2:\"20\";s:24:\"auto_records_per_request\";i:0;s:18:\"auto_rename_images\";s:1:\"0\";s:25:\"auto_rename_images_suffix\";s:0:\"\";s:11:\"images_name\";s:8:\"filename\";s:11:\"post_format\";s:8:\"standard\";s:17:\"post_format_xpath\";s:0:\"\";s:8:\"encoding\";s:5:\"UTF-8\";s:9:\"delimiter\";s:1:\",\";s:16:\"image_meta_title\";s:0:\"\";s:22:\"image_meta_title_delim\";s:1:\",\";s:18:\"image_meta_caption\";s:0:\"\";s:24:\"image_meta_caption_delim\";s:1:\",\";s:14:\"image_meta_alt\";s:0:\"\";s:20:\"image_meta_alt_delim\";s:1:\",\";s:22:\"image_meta_description\";s:0:\"\";s:28:\"image_meta_description_delim\";s:1:\",\";s:34:\"image_meta_description_delim_logic\";s:8:\"separate\";s:12:\"status_xpath\";s:0:\"\";s:15:\"download_images\";s:2:\"no\";s:17:\"converted_options\";s:1:\"1\";s:15:\"update_all_data\";s:3:\"yes\";s:12:\"is_fast_mode\";s:1:\"0\";s:9:\"chuncking\";s:1:\"1\";s:17:\"import_processing\";s:4:\"ajax\";s:26:\"processing_iteration_logic\";s:4:\"auto\";s:28:\"records_per_request_detected\";i:0;s:16:\"save_template_as\";s:1:\"1\";s:5:\"title\";s:28:\"{descriodoprodutocliente[1]}\";s:7:\"content\";s:32:\"{descritivoprodutofornecedor[1]}\";s:4:\"name\";s:13:\"Produto final\";s:18:\"is_keep_linebreaks\";s:1:\"1\";s:13:\"is_leave_html\";s:1:\"0\";s:14:\"fix_characters\";i:0;s:9:\"pid_xpath\";s:0:\"\";s:10:\"slug_xpath\";s:0:\"\";s:11:\"title_xpath\";s:0:\"\";s:14:\"featured_image\";s:16:\"{undefined11[1]}\";s:23:\"download_featured_image\";s:0:\"\";s:23:\"download_featured_delim\";s:1:\",\";s:22:\"gallery_featured_image\";s:0:\"\";s:22:\"gallery_featured_delim\";s:1:\",\";s:11:\"is_featured\";s:1:\"1\";s:17:\"is_featured_xpath\";s:0:\"\";s:20:\"set_image_meta_title\";s:1:\"0\";s:22:\"set_image_meta_caption\";s:1:\"0\";s:18:\"set_image_meta_alt\";s:1:\"0\";s:26:\"set_image_meta_description\";s:1:\"0\";s:18:\"auto_set_extension\";s:1:\"0\";s:13:\"new_extension\";s:0:\"\";s:9:\"tax_logic\";a:4:{s:18:\"product_visibility\";s:6:\"single\";s:11:\"product_cat\";s:12:\"hierarchical\";s:11:\"product_tag\";s:6:\"single\";s:14:\"dc_vendor_shop\";s:6:\"single\";}s:10:\"tax_assing\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:20:\"multiple_term_assing\";a:4:{s:18:\"product_visibility\";s:1:\"1\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"1\";s:14:\"dc_vendor_shop\";s:1:\"1\";}s:23:\"tax_hierarchical_assing\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:1:\"1\";s:6:\"NUMBER\";s:1:\"1\";}}s:34:\"tax_hierarchical_last_level_assign\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:16:\"tax_single_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:18:\"tax_multiple_xpath\";a:4:{s:18:\"product_visibility\";s:0:\"\";s:11:\"product_cat\";s:0:\"\";s:11:\"product_tag\";s:0:\"\";s:14:\"dc_vendor_shop\";s:0:\"\";}s:22:\"tax_hierarchical_xpath\";a:1:{s:11:\"product_cat\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}}s:18:\"tax_multiple_delim\";a:4:{s:18:\"product_visibility\";s:1:\",\";s:11:\"product_cat\";s:1:\",\";s:11:\"product_tag\";s:1:\",\";s:14:\"dc_vendor_shop\";s:1:\",\";}s:22:\"tax_hierarchical_delim\";a:1:{s:11:\"product_cat\";s:1:\">\";}s:25:\"tax_manualhierarchy_delim\";a:1:{s:11:\"product_cat\";s:1:\",\";}s:29:\"tax_hierarchical_logic_entire\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:29:\"tax_hierarchical_logic_manual\";a:1:{s:11:\"product_cat\";s:1:\"1\";}s:18:\"tax_enable_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:25:\"tax_is_full_search_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:27:\"tax_is_full_search_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"1\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:29:\"tax_assign_to_one_term_single\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"tax_assign_to_one_term_multiple\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:11:\"tax_mapping\";a:4:{s:18:\"product_visibility\";s:2:\"[]\";s:11:\"product_cat\";s:2:\"[]\";s:11:\"product_tag\";s:2:\"[]\";s:14:\"dc_vendor_shop\";s:2:\"[]\";}s:17:\"tax_logic_mapping\";a:4:{s:18:\"product_visibility\";s:1:\"0\";s:11:\"product_cat\";s:1:\"0\";s:11:\"product_tag\";s:1:\"0\";s:14:\"dc_vendor_shop\";s:1:\"0\";}s:31:\"is_tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"0\";}s:28:\"tax_hierarchical_group_delim\";a:1:{s:11:\"product_cat\";s:1:\"|\";}s:12:\"nested_files\";a:0:{}s:17:\"xml_reader_engine\";s:1:\"0\";s:13:\"taxonomy_type\";s:0:\"\";s:15:\"taxonomy_parent\";s:0:\"\";s:13:\"taxonomy_slug\";s:4:\"auto\";s:19:\"taxonomy_slug_xpath\";s:0:\"\";s:15:\"import_img_tags\";s:1:\"0\";s:28:\"search_existing_images_logic\";s:6:\"by_url\";s:24:\"enable_import_scheduling\";s:5:\"false\";s:17:\"scheduling_enable\";s:1:\"0\";s:22:\"scheduling_weekly_days\";s:0:\"\";s:17:\"scheduling_run_on\";s:6:\"weekly\";s:22:\"scheduling_monthly_day\";s:0:\"\";s:16:\"scheduling_times\";a:1:{i:0;s:0:\"\";}s:19:\"scheduling_timezone\";s:17:\"America/Sao_Paulo\";s:24:\"is_multiple_product_type\";s:3:\"yes\";s:21:\"multiple_product_type\";s:6:\"simple\";s:19:\"single_product_type\";s:0:\"\";s:18:\"is_product_virtual\";s:2:\"no\";s:22:\"single_product_virtual\";s:0:\"\";s:23:\"is_product_downloadable\";s:2:\"no\";s:27:\"single_product_downloadable\";s:0:\"\";s:18:\"is_product_enabled\";s:3:\"yes\";s:22:\"single_product_enabled\";s:0:\"\";s:20:\"is_variation_enabled\";s:3:\"yes\";s:24:\"single_variation_enabled\";s:0:\"\";s:19:\"is_product_featured\";s:2:\"no\";s:23:\"single_product_featured\";s:0:\"\";s:21:\"is_product_visibility\";s:7:\"visible\";s:25:\"single_product_visibility\";s:0:\"\";s:18:\"single_product_sku\";s:21:\"{codigofornecedor[1]}\";s:18:\"single_product_url\";s:0:\"\";s:26:\"single_product_button_text\";s:0:\"\";s:28:\"single_product_regular_price\";s:9:\"{preo[1]}\";s:25:\"single_product_sale_price\";s:0:\"\";s:20:\"single_product_files\";s:0:\"\";s:26:\"single_product_files_names\";s:0:\"\";s:29:\"single_product_download_limit\";s:0:\"\";s:30:\"single_product_download_expiry\";s:0:\"\";s:28:\"single_product_download_type\";s:0:\"\";s:30:\"is_multiple_product_tax_status\";s:3:\"yes\";s:27:\"multiple_product_tax_status\";s:4:\"none\";s:25:\"single_product_tax_status\";s:0:\"\";s:29:\"is_multiple_product_tax_class\";s:3:\"yes\";s:26:\"multiple_product_tax_class\";s:0:\"\";s:24:\"single_product_tax_class\";s:0:\"\";s:23:\"is_product_manage_stock\";s:2:\"no\";s:27:\"single_product_manage_stock\";s:0:\"\";s:24:\"single_product_stock_qty\";s:0:\"\";s:20:\"product_stock_status\";s:4:\"auto\";s:27:\"single_product_stock_status\";s:0:\"\";s:24:\"product_allow_backorders\";s:2:\"no\";s:31:\"single_product_allow_backorders\";s:0:\"\";s:25:\"product_sold_individually\";s:2:\"no\";s:32:\"single_product_sold_individually\";s:0:\"\";s:21:\"single_product_weight\";s:0:\"\";s:21:\"single_product_length\";s:0:\"\";s:20:\"single_product_width\";s:0:\"\";s:21:\"single_product_height\";s:0:\"\";s:34:\"is_multiple_product_shipping_class\";s:3:\"yes\";s:31:\"multiple_product_shipping_class\";s:2:\"-1\";s:29:\"single_product_shipping_class\";s:0:\"\";s:28:\"is_multiple_grouping_product\";s:3:\"yes\";s:25:\"multiple_grouping_product\";s:0:\"\";s:23:\"single_grouping_product\";s:0:\"\";s:23:\"single_product_up_sells\";s:0:\"\";s:26:\"single_product_cross_sells\";s:0:\"\";s:14:\"attribute_name\";a:9:{i:0;s:5:\"Corpo\";i:1;s:8:\"Material\";i:2;s:6:\"Volume\";i:3;s:7:\"Largura\";i:4;s:12:\"Profundidade\";i:5;s:6:\"Altura\";i:6;s:8:\"Impresso\";i:7;s:21:\"Código do Fornecedor\";i:8;s:5:\"Marca\";}s:15:\"attribute_value\";a:9:{i:0;s:8:\"{cor[1]}\";i:1;s:13:\"{material[1]}\";i:2;s:11:\"{volume[1]}\";i:3;s:15:\"{undefined7[1]}\";i:4;s:15:\"{undefined7[1]}\";i:5;s:12:\"{tamanho[1]}\";i:6;s:13:\"{impresso[1]}\";i:7;s:18:\"{codfornecedor[1]}\";i:8;s:10:\"{marca[1]}\";}s:13:\"in_variations\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:10:\"is_visible\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:11:\"is_taxonomy\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:29:\"create_taxonomy_in_not_exists\";a:10:{i:0;s:1:\"1\";i:1;s:1:\"1\";i:2;s:1:\"1\";i:3;s:1:\"1\";i:4;s:1:\"1\";i:5;s:1:\"1\";i:6;s:1:\"1\";i:7;s:1:\"1\";i:8;s:1:\"1\";i:9;s:1:\"1\";}s:11:\"is_advanced\";a:10:{i:0;s:1:\"0\";i:1;s:1:\"0\";i:2;s:1:\"0\";i:3;s:1:\"0\";i:4;s:1:\"0\";i:5;s:1:\"0\";i:6;s:1:\"0\";i:7;s:1:\"0\";i:8;s:1:\"0\";i:9;s:1:\"0\";}s:22:\"advanced_in_variations\";a:10:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";i:4;s:3:\"yes\";i:5;s:3:\"yes\";i:6;s:3:\"yes\";i:7;s:3:\"yes\";i:8;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:28:\"advanced_in_variations_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:19:\"advanced_is_visible\";a:10:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";i:4;s:3:\"yes\";i:5;s:3:\"yes\";i:6;s:3:\"yes\";i:7;s:3:\"yes\";i:8;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:25:\"advanced_is_visible_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:20:\"advanced_is_taxonomy\";a:10:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";i:4;s:3:\"yes\";i:5;s:3:\"yes\";i:6;s:3:\"yes\";i:7;s:3:\"yes\";i:8;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:26:\"advanced_is_taxonomy_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:24:\"advanced_is_create_terms\";a:10:{i:0;s:3:\"yes\";i:1;s:3:\"yes\";i:2;s:3:\"yes\";i:3;s:3:\"yes\";i:4;s:3:\"yes\";i:5;s:3:\"yes\";i:6;s:3:\"yes\";i:7;s:3:\"yes\";i:8;s:3:\"yes\";s:2:\"00\";s:3:\"yes\";}s:30:\"advanced_is_create_terms_xpath\";a:10:{i:0;s:0:\"\";i:1;s:0:\"\";i:2;s:0:\"\";i:3;s:0:\"\";i:4;s:0:\"\";i:5;s:0:\"\";i:6;s:0:\"\";i:7;s:0:\"\";i:8;s:0:\"\";s:2:\"00\";s:0:\"\";}s:28:\"single_product_purchase_note\";s:0:\"\";s:25:\"single_product_menu_order\";s:1:\"0\";s:25:\"is_product_enable_reviews\";s:2:\"no\";s:29:\"single_product_enable_reviews\";s:0:\"\";s:17:\"single_product_id\";s:0:\"\";s:24:\"single_product_parent_id\";s:0:\"\";s:36:\"single_product_id_first_is_parent_id\";s:0:\"\";s:44:\"single_product_first_is_parent_id_parent_sku\";s:0:\"\";s:39:\"single_product_id_first_is_parent_title\";s:28:\"{descriodoprodutocliente[1]}\";s:47:\"single_product_first_is_parent_title_parent_sku\";s:0:\"\";s:36:\"single_product_id_first_is_variation\";s:28:\"{descriodoprodutocliente[1]}\";s:8:\"_virtual\";i:0;s:13:\"_downloadable\";i:0;s:24:\"is_regular_price_shedule\";s:1:\"0\";s:28:\"single_sale_price_dates_from\";s:3:\"now\";s:26:\"single_sale_price_dates_to\";s:3:\"now\";s:19:\"product_files_delim\";s:1:\",\";s:25:\"product_files_names_delim\";s:1:\",\";s:15:\"matching_parent\";s:4:\"auto\";s:16:\"parent_indicator\";s:12:\"custom field\";s:28:\"custom_parent_indicator_name\";s:0:\"\";s:29:\"custom_parent_indicator_value\";s:0:\"\";s:28:\"missing_records_stock_status\";s:1:\"0\";s:16:\"variations_xpath\";s:0:\"\";s:17:\"_variable_virtual\";s:0:\"\";s:22:\"_variable_downloadable\";s:0:\"\";s:14:\"variable_stock\";s:0:\"\";s:22:\"variable_regular_price\";s:0:\"\";s:19:\"variable_sale_price\";s:0:\"\";s:30:\"is_variable_sale_price_shedule\";s:1:\"0\";s:30:\"variable_sale_price_dates_from\";s:0:\"\";s:28:\"variable_sale_price_dates_to\";s:0:\"\";s:15:\"variable_weight\";s:0:\"\";s:15:\"variable_length\";s:0:\"\";s:14:\"variable_width\";s:0:\"\";s:15:\"variable_height\";s:0:\"\";s:23:\"variable_shipping_class\";s:0:\"\";s:18:\"variable_tax_class\";s:0:\"\";s:19:\"variable_file_paths\";s:0:\"\";s:19:\"variable_file_names\";s:0:\"\";s:23:\"variable_download_limit\";s:0:\"\";s:24:\"variable_download_expiry\";s:0:\"\";s:27:\"is_variable_product_virtual\";s:2:\"no\";s:32:\"is_variable_product_manage_stock\";s:2:\"no\";s:43:\"is_multiple_variable_product_shipping_class\";s:3:\"yes\";s:40:\"multiple_variable_product_shipping_class\";s:2:\"-1\";s:38:\"single_variable_product_shipping_class\";s:0:\"\";s:38:\"is_multiple_variable_product_tax_class\";s:3:\"yes\";s:35:\"multiple_variable_product_tax_class\";s:6:\"parent\";s:33:\"single_variable_product_tax_class\";s:0:\"\";s:21:\"variable_stock_status\";s:7:\"instock\";s:28:\"single_variable_stock_status\";s:0:\"\";s:25:\"variable_allow_backorders\";s:2:\"no\";s:32:\"single_variable_allow_backorders\";s:0:\"\";s:32:\"is_variable_product_downloadable\";s:2:\"no\";s:36:\"single_variable_product_downloadable\";s:0:\"\";s:23:\"variable_attribute_name\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:24:\"variable_attribute_value\";a:2:{i:0;s:0:\"\";i:1;s:0:\"\";}s:22:\"variable_in_variations\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:19:\"variable_is_visible\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:20:\"variable_is_taxonomy\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:38:\"variable_create_taxonomy_in_not_exists\";a:2:{i:0;s:1:\"1\";i:1;s:1:\"1\";}s:28:\"variable_product_files_delim\";s:1:\",\";s:34:\"variable_product_files_names_delim\";s:1:\",\";s:14:\"variable_image\";s:0:\"\";s:12:\"variable_sku\";s:0:\"\";s:27:\"is_variable_product_enabled\";s:3:\"yes\";s:31:\"single_variable_product_enabled\";s:0:\"\";s:19:\"link_all_variations\";s:1:\"0\";s:25:\"variable_stock_use_parent\";s:1:\"0\";s:33:\"variable_regular_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_price_use_parent\";s:1:\"0\";s:30:\"variable_sale_dates_use_parent\";s:1:\"0\";s:26:\"variable_weight_use_parent\";s:1:\"0\";s:31:\"single_variable_product_virtual\";s:0:\"\";s:42:\"single_variable_product_virtual_use_parent\";s:1:\"0\";s:36:\"single_variable_product_manage_stock\";s:0:\"\";s:47:\"single_variable_product_manage_stock_use_parent\";s:1:\"0\";s:30:\"variable_dimensions_use_parent\";s:1:\"0\";s:25:\"variable_image_use_parent\";s:1:\"0\";s:49:\"single_variable_product_shipping_class_use_parent\";s:1:\"0\";s:44:\"single_variable_product_tax_class_use_parent\";s:1:\"0\";s:47:\"single_variable_product_downloadable_use_parent\";s:1:\"0\";s:34:\"variable_download_limit_use_parent\";s:1:\"0\";s:35:\"variable_download_expiry_use_parent\";s:1:\"0\";s:36:\"single_product_variation_description\";s:0:\"\";s:20:\"variable_description\";s:0:\"\";s:31:\"variable_description_use_parent\";s:1:\"0\";s:15:\"first_is_parent\";s:3:\"yes\";s:28:\"single_product_whosale_price\";s:0:\"\";s:22:\"variable_whosale_price\";s:0:\"\";s:33:\"variable_whosale_price_use_parent\";i:0;s:27:\"disable_auto_sku_generation\";s:1:\"0\";s:21:\"is_default_attributes\";s:1:\"0\";s:23:\"default_attributes_type\";s:5:\"first\";s:20:\"disable_sku_matching\";s:1:\"1\";s:21:\"disable_prepare_price\";s:1:\"1\";s:27:\"prepare_price_to_woo_format\";s:1:\"0\";s:25:\"convert_decimal_separator\";s:1:\"1\";s:18:\"grouping_indicator\";s:5:\"xpath\";s:30:\"custom_grouping_indicator_name\";s:0:\"\";s:31:\"custom_grouping_indicator_value\";s:0:\"\";s:22:\"is_update_product_type\";s:1:\"1\";s:19:\"make_simple_product\";s:1:\"1\";s:23:\"variable_sku_add_parent\";s:1:\"0\";s:16:\"set_parent_stock\";s:1:\"0\";s:35:\"single_product_regular_price_adjust\";s:0:\"\";s:40:\"single_product_regular_price_adjust_type\";s:1:\"%\";s:32:\"single_product_sale_price_adjust\";s:0:\"\";s:37:\"single_product_sale_price_adjust_type\";s:1:\"%\";s:20:\"is_update_attributes\";s:1:\"1\";s:23:\"update_attributes_logic\";s:11:\"full_update\";s:15:\"attributes_list\";s:1:\"0\";s:20:\"attributes_only_list\";s:0:\"\";s:22:\"attributes_except_list\";s:0:\"\";s:33:\"is_variation_product_manage_stock\";s:2:\"no\";s:37:\"single_variation_product_manage_stock\";s:0:\"\";s:15:\"variation_stock\";s:0:\"\";s:22:\"variation_stock_status\";s:4:\"auto\";s:30:\"put_variation_image_to_gallery\";s:1:\"0\";s:34:\"import_additional_variation_images\";i:0;s:29:\"single_variation_stock_status\";s:0:\"\";s:10:\"pmwi_order\";a:88:{s:6:\"status\";s:10:\"wc-pending\";s:12:\"status_xpath\";s:0:\"\";s:4:\"date\";s:3:\"now\";s:14:\"billing_source\";s:5:\"guest\";s:23:\"billing_source_match_by\";s:8:\"username\";s:23:\"billing_source_username\";s:0:\"\";s:20:\"billing_source_email\";s:0:\"\";s:17:\"billing_source_id\";s:0:\"\";s:22:\"billing_source_cf_name\";s:0:\"\";s:23:\"billing_source_cf_value\";s:0:\"\";s:18:\"billing_first_name\";s:0:\"\";s:17:\"billing_last_name\";s:0:\"\";s:15:\"billing_company\";s:0:\"\";s:17:\"billing_address_1\";s:0:\"\";s:17:\"billing_address_2\";s:0:\"\";s:12:\"billing_city\";s:0:\"\";s:16:\"billing_postcode\";s:0:\"\";s:15:\"billing_country\";s:0:\"\";s:13:\"billing_state\";s:0:\"\";s:13:\"billing_email\";s:0:\"\";s:13:\"billing_phone\";s:0:\"\";s:24:\"guest_billing_first_name\";s:0:\"\";s:23:\"guest_billing_last_name\";s:0:\"\";s:21:\"guest_billing_company\";s:0:\"\";s:23:\"guest_billing_address_1\";s:0:\"\";s:23:\"guest_billing_address_2\";s:0:\"\";s:18:\"guest_billing_city\";s:0:\"\";s:22:\"guest_billing_postcode\";s:0:\"\";s:21:\"guest_billing_country\";s:0:\"\";s:19:\"guest_billing_state\";s:0:\"\";s:19:\"guest_billing_email\";s:0:\"\";s:19:\"guest_billing_phone\";s:0:\"\";s:17:\"is_guest_matching\";i:0;s:15:\"shipping_source\";s:4:\"copy\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:17:\"shipping_postcode\";s:0:\"\";s:16:\"shipping_country\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:14:\"shipping_email\";s:0:\"\";s:14:\"shipping_phone\";s:0:\"\";s:17:\"copy_from_billing\";i:0;s:22:\"customer_provided_note\";s:0:\"\";s:14:\"payment_method\";s:0:\"\";s:20:\"payment_method_xpath\";s:0:\"\";s:14:\"transaction_id\";s:0:\"\";s:22:\"products_repeater_mode\";s:3:\"csv\";s:32:\"products_repeater_mode_separator\";s:1:\"|\";s:30:\"products_repeater_mode_foreach\";s:0:\"\";s:15:\"products_source\";s:8:\"existing\";s:8:\"products\";a:0:{}s:15:\"manual_products\";a:0:{}s:18:\"fees_repeater_mode\";s:3:\"csv\";s:28:\"fees_repeater_mode_separator\";s:1:\"|\";s:26:\"fees_repeater_mode_foreach\";s:0:\"\";s:4:\"fees\";a:0:{}s:21:\"coupons_repeater_mode\";s:3:\"csv\";s:31:\"coupons_repeater_mode_separator\";s:1:\"|\";s:29:\"coupons_repeater_mode_foreach\";s:0:\"\";s:7:\"coupons\";a:0:{}s:22:\"shipping_repeater_mode\";s:3:\"csv\";s:32:\"shipping_repeater_mode_separator\";s:1:\"|\";s:30:\"shipping_repeater_mode_foreach\";s:0:\"\";s:8:\"shipping\";a:0:{}s:19:\"taxes_repeater_mode\";s:3:\"csv\";s:29:\"taxes_repeater_mode_separator\";s:1:\"|\";s:27:\"taxes_repeater_mode_foreach\";s:0:\"\";s:5:\"taxes\";a:0:{}s:17:\"order_total_logic\";s:4:\"auto\";s:17:\"order_total_xpath\";s:0:\"\";s:19:\"order_refund_amount\";s:0:\"\";s:19:\"order_refund_reason\";s:0:\"\";s:17:\"order_refund_date\";s:3:\"now\";s:26:\"order_refund_issued_source\";s:8:\"existing\";s:28:\"order_refund_issued_match_by\";s:8:\"username\";s:28:\"order_refund_issued_username\";s:0:\"\";s:25:\"order_refund_issued_email\";s:0:\"\";s:27:\"order_refund_issued_cf_name\";s:0:\"\";s:28:\"order_refund_issued_cf_value\";s:0:\"\";s:22:\"order_refund_issued_id\";s:0:\"\";s:19:\"notes_repeater_mode\";s:3:\"csv\";s:29:\"notes_repeater_mode_separator\";s:1:\"|\";s:27:\"notes_repeater_mode_foreach\";s:0:\"\";s:5:\"notes\";a:0:{}}s:25:\"is_update_billing_details\";i:1;s:26:\"is_update_shipping_details\";i:1;s:17:\"is_update_payment\";i:1;s:15:\"is_update_notes\";i:1;s:18:\"is_update_products\";i:1;s:21:\"update_products_logic\";s:11:\"full_update\";s:14:\"is_update_fees\";i:1;s:17:\"is_update_coupons\";i:1;s:18:\"is_update_shipping\";i:1;s:15:\"is_update_taxes\";i:1;s:17:\"is_update_refunds\";i:1;s:15:\"is_update_total\";i:1;s:31:\"do_not_send_order_notifications\";i:1;s:26:\"is_update_advanced_options\";s:1:\"1\";s:28:\"is_update_catalog_visibility\";s:1:\"1\";s:25:\"is_update_featured_status\";s:1:\"1\";s:3:\"acf\";a:9:{i:92;s:1:\"0\";i:153;s:1:\"0\";i:95;s:1:\"0\";i:102;s:1:\"0\";i:110;s:1:\"0\";i:116;s:1:\"0\";i:124;s:1:\"0\";i:129;s:1:\"0\";i:134;s:1:\"0\";}s:6:\"fields\";a:0:{}s:23:\"is_multiple_field_value\";a:0:{}s:14:\"multiple_value\";a:0:{}s:16:\"fields_delimiter\";a:0:{}s:13:\"is_update_acf\";s:1:\"1\";s:16:\"update_acf_logic\";s:11:\"full_update\";s:8:\"acf_list\";s:1:\"0\";s:13:\"acf_only_list\";s:0:\"\";s:15:\"acf_except_list\";s:0:\"\";}', '', 'Produto final', 'N;', 'N;', 1, 0, 0, 'N;');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(5, 12, '_wp_attached_file', '2018/07/beanie.jpg'),
(6, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/07/beanie.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"beanie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7, 12, '_starter_content_theme', 'storefront'),
(9, 13, '_wp_attached_file', '2018/07/belt.jpg'),
(10, 13, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2018/07/belt.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:16:\"belt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11, 13, '_starter_content_theme', 'storefront'),
(13, 14, '_wp_attached_file', '2018/07/cap.jpg'),
(14, 14, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2018/07/cap.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:15:\"cap-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(15, 14, '_starter_content_theme', 'storefront'),
(17, 15, '_wp_attached_file', '2018/07/hoodie-with-logo.jpg'),
(18, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:28:\"2018/07/hoodie-with-logo.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:28:\"hoodie-with-logo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(19, 15, '_starter_content_theme', 'storefront'),
(21, 16, '_wp_attached_file', '2018/07/hoodie-with-pocket.jpg'),
(22, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:30:\"2018/07/hoodie-with-pocket.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-pocket-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(23, 16, '_starter_content_theme', 'storefront'),
(25, 17, '_wp_attached_file', '2018/07/hoodie-with-zipper.jpg'),
(26, 17, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:30:\"2018/07/hoodie-with-zipper.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:30:\"hoodie-with-zipper-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(27, 17, '_starter_content_theme', 'storefront'),
(29, 18, '_wp_attached_file', '2018/07/hoodie.jpg'),
(30, 18, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/07/hoodie.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"hoodie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(31, 18, '_starter_content_theme', 'storefront'),
(33, 19, '_wp_attached_file', '2018/07/long-sleeve-tee.jpg'),
(34, 19, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:27:\"2018/07/long-sleeve-tee.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:27:\"long-sleeve-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 19, '_starter_content_theme', 'storefront'),
(37, 20, '_wp_attached_file', '2018/07/polo.jpg'),
(38, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:16:\"2018/07/polo.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"polo-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"polo-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"polo-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:16:\"polo-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(39, 20, '_starter_content_theme', 'storefront'),
(41, 21, '_wp_attached_file', '2018/07/sunglasses.jpg'),
(42, 21, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:22:\"2018/07/sunglasses.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"sunglasses-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"sunglasses-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"sunglasses-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:22:\"sunglasses-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(43, 21, '_starter_content_theme', 'storefront'),
(45, 22, '_wp_attached_file', '2018/07/tshirt.jpg'),
(46, 22, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/07/tshirt.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"tshirt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"tshirt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"tshirt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:18:\"tshirt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(47, 22, '_starter_content_theme', 'storefront'),
(49, 23, '_wp_attached_file', '2018/07/vneck-tee.jpg'),
(50, 23, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:800;s:4:\"file\";s:21:\"2018/07/vneck-tee.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"vneck-tee-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"vneck-tee-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"vneck-tee-768x767.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:767;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:21:\"vneck-tee-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(51, 23, '_starter_content_theme', 'storefront'),
(53, 24, '_wp_attached_file', '2018/07/hero.jpg'),
(54, 24, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3795;s:6:\"height\";i:2355;s:4:\"file\";s:16:\"2018/07/hero.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"hero-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"hero-300x186.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:186;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"hero-768x477.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:477;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:17:\"hero-1024x635.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:635;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(55, 24, '_starter_content_theme', 'storefront'),
(57, 25, '_wp_attached_file', '2018/07/accessories.jpg'),
(58, 25, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:23:\"2018/07/accessories.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"accessories-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"accessories-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"accessories-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:23:\"accessories-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(59, 25, '_starter_content_theme', 'storefront'),
(61, 26, '_wp_attached_file', '2018/07/tshirts.jpg'),
(62, 26, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:19:\"2018/07/tshirts.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"tshirts-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"tshirts-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"tshirts-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:19:\"tshirts-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(63, 26, '_starter_content_theme', 'storefront'),
(65, 27, '_wp_attached_file', '2018/07/hoodies.jpg'),
(66, 27, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:800;s:4:\"file\";s:19:\"2018/07/hoodies.jpg\";s:5:\"sizes\";a:4:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"hoodies-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"hoodies-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"hoodies-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_thumbnail_preview\";a:4:{s:4:\"file\";s:19:\"hoodies-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(67, 27, '_starter_content_theme', 'storefront'),
(910, 28, 'blocos_0_titulo', 'Para cada tipo e tamanho de negócio'),
(70, 28, '_wp_page_template', 'template-homepage.php'),
(72, 28, '_customize_changeset_uuid', '0e2472e5-b512-4f83-b358-b88ad97b9728'),
(74, 29, '_customize_changeset_uuid', '0e2472e5-b512-4f83-b358-b88ad97b9728'),
(485, 45, '_menu_item_type', 'post_type'),
(486, 45, '_menu_item_menu_item_parent', '0'),
(487, 45, '_menu_item_object_id', '29'),
(488, 45, '_menu_item_object', 'page'),
(489, 45, '_menu_item_target', ''),
(490, 45, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(491, 45, '_menu_item_xfn', ''),
(492, 45, '_menu_item_url', ''),
(494, 46, '_menu_item_type', 'post_type'),
(495, 46, '_menu_item_menu_item_parent', '0'),
(496, 46, '_menu_item_object_id', '9'),
(497, 46, '_menu_item_object', 'page'),
(498, 46, '_menu_item_target', ''),
(499, 46, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(500, 46, '_menu_item_xfn', ''),
(501, 46, '_menu_item_url', ''),
(503, 47, '_menu_item_type', 'post_type'),
(504, 47, '_menu_item_menu_item_parent', '0'),
(505, 47, '_menu_item_object_id', '8'),
(506, 47, '_menu_item_object', 'page'),
(507, 47, '_menu_item_target', ''),
(508, 47, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(509, 47, '_menu_item_xfn', ''),
(510, 47, '_menu_item_url', ''),
(512, 48, '_menu_item_type', 'post_type'),
(513, 48, '_menu_item_menu_item_parent', '0'),
(514, 48, '_menu_item_object_id', '6'),
(515, 48, '_menu_item_object', 'page'),
(516, 48, '_menu_item_target', ''),
(517, 48, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(518, 48, '_menu_item_xfn', ''),
(519, 48, '_menu_item_url', ''),
(521, 49, '_menu_item_type', 'post_type'),
(522, 49, '_menu_item_menu_item_parent', '0'),
(523, 49, '_menu_item_object_id', '5'),
(524, 49, '_menu_item_object', 'page'),
(525, 49, '_menu_item_target', ''),
(526, 49, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(527, 49, '_menu_item_xfn', ''),
(528, 49, '_menu_item_url', ''),
(530, 50, '_menu_item_type', 'post_type'),
(531, 50, '_menu_item_menu_item_parent', '0'),
(532, 50, '_menu_item_object_id', '28'),
(533, 50, '_menu_item_object', 'page'),
(534, 50, '_menu_item_target', ''),
(535, 50, '_menu_item_classes', 'a:1:{i:0;s:0:\"\";}'),
(536, 50, '_menu_item_xfn', ''),
(537, 50, '_menu_item_url', ''),
(12046, 516, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:222;s:4:\"file\";s:24:\"2018/11/cat_catering.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cat_catering-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cat_catering-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"cat_catering-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"cat_catering-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"cat_catering-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"cat_catering-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12045, 516, '_wp_attached_file', '2018/11/cat_catering.jpg'),
(12048, 517, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:222;s:4:\"file\";s:22:\"2018/11/cat_bakery.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"cat_bakery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"cat_bakery-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"cat_bakery-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"cat_bakery-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"cat_bakery-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"cat_bakery-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12047, 517, '_wp_attached_file', '2018/11/cat_bakery.jpg'),
(705, 57, '_wp_attached_file', '2018/08/m2_produto_16.jpg'),
(706, 57, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_16.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_16-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_16-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_16-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(742, 59, '_wp_attached_file', '2018/08/m2_produto_52.jpg'),
(743, 59, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_52.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_52-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_52-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_52-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(744, 60, '_wp_attached_file', '2018/08/m2_produto_51.jpg'),
(745, 60, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_51.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_51-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_51-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_51-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(746, 61, '_wp_attached_file', '2018/08/m2_produto_50.jpg'),
(747, 61, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_50.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_50-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_50-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_50-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(748, 62, '_wp_attached_file', '2018/08/m2_produto_49.jpg'),
(749, 62, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_49.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_49-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_49-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_49-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(750, 63, '_wp_attached_file', '2018/08/m2_produto_46.jpg'),
(751, 63, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_46.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_46-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_46-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_46-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(752, 64, '_wp_attached_file', '2018/08/m2_produto_45.jpg'),
(753, 64, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_45.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_45-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_45-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_45-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(754, 65, '_wp_attached_file', '2018/08/m2_produto_44.jpg'),
(755, 65, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_44.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_44-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_44-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_44-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(756, 66, '_wp_attached_file', '2018/08/m2_produto_43.jpg'),
(757, 66, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_43.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_43-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_43-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_43-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(758, 67, '_wp_attached_file', '2018/08/m2_produto_40.jpg'),
(759, 67, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_40.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_40-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_40-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_40-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(760, 68, '_wp_attached_file', '2018/08/m2_produto_39.jpg'),
(761, 68, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_39.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_39-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_39-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_39-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(762, 69, '_wp_attached_file', '2018/08/m2_produto_35.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(763, 69, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_35.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_35-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_35-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_35-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(764, 70, '_wp_attached_file', '2018/08/m2_produto_28.jpg'),
(765, 70, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_28.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_28-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_28-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_28-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(766, 71, '_wp_attached_file', '2018/08/m2_produto_27.jpg'),
(767, 71, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_27.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_27-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_27-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_27-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(768, 72, '_wp_attached_file', '2018/08/m2_produto_19.jpg'),
(769, 72, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_19.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_19-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_19-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_19-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(770, 73, '_wp_attached_file', '2018/08/m2_produto_17.jpg'),
(771, 73, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_17.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_17-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_17-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_17-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(772, 74, '_wp_attached_file', '2018/08/m2_produto_16-1.jpg'),
(773, 74, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:27:\"2018/08/m2_produto_16-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"m2_produto_16-1-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"m2_produto_16-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"m2_produto_16-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(774, 75, '_wp_attached_file', '2018/08/m2_produto_15.jpg'),
(775, 75, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_15.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_15-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_15-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_15-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(776, 76, '_wp_attached_file', '2018/08/m2_produto_02.jpg'),
(777, 76, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:25:\"2018/08/m2_produto_02.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:26:\"m2_produto_02-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:25:\"m2_produto_02-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:25:\"m2_produto_02-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(779, 77, '_wp_attached_file', '2018/08/m2_M-23-3.jpg'),
(780, 77, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1024;s:6:\"height\";i:683;s:4:\"file\";s:21:\"2018/08/m2_M-23-3.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:22:\"m2_M-23-3-1024x683.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:683;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:21:\"m2_M-23-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:21:\"m2_M-23-3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(782, 78, '_wp_attached_file', '2018/08/beanie.jpg'),
(783, 78, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/08/beanie.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"beanie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"beanie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"beanie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"beanie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"beanie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"beanie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"beanie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(784, 79, '_wp_attached_file', '2018/08/belt.jpg'),
(785, 79, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:16:\"2018/08/belt.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"belt-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:16:\"belt-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"belt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:16:\"belt-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"belt-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:16:\"belt-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"belt-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(786, 80, '_wp_attached_file', '2018/08/cap.jpg'),
(787, 80, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:15:\"2018/08/cap.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:15:\"cap-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:15:\"cap-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:15:\"cap-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:15:\"cap-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:15:\"cap-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:15:\"cap-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:15:\"cap-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(788, 81, '_wp_attached_file', '2018/08/hoodie.jpg'),
(789, 81, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:801;s:6:\"height\";i:801;s:4:\"file\";s:18:\"2018/08/hoodie.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"hoodie-300x300.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:18:\"hoodie-768x768.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"hoodie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:18:\"hoodie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"hoodie-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:18:\"hoodie-416x416.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:416;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"hoodie-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(857, 85, '_edit_last', '1'),
(858, 85, '_wp_page_template', 'default'),
(859, 85, '_edit_lock', '1534477550:1'),
(860, 87, '_edit_lock', '1534476600:1'),
(861, 87, '_edit_last', '1'),
(862, 87, '_wp_page_template', 'default'),
(868, 28, '_edit_lock', '1542938420:1'),
(869, 141, '_wp_attached_file', '2018/08/anuncio-top.jpg'),
(870, 141, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1393;s:6:\"height\";i:60;s:4:\"file\";s:23:\"2018/08/anuncio-top.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"anuncio-top-150x60.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"anuncio-top-300x13.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:13;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"anuncio-top-768x33.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:33;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"anuncio-top-1024x44.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:44;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"anuncio-top-324x60.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"anuncio-top-416x18.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"anuncio-top-100x60.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"anuncio-top-324x60.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"anuncio-top-416x18.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:18;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"anuncio-top-100x60.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:60;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(871, 142, '_wp_attached_file', '2018/08/banner-home.jpg'),
(872, 142, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2018/08/banner-home.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-home-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"banner-home-300x51.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:51;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"banner-home-768x130.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"banner-home-1024x173.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"banner-home-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"banner-home-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-home-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"banner-home-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"banner-home-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"banner-home-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(873, 28, '_edit_last', '1'),
(874, 28, 'imagem_banner_topo', ''),
(875, 28, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(876, 28, 'url_banner_topo', ''),
(877, 28, '_url_banner_topo', 'field_5b762078a8eba'),
(878, 28, 'blocos', '3'),
(879, 28, '_blocos', 'field_5b7623ea8e86d'),
(880, 28, 'slide_0_imagem', '142'),
(881, 28, '_slide_0_imagem', 'field_5969378d82949'),
(882, 28, 'slide_0_texto', 'Tudo para seu negócio'),
(883, 28, '_slide_0_texto', 'field_598280ac334ca'),
(884, 28, 'slide_0_sub_texto', 'a um click de distância'),
(885, 28, '_slide_0_sub_texto', 'field_598280d2334cb'),
(886, 28, 'slide_0_link', 'http://www.google.com'),
(887, 28, '_slide_0_link', 'field_5b75ff774d53a'),
(888, 28, 'slide_0_tit_link', 'Criar conta agora!'),
(889, 28, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(890, 28, 'slide', '1'),
(891, 28, '_slide', 'field_5969377082948'),
(892, 143, 'imagem_banner_topo', '141'),
(893, 143, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(894, 143, 'url_banner_topo', 'http://www.google.com'),
(895, 143, '_url_banner_topo', 'field_5b762078a8eba'),
(896, 143, 'blocos', ''),
(897, 143, '_blocos', 'field_5b7623ea8e86d'),
(898, 143, 'slide_0_imagem', '142'),
(899, 143, '_slide_0_imagem', 'field_5969378d82949'),
(900, 143, 'slide_0_texto', 'Tudo para seu negócio'),
(901, 143, '_slide_0_texto', 'field_598280ac334ca'),
(902, 143, 'slide_0_sub_texto', 'a um click de distância'),
(903, 143, '_slide_0_sub_texto', 'field_598280d2334cb'),
(904, 143, 'slide_0_link', 'http://www.google.com'),
(905, 143, '_slide_0_link', 'field_5b75ff774d53a'),
(906, 143, 'slide_0_tit_link', 'Criar conta agora!'),
(907, 143, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(908, 143, 'slide', '1'),
(909, 143, '_slide', 'field_5969377082948'),
(911, 28, '_blocos_0_titulo', 'field_5b7624298e86e'),
(912, 28, 'blocos_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(913, 28, '_blocos_0_descricao_0_texto', 'field_5b7626e78b101'),
(914, 28, 'blocos_0_descricao_1_texto', 'Todas as contas são grátis.'),
(915, 28, '_blocos_0_descricao_1_texto', 'field_5b7626e78b101'),
(916, 28, 'blocos_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(917, 28, '_blocos_0_descricao_2_texto', 'field_5b7626e78b101'),
(918, 28, 'blocos_0_descricao', '3'),
(919, 28, '_blocos_0_descricao', 'field_5b7626c58b100'),
(920, 28, 'blocos_0_url', 'http://www.google.com'),
(921, 28, '_blocos_0_url', 'field_5b7625f2fd4ba'),
(922, 28, 'blocos_0_titulo_url', 'Saiba mais'),
(923, 28, '_blocos_0_titulo_url', 'field_5b762610fd4bb'),
(924, 144, 'imagem_banner_topo', '141'),
(925, 144, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(926, 144, 'url_banner_topo', 'http://www.google.com'),
(927, 144, '_url_banner_topo', 'field_5b762078a8eba'),
(928, 144, 'blocos', '1'),
(929, 144, '_blocos', 'field_5b7623ea8e86d'),
(930, 144, 'slide_0_imagem', '142'),
(931, 144, '_slide_0_imagem', 'field_5969378d82949'),
(932, 144, 'slide_0_texto', 'Tudo para seu negócio'),
(933, 144, '_slide_0_texto', 'field_598280ac334ca'),
(934, 144, 'slide_0_sub_texto', 'a um click de distância'),
(935, 144, '_slide_0_sub_texto', 'field_598280d2334cb'),
(936, 144, 'slide_0_link', 'http://www.google.com'),
(937, 144, '_slide_0_link', 'field_5b75ff774d53a'),
(938, 144, 'slide_0_tit_link', 'Criar conta agora!'),
(939, 144, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(940, 144, 'slide', '1'),
(941, 144, '_slide', 'field_5969377082948'),
(942, 144, 'blocos_0_titulo', 'Para cada tipo e tamanho de negócio'),
(943, 144, '_blocos_0_titulo', 'field_5b7624298e86e'),
(944, 144, 'blocos_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(945, 144, '_blocos_0_descricao_0_texto', 'field_5b7626e78b101'),
(946, 144, 'blocos_0_descricao_1_texto', 'Todas as contas são grátis.'),
(947, 144, '_blocos_0_descricao_1_texto', 'field_5b7626e78b101'),
(948, 144, 'blocos_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(949, 144, '_blocos_0_descricao_2_texto', 'field_5b7626e78b101'),
(950, 144, 'blocos_0_descricao', '3'),
(951, 144, '_blocos_0_descricao', 'field_5b7626c58b100'),
(952, 144, 'blocos_0_url', 'http://www.google.com'),
(953, 144, '_blocos_0_url', 'field_5b7625f2fd4ba'),
(954, 144, 'blocos_0_titulo_url', 'Saiba mais'),
(955, 144, '_blocos_0_titulo_url', 'field_5b762610fd4bb'),
(956, 145, '_wp_attached_file', '2018/08/img-categorias.jpg'),
(957, 145, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:230;s:6:\"height\";i:130;s:4:\"file\";s:26:\"2018/08/img-categorias.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"img-categorias-150x130.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"img-categorias-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"img-categorias-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(958, 28, 'blocos_1_titulo', 'Promoções exclusivas para empresas'),
(959, 28, '_blocos_1_titulo', 'field_5b7624298e86e'),
(960, 28, 'blocos_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(961, 28, '_blocos_1_descricao_0_texto', 'field_5b7626e78b101'),
(962, 28, 'blocos_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(963, 28, '_blocos_1_descricao_1_texto', 'field_5b7626e78b101'),
(964, 28, 'blocos_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(965, 28, '_blocos_1_descricao_2_texto', 'field_5b7626e78b101'),
(966, 28, 'blocos_1_descricao', '3'),
(967, 28, '_blocos_1_descricao', 'field_5b7626c58b100'),
(968, 28, 'blocos_1_url', 'http://www.google.com'),
(969, 28, '_blocos_1_url', 'field_5b7625f2fd4ba'),
(970, 28, 'blocos_1_titulo_url', 'Registre-se'),
(971, 28, '_blocos_1_titulo_url', 'field_5b762610fd4bb'),
(972, 28, 'blocos_2_titulo', 'Encontre tudo o que precisa no menor tempo'),
(973, 28, '_blocos_2_titulo', 'field_5b7624298e86e'),
(974, 28, 'blocos_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(975, 28, '_blocos_2_descricao_0_texto', 'field_5b7626e78b101'),
(976, 28, 'blocos_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(977, 28, '_blocos_2_descricao_1_texto', 'field_5b7626e78b101'),
(978, 28, 'blocos_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(979, 28, '_blocos_2_descricao_2_texto', 'field_5b7626e78b101'),
(980, 28, 'blocos_2_descricao', '3'),
(981, 28, '_blocos_2_descricao', 'field_5b7626c58b100'),
(982, 28, 'blocos_2_url', 'http://www.google.com'),
(983, 28, '_blocos_2_url', 'field_5b7625f2fd4ba'),
(984, 28, 'blocos_2_titulo_url', 'Crie sua conta'),
(985, 28, '_blocos_2_titulo_url', 'field_5b762610fd4bb'),
(986, 146, 'imagem_banner_topo', '141'),
(987, 146, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(988, 146, 'url_banner_topo', 'http://www.google.com'),
(989, 146, '_url_banner_topo', 'field_5b762078a8eba'),
(990, 146, 'blocos', '3'),
(991, 146, '_blocos', 'field_5b7623ea8e86d'),
(992, 146, 'slide_0_imagem', '142'),
(993, 146, '_slide_0_imagem', 'field_5969378d82949'),
(994, 146, 'slide_0_texto', 'Tudo para seu negócio'),
(995, 146, '_slide_0_texto', 'field_598280ac334ca'),
(996, 146, 'slide_0_sub_texto', 'a um click de distância'),
(997, 146, '_slide_0_sub_texto', 'field_598280d2334cb'),
(998, 146, 'slide_0_link', 'http://www.google.com'),
(999, 146, '_slide_0_link', 'field_5b75ff774d53a'),
(1000, 146, 'slide_0_tit_link', 'Criar conta agora!'),
(1001, 146, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1002, 146, 'slide', '1'),
(1003, 146, '_slide', 'field_5969377082948'),
(1004, 146, 'blocos_0_titulo', 'Para cada tipo e tamanho de negócio'),
(1005, 146, '_blocos_0_titulo', 'field_5b7624298e86e'),
(1006, 146, 'blocos_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(1007, 146, '_blocos_0_descricao_0_texto', 'field_5b7626e78b101'),
(1008, 146, 'blocos_0_descricao_1_texto', 'Todas as contas são grátis.'),
(1009, 146, '_blocos_0_descricao_1_texto', 'field_5b7626e78b101'),
(1010, 146, 'blocos_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(1011, 146, '_blocos_0_descricao_2_texto', 'field_5b7626e78b101'),
(1012, 146, 'blocos_0_descricao', '3'),
(1013, 146, '_blocos_0_descricao', 'field_5b7626c58b100'),
(1014, 146, 'blocos_0_url', 'http://www.google.com'),
(1015, 146, '_blocos_0_url', 'field_5b7625f2fd4ba'),
(1016, 146, 'blocos_0_titulo_url', 'Saiba mais'),
(1017, 146, '_blocos_0_titulo_url', 'field_5b762610fd4bb'),
(1018, 146, 'blocos_1_titulo', 'Promoções exclusivas para empresas'),
(1019, 146, '_blocos_1_titulo', 'field_5b7624298e86e'),
(1020, 146, 'blocos_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(1021, 146, '_blocos_1_descricao_0_texto', 'field_5b7626e78b101'),
(1022, 146, 'blocos_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(1023, 146, '_blocos_1_descricao_1_texto', 'field_5b7626e78b101'),
(1024, 146, 'blocos_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(1025, 146, '_blocos_1_descricao_2_texto', 'field_5b7626e78b101'),
(1026, 146, 'blocos_1_descricao', '3'),
(1027, 146, '_blocos_1_descricao', 'field_5b7626c58b100'),
(1028, 146, 'blocos_1_url', 'http://www.google.com'),
(1029, 146, '_blocos_1_url', 'field_5b7625f2fd4ba'),
(1030, 146, 'blocos_1_titulo_url', 'Registre-se'),
(1031, 146, '_blocos_1_titulo_url', 'field_5b762610fd4bb'),
(1032, 146, 'blocos_2_titulo', 'Encontre tudo o que precisa no menor tempo'),
(1033, 146, '_blocos_2_titulo', 'field_5b7624298e86e'),
(1034, 146, 'blocos_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1035, 146, '_blocos_2_descricao_0_texto', 'field_5b7626e78b101'),
(1036, 146, 'blocos_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1037, 146, '_blocos_2_descricao_1_texto', 'field_5b7626e78b101'),
(1038, 146, 'blocos_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1039, 146, '_blocos_2_descricao_2_texto', 'field_5b7626e78b101'),
(1040, 146, 'blocos_2_descricao', '3'),
(1041, 146, '_blocos_2_descricao', 'field_5b7626c58b100'),
(1042, 146, 'blocos_2_url', 'http://www.google.com'),
(1043, 146, '_blocos_2_url', 'field_5b7625f2fd4ba'),
(1044, 146, 'blocos_2_titulo_url', 'Crie sua conta'),
(1045, 146, '_blocos_2_titulo_url', 'field_5b762610fd4bb'),
(1046, 147, 'imagem_banner_topo', '141'),
(1047, 147, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(1048, 147, 'url_banner_topo', 'http://www.google.com'),
(1049, 147, '_url_banner_topo', 'field_5b762078a8eba'),
(1050, 147, 'blocos', '3'),
(1051, 147, '_blocos', 'field_5b7623ea8e86d'),
(1052, 147, 'slide_0_imagem', '142'),
(1053, 147, '_slide_0_imagem', 'field_5969378d82949'),
(1054, 147, 'slide_0_texto', 'Tudo para seu negócio'),
(1055, 147, '_slide_0_texto', 'field_598280ac334ca'),
(1056, 147, 'slide_0_sub_texto', 'a um click de distância'),
(1057, 147, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1058, 147, 'slide_0_link', 'http://www.google.com'),
(1059, 147, '_slide_0_link', 'field_5b75ff774d53a'),
(1060, 147, 'slide_0_tit_link', 'Criar conta agora!'),
(1061, 147, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1062, 147, 'slide', '1'),
(1063, 147, '_slide', 'field_5969377082948'),
(1064, 147, 'blocos_0_titulo', 'Para cada tipo e tamanho de negócio'),
(1065, 147, '_blocos_0_titulo', 'field_5b7624298e86e'),
(1066, 147, 'blocos_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(1067, 147, '_blocos_0_descricao_0_texto', 'field_5b7626e78b101'),
(1068, 147, 'blocos_0_descricao_1_texto', 'Todas as contas são grátis.'),
(1069, 147, '_blocos_0_descricao_1_texto', 'field_5b7626e78b101'),
(1070, 147, 'blocos_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(1071, 147, '_blocos_0_descricao_2_texto', 'field_5b7626e78b101'),
(1072, 147, 'blocos_0_descricao', '3'),
(1073, 147, '_blocos_0_descricao', 'field_5b7626c58b100'),
(1074, 147, 'blocos_0_url', 'http://www.google.com'),
(1075, 147, '_blocos_0_url', 'field_5b7625f2fd4ba'),
(1076, 147, 'blocos_0_titulo_url', 'Saiba mais'),
(1077, 147, '_blocos_0_titulo_url', 'field_5b762610fd4bb'),
(1078, 147, 'blocos_1_titulo', 'Promoções exclusivas para empresas'),
(1079, 147, '_blocos_1_titulo', 'field_5b7624298e86e'),
(1080, 147, 'blocos_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(1081, 147, '_blocos_1_descricao_0_texto', 'field_5b7626e78b101'),
(1082, 147, 'blocos_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(1083, 147, '_blocos_1_descricao_1_texto', 'field_5b7626e78b101'),
(1084, 147, 'blocos_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(1085, 147, '_blocos_1_descricao_2_texto', 'field_5b7626e78b101'),
(1086, 147, 'blocos_1_descricao', '3'),
(1087, 147, '_blocos_1_descricao', 'field_5b7626c58b100'),
(1088, 147, 'blocos_1_url', 'http://www.google.com'),
(1089, 147, '_blocos_1_url', 'field_5b7625f2fd4ba'),
(1090, 147, 'blocos_1_titulo_url', 'Registre-se'),
(1091, 147, '_blocos_1_titulo_url', 'field_5b762610fd4bb'),
(1092, 147, 'blocos_2_titulo', 'Encontre tudo o que precisa no menor tempo'),
(1093, 147, '_blocos_2_titulo', 'field_5b7624298e86e'),
(1094, 147, 'blocos_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1095, 147, '_blocos_2_descricao_0_texto', 'field_5b7626e78b101'),
(1096, 147, 'blocos_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1097, 147, '_blocos_2_descricao_1_texto', 'field_5b7626e78b101'),
(1098, 147, 'blocos_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1099, 147, '_blocos_2_descricao_2_texto', 'field_5b7626e78b101'),
(1100, 147, 'blocos_2_descricao', '3'),
(1101, 147, '_blocos_2_descricao', 'field_5b7626c58b100'),
(1102, 147, 'blocos_2_url', 'http://www.google.com'),
(1103, 147, '_blocos_2_url', 'field_5b7625f2fd4ba'),
(1104, 147, 'blocos_2_titulo_url', 'Crie sua conta'),
(1105, 147, '_blocos_2_titulo_url', 'field_5b762610fd4bb'),
(1106, 134, '_edit_lock', '1534475669:1'),
(1107, 134, '_edit_last', '1'),
(1108, 148, '_wp_attached_file', '2018/08/img-page-1.jpg'),
(1109, 148, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:270;s:4:\"file\";s:22:\"2018/08/img-page-1.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"img-page-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"img-page-1-300x51.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:51;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"img-page-1-768x130.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"img-page-1-1024x173.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"img-page-1-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"img-page-1-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"img-page-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"img-page-1-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"img-page-1-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"img-page-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1110, 85, 'slide_0_imagem', '148'),
(1111, 85, '_slide_0_imagem', 'field_5969378d82949'),
(1112, 85, 'slide_0_texto', 'Receba sempre mais'),
(1113, 85, '_slide_0_texto', 'field_598280ac334ca'),
(1114, 85, 'slide_0_sub_texto', 'por seu dinheiro'),
(1115, 85, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1116, 85, 'slide_0_link', 'http://www.google.com.br'),
(1117, 85, '_slide_0_link', 'field_5b75ff774d53a'),
(1118, 85, 'slide_0_tit_link', 'Criar conta agora!'),
(1119, 85, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1120, 85, 'slide', '1'),
(1121, 85, '_slide', 'field_5969377082948'),
(1122, 149, 'slide_0_imagem', '148'),
(1123, 149, '_slide_0_imagem', 'field_5969378d82949'),
(1124, 149, 'slide_0_texto', 'Receba sempre mais'),
(1125, 149, '_slide_0_texto', 'field_598280ac334ca'),
(1126, 149, 'slide_0_sub_texto', 'por seu dinheiro'),
(1127, 149, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1128, 149, 'slide_0_link', 'http://www.google.com.br'),
(1129, 149, '_slide_0_link', 'field_5b75ff774d53a'),
(1130, 149, 'slide_0_tit_link', 'Criar conta agora!'),
(1131, 149, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1132, 149, 'slide', '1'),
(1133, 149, '_slide', 'field_5969377082948'),
(1134, 150, '_wp_attached_file', '2018/08/img-page-2.jpg');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1135, 150, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:270;s:4:\"file\";s:22:\"2018/08/img-page-2.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:22:\"img-page-2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:21:\"img-page-2-300x51.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:51;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:22:\"img-page-2-768x130.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:23:\"img-page-2-1024x173.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:22:\"img-page-2-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:21:\"img-page-2-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:22:\"img-page-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:22:\"img-page-2-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:21:\"img-page-2-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:22:\"img-page-2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1136, 87, 'slide_0_imagem', '150'),
(1137, 87, '_slide_0_imagem', 'field_5969378d82949'),
(1138, 87, 'slide_0_texto', 'Venda mais produtos'),
(1139, 87, '_slide_0_texto', 'field_598280ac334ca'),
(1140, 87, 'slide_0_sub_texto', 'com um click'),
(1141, 87, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1142, 87, 'slide_0_link', 'http://www.google.com.br'),
(1143, 87, '_slide_0_link', 'field_5b75ff774d53a'),
(1144, 87, 'slide_0_tit_link', 'Criar conta agora!'),
(1145, 87, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1146, 87, 'slide', '1'),
(1147, 87, '_slide', 'field_5969377082948'),
(1148, 151, 'slide_0_imagem', '150'),
(1149, 151, '_slide_0_imagem', 'field_5969378d82949'),
(1150, 151, 'slide_0_texto', 'Venda mais produtos'),
(1151, 151, '_slide_0_texto', 'field_598280ac334ca'),
(1152, 151, 'slide_0_sub_texto', 'com um click'),
(1153, 151, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1154, 151, 'slide_0_link', 'http://www.google.com.br'),
(1155, 151, '_slide_0_link', 'field_5b75ff774d53a'),
(1156, 151, 'slide_0_tit_link', 'Criar conta agora!'),
(1157, 151, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1158, 151, 'slide', '1'),
(1159, 151, '_slide', 'field_5969377082948'),
(1160, 153, '_edit_lock', '1534477158:1'),
(1161, 152, 'slide_0_imagem', '150'),
(1162, 152, '_slide_0_imagem', 'field_5969378d82949'),
(1163, 152, 'slide_0_texto', 'Venda mais produtos'),
(1164, 152, '_slide_0_texto', 'field_598280ac334ca'),
(1165, 152, 'slide_0_sub_texto', 'com um click'),
(1166, 152, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1167, 152, 'slide_0_link', 'http://www.google.com.br'),
(1168, 152, '_slide_0_link', 'field_5b75ff774d53a'),
(1169, 152, 'slide_0_tit_link', 'Criar conta agora!'),
(1170, 152, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1171, 152, 'slide', '1'),
(1172, 152, '_slide', 'field_5969377082948'),
(1173, 153, '_edit_last', '1'),
(1174, 161, '_wp_attached_file', '2018/08/ico-venda-conosco-1.png'),
(1175, 161, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:137;s:6:\"height\";i:116;s:4:\"file\";s:31:\"2018/08/ico-venda-conosco-1.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-1-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1176, 162, '_wp_attached_file', '2018/08/ico-venda-conosco-2.png'),
(1177, 162, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:111;s:6:\"height\";i:112;s:4:\"file\";s:31:\"2018/08/ico-venda-conosco-2.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-2-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1178, 163, '_wp_attached_file', '2018/08/ico-venda-conosco-3.png'),
(1179, 163, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:116;s:6:\"height\";i:113;s:4:\"file\";s:31:\"2018/08/ico-venda-conosco-3.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-3-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1180, 164, '_wp_attached_file', '2018/08/ico-venda-conosco-4.png'),
(1181, 164, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:104;s:6:\"height\";i:104;s:4:\"file\";s:31:\"2018/08/ico-venda-conosco-4.png\";s:5:\"sizes\";a:2:{s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"ico-venda-conosco-4-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1182, 87, 'blocos_pagina_0_icone', '161'),
(1183, 87, '_blocos_pagina_0_icone', 'field_5b763d7c9fd7c'),
(1184, 87, 'blocos_pagina_0_titulo', 'Crie sua conta de vendedor'),
(1185, 87, '_blocos_pagina_0_titulo', 'field_5b763e7033eef'),
(1186, 87, 'blocos_pagina_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(1187, 87, '_blocos_pagina_0_descricao_0_texto', 'field_5b763e703946d'),
(1188, 87, 'blocos_pagina_0_descricao_1_texto', 'Todas as contas são grátis.'),
(1189, 87, '_blocos_pagina_0_descricao_1_texto', 'field_5b763e703946d'),
(1190, 87, 'blocos_pagina_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(1191, 87, '_blocos_pagina_0_descricao_2_texto', 'field_5b763e703946d'),
(1192, 87, 'blocos_pagina_0_descricao', '3'),
(1193, 87, '_blocos_pagina_0_descricao', 'field_5b763e7033f67'),
(1194, 87, 'blocos_pagina_1_icone', '162'),
(1195, 87, '_blocos_pagina_1_icone', 'field_5b763d7c9fd7c'),
(1196, 87, 'blocos_pagina_1_titulo', 'Crie o perfil de sua empresa'),
(1197, 87, '_blocos_pagina_1_titulo', 'field_5b763e7033eef'),
(1198, 87, 'blocos_pagina_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(1199, 87, '_blocos_pagina_1_descricao_0_texto', 'field_5b763e703946d'),
(1200, 87, 'blocos_pagina_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(1201, 87, '_blocos_pagina_1_descricao_1_texto', 'field_5b763e703946d'),
(1202, 87, 'blocos_pagina_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(1203, 87, '_blocos_pagina_1_descricao_2_texto', 'field_5b763e703946d'),
(1204, 87, 'blocos_pagina_1_descricao', '3'),
(1205, 87, '_blocos_pagina_1_descricao', 'field_5b763e7033f67'),
(1206, 87, 'blocos_pagina_2_icone', '163'),
(1207, 87, '_blocos_pagina_2_icone', 'field_5b763d7c9fd7c'),
(1208, 87, 'blocos_pagina_2_titulo', 'Cadastre seus produtos'),
(1209, 87, '_blocos_pagina_2_titulo', 'field_5b763e7033eef'),
(1210, 87, 'blocos_pagina_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1211, 87, '_blocos_pagina_2_descricao_0_texto', 'field_5b763e703946d'),
(1212, 87, 'blocos_pagina_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1213, 87, '_blocos_pagina_2_descricao_1_texto', 'field_5b763e703946d'),
(1214, 87, 'blocos_pagina_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1215, 87, '_blocos_pagina_2_descricao_2_texto', 'field_5b763e703946d'),
(1216, 87, 'blocos_pagina_2_descricao', '3'),
(1217, 87, '_blocos_pagina_2_descricao', 'field_5b763e7033f67'),
(1218, 87, 'blocos_pagina', '4'),
(1219, 87, '_blocos_pagina', 'field_5b763e6f88e2a'),
(1220, 165, 'slide_0_imagem', '150'),
(1221, 165, '_slide_0_imagem', 'field_5969378d82949'),
(1222, 165, 'slide_0_texto', 'Venda mais produtos'),
(1223, 165, '_slide_0_texto', 'field_598280ac334ca'),
(1224, 165, 'slide_0_sub_texto', 'com um click'),
(1225, 165, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1226, 165, 'slide_0_link', 'http://www.google.com.br'),
(1227, 165, '_slide_0_link', 'field_5b75ff774d53a'),
(1228, 165, 'slide_0_tit_link', 'Criar conta agora!'),
(1229, 165, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1230, 165, 'slide', '1'),
(1231, 165, '_slide', 'field_5969377082948'),
(1232, 165, 'blocos_pagina_0_icone', '161'),
(1233, 165, '_blocos_pagina_0_icone', 'field_5b763d7c9fd7c'),
(1234, 165, 'blocos_pagina_0_titulo', 'Crie sua conta de vendedor'),
(1235, 165, '_blocos_pagina_0_titulo', 'field_5b763e7033eef'),
(1236, 165, 'blocos_pagina_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(1237, 165, '_blocos_pagina_0_descricao_0_texto', 'field_5b763e703946d'),
(1238, 165, 'blocos_pagina_0_descricao_1_texto', 'Todas as contas são grátis.'),
(1239, 165, '_blocos_pagina_0_descricao_1_texto', 'field_5b763e703946d'),
(1240, 165, 'blocos_pagina_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(1241, 165, '_blocos_pagina_0_descricao_2_texto', 'field_5b763e703946d'),
(1242, 165, 'blocos_pagina_0_descricao', '3'),
(1243, 165, '_blocos_pagina_0_descricao', 'field_5b763e7033f67'),
(1244, 165, 'blocos_pagina_1_icone', '162'),
(1245, 165, '_blocos_pagina_1_icone', 'field_5b763d7c9fd7c'),
(1246, 165, 'blocos_pagina_1_titulo', 'Crie o perfil de sua empresa'),
(1247, 165, '_blocos_pagina_1_titulo', 'field_5b763e7033eef'),
(1248, 165, 'blocos_pagina_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(1249, 165, '_blocos_pagina_1_descricao_0_texto', 'field_5b763e703946d'),
(1250, 165, 'blocos_pagina_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(1251, 165, '_blocos_pagina_1_descricao_1_texto', 'field_5b763e703946d'),
(1252, 165, 'blocos_pagina_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(1253, 165, '_blocos_pagina_1_descricao_2_texto', 'field_5b763e703946d'),
(1254, 165, 'blocos_pagina_1_descricao', '3'),
(1255, 165, '_blocos_pagina_1_descricao', 'field_5b763e7033f67'),
(1256, 165, 'blocos_pagina_2_icone', '163'),
(1257, 165, '_blocos_pagina_2_icone', 'field_5b763d7c9fd7c'),
(1258, 165, 'blocos_pagina_2_titulo', 'Cadastre seus produtos'),
(1259, 165, '_blocos_pagina_2_titulo', 'field_5b763e7033eef'),
(1260, 165, 'blocos_pagina_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1261, 165, '_blocos_pagina_2_descricao_0_texto', 'field_5b763e703946d'),
(1262, 165, 'blocos_pagina_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1263, 165, '_blocos_pagina_2_descricao_1_texto', 'field_5b763e703946d'),
(1264, 165, 'blocos_pagina_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1265, 165, '_blocos_pagina_2_descricao_2_texto', 'field_5b763e703946d'),
(1266, 165, 'blocos_pagina_2_descricao', '3'),
(1267, 165, '_blocos_pagina_2_descricao', 'field_5b763e7033f67'),
(1268, 165, 'blocos_pagina', '3'),
(1269, 165, '_blocos_pagina', 'field_5b763e6f88e2a'),
(1270, 87, 'blocos_pagina_3_icone', '164'),
(1271, 87, '_blocos_pagina_3_icone', 'field_5b763d7c9fd7c'),
(1272, 87, 'blocos_pagina_3_titulo', 'Aumente suas vendas'),
(1273, 87, '_blocos_pagina_3_titulo', 'field_5b763e7033eef'),
(1274, 87, 'blocos_pagina_3_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1275, 87, '_blocos_pagina_3_descricao_0_texto', 'field_5b763e703946d'),
(1276, 87, 'blocos_pagina_3_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1277, 87, '_blocos_pagina_3_descricao_1_texto', 'field_5b763e703946d'),
(1278, 87, 'blocos_pagina_3_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1279, 87, '_blocos_pagina_3_descricao_2_texto', 'field_5b763e703946d'),
(1280, 87, 'blocos_pagina_3_descricao', '3'),
(1281, 87, '_blocos_pagina_3_descricao', 'field_5b763e7033f67'),
(1282, 166, 'slide_0_imagem', '150'),
(1283, 166, '_slide_0_imagem', 'field_5969378d82949'),
(1284, 166, 'slide_0_texto', 'Venda mais produtos'),
(1285, 166, '_slide_0_texto', 'field_598280ac334ca'),
(1286, 166, 'slide_0_sub_texto', 'com um click'),
(1287, 166, '_slide_0_sub_texto', 'field_598280d2334cb'),
(1288, 166, 'slide_0_link', 'http://www.google.com.br'),
(1289, 166, '_slide_0_link', 'field_5b75ff774d53a'),
(1290, 166, 'slide_0_tit_link', 'Criar conta agora!'),
(1291, 166, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(1292, 166, 'slide', '1'),
(1293, 166, '_slide', 'field_5969377082948'),
(1294, 166, 'blocos_pagina_0_icone', '161'),
(1295, 166, '_blocos_pagina_0_icone', 'field_5b763d7c9fd7c'),
(1296, 166, 'blocos_pagina_0_titulo', 'Crie sua conta de vendedor'),
(1297, 166, '_blocos_pagina_0_titulo', 'field_5b763e7033eef'),
(1298, 166, 'blocos_pagina_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(1299, 166, '_blocos_pagina_0_descricao_0_texto', 'field_5b763e703946d'),
(1300, 166, 'blocos_pagina_0_descricao_1_texto', 'Todas as contas são grátis.'),
(1301, 166, '_blocos_pagina_0_descricao_1_texto', 'field_5b763e703946d'),
(1302, 166, 'blocos_pagina_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(1303, 166, '_blocos_pagina_0_descricao_2_texto', 'field_5b763e703946d'),
(1304, 166, 'blocos_pagina_0_descricao', '3'),
(1305, 166, '_blocos_pagina_0_descricao', 'field_5b763e7033f67'),
(1306, 166, 'blocos_pagina_1_icone', '162'),
(1307, 166, '_blocos_pagina_1_icone', 'field_5b763d7c9fd7c'),
(1308, 166, 'blocos_pagina_1_titulo', 'Crie o perfil de sua empresa'),
(1309, 166, '_blocos_pagina_1_titulo', 'field_5b763e7033eef'),
(1310, 166, 'blocos_pagina_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(1311, 166, '_blocos_pagina_1_descricao_0_texto', 'field_5b763e703946d'),
(1312, 166, 'blocos_pagina_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(1313, 166, '_blocos_pagina_1_descricao_1_texto', 'field_5b763e703946d'),
(1314, 166, 'blocos_pagina_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(1315, 166, '_blocos_pagina_1_descricao_2_texto', 'field_5b763e703946d'),
(1316, 166, 'blocos_pagina_1_descricao', '3'),
(1317, 166, '_blocos_pagina_1_descricao', 'field_5b763e7033f67'),
(1318, 166, 'blocos_pagina_2_icone', '163'),
(1319, 166, '_blocos_pagina_2_icone', 'field_5b763d7c9fd7c'),
(1320, 166, 'blocos_pagina_2_titulo', 'Cadastre seus produtos'),
(1321, 166, '_blocos_pagina_2_titulo', 'field_5b763e7033eef'),
(1322, 166, 'blocos_pagina_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1323, 166, '_blocos_pagina_2_descricao_0_texto', 'field_5b763e703946d'),
(1324, 166, 'blocos_pagina_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1325, 166, '_blocos_pagina_2_descricao_1_texto', 'field_5b763e703946d'),
(1326, 166, 'blocos_pagina_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1327, 166, '_blocos_pagina_2_descricao_2_texto', 'field_5b763e703946d'),
(1328, 166, 'blocos_pagina_2_descricao', '3'),
(1329, 166, '_blocos_pagina_2_descricao', 'field_5b763e7033f67'),
(1330, 166, 'blocos_pagina', '4'),
(1331, 166, '_blocos_pagina', 'field_5b763e6f88e2a'),
(1332, 166, 'blocos_pagina_3_icone', '164'),
(1333, 166, '_blocos_pagina_3_icone', 'field_5b763d7c9fd7c'),
(1334, 166, 'blocos_pagina_3_titulo', 'Aumente suas vendas'),
(1335, 166, '_blocos_pagina_3_titulo', 'field_5b763e7033eef'),
(1336, 166, 'blocos_pagina_3_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(1337, 166, '_blocos_pagina_3_descricao_0_texto', 'field_5b763e703946d'),
(1338, 166, 'blocos_pagina_3_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(1339, 166, '_blocos_pagina_3_descricao_1_texto', 'field_5b763e703946d'),
(1340, 166, 'blocos_pagina_3_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(1341, 166, '_blocos_pagina_3_descricao_2_texto', 'field_5b763e703946d'),
(1342, 166, 'blocos_pagina_3_descricao', '3'),
(1343, 166, '_blocos_pagina_3_descricao', 'field_5b763e7033f67'),
(1545, 174, '_wp_attached_file', '2018/08/CP_100ml_generico_recorte.png'),
(1546, 174, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:37:\"2018/08/CP_100ml_generico_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:38:\"CP_100ml_generico_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:37:\"CP_100ml_generico_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1752, 182, '_wp_attached_file', '2018/08/CP_180_ml_recorte.png'),
(1753, 182, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:29:\"2018/08/CP_180_ml_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"CP_180_ml_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"CP_180_ml_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"CP_180_ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"CP_180_ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(1842, 186, '_wp_attached_file', '2018/08/CP_250ml_recorte.png'),
(1843, 186, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:28:\"2018/08/CP_250ml_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"CP_250ml_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"CP_250ml_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"CP_250ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"CP_250ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(3063, 229, '_wp_attached_file', '2018/08/M01_recorte.png'),
(3064, 229, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:23:\"2018/08/M01_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"M01_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:23:\"M01_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"M01_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"M01_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"M01_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:23:\"M01_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"M01_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"M01_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:23:\"M01_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"M01_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4157, 261, '_wp_attached_file', '2018/08/M_05_recorte.png'),
(3843, 254, '_wp_attached_file', '2018/08/Plana_04_recorte.png'),
(3844, 254, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:28:\"2018/08/Plana_04_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"Plana_04_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"Plana_04_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"Plana_04_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"Plana_04_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4158, 261, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:24:\"2018/08/M_05_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"M_05_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"M_05_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_05_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4352, 264, '_wp_attached_file', '2018/08/M_07_azul_recorte.png'),
(4353, 264, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:29:\"2018/08/M_07_azul_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:30:\"M_07_azul_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:29:\"M_07_azul_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:29:\"M_07_azul_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4471, 269, '_wp_attached_file', '2018/08/M_07_recorte.png'),
(4472, 269, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:24:\"2018/08/M_07_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"M_07_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"M_07_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_07_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(4564, 273, '_wp_page_template', 'default'),
(4565, 273, '_wc_review_count', '0'),
(4566, 273, '_wc_rating_count', 'a:0:{}'),
(4567, 273, '_wc_average_rating', '0'),
(4568, 273, 'total_sales', '0'),
(4569, 273, '_downloadable', 'no'),
(4570, 273, '_virtual', 'no'),
(4571, 273, '_regular_price', '126.34'),
(4572, 273, '_sale_price', ''),
(4573, 273, '_tax_status', 'none'),
(4574, 273, '_tax_class', ''),
(4575, 273, '_purchase_note', ''),
(4576, 273, '_weight', ''),
(4577, 273, '_length', ''),
(4578, 273, '_width', ''),
(4579, 273, '_height', ''),
(4580, 273, '_sku', '6210065'),
(4581, 273, '_variation_description', ''),
(4582, 273, '_product_attributes', 'a:2:{s:8:\"pa_corpo\";a:7:{s:4:\"name\";s:8:\"pa_corpo\";s:5:\"value\";s:6:\"Branca\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;s:24:\"is_create_taxonomy_terms\";i:1;}s:11:\"pa_material\";a:7:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:10:\"Eps/Espuma\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:1;s:11:\"is_taxonomy\";i:1;s:24:\"is_create_taxonomy_terms\";i:1;}}'),
(4583, 273, '_sale_price_dates_from', ''),
(4584, 273, '_sale_price_dates_to', ''),
(4585, 273, '_price', '126.34'),
(4586, 273, '_sold_individually', ''),
(4587, 273, '_manage_stock', 'no'),
(4588, 273, '_backorders', 'no'),
(4589, 273, '_stock_status', 'instock'),
(4590, 273, '_stock', ''),
(4591, 273, '_product_version', '3.4.4'),
(4592, 273, '_product_image_gallery', ''),
(5823, 296, '_wp_attached_file', '2018/08/M_57_recorte.png'),
(5824, 296, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:24:\"2018/08/M_57_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"M_57_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"M_57_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_57_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7034, 334, '_wp_attached_file', '2018/08/M0_90_F1_recorte.png'),
(7035, 334, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:28:\"2018/08/M0_90_F1_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"M0_90_F1_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:28:\"M0_90_F1_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:28:\"M0_90_F1_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7240, 342, '_wp_attached_file', '2018/08/MO_600_recorte.png'),
(7241, 342, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:26:\"2018/08/MO_600_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:27:\"MO_600_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"MO_600_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"MO_600_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7854, 364, '_wp_attached_file', '2018/08/MP_27_R_recorte.png'),
(7855, 364, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:27:\"2018/08/MP_27_R_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"MP_27_R_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"MP_27_R_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"MP_27_R_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(7941, 366, '_wp_attached_file', '2018/08/MP_32_R_branco_recorte.png'),
(7942, 366, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:34:\"2018/08/MP_32_R_branco_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:35:\"MP_32_R_branco_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:34:\"MP_32_R_branco_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8513, 382, '_wp_attached_file', '2018/08/PL_15_color_mix_recorte.png');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(8514, 382, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:35:\"2018/08/PL_15_color_mix_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:36:\"PL_15_color_mix_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:35:\"PL_15_color_mix_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8920, 396, '_wp_attached_file', '2018/08/TP_cpcomcr_uz_350_700_recorte.png'),
(8921, 396, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:41:\"2018/08/TP_cpcomcr_uz_350_700_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:42:\"TP_cpcomcr_uz_350_700_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:42:\"TP_cpcomcr_uz_350_700_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:41:\"TP_cpcomcr_uz_350_700_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(8952, 398, '_wp_attached_file', '2018/08/Tampa_copo_180ml_recorte.png'),
(8953, 398, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:36:\"2018/08/Tampa_copo_180ml_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"Tampa_copo_180ml_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_180ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9161, 406, '_wp_attached_file', '2018/08/Tampa_copo_100ml_recorte.png'),
(9162, 406, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:36:\"2018/08/Tampa_copo_100ml_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:37:\"Tampa_copo_100ml_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"Tampa_copo_100ml_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:36:\"Tampa_copo_100ml_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9252, 410, '_wp_attached_file', '2018/08/TampaMP27_R_recorte.png'),
(9253, 410, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:31:\"2018/08/TampaMP27_R_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:32:\"TampaMP27_R_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:31:\"TampaMP27_R_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(9284, 412, '_wp_attached_file', '2018/08/TampaM32_R_recorte.png'),
(9285, 412, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:30:\"2018/08/TampaM32_R_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"TampaM32_R_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"TampaM32_R_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"TampaM32_R_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10361, 450, '_wp_attached_file', '2018/08/MPPS_215-1000_recorte.png'),
(10362, 450, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:33:\"2018/08/MPPS_215-1000_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:34:\"MPPS_215-1000_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:34:\"MPPS_215-1000_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:33:\"MPPS_215-1000_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10570, 457, '_wp_attached_file', '2018/08/M_54_recorte.png'),
(10451, 454, '_wp_attached_file', '2018/08/M_04_recorte.png'),
(10452, 454, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:24:\"2018/08/M_04_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"M_04_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"M_04_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"M_04_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_04_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10512, 456, '_wp_attached_file', '2018/08/M_05_preto_recorte.png'),
(10482, 455, '_wp_attached_file', '2018/08/M_03_recorte.png'),
(10483, 455, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:24:\"2018/08/M_03_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"M_03_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"M_03_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"M_03_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_03_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10513, 456, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:30:\"2018/08/M_05_preto_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:31:\"M_05_preto_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:31:\"M_05_preto_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:30:\"M_05_preto_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:30:\"M_05_preto_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10571, 457, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:24:\"2018/08/M_54_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:25:\"M_54_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:25:\"M_54_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"M_54_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"M_54_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10655, 459, '_wp_attached_file', '2018/08/MOB_320_recorte.png'),
(10656, 459, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:3024;s:6:\"height\";i:4032;s:4:\"file\";s:27:\"2018/08/MOB_320_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-225x300.png\";s:5:\"width\";i:225;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"MOB_320_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"MOB_320_recorte-768x1024.png\";s:5:\"width\";i:768;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"MOB_320_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-416x555.png\";s:5:\"width\";i:416;s:6:\"height\";i:555;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"MOB_320_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10687, 461, '_wp_attached_file', '2018/08/MO_100-1_recorte.png'),
(10688, 461, '_wp_attachment_metadata', 'a:4:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:28:\"2018/08/MO_100-1_recorte.png\";s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(10748, 464, '_wp_attached_file', '2018/08/MO_90_3_recorte.png'),
(10749, 464, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:4032;s:6:\"height\";i:3024;s:4:\"file\";s:27:\"2018/08/MO_90_3_recorte.png\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-300x225.png\";s:5:\"width\";i:300;s:6:\"height\";i:225;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-768x576.png\";s:5:\"width\";i:768;s:6:\"height\";i:576;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:28:\"MO_90_3_recorte-1024x768.png\";s:5:\"width\";i:1024;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"MO_90_3_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-324x324.png\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:9:\"image/png\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-416x312.png\";s:5:\"width\";i:416;s:6:\"height\";i:312;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"MO_90_3_recorte-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11398, 273, '_wp_desired_post_slug', 'bandeja-de-espuma-mais-resistente-retangular-branco-contem-100-unidades'),
(11687, 474, '_wc_review_count', '0'),
(11688, 474, '_wc_rating_count', 'a:0:{}'),
(11689, 474, '_wc_average_rating', '0'),
(11690, 474, '_edit_lock', '1538011477:1'),
(11691, 475, '_wp_attached_file', '2018/09/MG_3871.jpg'),
(11692, 475, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:19:\"2018/09/MG_3871.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"MG_3871-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"MG_3871-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"MG_3871-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"MG_3871-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"MG_3871-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"MG_3871-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"MG_3871-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"MG_3871-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"MG_3871-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:18:\"Canon EOS REBEL T5\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1474894559\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:3:\"0.4\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11693, 474, '_edit_last', '1'),
(11694, 474, '_thumbnail_id', '475'),
(11695, 474, '_sku', '6210001'),
(11696, 474, '_regular_price', '45.99'),
(11697, 474, '_sale_price', ''),
(11698, 474, '_sale_price_dates_from', ''),
(11699, 474, '_sale_price_dates_to', ''),
(11700, 474, 'total_sales', '1'),
(11701, 474, '_tax_status', 'taxable'),
(11702, 474, '_tax_class', ''),
(11703, 474, '_manage_stock', 'no'),
(11704, 474, '_backorders', 'no'),
(11705, 474, '_sold_individually', 'no'),
(11706, 474, '_weight', ''),
(11707, 474, '_length', ''),
(11708, 474, '_width', ''),
(11709, 474, '_height', ''),
(11710, 474, '_upsell_ids', 'a:0:{}'),
(11711, 474, '_crosssell_ids', 'a:0:{}'),
(11712, 474, '_purchase_note', ''),
(11713, 474, '_default_attributes', 'a:0:{}'),
(11714, 474, '_virtual', 'no'),
(11715, 474, '_downloadable', 'no'),
(11716, 474, '_product_image_gallery', '476,477,478,479,480'),
(11717, 474, '_download_limit', '-1'),
(11718, 474, '_download_expiry', '-1'),
(11719, 474, '_stock', NULL),
(11720, 474, '_stock_status', 'instock'),
(11721, 474, '_product_attributes', 'a:6:{s:9:\"pa_volume\";a:6:{s:4:\"name\";s:9:\"pa_volume\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_cores\";a:6:{s:4:\"name\";s:8:\"pa_cores\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_qtd-da-embalagem\";a:6:{s:4:\"name\";s:19:\"pa_qtd-da-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:20:\"pa_tipo-de-embalagem\";a:6:{s:4:\"name\";s:20:\"pa_tipo-de-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_tempo-de-entrega\";a:6:{s:4:\"name\";s:19:\"pa_tempo-de-entrega\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(11722, 474, '_product_version', '3.4.3'),
(11723, 474, '_price', '45.99'),
(11724, 474, '_commission_per_product', ''),
(11725, 474, '_wcmp_cancallation_policy', ''),
(11726, 474, '_wcmp_refund_policy', ''),
(11727, 474, '_wcmp_shipping_policy', ''),
(11728, 476, '_wp_attached_file', '2018/09/2.jpg'),
(11729, 476, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/09/2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"2-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"2-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11730, 477, '_wp_attached_file', '2018/09/3.jpg'),
(11731, 477, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/09/3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"3-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"3-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11732, 478, '_wp_attached_file', '2018/09/4.jpg'),
(11733, 478, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/09/4.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"4-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"4-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11734, 479, '_wp_attached_file', '2018/09/5.jpg'),
(11735, 479, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/09/5.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"5-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"5-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"5-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"5-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11736, 480, '_wp_attached_file', '2018/09/6.jpg'),
(11737, 480, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/09/6.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"6-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"6-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"6-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"6-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11738, 482, '_sku', '6210001-1'),
(11739, 482, '_regular_price', '65.00'),
(11740, 482, '_sale_price', ''),
(11741, 482, '_sale_price_dates_from', ''),
(11742, 482, '_sale_price_dates_to', ''),
(11743, 482, 'total_sales', '1'),
(11744, 482, '_tax_status', 'taxable'),
(11745, 482, '_tax_class', ''),
(11746, 482, '_manage_stock', 'no'),
(11747, 482, '_backorders', 'no'),
(11748, 482, '_sold_individually', 'no'),
(11749, 482, '_weight', ''),
(11750, 482, '_length', ''),
(11751, 482, '_width', ''),
(11752, 482, '_height', ''),
(11753, 482, '_upsell_ids', 'a:0:{}'),
(11754, 482, '_crosssell_ids', 'a:0:{}'),
(11755, 482, '_purchase_note', ''),
(11756, 482, '_default_attributes', 'a:0:{}'),
(11757, 482, '_virtual', 'no'),
(11758, 482, '_downloadable', 'no'),
(11759, 482, '_product_image_gallery', '476,477,478,479,480,475'),
(11760, 482, '_download_limit', '-1'),
(11761, 482, '_download_expiry', '-1'),
(11762, 482, '_thumbnail_id', '478'),
(11763, 482, '_stock', NULL),
(11764, 482, '_stock_status', 'instock'),
(11765, 482, '_wc_average_rating', '0'),
(11766, 482, '_wc_rating_count', 'a:0:{}'),
(11767, 482, '_wc_review_count', '0'),
(11768, 482, '_downloadable_files', 'a:0:{}'),
(11769, 482, '_product_attributes', 'a:6:{s:9:\"pa_volume\";a:6:{s:4:\"name\";s:9:\"pa_volume\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_cores\";a:6:{s:4:\"name\";s:8:\"pa_cores\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_qtd-da-embalagem\";a:6:{s:4:\"name\";s:19:\"pa_qtd-da-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:20:\"pa_tipo-de-embalagem\";a:6:{s:4:\"name\";s:20:\"pa_tipo-de-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_tempo-de-entrega\";a:6:{s:4:\"name\";s:19:\"pa_tempo-de-entrega\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(11770, 482, '_product_version', '3.4.3'),
(11771, 482, '_price', '65.00'),
(11772, 482, '_wcmp_cancallation_policy', ''),
(11773, 482, '_wcmp_refund_policy', ''),
(11774, 482, '_wcmp_shipping_policy', ''),
(11775, 482, '_edit_lock', '1538511958:1'),
(11776, 482, '_edit_last', '1'),
(11777, 482, '_commission_per_product', ''),
(11778, 483, '_sku', '6210001-2'),
(11779, 483, '_regular_price', '15.89'),
(11780, 483, '_sale_price', ''),
(11781, 483, '_sale_price_dates_from', ''),
(11782, 483, '_sale_price_dates_to', ''),
(11783, 483, 'total_sales', '2'),
(11784, 483, '_tax_status', 'taxable'),
(11785, 483, '_tax_class', ''),
(11786, 483, '_manage_stock', 'no'),
(11787, 483, '_backorders', 'no'),
(11788, 483, '_sold_individually', 'no'),
(11789, 483, '_weight', ''),
(11790, 483, '_length', ''),
(11791, 483, '_width', ''),
(11792, 483, '_height', ''),
(11793, 483, '_upsell_ids', 'a:0:{}'),
(11794, 483, '_crosssell_ids', 'a:0:{}'),
(11795, 483, '_purchase_note', ''),
(11796, 483, '_default_attributes', 'a:0:{}'),
(11797, 483, '_virtual', 'no'),
(11798, 483, '_downloadable', 'no'),
(11799, 483, '_product_image_gallery', '476,477,478,479,480,475'),
(11800, 483, '_download_limit', '-1'),
(11801, 483, '_download_expiry', '-1'),
(11802, 483, '_thumbnail_id', '477'),
(11803, 483, '_stock', NULL),
(11804, 483, '_stock_status', 'instock'),
(11805, 483, '_wc_average_rating', '0'),
(11806, 483, '_wc_rating_count', 'a:0:{}'),
(11807, 483, '_wc_review_count', '0'),
(11808, 483, '_downloadable_files', 'a:0:{}'),
(11809, 483, '_product_attributes', 'a:6:{s:9:\"pa_volume\";a:6:{s:4:\"name\";s:9:\"pa_volume\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_cores\";a:6:{s:4:\"name\";s:8:\"pa_cores\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_qtd-da-embalagem\";a:6:{s:4:\"name\";s:19:\"pa_qtd-da-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:20:\"pa_tipo-de-embalagem\";a:6:{s:4:\"name\";s:20:\"pa_tipo-de-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_tempo-de-entrega\";a:6:{s:4:\"name\";s:19:\"pa_tempo-de-entrega\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(11810, 483, '_product_version', '3.4.3'),
(11811, 483, '_price', '15.89'),
(11812, 483, '_wcmp_cancallation_policy', ''),
(11813, 483, '_wcmp_refund_policy', ''),
(11814, 483, '_wcmp_shipping_policy', ''),
(11815, 483, '_edit_lock', '1538517412:1'),
(11816, 483, '_edit_last', '1'),
(11817, 483, '_commission_per_product', ''),
(11818, 484, '_edit_lock', '1538515651:1'),
(11819, 484, '_edit_last', '1'),
(11820, 10, '_edit_lock', '1538602324:1');
INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(12040, 513, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:222;s:4:\"file\";s:27:\"2018/11/cat_coffee_shop.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cat_coffee_shop-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cat_coffee_shop-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"cat_coffee_shop-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"cat_coffee_shop-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"cat_coffee_shop-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"cat_coffee_shop-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12039, 513, '_wp_attached_file', '2018/11/cat_coffee_shop.jpg'),
(12035, 496, '_wcmp_shipping_policy', ''),
(12036, 510, '_edit_last', '1'),
(12037, 512, '_wp_attached_file', '2018/11/cat_mini_market.jpg'),
(12038, 512, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:222;s:4:\"file\";s:27:\"2018/11/cat_mini_market.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:27:\"cat_mini_market-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:27:\"cat_mini_market-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:27:\"cat_mini_market-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:27:\"cat_mini_market-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:27:\"cat_mini_market-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:27:\"cat_mini_market-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12034, 496, '_wcmp_refund_policy', ''),
(12033, 496, '_wcmp_cancallation_policy', ''),
(12032, 496, '_commission_per_product', ''),
(12031, 510, '_edit_lock', '1542914521:1'),
(12030, 505, '_edit_last', '1'),
(12029, 505, '_edit_lock', '1542935168:1'),
(12044, 515, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:222;s:4:\"file\";s:26:\"2018/11/cat_restaurant.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:26:\"cat_restaurant-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:26:\"cat_restaurant-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:26:\"cat_restaurant-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:26:\"cat_restaurant-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:26:\"cat_restaurant-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:26:\"cat_restaurant-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12043, 515, '_wp_attached_file', '2018/11/cat_restaurant.jpg'),
(12041, 514, '_wp_attached_file', '2018/11/cat_delivery.jpg'),
(12042, 514, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:394;s:6:\"height\";i:222;s:4:\"file\";s:24:\"2018/11/cat_delivery.jpg\";s:5:\"sizes\";a:6:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:24:\"cat_delivery-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:24:\"cat_delivery-300x169.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:169;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:24:\"cat_delivery-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:24:\"cat_delivery-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:24:\"cat_delivery-324x222.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:222;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:24:\"cat_delivery-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11901, 489, '_wp_attached_file', '2018/10/5.jpg'),
(11902, 489, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/10/5.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"5-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"5-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"5-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"5-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"5-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"5-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"5-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"5-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11903, 490, '_wp_attached_file', '2018/10/MG_3871.jpg'),
(11904, 490, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:19:\"2018/10/MG_3871.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:19:\"MG_3871-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:19:\"MG_3871-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:19:\"MG_3871-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:19:\"MG_3871-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:19:\"MG_3871-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:19:\"MG_3871-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:19:\"MG_3871-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:19:\"MG_3871-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:19:\"MG_3871-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:2:\"10\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:18:\"Canon EOS REBEL T5\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:10:\"1474894559\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:3:\"135\";s:3:\"iso\";s:3:\"400\";s:13:\"shutter_speed\";s:3:\"0.4\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11905, 491, '_wp_attached_file', '2018/10/2.jpg'),
(11906, 491, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/10/2.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"2-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"2-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"2-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"2-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"2-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"2-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"2-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11907, 492, '_wp_attached_file', '2018/10/3.jpg'),
(11908, 492, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/10/3.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"3-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"3-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"3-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"3-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"3-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"3-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"3-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11909, 493, '_wp_attached_file', '2018/10/4.jpg'),
(11910, 493, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/10/4.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"4-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"4-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"4-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"4-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"4-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"4-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"4-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11911, 494, '_wp_attached_file', '2018/10/6.jpg'),
(11912, 494, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:800;s:6:\"height\";i:533;s:4:\"file\";s:13:\"2018/10/6.jpg\";s:5:\"sizes\";a:9:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:13:\"6-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:13:\"6-300x200.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:200;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:13:\"6-768x512.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:512;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:13:\"6-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:13:\"6-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:13:\"6-324x324.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:324;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:13:\"6-416x277.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:277;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:13:\"6-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11913, 495, '_sku', '54754654'),
(11914, 495, '_wc_review_count', '0'),
(11915, 495, '_wc_rating_count', 'a:0:{}'),
(11916, 495, '_wc_average_rating', '0'),
(11917, 495, '_regular_price', '89.00'),
(11918, 495, '_sale_price', ''),
(11919, 495, '_sale_price_dates_from', ''),
(11920, 495, '_sale_price_dates_to', ''),
(11921, 495, 'total_sales', '1'),
(11922, 495, '_tax_status', 'taxable'),
(11923, 495, '_tax_class', ''),
(11924, 495, '_manage_stock', 'no'),
(11925, 495, '_backorders', 'no'),
(11926, 495, '_sold_individually', 'no'),
(11927, 495, '_weight', '1'),
(11928, 495, '_length', '50'),
(11929, 495, '_width', '80'),
(11930, 495, '_height', '50'),
(11931, 495, '_upsell_ids', 'a:0:{}'),
(11932, 495, '_crosssell_ids', 'a:0:{}'),
(11933, 495, '_purchase_note', ''),
(11934, 495, '_default_attributes', 'a:0:{}'),
(11935, 495, '_virtual', 'no'),
(11936, 495, '_downloadable', 'no'),
(11937, 495, '_product_image_gallery', '494,493,491,490,492'),
(11938, 495, '_download_limit', '-1'),
(11939, 495, '_download_expiry', '-1'),
(11940, 495, '_stock', NULL),
(11941, 495, '_stock_status', 'instock'),
(11942, 495, '_product_attributes', 'a:6:{s:9:\"pa_altura\";a:6:{s:4:\"name\";s:9:\"pa_altura\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_volume\";a:6:{s:4:\"name\";s:9:\"pa_volume\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_cores\";a:6:{s:4:\"name\";s:8:\"pa_cores\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_qtd-da-embalagem\";a:6:{s:4:\"name\";s:19:\"pa_qtd-da-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:20:\"pa_tipo-de-embalagem\";a:6:{s:4:\"name\";s:20:\"pa_tipo-de-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_tempo-de-entrega\";a:6:{s:4:\"name\";s:19:\"pa_tempo-de-entrega\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(11943, 495, '_product_version', '3.4.3'),
(11944, 495, '_price', '89.00'),
(11945, 495, '_thumbnail_id', '489'),
(11949, 496, '_sku', '874681'),
(11950, 496, '_wc_review_count', '0'),
(11951, 496, '_wc_rating_count', 'a:0:{}'),
(11952, 496, '_wc_average_rating', '0'),
(11953, 496, '_regular_price', '36'),
(11954, 496, '_sale_price', ''),
(11955, 496, '_sale_price_dates_from', ''),
(11956, 496, '_sale_price_dates_to', ''),
(11957, 496, 'total_sales', '1'),
(11958, 496, '_tax_status', 'taxable'),
(11959, 496, '_tax_class', ''),
(11960, 496, '_manage_stock', 'no'),
(11961, 496, '_backorders', 'no'),
(11962, 496, '_sold_individually', 'no'),
(11963, 496, '_weight', '2'),
(11964, 496, '_length', '30'),
(11965, 496, '_width', '30'),
(11966, 496, '_height', '30'),
(11967, 496, '_upsell_ids', 'a:0:{}'),
(11968, 496, '_crosssell_ids', 'a:0:{}'),
(11969, 496, '_purchase_note', ''),
(11970, 496, '_default_attributes', 'a:0:{}'),
(11971, 496, '_virtual', 'no'),
(11972, 496, '_downloadable', 'no'),
(11973, 496, '_product_image_gallery', '493,492,491,490,489'),
(11974, 496, '_download_limit', '-1'),
(11975, 496, '_download_expiry', '-1'),
(11976, 496, '_stock', NULL),
(11977, 496, '_stock_status', 'instock'),
(11978, 496, '_product_attributes', 'a:9:{s:9:\"pa_altura\";a:6:{s:4:\"name\";s:9:\"pa_altura\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:0;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:8:\"pa_cores\";a:6:{s:4:\"name\";s:8:\"pa_cores\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:1;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_diametro\";a:6:{s:4:\"name\";s:11:\"pa_diametro\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:2;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:10:\"pa_largura\";a:6:{s:4:\"name\";s:10:\"pa_largura\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:3;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:11:\"pa_material\";a:6:{s:4:\"name\";s:11:\"pa_material\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:4;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_qtd-da-embalagem\";a:6:{s:4:\"name\";s:19:\"pa_qtd-da-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:5;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:20:\"pa_tipo-de-embalagem\";a:6:{s:4:\"name\";s:20:\"pa_tipo-de-embalagem\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:6;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:9:\"pa_volume\";a:6:{s:4:\"name\";s:9:\"pa_volume\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:7;s:10:\"is_visible\";i:0;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}s:19:\"pa_tempo-de-entrega\";a:6:{s:4:\"name\";s:19:\"pa_tempo-de-entrega\";s:5:\"value\";s:0:\"\";s:8:\"position\";i:8;s:10:\"is_visible\";i:1;s:12:\"is_variation\";i:0;s:11:\"is_taxonomy\";i:1;}}'),
(11979, 496, '_product_version', '3.4.3'),
(11980, 496, '_price', '36'),
(11981, 496, '_thumbnail_id', '494'),
(12028, 92, '_edit_lock', '1542933471:1'),
(11985, 496, '_edit_last', '1'),
(11986, 496, '_edit_lock', '1543121825:5'),
(11987, 495, '_edit_last', '1'),
(11988, 495, '_edit_lock', '1538582774:1'),
(11989, 495, '_commission_per_product', ''),
(11990, 495, '_wcmp_cancallation_policy', ''),
(11991, 495, '_wcmp_refund_policy', ''),
(11992, 495, '_wcmp_shipping_policy', ''),
(11993, 8, '_edit_lock', '1542932972:5'),
(11994, 3, '_edit_lock', '1538605333:1'),
(11995, 497, '_wp_attached_file', '2018/10/img-page-11.jpg'),
(11996, 497, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1600;s:6:\"height\";i:270;s:4:\"file\";s:23:\"2018/10/img-page-11.jpg\";s:5:\"sizes\";a:10:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:23:\"img-page-11-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:6:\"medium\";a:4:{s:4:\"file\";s:22:\"img-page-11-300x51.jpg\";s:5:\"width\";i:300;s:6:\"height\";i:51;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:23:\"img-page-11-768x130.jpg\";s:5:\"width\";i:768;s:6:\"height\";i:130;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:5:\"large\";a:4:{s:4:\"file\";s:24:\"img-page-11-1024x173.jpg\";s:5:\"width\";i:1024;s:6:\"height\";i:173;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:23:\"img-page-11-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";s:9:\"uncropped\";b:1;}s:18:\"woocommerce_single\";a:4:{s:4:\"file\";s:22:\"img-page-11-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:23:\"img-page-11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:23:\"img-page-11-324x270.jpg\";s:5:\"width\";i:324;s:6:\"height\";i:270;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:11:\"shop_single\";a:4:{s:4:\"file\";s:22:\"img-page-11-416x70.jpg\";s:5:\"width\";i:416;s:6:\"height\";i:70;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:23:\"img-page-11-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(11997, 3, '_edit_last', '1'),
(11998, 3, '_the_champ_meta', 'a:5:{s:7:\"sharing\";i:0;s:16:\"vertical_sharing\";i:0;s:7:\"counter\";i:0;s:16:\"vertical_counter\";i:0;s:11:\"fb_comments\";i:0;}'),
(11999, 3, 'slide_0_imagem', '497'),
(12000, 3, '_slide_0_imagem', 'field_5969378d82949'),
(12001, 3, 'slide_0_texto', ''),
(12002, 3, '_slide_0_texto', 'field_598280ac334ca'),
(12003, 3, 'slide_0_sub_texto', ''),
(12004, 3, '_slide_0_sub_texto', 'field_598280d2334cb'),
(12005, 3, 'slide_0_link', ''),
(12006, 3, '_slide_0_link', 'field_5b75ff774d53a'),
(12007, 3, 'slide_0_tit_link', ''),
(12008, 3, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(12009, 3, 'slide', '1'),
(12010, 3, '_slide', 'field_5969377082948'),
(12011, 498, 'slide_0_imagem', '497'),
(12012, 498, '_slide_0_imagem', 'field_5969378d82949'),
(12013, 498, 'slide_0_texto', ''),
(12014, 498, '_slide_0_texto', 'field_598280ac334ca'),
(12015, 498, 'slide_0_sub_texto', ''),
(12016, 498, '_slide_0_sub_texto', 'field_598280d2334cb'),
(12017, 498, 'slide_0_link', ''),
(12018, 498, '_slide_0_link', 'field_5b75ff774d53a'),
(12019, 498, 'slide_0_tit_link', ''),
(12020, 498, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(12021, 498, 'slide', '1'),
(12022, 498, '_slide', 'field_5969377082948'),
(12023, 6, '_edit_lock', '1539001703:1'),
(12024, 499, '_wp_attached_file', '2018/10/user-1.jpg'),
(12025, 499, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:200;s:6:\"height\";i:200;s:4:\"file\";s:18:\"2018/10/user-1.jpg\";s:5:\"sizes\";a:3:{s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"user-1-150x150.jpg\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"user-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"user-1-100x100.jpg\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:10:\"image/jpeg\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(12026, 499, 'facebook_avatar', '10211297328221587'),
(12027, 499, '_wp_attachment_wp_user_avatar', '1'),
(12049, 519, '_order_key', 'wc_order_5bf74354e6f55'),
(12050, 519, '_customer_user', '1'),
(12051, 519, '_payment_method', 'stripe'),
(12052, 519, '_payment_method_title', 'Cartão de crédito (Stripe)'),
(12053, 519, '_transaction_id', 'ch_1DZS6rD4DUEBCDyz3R0kg67C'),
(12054, 519, '_customer_ip_address', '179.127.54.14'),
(12055, 519, '_customer_user_agent', 'mozilla/5.0 (windows nt 10.0; win64; x64) applewebkit/537.36 (khtml, like gecko) chrome/70.0.3538.110 safari/537.36'),
(12056, 519, '_created_via', 'checkout'),
(12057, 519, '_date_completed', '1542931673'),
(12058, 519, '_completed_date', '2018-11-22 22:07:53'),
(12059, 519, '_date_paid', '1542931286'),
(12060, 519, '_paid_date', '2018-11-22 22:01:26'),
(12061, 519, '_cart_hash', '6221a5fdb940e08c67368f64b57d005f'),
(12062, 519, '_billing_first_name', 'Ederton'),
(12063, 519, '_billing_last_name', 'Lima'),
(12064, 519, '_billing_company', ''),
(12065, 519, '_billing_address_1', 'Rua João Urias Batista'),
(12066, 519, '_billing_address_2', 'Vila Santista'),
(12067, 519, '_billing_city', 'Bauru'),
(12068, 519, '_billing_state', 'SP'),
(12069, 519, '_billing_postcode', '17054-610'),
(12070, 519, '_billing_country', 'BR'),
(12071, 519, '_billing_email', 'edertton@gmail.com'),
(12072, 519, '_billing_phone', '14981225949'),
(12073, 519, '_shipping_first_name', 'Ederton'),
(12074, 519, '_shipping_last_name', 'Lima'),
(12075, 519, '_shipping_company', ''),
(12076, 519, '_shipping_address_1', 'Rua João Urias Batista'),
(12077, 519, '_shipping_address_2', 'Vila Santista'),
(12078, 519, '_shipping_city', 'Bauru'),
(12079, 519, '_shipping_state', 'SP'),
(12080, 519, '_shipping_postcode', '17054-610'),
(12081, 519, '_shipping_country', 'BR'),
(12082, 519, '_order_currency', 'BRL'),
(12083, 519, '_cart_discount', '0'),
(12084, 519, '_cart_discount_tax', '0'),
(12085, 519, '_order_shipping', '2308.89'),
(12086, 519, '_order_shipping_tax', '0'),
(12087, 519, '_order_tax', '0'),
(12088, 519, '_order_total', '2576.66'),
(12089, 519, '_order_version', '3.4.3'),
(12090, 519, '_prices_include_tax', 'no'),
(12091, 519, '_billing_address_index', 'Ederton Lima  Rua João Urias Batista Vila Santista Bauru SP 17054-610 BR edertton@gmail.com 14981225949'),
(12092, 519, '_shipping_address_index', 'Ederton Lima  Rua João Urias Batista Vila Santista Bauru SP 17054-610 BR'),
(12093, 519, '_wcmp_order_processed', '1'),
(12094, 519, '_stripe_source_id', 'src_1DZS6pD4DUEBCDyzmCMFvogv'),
(12095, 519, '_stripe_charge_captured', 'yes'),
(12096, 519, '_stripe_fee', '26.82'),
(12097, 519, '_stripe_net', '887.81'),
(12098, 519, '_stripe_currency', 'AUD'),
(12099, 519, '_download_permissions_granted', 'yes'),
(12100, 519, '_recorded_sales', 'yes'),
(12101, 519, '_recorded_coupon_usage_counts', 'yes'),
(12102, 520, '_commission_vendor', '20'),
(12103, 520, '_commission_product', 'a:4:{i:0;i:474;i:1;i:482;i:2;i:496;i:3;i:495;}'),
(12104, 520, '_shipping', '2277.68'),
(12105, 520, '_tax', '0'),
(12106, 520, '_commission_order_id', '519'),
(12107, 520, '_paid_status', 'unpaid'),
(12108, 519, '_commission_ids', 'a:2:{i:0;i:520;i:1;i:521;}'),
(12109, 521, '_commission_vendor', '23'),
(12110, 521, '_commission_product', 'a:1:{i:0;i:483;}'),
(12111, 521, '_shipping', '31.23'),
(12112, 521, '_tax', '0'),
(12113, 521, '_commission_order_id', '519'),
(12114, 521, '_paid_status', 'unpaid'),
(12115, 519, '_commissions_processed', 'yes'),
(12116, 520, '_commission_amount', '23.599'),
(12117, 521, '_commission_amount', '3.178'),
(12118, 519, '_order_stock_reduced', 'yes'),
(12119, 519, '_edit_lock', '1542932144:1'),
(12120, 519, '_edit_last', '1'),
(12121, 7, '_edit_lock', '1542932951:5'),
(12122, 92, '_edit_last', '1'),
(12123, 508, '_edit_lock', '1542938415:1'),
(12124, 508, '_edit_last', '1'),
(12125, 28, 'imagem_categoria', ''),
(12126, 28, '_imagem_categoria', 'field_5bf6c0de8e0d3'),
(12127, 522, 'imagem_banner_topo', ''),
(12128, 522, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(12129, 522, 'url_banner_topo', ''),
(12130, 522, '_url_banner_topo', 'field_5b762078a8eba'),
(12131, 522, 'blocos', '3'),
(12132, 522, '_blocos', 'field_5b7623ea8e86d'),
(12133, 522, 'slide_0_imagem', '142'),
(12134, 522, '_slide_0_imagem', 'field_5969378d82949'),
(12135, 522, 'slide_0_texto', 'Tudo para seu negócio'),
(12136, 522, '_slide_0_texto', 'field_598280ac334ca'),
(12137, 522, 'slide_0_sub_texto', 'a um click de distância'),
(12138, 522, '_slide_0_sub_texto', 'field_598280d2334cb'),
(12139, 522, 'slide_0_link', 'http://www.google.com'),
(12140, 522, '_slide_0_link', 'field_5b75ff774d53a'),
(12141, 522, 'slide_0_tit_link', 'Criar conta agora!'),
(12142, 522, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(12143, 522, 'slide', '1'),
(12144, 522, '_slide', 'field_5969377082948'),
(12145, 522, 'blocos_0_titulo', 'Para cada tipo e tamanho de negócio'),
(12146, 522, '_blocos_0_titulo', 'field_5b7624298e86e'),
(12147, 522, 'blocos_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(12148, 522, '_blocos_0_descricao_0_texto', 'field_5b7626e78b101'),
(12149, 522, 'blocos_0_descricao_1_texto', 'Todas as contas são grátis.'),
(12150, 522, '_blocos_0_descricao_1_texto', 'field_5b7626e78b101'),
(12151, 522, 'blocos_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(12152, 522, '_blocos_0_descricao_2_texto', 'field_5b7626e78b101'),
(12153, 522, 'blocos_0_descricao', '3'),
(12154, 522, '_blocos_0_descricao', 'field_5b7626c58b100'),
(12155, 522, 'blocos_0_url', 'http://www.google.com'),
(12156, 522, '_blocos_0_url', 'field_5b7625f2fd4ba'),
(12157, 522, 'blocos_0_titulo_url', 'Saiba mais'),
(12158, 522, '_blocos_0_titulo_url', 'field_5b762610fd4bb'),
(12159, 522, 'blocos_1_titulo', 'Promoções exclusivas para empresas'),
(12160, 522, '_blocos_1_titulo', 'field_5b7624298e86e'),
(12161, 522, 'blocos_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(12162, 522, '_blocos_1_descricao_0_texto', 'field_5b7626e78b101'),
(12163, 522, 'blocos_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(12164, 522, '_blocos_1_descricao_1_texto', 'field_5b7626e78b101'),
(12165, 522, 'blocos_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(12166, 522, '_blocos_1_descricao_2_texto', 'field_5b7626e78b101'),
(12167, 522, 'blocos_1_descricao', '3'),
(12168, 522, '_blocos_1_descricao', 'field_5b7626c58b100'),
(12169, 522, 'blocos_1_url', 'http://www.google.com'),
(12170, 522, '_blocos_1_url', 'field_5b7625f2fd4ba'),
(12171, 522, 'blocos_1_titulo_url', 'Registre-se'),
(12172, 522, '_blocos_1_titulo_url', 'field_5b762610fd4bb'),
(12173, 522, 'blocos_2_titulo', 'Encontre tudo o que precisa no menor tempo'),
(12174, 522, '_blocos_2_titulo', 'field_5b7624298e86e'),
(12175, 522, 'blocos_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(12176, 522, '_blocos_2_descricao_0_texto', 'field_5b7626e78b101'),
(12177, 522, 'blocos_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(12178, 522, '_blocos_2_descricao_1_texto', 'field_5b7626e78b101'),
(12179, 522, 'blocos_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(12180, 522, '_blocos_2_descricao_2_texto', 'field_5b7626e78b101'),
(12181, 522, 'blocos_2_descricao', '3'),
(12182, 522, '_blocos_2_descricao', 'field_5b7626c58b100'),
(12183, 522, 'blocos_2_url', 'http://www.google.com'),
(12184, 522, '_blocos_2_url', 'field_5b7625f2fd4ba'),
(12185, 522, 'blocos_2_titulo_url', 'Crie sua conta'),
(12186, 522, '_blocos_2_titulo_url', 'field_5b762610fd4bb'),
(12187, 522, 'imagem_categoria', ''),
(12188, 522, '_imagem_categoria', 'field_5bf6c0de8e0d3'),
(12189, 523, 'imagem_banner_topo', ''),
(12190, 523, '_imagem_banner_topo', 'field_5b762003a8eb9'),
(12191, 523, 'url_banner_topo', ''),
(12192, 523, '_url_banner_topo', 'field_5b762078a8eba'),
(12193, 523, 'blocos', '3'),
(12194, 523, '_blocos', 'field_5b7623ea8e86d'),
(12195, 523, 'slide_0_imagem', '142'),
(12196, 523, '_slide_0_imagem', 'field_5969378d82949'),
(12197, 523, 'slide_0_texto', 'Tudo para seu negócio'),
(12198, 523, '_slide_0_texto', 'field_598280ac334ca'),
(12199, 523, 'slide_0_sub_texto', 'a um click de distância'),
(12200, 523, '_slide_0_sub_texto', 'field_598280d2334cb'),
(12201, 523, 'slide_0_link', 'http://www.google.com'),
(12202, 523, '_slide_0_link', 'field_5b75ff774d53a'),
(12203, 523, 'slide_0_tit_link', 'Criar conta agora!'),
(12204, 523, '_slide_0_tit_link', 'field_5b75ff954d53b'),
(12205, 523, 'slide', '1'),
(12206, 523, '_slide', 'field_5969377082948'),
(12207, 523, 'blocos_0_titulo', 'Para cada tipo e tamanho de negócio'),
(12208, 523, '_blocos_0_titulo', 'field_5b7624298e86e'),
(12209, 523, 'blocos_0_descricao_0_texto', 'Não importa o tamanho da sua empresa.'),
(12210, 523, '_blocos_0_descricao_0_texto', 'field_5b7626e78b101'),
(12211, 523, 'blocos_0_descricao_1_texto', 'Todas as contas são grátis.'),
(12212, 523, '_blocos_0_descricao_1_texto', 'field_5b7626e78b101'),
(12213, 523, 'blocos_0_descricao_2_texto', 'Coloque nossas soluções para trabalhar por seu negócio.'),
(12214, 523, '_blocos_0_descricao_2_texto', 'field_5b7626e78b101'),
(12215, 523, 'blocos_0_descricao', '3'),
(12216, 523, '_blocos_0_descricao', 'field_5b7626c58b100'),
(12217, 523, 'blocos_0_url', 'http://www.google.com'),
(12218, 523, '_blocos_0_url', 'field_5b7625f2fd4ba'),
(12219, 523, 'blocos_0_titulo_url', 'Saiba mais'),
(12220, 523, '_blocos_0_titulo_url', 'field_5b762610fd4bb'),
(12221, 523, 'blocos_1_titulo', 'Promoções exclusivas para empresas'),
(12222, 523, '_blocos_1_titulo', 'field_5b7624298e86e'),
(12223, 523, 'blocos_1_descricao_0_texto', 'São milhares de itens a sua espera'),
(12224, 523, '_blocos_1_descricao_0_texto', 'field_5b7626e78b101'),
(12225, 523, 'blocos_1_descricao_1_texto', 'Descontos por compras em quantidade'),
(12226, 523, '_blocos_1_descricao_1_texto', 'field_5b7626e78b101'),
(12227, 523, 'blocos_1_descricao_2_texto', 'Compare preços de forma fácil.'),
(12228, 523, '_blocos_1_descricao_2_texto', 'field_5b7626e78b101'),
(12229, 523, 'blocos_1_descricao', '3'),
(12230, 523, '_blocos_1_descricao', 'field_5b7626c58b100'),
(12231, 523, 'blocos_1_url', 'http://www.google.com'),
(12232, 523, '_blocos_1_url', 'field_5b7625f2fd4ba'),
(12233, 523, 'blocos_1_titulo_url', 'Registre-se'),
(12234, 523, '_blocos_1_titulo_url', 'field_5b762610fd4bb'),
(12235, 523, 'blocos_2_titulo', 'Encontre tudo o que precisa no menor tempo'),
(12236, 523, '_blocos_2_titulo', 'field_5b7624298e86e'),
(12237, 523, 'blocos_2_descricao_0_texto', 'Compre de uma só vez tudo o que precisa para seu negócio.'),
(12238, 523, '_blocos_2_descricao_0_texto', 'field_5b7626e78b101'),
(12239, 523, 'blocos_2_descricao_1_texto', 'Escolha dos fornecedores ideais para seu negócio.'),
(12240, 523, '_blocos_2_descricao_1_texto', 'field_5b7626e78b101'),
(12241, 523, 'blocos_2_descricao_2_texto', 'Marque seus fornecedores favoritos e reduza seu tempo de compra.'),
(12242, 523, '_blocos_2_descricao_2_texto', 'field_5b7626e78b101'),
(12243, 523, 'blocos_2_descricao', '3'),
(12244, 523, '_blocos_2_descricao', 'field_5b7626c58b100'),
(12245, 523, 'blocos_2_url', 'http://www.google.com'),
(12246, 523, '_blocos_2_url', 'field_5b7625f2fd4ba'),
(12247, 523, 'blocos_2_titulo_url', 'Crie sua conta'),
(12248, 523, '_blocos_2_titulo_url', 'field_5b762610fd4bb'),
(12249, 523, 'imagem_categoria', ''),
(12250, 523, '_imagem_categoria', 'field_5bf6c0de8e0d3');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
  `post_author` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
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
  `post_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `guid` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `menu_order` int(11) NOT NULL DEFAULT 0,
  `post_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'post',
  `post_mime_type` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2018-07-04 11:45:17', '2018-07-04 14:45:17', 'Bem-vindo ao WordPress. Esse é o seu primeiro post. Edite-o ou exclua-o, e então comece a escrever!', 'Olá, mundo!', '', 'publish', 'open', 'open', '', 'ola-mundo', '', '', '2018-07-04 11:45:17', '2018-07-04 14:45:17', '', 0, 'http://localhost/m2distribuidora/?p=1', 0, 'post', '', 1),
(2, 1, '2018-07-04 11:45:17', '2018-07-04 14:45:17', 'Este é o exemplo de uma página. É diferente de um post de blog porque é estática e pode aparecer em menus de navegação (na maioria dos temas). A maioria das pessoas começam com uma página \'Sobre\' que as apresenta aos potenciais visitantes do site. Você pode usar algo como:\n\n<blockquote>Oi! Sou um estudante de Biologia e gosto de esportes e natureza. Nos fins de semana pratico futebol com meus amigos no clube local. Eu moro em Valinhos e fiz este site para falar sobre minha cidade.</blockquote>\n\n...ou algo como:\n\n<blockquote>A empresa Logos foi fundada em 1980, e tem provido o comércio local com o que há de melhor em informatização. Localizada em Recife, nossa empresa tem se destacado como um das que também contribuem para o descarte correto de equipamentos eletrônicos substituídos.</blockquote>\n\nComo um novo usuário WordPress, vá ao seu <a href=\"http://localhost/m2distribuidora/wp-admin/\">Painel</a> para excluir este conteúdo e criar o seu. Divirta-se!', 'Página de exemplo', '', 'publish', 'closed', 'open', '', 'pagina-exemplo', '', '', '2018-07-04 11:45:17', '2018-07-04 14:45:17', '', 0, 'http://localhost/m2distribuidora/?page_id=2', 0, 'page', '', 0),
(3, 1, '2018-07-04 11:45:17', '2018-07-04 14:45:17', '<h2>Quem somos</h2><p>O endereço do nosso site é: http://localhost/m2distribuidora.</p><h2>Quais dados pessoais coletamos e porque</h2><h3>Comentários</h3><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><h3>Mídia</h3><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><h3>Formulários de contato</h3><h3>Cookies</h3><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><h3>Mídia incorporada de outros sites</h3><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicionar de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><h3>Análises</h3><h2>Com quem partilhamos seus dados</h2><h2>Por quanto tempo mantemos os seus dados</h2><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><h2>Quais os seus direitos sobre seus dados</h2><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><h2>Para onde enviamos seus dados</h2><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><h2>Suas informações de contato</h2><h2>Informações adicionais</h2><h3>Como protegemos seus dados</h3><h3>Quais são nossos procedimentos contra violação de dados</h3><h3>De quais terceiros nós recebemos dados</h3><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3>', 'Política de privacidade', '', 'publish', 'closed', 'open', '', 'politica-de-privacidade', '', '', '2018-10-03 08:07:04', '2018-10-03 11:07:04', '', 0, 'http://localhost/m2distribuidora/?page_id=3', 0, 'page', '', 0),
(5, 1, '2018-07-04 11:54:23', '2018-07-04 14:54:23', '', 'Shop', '', 'publish', 'closed', 'closed', '', 'shop', '', '', '2018-07-04 11:54:23', '2018-07-04 14:54:23', '', 0, 'http://localhost/m2distribuidora/shop/', 0, 'page', '', 0),
(6, 1, '2018-07-04 11:54:23', '2018-07-04 14:54:23', '[woocommerce_cart]', 'Cart', '', 'publish', 'closed', 'closed', '', 'cart', '', '', '2018-07-04 11:54:23', '2018-07-04 14:54:23', '', 0, 'http://localhost/m2distribuidora/cart/', 0, 'page', '', 0),
(7, 1, '2018-07-04 11:54:23', '2018-07-04 14:54:23', '[woocommerce_checkout]', 'Checkout', '', 'publish', 'closed', 'closed', '', 'checkout', '', '', '2018-07-04 11:54:23', '2018-07-04 14:54:23', '', 0, 'http://localhost/m2distribuidora/checkout/', 0, 'page', '', 0),
(8, 1, '2018-07-04 11:54:23', '2018-07-04 14:54:23', '[woocommerce_my_account]', 'My account', '', 'publish', 'closed', 'closed', '', 'my-account', '', '', '2018-07-04 11:54:23', '2018-07-04 14:54:23', '', 0, 'http://localhost/m2distribuidora/my-account/', 0, 'page', '', 0),
(9, 1, '2018-07-04 12:30:47', '2018-07-04 15:30:47', '[wcmp_vendor]', 'Vendor Dashboard', '', 'publish', 'closed', 'closed', '', 'dashboard', '', '', '2018-07-04 12:30:47', '2018-07-04 15:30:47', '', 0, 'http://localhost/m2distribuidora/dashboard/', 0, 'page', '', 0),
(10, 1, '2018-07-04 12:30:47', '2018-07-04 15:30:47', '[vendor_registration]', 'Vendor Registration', '', 'publish', 'closed', 'closed', '', 'vendor-registration', '', '', '2018-07-04 12:30:47', '2018-07-04 15:30:47', '', 0, 'http://localhost/m2distribuidora/vendor-registration/', 0, 'page', '', 0),
(12, 1, '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 'Beanie', '', 'inherit', 'open', 'closed', '', 'beanie-image', '', '', '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(13, 1, '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 'Belt', '', 'inherit', 'open', 'closed', '', 'belt-image', '', '', '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(14, 1, '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 'Cap', '', 'inherit', 'open', 'closed', '', 'cap-image', '', '', '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(15, 1, '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 'Hoodie with Logo', '', 'inherit', 'open', 'closed', '', 'hoodie-with-logo-image', '', '', '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/hoodie-with-logo.jpg', 0, 'attachment', 'image/jpeg', 0),
(16, 1, '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 'Hoodie with Pocket', '', 'inherit', 'open', 'closed', '', 'hoodie-with-pocket-image', '', '', '2018-07-05 09:47:37', '2018-07-05 12:47:37', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/hoodie-with-pocket.jpg', 0, 'attachment', 'image/jpeg', 0),
(17, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Hoodie with Zipper', '', 'inherit', 'open', 'closed', '', 'hoodie-with-zipper-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/hoodie-with-zipper.jpg', 0, 'attachment', 'image/jpeg', 0),
(18, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Hoodie', '', 'inherit', 'open', 'closed', '', 'hoodie-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(19, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Long Sleeve Tee', '', 'inherit', 'open', 'closed', '', 'long-sleeve-tee-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/long-sleeve-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(20, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Polo', '', 'inherit', 'open', 'closed', '', 'polo-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/polo.jpg', 0, 'attachment', 'image/jpeg', 0),
(21, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Sunglasses', '', 'inherit', 'open', 'closed', '', 'sunglasses-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/sunglasses.jpg', 0, 'attachment', 'image/jpeg', 0),
(22, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Tshirt', '', 'inherit', 'open', 'closed', '', 'tshirt-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/tshirt.jpg', 0, 'attachment', 'image/jpeg', 0),
(23, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Vneck Tshirt', '', 'inherit', 'open', 'closed', '', 'vneck-tee-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/vneck-tee.jpg', 0, 'attachment', 'image/jpeg', 0),
(24, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Hero', '', 'inherit', 'open', 'closed', '', 'hero-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/hero.jpg', 0, 'attachment', 'image/jpeg', 0),
(25, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Accessories', '', 'inherit', 'open', 'closed', '', 'accessories-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/accessories.jpg', 0, 'attachment', 'image/jpeg', 0),
(26, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'T-shirts', '', 'inherit', 'open', 'closed', '', 'tshirts-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/tshirts.jpg', 0, 'attachment', 'image/jpeg', 0),
(27, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Hoodies', '', 'inherit', 'open', 'closed', '', 'hoodies-image', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/wp-content/uploads/2018/07/hoodies.jpg', 0, 'attachment', 'image/jpeg', 0),
(28, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Home', '', 'publish', 'closed', 'closed', '', 'welcome', '', '', '2018-11-22 22:50:30', '2018-11-23 00:50:30', '', 0, 'http://localhost/m2distribuidora/?page_id=28', 0, 'page', '', 0),
(147, 1, '2018-08-16 23:13:03', '2018-08-17 02:13:03', '', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-16 23:13:03', '2018-08-17 02:13:03', '', 28, 'https://ederton.xyz/preview/m2distribuidora/2018/08/16/28-revision-v1/', 0, 'revision', '', 0),
(29, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Blog', '', 'publish', 'closed', 'closed', '', 'blog', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 0, 'http://localhost/m2distribuidora/?page_id=29', 0, 'page', '', 0),
(505, 1, '2018-11-22 11:00:49', '2018-11-22 13:00:49', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"28\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banner Categoria', 'banner-categoria', 'publish', 'closed', 'closed', '', 'group_5bf6a88199e1b', '', '', '2018-11-22 22:40:35', '2018-11-23 00:40:35', '', 0, 'http://localhost/marketplace/?post_type=acf-field-group&#038;p=505', 0, 'acf-field-group', '', 0),
(506, 1, '2018-11-22 11:00:49', '2018-11-22 13:00:49', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:50:\"Largura mínima: 1000px\r\nAltura obrigatória: 60px\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:1000;s:10:\"min_height\";i:60;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";i:60;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Principal', 'imagem_categoria', 'publish', 'closed', 'closed', '', 'field_5bf6a881ad34d', '', '', '2018-11-22 22:40:35', '2018-11-23 00:40:35', '', 505, 'http://localhost/marketplace/?post_type=acf-field&#038;p=506', 0, 'acf-field', '', 0),
(508, 1, '2018-11-22 12:44:46', '2018-11-22 14:44:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"28\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banner Categoria (copiar)', 'banner-categoria-copiar', 'publish', 'closed', 'closed', '', 'group_5bf6c0de73868', '', '', '2018-11-22 22:40:33', '2018-11-23 00:40:33', '', 0, 'http://localhost/marketplace/?post_type=acf-field-group&#038;p=508', 0, 'acf-field-group', '', 0),
(509, 1, '2018-11-22 12:44:46', '2018-11-22 14:44:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:50:\"Largura mínima: 1000px\r\nAltura obrigatória: 60px\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:1000;s:10:\"min_height\";i:60;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";i:60;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Principal', 'imagem_categoria', 'publish', 'closed', 'closed', '', 'field_5bf6c0de8e0d3', '', '', '2018-11-22 22:40:33', '2018-11-23 00:40:33', '', 508, 'http://localhost/marketplace/?post_type=acf-field&#038;p=509', 0, 'acf-field', '', 0),
(510, 1, '2018-11-22 16:07:48', '2018-11-22 18:07:48', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:8:\"taxonomy\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:11:\"product_tag\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Produto Tags', 'produto-tags', 'publish', 'closed', 'closed', '', 'group_5bf6c1264fbb1', '', '', '2018-11-22 16:08:48', '2018-11-22 18:08:48', '', 0, 'http://localhost/marketplace/?post_type=acf-field-group&#038;p=510', 0, 'acf-field-group', '', 0),
(511, 1, '2018-11-22 16:07:48', '2018-11-22 18:07:48', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_tag', 'publish', 'closed', 'closed', '', 'field_5bf6f04a03e34', '', '', '2018-11-22 16:07:48', '2018-11-22 18:07:48', '', 510, 'http://localhost/marketplace/?post_type=acf-field&p=511', 0, 'acf-field', '', 0),
(43, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the &quot;Welcome&quot; page via the &quot;Pages&quot; menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 28, 'http://localhost/m2distribuidora/2018/07/05/28-revision-v1/', 0, 'revision', '', 0),
(44, 1, '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 'Blog', '', 'inherit', 'closed', 'closed', '', '29-revision-v1', '', '', '2018-07-05 09:47:38', '2018-07-05 12:47:38', '', 29, 'http://localhost/m2distribuidora/2018/07/05/29-revision-v1/', 0, 'revision', '', 0),
(45, 1, '2018-07-05 10:53:19', '2018-07-05 13:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '45', '', '', '2018-07-05 10:53:41', '2018-07-05 13:53:41', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?p=45', 2, 'nav_menu_item', '', 0),
(46, 1, '2018-07-05 10:53:19', '2018-07-05 13:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '46', '', '', '2018-07-05 10:53:41', '2018-07-05 13:53:41', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?p=46', 3, 'nav_menu_item', '', 0),
(47, 1, '2018-07-05 10:53:19', '2018-07-05 13:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '47', '', '', '2018-07-05 10:53:41', '2018-07-05 13:53:41', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?p=47', 4, 'nav_menu_item', '', 0),
(48, 1, '2018-07-05 10:53:19', '2018-07-05 13:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '48', '', '', '2018-07-05 10:53:41', '2018-07-05 13:53:41', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?p=48', 5, 'nav_menu_item', '', 0),
(49, 1, '2018-07-05 10:53:19', '2018-07-05 13:53:19', ' ', '', '', 'publish', 'closed', 'closed', '', '49', '', '', '2018-07-05 10:53:41', '2018-07-05 13:53:41', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?p=49', 6, 'nav_menu_item', '', 0),
(50, 1, '2018-07-05 10:53:19', '2018-07-05 13:53:19', '', 'Home', '', 'publish', 'closed', 'closed', '', '50', '', '', '2018-07-05 10:53:41', '2018-07-05 13:53:41', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?p=50', 1, 'nav_menu_item', '', 0),
(85, 1, '2018-08-14 18:57:39', '2018-08-14 21:57:39', '', 'Fidelidade', '', 'publish', 'closed', 'closed', '', 'fidelidade', '', '', '2018-08-17 00:20:04', '2018-08-17 03:20:04', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?page_id=85', 0, 'page', '', 0),
(57, 3, '2018-08-07 19:44:46', '2018-08-07 22:44:46', '', 'm2_produto_16', '', 'inherit', 'open', 'closed', '', 'm2_produto_16', '', '', '2018-08-07 19:44:46', '2018-08-07 22:44:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_16.jpg', 0, 'attachment', 'image/jpeg', 0),
(59, 3, '2018-08-07 19:54:51', '2018-08-07 22:54:51', '', 'm2_produto_52', '', 'inherit', 'open', 'closed', '', 'm2_produto_52', '', '', '2018-08-07 19:54:51', '2018-08-07 22:54:51', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_52.jpg', 0, 'attachment', 'image/jpeg', 0),
(60, 3, '2018-08-07 19:54:55', '2018-08-07 22:54:55', '', 'm2_produto_51', '', 'inherit', 'open', 'closed', '', 'm2_produto_51', '', '', '2018-08-07 19:54:55', '2018-08-07 22:54:55', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_51.jpg', 0, 'attachment', 'image/jpeg', 0),
(61, 3, '2018-08-07 19:55:00', '2018-08-07 22:55:00', '', 'm2_produto_50', '', 'inherit', 'open', 'closed', '', 'm2_produto_50', '', '', '2018-08-07 19:55:00', '2018-08-07 22:55:00', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_50.jpg', 0, 'attachment', 'image/jpeg', 0),
(62, 3, '2018-08-07 19:55:06', '2018-08-07 22:55:06', '', 'm2_produto_49', '', 'inherit', 'open', 'closed', '', 'm2_produto_49', '', '', '2018-08-07 19:55:06', '2018-08-07 22:55:06', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_49.jpg', 0, 'attachment', 'image/jpeg', 0),
(63, 3, '2018-08-07 19:55:11', '2018-08-07 22:55:11', '', 'm2_produto_46', '', 'inherit', 'open', 'closed', '', 'm2_produto_46', '', '', '2018-08-07 19:55:11', '2018-08-07 22:55:11', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_46.jpg', 0, 'attachment', 'image/jpeg', 0),
(64, 3, '2018-08-07 19:55:20', '2018-08-07 22:55:20', '', 'm2_produto_45', '', 'inherit', 'open', 'closed', '', 'm2_produto_45', '', '', '2018-08-07 19:55:20', '2018-08-07 22:55:20', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_45.jpg', 0, 'attachment', 'image/jpeg', 0),
(65, 3, '2018-08-07 19:55:25', '2018-08-07 22:55:25', '', 'm2_produto_44', '', 'inherit', 'open', 'closed', '', 'm2_produto_44', '', '', '2018-08-07 19:55:25', '2018-08-07 22:55:25', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_44.jpg', 0, 'attachment', 'image/jpeg', 0),
(66, 3, '2018-08-07 19:55:31', '2018-08-07 22:55:31', '', 'm2_produto_43', '', 'inherit', 'open', 'closed', '', 'm2_produto_43', '', '', '2018-08-07 19:55:31', '2018-08-07 22:55:31', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_43.jpg', 0, 'attachment', 'image/jpeg', 0),
(67, 3, '2018-08-07 19:55:36', '2018-08-07 22:55:36', '', 'm2_produto_40', '', 'inherit', 'open', 'closed', '', 'm2_produto_40', '', '', '2018-08-07 19:55:36', '2018-08-07 22:55:36', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_40.jpg', 0, 'attachment', 'image/jpeg', 0),
(68, 3, '2018-08-07 19:55:40', '2018-08-07 22:55:40', '', 'm2_produto_39', '', 'inherit', 'open', 'closed', '', 'm2_produto_39', '', '', '2018-08-07 19:55:40', '2018-08-07 22:55:40', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_39.jpg', 0, 'attachment', 'image/jpeg', 0),
(69, 3, '2018-08-07 19:55:45', '2018-08-07 22:55:45', '', 'm2_produto_35', '', 'inherit', 'open', 'closed', '', 'm2_produto_35', '', '', '2018-08-07 19:55:45', '2018-08-07 22:55:45', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_35.jpg', 0, 'attachment', 'image/jpeg', 0),
(70, 3, '2018-08-07 19:55:51', '2018-08-07 22:55:51', '', 'm2_produto_28', '', 'inherit', 'open', 'closed', '', 'm2_produto_28', '', '', '2018-08-07 19:55:51', '2018-08-07 22:55:51', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_28.jpg', 0, 'attachment', 'image/jpeg', 0),
(71, 3, '2018-08-07 19:55:55', '2018-08-07 22:55:55', '', 'm2_produto_27', '', 'inherit', 'open', 'closed', '', 'm2_produto_27', '', '', '2018-08-07 19:55:55', '2018-08-07 22:55:55', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_27.jpg', 0, 'attachment', 'image/jpeg', 0),
(72, 3, '2018-08-07 19:55:59', '2018-08-07 22:55:59', '', 'm2_produto_19', '', 'inherit', 'open', 'closed', '', 'm2_produto_19', '', '', '2018-08-07 19:55:59', '2018-08-07 22:55:59', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_19.jpg', 0, 'attachment', 'image/jpeg', 0),
(73, 3, '2018-08-07 19:56:02', '2018-08-07 22:56:02', '', 'm2_produto_17', '', 'inherit', 'open', 'closed', '', 'm2_produto_17', '', '', '2018-08-07 19:56:02', '2018-08-07 22:56:02', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_17.jpg', 0, 'attachment', 'image/jpeg', 0),
(74, 3, '2018-08-07 19:56:08', '2018-08-07 22:56:08', '', 'm2_produto_16', '', 'inherit', 'open', 'closed', '', 'm2_produto_16-2', '', '', '2018-08-07 19:56:08', '2018-08-07 22:56:08', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_16-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(75, 3, '2018-08-07 19:56:10', '2018-08-07 22:56:10', '', 'm2_produto_15', '', 'inherit', 'open', 'closed', '', 'm2_produto_15', '', '', '2018-08-07 19:56:10', '2018-08-07 22:56:10', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_15.jpg', 0, 'attachment', 'image/jpeg', 0),
(76, 3, '2018-08-07 19:56:17', '2018-08-07 22:56:17', '', 'm2_produto_02', '', 'inherit', 'open', 'closed', '', 'm2_produto_02', '', '', '2018-08-07 19:56:17', '2018-08-07 22:56:17', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_produto_02.jpg', 0, 'attachment', 'image/jpeg', 0),
(77, 3, '2018-08-07 20:04:16', '2018-08-07 23:04:16', '', 'm2_M-23-3', '', 'inherit', 'open', 'closed', '', 'm2_m-23-3', '', '', '2018-08-07 20:04:16', '2018-08-07 23:04:16', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/m2_M-23-3.jpg', 0, 'attachment', 'image/jpeg', 0),
(78, 4, '2018-08-07 20:04:37', '2018-08-07 23:04:37', '', 'beanie', '', 'inherit', 'open', 'closed', '', 'beanie', '', '', '2018-08-07 20:04:37', '2018-08-07 23:04:37', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/beanie.jpg', 0, 'attachment', 'image/jpeg', 0),
(79, 4, '2018-08-07 20:04:42', '2018-08-07 23:04:42', '', 'belt', '', 'inherit', 'open', 'closed', '', 'belt', '', '', '2018-08-07 20:04:42', '2018-08-07 23:04:42', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/belt.jpg', 0, 'attachment', 'image/jpeg', 0),
(80, 4, '2018-08-07 20:04:45', '2018-08-07 23:04:45', '', 'cap', '', 'inherit', 'open', 'closed', '', 'cap', '', '', '2018-08-07 20:04:45', '2018-08-07 23:04:45', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/cap.jpg', 0, 'attachment', 'image/jpeg', 0),
(81, 4, '2018-08-07 20:04:48', '2018-08-07 23:04:48', '', 'hoodie', '', 'inherit', 'open', 'closed', '', 'hoodie', '', '', '2018-08-07 20:04:48', '2018-08-07 23:04:48', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/hoodie.jpg', 0, 'attachment', 'image/jpeg', 0),
(86, 1, '2018-08-14 18:57:39', '2018-08-14 21:57:39', '', 'Compra Premiada', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-08-14 18:57:39', '2018-08-14 21:57:39', '', 85, 'https://ederton.xyz/preview/m2distribuidora/2018/08/14/85-revision-v1/', 0, 'revision', '', 0),
(87, 1, '2018-08-14 18:58:30', '2018-08-14 21:58:30', '', 'Venda Conosco', '', 'publish', 'closed', 'closed', '', 'venda-conosco', '', '', '2018-08-17 00:28:21', '2018-08-17 03:28:21', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?page_id=87', 0, 'page', '', 0),
(88, 1, '2018-08-14 18:58:30', '2018-08-14 21:58:30', '', 'Venda Conosco', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-08-14 18:58:30', '2018-08-14 21:58:30', '', 87, 'https://ederton.xyz/preview/m2distribuidora/2018/08/14/87-revision-v1/', 0, 'revision', '', 0),
(150, 1, '2018-08-17 00:16:25', '2018-08-17 03:16:25', '', 'img-page-2', '', 'inherit', 'open', 'closed', '', 'img-page-2', '', '', '2018-08-17 00:16:25', '2018-08-17 03:16:25', '', 87, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/img-page-2.jpg', 0, 'attachment', 'image/jpeg', 0),
(91, 1, '2018-08-16 18:35:43', '2018-08-16 21:35:43', '', 'Fidelidade', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-08-16 18:35:43', '2018-08-16 21:35:43', '', 85, 'https://ederton.xyz/preview/m2distribuidora/2018/08/16/85-revision-v1/', 0, 'revision', '', 0),
(92, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"28\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Banner topo', 'banner-topo', 'publish', 'closed', 'closed', '', 'group_5b761fea0c6fb', '', '', '2018-11-22 22:39:30', '2018-11-23 00:39:30', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&#038;p=92', 0, 'acf-field-group', '', 0),
(93, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:50:\"Largura mínima: 1000px\r\nAltura obrigatória: 60px\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:1000;s:10:\"min_height\";i:60;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";i:60;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem_banner_topo', 'publish', 'closed', 'closed', '', 'field_5b762003a8eb9', '', '', '2018-11-22 22:39:30', '2018-11-23 00:39:30', '', 92, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&#038;p=93', 0, 'acf-field', '', 0),
(94, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL Banner', 'url_banner_topo', 'publish', 'closed', 'closed', '', 'field_5b762078a8eba', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 92, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=94', 1, 'acf-field', '', 0),
(95, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"28\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Chamadas Home', 'chamadas-home', 'publish', 'closed', 'closed', '', 'group_5b7623c3bfebd', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&p=95', 0, 'acf-field-group', '', 0),
(96, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:3;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Blocos', 'blocos', 'publish', 'closed', 'closed', '', 'field_5b7623ea8e86d', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 95, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=96', 0, 'acf-field', '', 0),
(97, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5b7624298e86e', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 96, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=97', 0, 'acf-field', '', 0),
(98, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Descricao', 'descricao', 'publish', 'closed', 'closed', '', 'field_5b7626c58b100', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 96, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=98', 1, 'acf-field', '', 0),
(99, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_5b7626e78b101', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 98, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=99', 0, 'acf-field', '', 0),
(100, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_5b7625f2fd4ba', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 96, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=100', 2, 'acf-field', '', 0),
(101, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título URL', 'titulo_url', 'publish', 'closed', 'closed', '', 'field_5b762610fd4bb', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 96, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=101', 3, 'acf-field', '', 0),
(102, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"acf-options-geral\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Configurações', 'configuracoes', 'publish', 'closed', 'closed', '', 'group_597c10f9acd5d', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&p=102', 0, 'acf-field-group', '', 0),
(103, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'E-mail contato', 'email', 'publish', 'closed', 'closed', '', 'field_597ff067b29d9', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=103', 0, 'acf-field', '', 0),
(104, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Logo Header', 'logo_header', 'publish', 'closed', 'closed', '', 'field_59827da73443f', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=104', 1, 'acf-field', '', 0),
(105, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone 1', 'telefone_1', 'publish', 'closed', 'closed', '', 'field_598293b12c100', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=105', 2, 'acf-field', '', 0),
(106, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone 2', 'telefone_2', 'publish', 'closed', 'closed', '', 'field_598293c52c101', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=106', 3, 'acf-field', '', 0),
(107, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:4;s:9:\"new_lines\";s:2:\"br\";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'field_5989ec3264d07', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=107', 4, 'acf-field', '', 0),
(108, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem Mapa', 'imagem_mapa', 'publish', 'closed', 'closed', '', 'field_5989ec3f64d08', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=108', 5, 'acf-field', '', 0),
(109, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:5;s:9:\"new_lines\";s:0:\"\";}', 'Google Maps', 'google_maps', 'publish', 'closed', 'closed', '', 'field_5989eca464d09', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 102, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=109', 6, 'acf-field', '', 0),
(110, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"representantes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Dados de Contato', 'dados-de-contato', 'publish', 'closed', 'closed', '', 'group_5a1834438987c', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&p=110', 0, 'acf-field-group', '', 0),
(111, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Telefone', 'telefone_representantes', 'publish', 'closed', 'closed', '', 'field_5a18344e13777', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 110, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=111', 0, 'acf-field', '', 0),
(112, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Celular', 'celular_representantes', 'publish', 'closed', 'closed', '', 'field_5a18346413778', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 110, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=112', 1, 'acf-field', '', 0),
(113, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"33\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Whatsapp', 'whatsapp_representantes', 'publish', 'closed', 'closed', '', 'field_5a1834ad13779', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 110, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=113', 2, 'acf-field', '', 0),
(114, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:9:{s:4:\"type\";s:5:\"email\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";}', 'E-mail', 'e-mail_representantes', 'publish', 'closed', 'closed', '', 'field_5a1834d81377a', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 110, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=114', 3, 'acf-field', '', 0),
(115, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Skype', 'skype_representantes', 'publish', 'closed', 'closed', '', 'field_5a1834e91377b', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 110, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=115', 4, 'acf-field', '', 0),
(116, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"post_type\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:14:\"representantes\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Endereço', 'endereco', 'publish', 'closed', 'closed', '', 'group_5a18324f79871', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&p=116', 0, 'acf-field-group', '', 0),
(117, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Endereço', 'endereco_representantes', 'publish', 'closed', 'closed', '', 'field_5a1832637836e', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=117', 0, 'acf-field', '', 0),
(118, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"10\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Número', 'numero_representantes', 'publish', 'closed', 'closed', '', 'field_5a1832927836f', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=118', 1, 'acf-field', '', 0),
(119, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Bairro', 'bairro_representantes', 'publish', 'closed', 'closed', '', 'field_5a1832a678370', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=119', 2, 'acf-field', '', 0),
(120, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"20\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'CEP', 'cep_representantes', 'publish', 'closed', 'closed', '', 'field_5a1832cb78371', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=120', 3, 'acf-field', '', 0),
(121, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Cidade', 'cidade_representantes', 'publish', 'closed', 'closed', '', 'field_5a18330478372', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=121', 4, 'acf-field', '', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(122, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Estado', 'estado_representantes', 'publish', 'closed', 'closed', '', 'field_5a18330f78373', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=122', 5, 'acf-field', '', 0),
(123, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"25\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";i:2;}', 'UF', 'uf_representantes', 'publish', 'closed', 'closed', '', 'field_5a536fc058f0e', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 116, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=123', 6, 'acf-field', '', 0),
(124, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"acf-options-geral\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'Redes Sociais', 'redes-sociais', 'publish', 'closed', 'closed', '', 'group_59829973ae6ca', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&p=124', 0, 'acf-field-group', '', 0),
(125, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Redes Sociais', 'redes_sociais', 'publish', 'closed', 'closed', '', 'field_5982997fa1670', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 124, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=125', 0, 'acf-field', '', 0),
(126, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ícone', 'icone', 'publish', 'closed', 'closed', '', 'field_598299c2a1673', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 125, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=126', 0, 'acf-field', '', 0),
(127, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Nome da rede social', 'nome', 'publish', 'closed', 'closed', '', 'field_59829993a1671', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 125, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=127', 1, 'acf-field', '', 0),
(128, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:6:\"33.333\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'URL', 'url', 'publish', 'closed', 'closed', '', 'field_598299aea1672', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 125, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=128', 2, 'acf-field', '', 0),
(129, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:8:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:12:\"options_page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:17:\"acf-options-geral\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";s:5:\"local\";s:3:\"php\";}', 'SEO', 'seo', 'publish', 'closed', 'closed', '', 'group_597fe14b4b6e5', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&p=129', 0, 'acf-field-group', '', 0),
(130, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título do site', 'titulo', 'publish', 'closed', 'closed', '', 'field_597fe15437a18', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 129, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=130', 0, 'acf-field', '', 0),
(131, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Descrição do site', 'descricao', 'publish', 'closed', 'closed', '', 'field_597fe16737a19', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 129, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=131', 1, 'acf-field', '', 0),
(132, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:33:\"Tamanho da imagem:\r\n500px x 500px\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:6:\"medium\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";i:500;s:10:\"min_height\";i:500;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:500;s:10:\"max_height\";i:500;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem principal', 'imagem_principal', 'publish', 'closed', 'closed', '', 'field_597fe1968d62b', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 129, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=132', 2, 'acf-field', '', 0),
(133, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:30:\"Tamanho da imagem\r\n16px x 16px\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";i:16;s:10:\"min_height\";i:16;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:16;s:10:\"max_height\";i:16;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:3:\"ico\";}', 'Favicon', 'favicon', 'publish', 'closed', 'closed', '', 'field_597fe314a9722', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 129, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=133', 3, 'acf-field', '', 0),
(134, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:13:\"page_template\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:7:\"default\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Slide', 'slide', 'publish', 'closed', 'closed', '', 'group_5969370847112', '', '', '2018-08-17 00:00:03', '2018-08-17 03:00:03', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&#038;p=134', 0, 'acf-field-group', '', 0),
(135, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:19:\"field_5969378d82949\";s:3:\"min\";i:0;s:3:\"max\";i:0;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Slide', 'slide', 'publish', 'closed', 'closed', '', 'field_5969377082948', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 134, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=135', 0, 'acf-field', '', 0),
(136, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:34:\"Tamanho da imagem:\r\n1600px x 270px\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"40\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:4:\"full\";s:7:\"library\";s:10:\"uploadedTo\";s:9:\"min_width\";i:1600;s:10:\"min_height\";i:270;s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";i:1600;s:10:\"max_height\";i:270;s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Imagem', 'imagem', 'publish', 'closed', 'closed', '', 'field_5969378d82949', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 135, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=136', 0, 'acf-field', '', 0),
(137, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:2:\"br\";}', 'Texto principal', 'texto', 'publish', 'closed', 'closed', '', 'field_598280ac334ca', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 135, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=137', 1, 'acf-field', '', 0),
(138, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:8:\"textarea\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";s:4:\"rows\";i:3;s:9:\"new_lines\";s:0:\"\";}', 'Texto secundário', 'sub_texto', 'publish', 'closed', 'closed', '', 'field_598280d2334cb', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 135, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=138', 2, 'acf-field', '', 0),
(139, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:7:{s:4:\"type\";s:3:\"url\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";}', 'Link botão', 'link', 'publish', 'closed', 'closed', '', 'field_5b75ff774d53a', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 135, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=139', 3, 'acf-field', '', 0),
(140, 1, '2018-08-16 22:58:46', '2018-08-17 01:58:46', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"15\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título botão', 'tit_link', 'publish', 'closed', 'closed', '', 'field_5b75ff954d53b', '', '', '2018-08-16 22:58:46', '2018-08-17 01:58:46', '', 135, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=140', 4, 'acf-field', '', 0),
(141, 1, '2018-08-16 22:59:56', '2018-08-17 01:59:56', '', 'anuncio-top', '', 'inherit', 'open', 'closed', '', 'anuncio-top', '', '', '2018-08-16 22:59:56', '2018-08-17 01:59:56', '', 28, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/anuncio-top.jpg', 0, 'attachment', 'image/jpeg', 0),
(142, 1, '2018-08-16 23:01:09', '2018-08-17 02:01:09', '', 'banner-home', '', 'inherit', 'open', 'closed', '', 'banner-home', '', '', '2018-08-16 23:01:09', '2018-08-17 02:01:09', '', 28, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/banner-home.jpg', 0, 'attachment', 'image/jpeg', 0),
(143, 1, '2018-08-16 23:01:25', '2018-08-17 02:01:25', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the \"Welcome\" page via the \"Pages\" menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-16 23:01:25', '2018-08-17 02:01:25', '', 28, 'https://ederton.xyz/preview/m2distribuidora/2018/08/16/28-revision-v1/', 0, 'revision', '', 0),
(144, 1, '2018-08-16 23:06:29', '2018-08-17 02:06:29', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the \"Welcome\" page via the \"Pages\" menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-16 23:06:29', '2018-08-17 02:06:29', '', 28, 'https://ederton.xyz/preview/m2distribuidora/2018/08/16/28-revision-v1/', 0, 'revision', '', 0),
(145, 1, '2018-08-16 23:06:42', '2018-08-17 02:06:42', '', 'img-categorias', '', 'inherit', 'open', 'closed', '', 'img-categorias', '', '', '2018-08-16 23:06:42', '2018-08-17 02:06:42', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/img-categorias.jpg', 0, 'attachment', 'image/jpeg', 0),
(146, 1, '2018-08-16 23:12:47', '2018-08-17 02:12:47', 'This is your homepage which is what most visitors will see when they first visit your shop.\r\n\r\nYou can change this text by editing the \"Welcome\" page via the \"Pages\" menu in your dashboard.', 'Welcome', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-08-16 23:12:47', '2018-08-17 02:12:47', '', 28, 'https://ederton.xyz/preview/m2distribuidora/2018/08/16/28-revision-v1/', 0, 'revision', '', 0),
(148, 1, '2018-08-17 00:11:12', '2018-08-17 03:11:12', '', 'img-page-1', '', 'inherit', 'open', 'closed', '', 'img-page-1', '', '', '2018-08-17 00:11:12', '2018-08-17 03:11:12', '', 85, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/img-page-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(149, 1, '2018-08-17 00:11:36', '2018-08-17 03:11:36', '', 'Fidelidade', '', 'inherit', 'closed', 'closed', '', '85-revision-v1', '', '', '2018-08-17 00:11:36', '2018-08-17 03:11:36', '', 85, 'https://ederton.xyz/preview/m2distribuidora/2018/08/17/85-revision-v1/', 0, 'revision', '', 0),
(151, 1, '2018-08-17 00:16:39', '2018-08-17 03:16:39', '', 'Venda Conosco', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-08-17 00:16:39', '2018-08-17 03:16:39', '', 87, 'https://ederton.xyz/preview/m2distribuidora/2018/08/17/87-revision-v1/', 0, 'revision', '', 0),
(152, 1, '2018-08-17 00:16:44', '2018-08-17 03:16:44', '', 'Venda Conosco', '', 'inherit', 'closed', 'closed', '', '87-autosave-v1', '', '', '2018-08-17 00:16:44', '2018-08-17 03:16:44', '', 87, 'https://ederton.xyz/preview/m2distribuidora/2018/08/17/87-autosave-v1/', 0, 'revision', '', 0),
(153, 1, '2018-08-17 00:18:07', '2018-08-17 03:18:07', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:4:\"page\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:2:\"87\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Blocos pagina', 'blocos-pagina', 'publish', 'closed', 'closed', '', 'group_5b763e6f8692b', '', '', '2018-08-17 00:22:16', '2018-08-17 03:22:16', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&#038;p=153', 0, 'acf-field-group', '', 0),
(154, 1, '2018-08-17 00:18:07', '2018-08-17 03:18:07', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";i:4;s:6:\"layout\";s:5:\"block\";s:12:\"button_label\";s:0:\"\";}', 'Blocos', 'blocos_pagina', 'publish', 'closed', 'closed', '', 'field_5b763e6f88e2a', '', '', '2018-08-17 00:22:16', '2018-08-17 03:22:16', '', 153, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&#038;p=154', 0, 'acf-field', '', 0),
(155, 1, '2018-08-17 00:18:08', '2018-08-17 03:18:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Título', 'titulo', 'publish', 'closed', 'closed', '', 'field_5b763e7033eef', '', '', '2018-08-17 00:21:09', '2018-08-17 03:21:09', '', 154, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&#038;p=155', 1, 'acf-field', '', 0),
(156, 1, '2018-08-17 00:18:08', '2018-08-17 03:18:08', 'a:10:{s:4:\"type\";s:8:\"repeater\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:9:\"collapsed\";s:0:\"\";s:3:\"min\";i:1;s:3:\"max\";i:3;s:6:\"layout\";s:5:\"table\";s:12:\"button_label\";s:0:\"\";}', 'Descricao', 'descricao', 'publish', 'closed', 'closed', '', 'field_5b763e7033f67', '', '', '2018-08-17 00:21:09', '2018-08-17 03:21:09', '', 154, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&#038;p=156', 2, 'acf-field', '', 0),
(157, 1, '2018-08-17 00:18:08', '2018-08-17 03:18:08', 'a:10:{s:4:\"type\";s:4:\"text\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:1;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:3:\"100\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:9:\"maxlength\";s:0:\"\";}', 'Texto', 'texto', 'publish', 'closed', 'closed', '', 'field_5b763e703946d', '', '', '2018-08-17 00:18:08', '2018-08-17 03:18:08', '', 156, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=157', 0, 'acf-field', '', 0),
(163, 1, '2018-08-17 00:21:55', '2018-08-17 03:21:55', '', 'ico-venda-conosco-3', '', 'inherit', 'open', 'closed', '', 'ico-venda-conosco-3', '', '', '2018-08-17 00:21:55', '2018-08-17 03:21:55', '', 87, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/ico-venda-conosco-3.png', 0, 'attachment', 'image/png', 0),
(164, 1, '2018-08-17 00:21:56', '2018-08-17 03:21:56', '', 'ico-venda-conosco-4', '', 'inherit', 'open', 'closed', '', 'ico-venda-conosco-4', '', '', '2018-08-17 00:21:56', '2018-08-17 03:21:56', '', 87, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/ico-venda-conosco-4.png', 0, 'attachment', 'image/png', 0),
(161, 1, '2018-08-17 00:21:52', '2018-08-17 03:21:52', '', 'ico-venda-conosco-1', '', 'inherit', 'open', 'closed', '', 'ico-venda-conosco-1', '', '', '2018-08-17 00:21:52', '2018-08-17 03:21:52', '', 87, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/ico-venda-conosco-1.png', 0, 'attachment', 'image/png', 0),
(162, 1, '2018-08-17 00:21:54', '2018-08-17 03:21:54', '', 'ico-venda-conosco-2', '', 'inherit', 'open', 'closed', '', 'ico-venda-conosco-2', '', '', '2018-08-17 00:21:54', '2018-08-17 03:21:54', '', 87, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/ico-venda-conosco-2.png', 0, 'attachment', 'image/png', 0),
(160, 1, '2018-08-17 00:20:08', '2018-08-17 03:20:08', 'a:15:{s:4:\"type\";s:5:\"image\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:2:\"50\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"return_format\";s:3:\"url\";s:12:\"preview_size\";s:9:\"thumbnail\";s:7:\"library\";s:3:\"all\";s:9:\"min_width\";s:0:\"\";s:10:\"min_height\";s:0:\"\";s:8:\"min_size\";s:0:\"\";s:9:\"max_width\";s:0:\"\";s:10:\"max_height\";s:0:\"\";s:8:\"max_size\";s:0:\"\";s:10:\"mime_types\";s:0:\"\";}', 'Ícone', 'icone', 'publish', 'closed', 'closed', '', 'field_5b763d7c9fd7c', '', '', '2018-08-17 00:21:09', '2018-08-17 03:21:09', '', 154, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&#038;p=160', 0, 'acf-field', '', 0),
(165, 1, '2018-08-17 00:23:19', '2018-08-17 03:23:19', '', 'Venda Conosco', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-08-17 00:23:19', '2018-08-17 03:23:19', '', 87, 'https://ederton.xyz/preview/m2distribuidora/2018/08/17/87-revision-v1/', 0, 'revision', '', 0),
(166, 1, '2018-08-17 00:24:32', '2018-08-17 03:24:32', '', 'Venda Conosco', '', 'inherit', 'closed', 'closed', '', '87-revision-v1', '', '', '2018-08-17 00:24:32', '2018-08-17 03:24:32', '', 87, 'https://ederton.xyz/preview/m2distribuidora/2018/08/17/87-revision-v1/', 0, 'revision', '', 0),
(174, 1, '2018-08-20 23:32:02', '2018-08-21 02:32:02', '', 'CP_100ml_generico_recorte', '', 'inherit', 'open', 'closed', '', 'cp_100ml_generico_recorte', '', '', '2018-08-20 23:32:02', '2018-08-21 02:32:02', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/CP_100ml_generico_recorte.png', 0, 'attachment', 'image/png', 0),
(182, 1, '2018-08-20 23:32:09', '2018-08-21 02:32:09', '', 'CP_180_ml_recorte', '', 'inherit', 'open', 'closed', '', 'cp_180_ml_recorte', '', '', '2018-08-20 23:32:09', '2018-08-21 02:32:09', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/CP_180_ml_recorte.png', 0, 'attachment', 'image/png', 0),
(186, 1, '2018-08-20 23:32:20', '2018-08-21 02:32:20', '', 'CP_250ml_recorte', '', 'inherit', 'open', 'closed', '', 'cp_250ml_recorte', '', '', '2018-08-20 23:32:20', '2018-08-21 02:32:20', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/CP_250ml_recorte.png', 0, 'attachment', 'image/png', 0),
(229, 1, '2018-08-20 23:32:37', '2018-08-21 02:32:37', '', 'M01_recorte', '', 'inherit', 'open', 'closed', '', 'm01_recorte', '', '', '2018-08-20 23:32:37', '2018-08-21 02:32:37', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M01_recorte.png', 0, 'attachment', 'image/png', 0),
(254, 1, '2018-08-20 23:32:52', '2018-08-21 02:32:52', '', 'Plana_04_recorte', '', 'inherit', 'open', 'closed', '', 'plana_04_recorte', '', '', '2018-08-20 23:32:52', '2018-08-21 02:32:52', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/Plana_04_recorte.png', 0, 'attachment', 'image/png', 0),
(261, 1, '2018-08-20 23:33:19', '2018-08-21 02:33:19', '', 'M_05_recorte', '', 'inherit', 'open', 'closed', '', 'm_05_recorte', '', '', '2018-08-20 23:33:19', '2018-08-21 02:33:19', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_05_recorte.png', 0, 'attachment', 'image/png', 0),
(264, 1, '2018-08-20 23:33:36', '2018-08-21 02:33:36', '', 'M_07_azul_recorte', '', 'inherit', 'open', 'closed', '', 'm_07_azul_recorte', '', '', '2018-08-20 23:33:36', '2018-08-21 02:33:36', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_07_azul_recorte.png', 0, 'attachment', 'image/png', 0),
(269, 1, '2018-08-20 23:33:45', '2018-08-21 02:33:45', '', 'M_07_recorte', '', 'inherit', 'open', 'closed', '', 'm_07_recorte', '', '', '2018-08-20 23:33:45', '2018-08-21 02:33:45', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_07_recorte.png', 0, 'attachment', 'image/png', 0),
(273, 1, '2018-08-20 23:33:30', '2018-08-21 02:33:30', '<p>M-08(N)BANDEJA ESPUMA C/100 UN - MEIWA</p>', 'Bandeja de espuma | Mais resistente | Retangular | Branco | Contém 100 unidades', '', 'trash', 'closed', 'open', '', 'bandeja-de-espuma-mais-resistente-retangular-branco-contem-100-unidades__trashed', '', '', '2018-09-25 00:21:34', '2018-09-25 03:21:34', '', 0, 'https://ederton.xyz/preview/m2distribuidora/product/bandeja-de-espuma-mais-resistente-retangular-branco-contem-100-unidades/', 0, 'product', '', 0),
(296, 1, '2018-08-20 23:34:13', '2018-08-21 02:34:13', '', 'M_57_recorte', '', 'inherit', 'open', 'closed', '', 'm_57_recorte', '', '', '2018-08-20 23:34:13', '2018-08-21 02:34:13', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_57_recorte.png', 0, 'attachment', 'image/png', 0),
(334, 1, '2018-08-20 23:34:29', '2018-08-21 02:34:29', '', 'M0_90_F1_recorte', '', 'inherit', 'open', 'closed', '', 'm0_90_f1_recorte', '', '', '2018-08-20 23:34:29', '2018-08-21 02:34:29', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M0_90_F1_recorte.png', 0, 'attachment', 'image/png', 0),
(342, 1, '2018-08-20 23:34:45', '2018-08-21 02:34:45', '', 'MO_600_recorte', '', 'inherit', 'open', 'closed', '', 'mo_600_recorte', '', '', '2018-08-20 23:34:45', '2018-08-21 02:34:45', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MO_600_recorte.png', 0, 'attachment', 'image/png', 0),
(366, 1, '2018-08-20 23:35:21', '2018-08-21 02:35:21', '', 'MP_32_R_branco_recorte', '', 'inherit', 'open', 'closed', '', 'mp_32_r_branco_recorte', '', '', '2018-08-20 23:35:21', '2018-08-21 02:35:21', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MP_32_R_branco_recorte.png', 0, 'attachment', 'image/png', 0),
(364, 1, '2018-08-20 23:35:08', '2018-08-21 02:35:08', '', 'MP_27_R_recorte', '', 'inherit', 'open', 'closed', '', 'mp_27_r_recorte', '', '', '2018-08-20 23:35:08', '2018-08-21 02:35:08', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MP_27_R_recorte.png', 0, 'attachment', 'image/png', 0),
(382, 1, '2018-08-20 23:35:40', '2018-08-21 02:35:40', '', 'PL_15_color_mix_recorte', '', 'inherit', 'open', 'closed', '', 'pl_15_color_mix_recorte', '', '', '2018-08-20 23:35:40', '2018-08-21 02:35:40', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/PL_15_color_mix_recorte.png', 0, 'attachment', 'image/png', 0),
(396, 1, '2018-08-20 23:35:56', '2018-08-21 02:35:56', '', 'TP_cpcomcr_uz_350_700_recorte', '', 'inherit', 'open', 'closed', '', 'tp_cpcomcr_uz_350_700_recorte', '', '', '2018-08-20 23:35:56', '2018-08-21 02:35:56', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/TP_cpcomcr_uz_350_700_recorte.png', 0, 'attachment', 'image/png', 0),
(398, 1, '2018-08-20 23:36:04', '2018-08-21 02:36:04', '', 'Tampa_copo_180ml_recorte', '', 'inherit', 'open', 'closed', '', 'tampa_copo_180ml_recorte', '', '', '2018-08-20 23:36:04', '2018-08-21 02:36:04', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/Tampa_copo_180ml_recorte.png', 0, 'attachment', 'image/png', 0),
(406, 1, '2018-08-20 23:36:14', '2018-08-21 02:36:14', '', 'Tampa_copo_100ml_recorte', '', 'inherit', 'open', 'closed', '', 'tampa_copo_100ml_recorte', '', '', '2018-08-20 23:36:14', '2018-08-21 02:36:14', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/Tampa_copo_100ml_recorte.png', 0, 'attachment', 'image/png', 0),
(410, 1, '2018-08-20 23:36:23', '2018-08-21 02:36:23', '', 'TampaMP27_R_recorte', '', 'inherit', 'open', 'closed', '', 'tampamp27_r_recorte', '', '', '2018-08-20 23:36:23', '2018-08-21 02:36:23', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/TampaMP27_R_recorte.png', 0, 'attachment', 'image/png', 0),
(412, 1, '2018-08-20 23:36:35', '2018-08-21 02:36:35', '', 'TampaM32_R_recorte', '', 'inherit', 'open', 'closed', '', 'tampam32_r_recorte', '', '', '2018-08-20 23:36:35', '2018-08-21 02:36:35', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/TampaM32_R_recorte.png', 0, 'attachment', 'image/png', 0),
(450, 1, '2018-08-20 23:37:00', '2018-08-21 02:37:00', '', 'MPPS_215-1000_recorte', '', 'inherit', 'open', 'closed', '', 'mpps_215-1000_recorte', '', '', '2018-08-20 23:37:00', '2018-08-21 02:37:00', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MPPS_215-1000_recorte.png', 0, 'attachment', 'image/png', 0),
(454, 1, '2018-08-20 23:37:17', '2018-08-21 02:37:17', '', 'M_04_recorte', '', 'inherit', 'open', 'closed', '', 'm_04_recorte', '', '', '2018-08-20 23:37:17', '2018-08-21 02:37:17', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_04_recorte.png', 0, 'attachment', 'image/png', 0),
(455, 1, '2018-08-20 23:37:32', '2018-08-21 02:37:32', '', 'M_03_recorte', '', 'inherit', 'open', 'closed', '', 'm_03_recorte', '', '', '2018-08-20 23:37:32', '2018-08-21 02:37:32', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_03_recorte.png', 0, 'attachment', 'image/png', 0),
(456, 1, '2018-08-20 23:37:46', '2018-08-21 02:37:46', '', 'M_05_preto_recorte', '', 'inherit', 'open', 'closed', '', 'm_05_preto_recorte', '', '', '2018-08-20 23:37:46', '2018-08-21 02:37:46', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_05_preto_recorte.png', 0, 'attachment', 'image/png', 0),
(457, 1, '2018-08-20 23:37:58', '2018-08-21 02:37:58', '', 'M_54_recorte', '', 'inherit', 'open', 'closed', '', 'm_54_recorte', '', '', '2018-08-20 23:37:58', '2018-08-21 02:37:58', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/M_54_recorte.png', 0, 'attachment', 'image/png', 0),
(459, 1, '2018-08-20 23:38:15', '2018-08-21 02:38:15', '', 'MOB_320_recorte', '', 'inherit', 'open', 'closed', '', 'mob_320_recorte', '', '', '2018-08-20 23:38:15', '2018-08-21 02:38:15', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MOB_320_recorte.png', 0, 'attachment', 'image/png', 0),
(461, 1, '2018-08-20 23:38:28', '2018-08-21 02:38:28', '', 'MO_100-1_recorte', '', 'inherit', 'open', 'closed', '', 'mo_100-1_recorte', '', '', '2018-08-20 23:38:28', '2018-08-21 02:38:28', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MO_100-1_recorte.png', 0, 'attachment', 'image/png', 0),
(464, 1, '2018-08-20 23:38:30', '2018-08-21 02:38:30', '', 'MO_90_3_recorte', '', 'inherit', 'open', 'closed', '', 'mo_90_3_recorte', '', '', '2018-08-20 23:38:30', '2018-08-21 02:38:30', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/08/MO_90_3_recorte.png', 0, 'attachment', 'image/png', 0),
(474, 2, '2018-09-26 20:20:03', '2018-09-26 23:20:03', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.</p>\r\n\r\n<p>Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh. Aenean venenatis viverra eros, non ornare sem hendrerit et. Pellentesque efficitur tempus ornare. Donec mollis, ligula sit amet posuere fringilla, erat enim maximus lorem, nec tristique leo velit id dui.</p>\r\n\r\n<p>Aenean finibus nunc vel dolor ornare, ac tristique risus ullamcorper. Phasellus sit amet diam facilisis velit congue tincidunt id nec leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in gravida purus. Sed dui dui, viverra quis justo ac, feugiat porttitor est. Cras augue tellus, dapibus vitae vestibulum ut, dignissim facilisis elit. In hac habitasse platea dictumst.</p>', 'Copo Genérico Meiwa 300ml', 'Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh.', 'publish', 'open', 'closed', '', 'copo-generico-meiwa-300ml', '', '', '2018-09-26 21:32:06', '2018-09-27 00:32:06', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=product&#038;p=474', 0, 'product', '', 0),
(475, 1, '2018-09-26 20:18:59', '2018-09-26 23:18:59', '', '_MG_3871', '', 'inherit', 'open', 'closed', '', '_mg_3871', '', '', '2018-09-26 20:18:59', '2018-09-26 23:18:59', '', 474, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/09/MG_3871.jpg', 0, 'attachment', 'image/jpeg', 0),
(476, 1, '2018-09-26 20:22:46', '2018-09-26 23:22:46', '', '2', '', 'inherit', 'open', 'closed', '', '2', '', '', '2018-09-26 20:22:46', '2018-09-26 23:22:46', '', 474, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/09/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(477, 1, '2018-09-26 20:22:49', '2018-09-26 23:22:49', '', '3', '', 'inherit', 'open', 'closed', '', '3', '', '', '2018-09-26 20:22:49', '2018-09-26 23:22:49', '', 474, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/09/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(478, 1, '2018-09-26 20:22:52', '2018-09-26 23:22:52', '', '4', '', 'inherit', 'open', 'closed', '', '4', '', '', '2018-09-26 20:22:52', '2018-09-26 23:22:52', '', 474, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/09/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(479, 1, '2018-09-26 20:25:18', '2018-09-26 23:25:18', '', '5', '', 'inherit', 'open', 'closed', '', '5', '', '', '2018-09-26 20:25:18', '2018-09-26 23:25:18', '', 474, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/09/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(480, 1, '2018-09-26 20:25:25', '2018-09-26 23:25:25', '', '6', '', 'inherit', 'open', 'closed', '', '6', '', '', '2018-09-26 20:25:25', '2018-09-26 23:25:25', '', 474, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/09/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(504, 1, '2018-11-22 10:27:36', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-22 10:27:36', '0000-00-00 00:00:00', '', 0, 'http://localhost/marketplace/?p=504', 0, 'post', '', 0),
(482, 2, '2018-09-26 22:14:31', '2018-09-27 01:14:31', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.</p>\r\n\r\n<p>Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh. Aenean venenatis viverra eros, non ornare sem hendrerit et. Pellentesque efficitur tempus ornare. Donec mollis, ligula sit amet posuere fringilla, erat enim maximus lorem, nec tristique leo velit id dui.</p>\r\n\r\n<p>Aenean finibus nunc vel dolor ornare, ac tristique risus ullamcorper. Phasellus sit amet diam facilisis velit congue tincidunt id nec leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in gravida purus. Sed dui dui, viverra quis justo ac, feugiat porttitor est. Cras augue tellus, dapibus vitae vestibulum ut, dignissim facilisis elit. In hac habitasse platea dictumst.</p>', 'Copo Genérico Meiwa 500ml', 'Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh.', 'publish', 'open', 'closed', '', 'copo-generico-meiwa-500ml', '', '', '2018-10-02 17:25:49', '2018-10-02 20:25:49', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=product&#038;p=482', 0, 'product', '', 0),
(483, 4, '2018-09-26 22:22:15', '2018-09-27 01:22:15', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.</p>\r\n\r\n<p>Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh. Aenean venenatis viverra eros, non ornare sem hendrerit et. Pellentesque efficitur tempus ornare. Donec mollis, ligula sit amet posuere fringilla, erat enim maximus lorem, nec tristique leo velit id dui.</p>\r\n\r\n<p>Aenean finibus nunc vel dolor ornare, ac tristique risus ullamcorper. Phasellus sit amet diam facilisis velit congue tincidunt id nec leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in gravida purus. Sed dui dui, viverra quis justo ac, feugiat porttitor est. Cras augue tellus, dapibus vitae vestibulum ut, dignissim facilisis elit. In hac habitasse platea dictumst.</p>', 'Copo Genérico Meiwa 150ml', 'Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh.', 'publish', 'open', 'closed', '', 'copo-generico-meiwa-150ml', '', '', '2018-10-02 17:24:35', '2018-10-02 20:24:35', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=product&#038;p=483', 0, 'product', '', 0),
(484, 1, '2018-09-26 22:54:06', '2018-09-27 01:54:06', 'a:7:{s:8:\"location\";a:1:{i:0;a:1:{i:0;a:3:{s:5:\"param\";s:9:\"user_role\";s:8:\"operator\";s:2:\"==\";s:5:\"value\";s:9:\"dc_vendor\";}}}s:8:\"position\";s:6:\"normal\";s:5:\"style\";s:7:\"default\";s:15:\"label_placement\";s:3:\"top\";s:21:\"instruction_placement\";s:5:\"label\";s:14:\"hide_on_screen\";s:0:\"\";s:11:\"description\";s:0:\"\";}', 'Frete gratuito', 'frete-gratuito', 'publish', 'closed', 'closed', '', 'group_5bac3735d1384', '', '', '2018-10-02 18:23:35', '2018-10-02 21:23:35', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field-group&#038;p=484', 0, 'acf-field-group', '', 0),
(485, 1, '2018-09-26 22:54:06', '2018-09-27 01:54:06', 'a:12:{s:4:\"type\";s:6:\"number\";s:12:\"instructions\";s:0:\"\";s:8:\"required\";i:0;s:17:\"conditional_logic\";i:0;s:7:\"wrapper\";a:3:{s:5:\"width\";s:0:\"\";s:5:\"class\";s:0:\"\";s:2:\"id\";s:0:\"\";}s:13:\"default_value\";s:0:\"\";s:11:\"placeholder\";s:0:\"\";s:7:\"prepend\";s:0:\"\";s:6:\"append\";s:0:\"\";s:3:\"min\";s:0:\"\";s:3:\"max\";s:0:\"\";s:4:\"step\";s:0:\"\";}', 'Valor Mínimo', 'valor_minimo_frete', 'publish', 'closed', 'closed', '', 'field_5bac37adfa57c', '', '', '2018-09-26 22:54:06', '2018-09-27 01:54:06', '', 484, 'https://ederton.xyz/preview/m2distribuidora/?post_type=acf-field&p=485', 0, 'acf-field', '', 0),
(512, 1, '2018-11-22 16:10:16', '2018-11-22 18:10:16', '', 'cat_mini_market', '', 'inherit', 'open', 'closed', '', 'cat_mini_market', '', '', '2018-11-22 16:10:16', '2018-11-22 18:10:16', '', 0, 'http://localhost/marketplace/wp-content/uploads/2018/11/cat_mini_market.jpg', 0, 'attachment', 'image/jpeg', 0),
(513, 1, '2018-11-22 16:10:43', '2018-11-22 18:10:43', '', 'cat_coffee_shop', '', 'inherit', 'open', 'closed', '', 'cat_coffee_shop', '', '', '2018-11-22 16:10:43', '2018-11-22 18:10:43', '', 0, 'http://localhost/marketplace/wp-content/uploads/2018/11/cat_coffee_shop.jpg', 0, 'attachment', 'image/jpeg', 0),
(514, 1, '2018-11-22 16:11:36', '2018-11-22 18:11:36', '', 'cat_delivery', '', 'inherit', 'open', 'closed', '', 'cat_delivery', '', '', '2018-11-22 16:11:36', '2018-11-22 18:11:36', '', 0, 'http://localhost/marketplace/wp-content/uploads/2018/11/cat_delivery.jpg', 0, 'attachment', 'image/jpeg', 0),
(515, 1, '2018-11-22 16:11:59', '2018-11-22 18:11:59', '', 'cat_restaurant', '', 'inherit', 'open', 'closed', '', 'cat_restaurant', '', '', '2018-11-22 16:11:59', '2018-11-22 18:11:59', '', 0, 'http://localhost/marketplace/wp-content/uploads/2018/11/cat_restaurant.jpg', 0, 'attachment', 'image/jpeg', 0),
(516, 1, '2018-11-22 16:34:40', '2018-11-22 18:34:40', '', 'cat_catering', '', 'inherit', 'open', 'closed', '', 'cat_catering', '', '', '2018-11-22 16:34:40', '2018-11-22 18:34:40', '', 0, 'http://localhost/marketplace/wp-content/uploads/2018/11/cat_catering.jpg', 0, 'attachment', 'image/jpeg', 0),
(517, 1, '2018-11-22 16:35:44', '2018-11-22 18:35:44', '', 'cat_bakery', '', 'inherit', 'open', 'closed', '', 'cat_bakery', '', '', '2018-11-22 16:35:44', '2018-11-22 18:35:44', '', 0, 'http://localhost/marketplace/wp-content/uploads/2018/11/cat_bakery.jpg', 0, 'attachment', 'image/jpeg', 0),
(489, 2, '2018-10-02 18:49:10', '2018-10-02 21:49:10', '', '5', '', 'inherit', 'open', 'closed', '', '5-2', '', '', '2018-10-02 18:49:10', '2018-10-02 21:49:10', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/5.jpg', 0, 'attachment', 'image/jpeg', 0),
(490, 2, '2018-10-02 18:49:30', '2018-10-02 21:49:30', '', '_MG_3871', '', 'inherit', 'open', 'closed', '', '_mg_3871-2', '', '', '2018-10-02 18:49:30', '2018-10-02 21:49:30', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/MG_3871.jpg', 0, 'attachment', 'image/jpeg', 0),
(491, 2, '2018-10-02 18:49:33', '2018-10-02 21:49:33', '', '2', '', 'inherit', 'open', 'closed', '', '2-2', '', '', '2018-10-02 18:49:33', '2018-10-02 21:49:33', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/2.jpg', 0, 'attachment', 'image/jpeg', 0),
(492, 2, '2018-10-02 18:49:36', '2018-10-02 21:49:36', '', '3', '', 'inherit', 'open', 'closed', '', '3-2', '', '', '2018-10-02 18:49:36', '2018-10-02 21:49:36', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/3.jpg', 0, 'attachment', 'image/jpeg', 0),
(493, 2, '2018-10-02 18:49:40', '2018-10-02 21:49:40', '', '4', '', 'inherit', 'open', 'closed', '', '4-2', '', '', '2018-10-02 18:49:40', '2018-10-02 21:49:40', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/4.jpg', 0, 'attachment', 'image/jpeg', 0),
(494, 2, '2018-10-02 18:49:43', '2018-10-02 21:49:43', '', '6', '', 'inherit', 'open', 'closed', '', '6-2', '', '', '2018-10-02 18:49:43', '2018-10-02 21:49:43', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/6.jpg', 0, 'attachment', 'image/jpeg', 0),
(495, 2, '2018-10-02 18:52:42', '2018-10-02 21:52:42', 'Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh.', 'Copo Genérico Meiwa 80ml', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.\r\n\r\nSed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh. Aenean venenatis viverra eros, non ornare sem hendrerit et. Pellentesque efficitur tempus ornare. Donec mollis, ligula sit amet posuere fringilla, erat enim maximus lorem, nec tristique leo velit id dui.\r\n\r\nAenean finibus nunc vel dolor ornare, ac tristique risus ullamcorper. Phasellus sit amet diam facilisis velit congue tincidunt id nec leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in gravida purus. Sed dui dui, viverra quis justo ac, feugiat porttitor est. Cras augue tellus, dapibus vitae vestibulum ut, dignissim facilisis elit. In hac habitasse platea dictumst.', 'publish', 'open', 'closed', '', 'copo-generico-meiwa-80ml', '', '', '2018-10-02 18:59:24', '2018-10-02 21:59:24', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=product&#038;p=495', 0, 'product', '', 0),
(496, 2, '2018-10-02 18:56:39', '2018-10-02 21:56:39', 'Sed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh.', 'Copo Genérico Meiwa 50ml', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.\r\n\r\nSed quam turpis, interdum at neque non, ultrices iaculis quam. Vestibulum pharetra justo eu sem molestie, a luctus arcu fermentum. Nulla et sem justo. Quisque vel neque nibh. Aenean venenatis viverra eros, non ornare sem hendrerit et. Pellentesque efficitur tempus ornare. Donec mollis, ligula sit amet posuere fringilla, erat enim maximus lorem, nec tristique leo velit id dui.\r\n\r\nAenean finibus nunc vel dolor ornare, ac tristique risus ullamcorper. Phasellus sit amet diam facilisis velit congue tincidunt id nec leo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Aenean in gravida purus. Sed dui dui, viverra quis justo ac, feugiat porttitor est. Cras augue tellus, dapibus vitae vestibulum ut, dignissim facilisis elit. In hac habitasse platea dictumst.', 'publish', 'open', 'closed', '', 'copo-generico-meiwa-50ml', '', '', '2018-11-22 13:54:08', '2018-11-22 15:54:08', '', 0, 'https://ederton.xyz/preview/m2distribuidora/?post_type=product&#038;p=496', 0, 'product', '', 0),
(497, 1, '2018-10-03 08:06:52', '2018-10-03 11:06:52', '', 'img-page-1[1]', '', 'inherit', 'open', 'closed', '', 'img-page-11', '', '', '2018-10-03 08:06:52', '2018-10-03 11:06:52', '', 3, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/img-page-11.jpg', 0, 'attachment', 'image/jpeg', 0);
INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(498, 1, '2018-10-03 08:07:04', '2018-10-03 11:07:04', '<h2>Quem somos</h2><p>O endereço do nosso site é: http://localhost/m2distribuidora.</p><h2>Quais dados pessoais coletamos e porque</h2><h3>Comentários</h3><p>Quando os visitantes deixam comentários no site, coletamos os dados mostrados no formulário de comentários, além do endereço de IP e de dados do navegador do visitante, para auxiliar na detecção de spam.</p><p>Uma sequência anonimizada de caracteres criada a partir do seu e-mail (também chamada de hash) poderá ser enviada para o Gravatar para verificar se você usa o serviço. A política de privacidade do Gravatar está disponível aqui: https://automattic.com/privacy/. Depois da aprovação do seu comentário, a foto do seu perfil fica visível publicamente junto de seu comentário.</p><h3>Mídia</h3><p>Se você envia imagens para o site, evite enviar as que contenham dados de localização incorporados (EXIF GPS). Visitantes podem baixar estas imagens do site e extrair delas seus dados de localização.</p><h3>Formulários de contato</h3><h3>Cookies</h3><p>Ao deixar um comentário no site, você poderá optar por salvar seu nome, e-mail e site nos cookies. Isso visa seu conforto, assim você não precisará preencher seus  dados novamente quando fizer outro comentário. Estes cookies duram um ano.</p><p>Se você tem uma conta e acessa este site, um cookie temporário será criado para determinar se seu navegador aceita cookies. Ele não contém nenhum dado pessoal e será descartado quando você fechar seu navegador.</p><p>Quando você acessa sua conta no site, também criamos vários cookies para salvar os dados da sua conta e suas escolhas de exibição de tela. Cookies de login são mantidos por dois dias e cookies de opções de tela por um ano. Se você selecionar &quot;Lembrar-me&quot;, seu acesso será mantido por duas semanas. Se você se desconectar da sua conta, os cookies de login serão removidos.</p><p>Se você editar ou publicar um artigo, um cookie adicional será salvo no seu navegador. Este cookie não inclui nenhum dado pessoal e simplesmente indica o ID do post referente ao artigo que você acabou de editar. Ele expira depois de 1 dia.</p><h3>Mídia incorporada de outros sites</h3><p>Artigos neste site podem incluir conteúdo incorporado como, por exemplo, vídeos, imagens, artigos, etc. Conteúdos incorporados de outros sites se comportam exatamente da mesma forma como se o visitante estivesse visitando o outro site.</p><p>Estes sites podem coletar dados sobre você, usar cookies, incorporar rastreamento adicionar de terceiros e monitorar sua interação com este conteúdo incorporado, incluindo sua interação com o conteúdo incorporado se você tem uma conta e está conectado com o site.</p><h3>Análises</h3><h2>Com quem partilhamos seus dados</h2><h2>Por quanto tempo mantemos os seus dados</h2><p>Se você deixar um comentário, o comentário e os seus metadados são conservados indefinidamente. Fazemos isso para que seja possível reconhecer e aprovar automaticamente qualquer comentário posterior ao invés de retê-lo para moderação.</p><p>Para usuários que se registram no nosso site (se houver), também guardamos as informações pessoais que fornecem no seu perfil de usuário. Todos os usuários podem ver, editar ou excluir suas informações pessoais a qualquer momento (só não é possível alterar o seu username). Os administradores de sites também podem ver e editar estas informações.</p><h2>Quais os seus direitos sobre seus dados</h2><p>Se você tiver uma conta neste site ou se tiver deixado comentários, pode solicitar um arquivo exportado dos dados pessoais que mantemos sobre você, inclusive quaisquer dados que nos tenha fornecido. Também pode solicitar que removamos qualquer dado pessoal que mantemos sobre você. Isto não inclui nenhuns dados que somos obrigados a manter para propósitos administrativos, legais ou de segurança.</p><h2>Para onde enviamos seus dados</h2><p>Comentários de visitantes podem ser marcados por um serviço automático de detecção de spam.</p><h2>Suas informações de contato</h2><h2>Informações adicionais</h2><h3>Como protegemos seus dados</h3><h3>Quais são nossos procedimentos contra violação de dados</h3><h3>De quais terceiros nós recebemos dados</h3><h3>Quais tomadas de decisão ou análises de perfil automatizadas fazemos com os dados de usuários</h3><h3>Requisitos obrigatórios de divulgação para sua categoria profissional</h3>', 'Política de privacidade', '', 'inherit', 'closed', 'closed', '', '3-revision-v1', '', '', '2018-10-03 08:07:04', '2018-10-03 11:07:04', '', 3, 'https://ederton.xyz/preview/m2distribuidora/2018/10/03/3-revision-v1/', 0, 'revision', '', 0),
(499, 1, '2018-10-03 20:41:13', '2018-10-03 23:41:13', '', '', '', 'private', 'open', 'closed', '', '499', '', '', '2018-10-03 20:41:13', '2018-10-03 23:41:13', '', 0, 'https://ederton.xyz/preview/m2distribuidora/wp-content/uploads/2018/10/user-1.jpg', 0, 'attachment', 'image/jpeg', 0),
(518, 5, '2018-11-22 21:57:49', '0000-00-00 00:00:00', '', 'Rascunho automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2018-11-22 21:57:49', '0000-00-00 00:00:00', '', 0, 'http://ederton.xyz/preview/hubsty/?p=518', 0, 'post', '', 0),
(519, 1, '2018-11-22 22:01:24', '2018-11-23 00:01:24', '', 'Order &ndash; novembro 22, 2018 @ 10:01 PM', '', 'wc-completed', 'closed', 'closed', 'order_5bf74354e7004', 'pedido-23-de-nov-de-2018-as-000101', '', '', '2018-11-22 22:07:53', '2018-11-23 00:07:53', '', 0, 'https://ederton.xyz/preview/hubsty/?post_type=shop_order&#038;p=519', 0, 'shop_order', '', 3),
(520, 1, '2018-11-22 22:01:26', '2018-11-23 00:01:26', '', 'Comissão - November 22, 2018 @ 10:01 PM', '', 'private', 'closed', 'closed', '', 'comissao-november-22-2018-1001-pm', '', '', '2018-11-22 22:01:26', '2018-11-23 00:01:26', '', 0, 'https://ederton.xyz/preview/hubsty/dc_commission/comissao-november-22-2018-1001-pm/', 0, 'dc_commission', '', 0),
(521, 1, '2018-11-22 22:01:26', '2018-11-23 00:01:26', '', 'Comissão - November 22, 2018 @ 10:01 PM', '', 'private', 'closed', 'closed', '', 'comissao-november-22-2018-1001-pm-2', '', '', '2018-11-22 22:01:26', '2018-11-23 00:01:26', '', 0, 'https://ederton.xyz/preview/hubsty/dc_commission/comissao-november-22-2018-1001-pm-2/', 0, 'dc_commission', '', 0),
(522, 1, '2018-11-22 22:49:28', '2018-11-23 00:49:28', '', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-11-22 22:49:28', '2018-11-23 00:49:28', '', 28, 'https://ederton.xyz/preview/hubsty/sem-categoria/28-revision-v1/', 0, 'revision', '', 0),
(523, 1, '2018-11-22 22:50:30', '2018-11-23 00:50:30', '', 'Home', '', 'inherit', 'closed', 'closed', '', '28-revision-v1', '', '', '2018-11-22 22:50:30', '2018-11-23 00:50:30', '', 28, 'https://ederton.xyz/preview/hubsty/sem-categoria/28-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_queue`
--

CREATE TABLE `wp_queue` (
  `id` bigint(20) NOT NULL,
  `job` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attempts` tinyint(1) NOT NULL DEFAULT 0,
  `locked` tinyint(1) NOT NULL DEFAULT 0,
  `locked_at` datetime DEFAULT NULL,
  `available_at` datetime NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_social_users`
--

CREATE TABLE `wp_social_users` (
  `ID` int(11) NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `identifier` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Extraindo dados da tabela `wp_social_users`
--

INSERT INTO `wp_social_users` (`ID`, `type`, `identifier`) VALUES
(1, 'fb', '10211297328221587');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_termmeta`
--

INSERT INTO `wp_termmeta` (`meta_id`, `term_id`, `meta_key`, `meta_value`) VALUES
(29, 15, 'commision', ''),
(28, 24, 'product_count_product_cat', '1'),
(32, 27, 'order', '0'),
(27, 26, 'product_count_product_cat', '1'),
(26, 25, 'product_count_product_cat', '1'),
(9, 20, '_vendor_user_id', '2'),
(12, 23, '_vendor_user_id', '4'),
(13, 24, 'order', '0'),
(14, 24, 'commision', ''),
(15, 24, 'display_type', ''),
(16, 24, 'thumbnail_id', '145'),
(17, 25, 'order', '0'),
(18, 25, 'commision', ''),
(19, 25, 'display_type', ''),
(20, 25, 'thumbnail_id', '145'),
(21, 26, 'order', '0'),
(22, 26, 'commision', ''),
(23, 26, 'display_type', ''),
(24, 26, 'thumbnail_id', '145'),
(25, 15, 'product_count_product_cat', '5'),
(30, 15, 'display_type', ''),
(31, 15, 'thumbnail_id', '145'),
(33, 27, 'product_count_product_cat', '1'),
(34, 28, 'order', '0'),
(35, 29, 'order', '0'),
(36, 30, 'order', '0'),
(37, 30, 'product_count_product_cat', '1'),
(38, 29, 'product_count_product_cat', '1'),
(39, 28, 'product_count_product_cat', '4'),
(201, 139, 'product_count_product_tag', '1'),
(202, 143, 'product_count_product_tag', '1'),
(42, 33, 'order_pa_cores', '0'),
(43, 34, 'order_pa_cores', '0'),
(44, 35, 'order_pa_cores', '0'),
(45, 36, 'order_pa_cores', '0'),
(46, 37, 'order_pa_cores', '0'),
(47, 38, 'order_pa_cores', '0'),
(48, 39, 'order_pa_qtd-da-embalagem', '0'),
(204, 141, 'product_count_product_tag', '1'),
(203, 140, 'product_count_product_tag', '1'),
(52, 43, 'order_pa_material', '0'),
(53, 44, 'order_pa_material', '0'),
(54, 45, 'order_pa_material', '0'),
(55, 46, 'order_pa_material', '0'),
(56, 47, 'order_pa_material', '0'),
(57, 48, 'order_pa_altura', '0'),
(58, 49, 'order_pa_diametro', '0'),
(59, 50, 'order_pa_largura', '0'),
(60, 51, 'order_pa_volume', '0'),
(61, 52, 'order_pa_tipo-de-embalagem', '0'),
(62, 53, 'order_pa_cores', '0'),
(63, 54, 'order_pa_material', '0'),
(64, 55, 'order_pa_material', '0'),
(65, 56, 'order_pa_material', '0'),
(66, 57, 'order_pa_material', '0'),
(67, 30, 'commision', ''),
(68, 30, 'display_type', ''),
(69, 30, 'thumbnail_id', '145'),
(70, 27, 'commision', ''),
(71, 27, 'display_type', ''),
(72, 27, 'thumbnail_id', '145'),
(73, 28, 'commision', ''),
(74, 28, 'display_type', ''),
(75, 28, 'thumbnail_id', '145'),
(76, 29, 'commision', ''),
(77, 29, 'display_type', ''),
(78, 29, 'thumbnail_id', '145'),
(79, 58, 'order', '0'),
(80, 58, 'commision', ''),
(81, 58, 'display_type', ''),
(82, 58, 'thumbnail_id', '0'),
(83, 59, 'order', '0'),
(84, 59, 'commision', ''),
(85, 59, 'display_type', ''),
(86, 59, 'thumbnail_id', '0'),
(87, 61, 'order', '0'),
(88, 62, 'order_pa_material', '0'),
(89, 63, 'order_pa_volume', '0'),
(90, 64, 'order', '0'),
(91, 65, 'order', '0'),
(92, 66, 'order', '0'),
(93, 67, 'order_pa_volume', '0'),
(94, 68, 'order_pa_volume', '0'),
(95, 70, 'order_pa_volume', '0'),
(96, 71, 'order_pa_volume', '0'),
(97, 72, 'order_pa_volume', '0'),
(98, 73, 'order_pa_volume', '0'),
(99, 74, 'order_pa_volume', '0'),
(100, 75, 'order_pa_volume', '0'),
(101, 76, 'order', '0'),
(102, 77, 'order', '0'),
(103, 78, 'order', '0'),
(104, 79, 'order', '0'),
(105, 80, 'order', '0'),
(106, 81, 'order_pa_corpo', '0'),
(107, 82, 'order_pa_corpo', '0'),
(108, 83, 'order', '0'),
(109, 84, 'order', '0'),
(110, 85, 'order_pa_corpo', '0'),
(111, 86, 'order_pa_corpo', '0'),
(112, 87, 'order_pa_corpo', '0'),
(113, 88, 'order_pa_corpo', '0'),
(114, 89, 'order_pa_corpo', '0'),
(115, 90, 'order_pa_corpo', '0'),
(116, 91, 'order_pa_corpo', '0'),
(117, 92, 'order_pa_volume', '0'),
(118, 93, 'order_pa_volume', '0'),
(119, 94, 'order_pa_volume', '0'),
(120, 95, 'order', '0'),
(121, 96, 'order', '0'),
(122, 97, 'order', '0'),
(123, 98, 'order_pa_volume', '0'),
(124, 99, 'order_pa_corpo', '0'),
(125, 100, 'order', '0'),
(126, 101, 'order_pa_volume', '0'),
(127, 102, 'order_pa_volume', '0'),
(128, 103, 'order_pa_volume', '0'),
(129, 104, 'order_pa_volume', '0'),
(130, 105, 'order_pa_volume', '0'),
(131, 106, 'order_pa_volume', '0'),
(132, 107, 'order_pa_volume', '0'),
(133, 108, 'order_pa_volume', '0'),
(134, 109, 'order_pa_volume', '0'),
(135, 110, 'order', '0'),
(136, 111, 'order', '0'),
(137, 112, 'order', '0'),
(138, 113, 'order_pa_material', '0'),
(139, 114, 'order_pa_volume', '0'),
(140, 115, 'order', '0'),
(141, 116, 'order_pa_corpo', '0'),
(142, 117, 'order', '0'),
(143, 118, 'order', '0'),
(144, 119, 'order', '0'),
(145, 120, 'order', '0'),
(146, 121, 'order', '0'),
(147, 122, 'order', '0'),
(148, 123, 'order_pa_corpo', '0'),
(149, 124, 'order', '0'),
(150, 125, 'order_pa_corpo', '0'),
(151, 126, 'order_pa_corpo', '0'),
(152, 127, 'order_pa_material', '0'),
(153, 128, 'order_pa_volume', '0'),
(154, 129, 'order', '0'),
(155, 76, 'product_count_product_cat', '1'),
(156, 61, 'product_count_product_cat', '1'),
(157, 79, 'product_count_product_cat', '1'),
(158, 83, 'product_count_product_cat', '1'),
(190, 136, 'order_pa_qtd-da-embalagem', '0'),
(159, 65, 'product_count_product_cat', '4'),
(160, 66, 'product_count_product_cat', '2'),
(161, 124, 'product_count_product_cat', '1'),
(162, 110, 'product_count_product_cat', '0'),
(163, 121, 'product_count_product_cat', '0'),
(164, 122, 'product_count_product_cat', '0'),
(165, 80, 'product_count_product_cat', '1'),
(166, 84, 'product_count_product_cat', '0'),
(167, 95, 'product_count_product_cat', '0'),
(168, 119, 'product_count_product_cat', '0'),
(169, 120, 'product_count_product_cat', '0'),
(170, 111, 'product_count_product_cat', '0'),
(171, 112, 'product_count_product_cat', '0'),
(172, 100, 'product_count_product_cat', '0'),
(173, 129, 'product_count_product_cat', '1'),
(174, 77, 'product_count_product_cat', '1'),
(175, 78, 'product_count_product_cat', '1'),
(176, 59, 'product_count_product_cat', '1'),
(177, 64, 'product_count_product_cat', '2'),
(178, 96, 'product_count_product_cat', '0'),
(179, 97, 'product_count_product_cat', '0'),
(180, 115, 'product_count_product_cat', '0'),
(181, 58, 'product_count_product_cat', '1'),
(182, 117, 'product_count_product_cat', '1'),
(183, 118, 'product_count_product_cat', '1'),
(184, 130, 'order_pa_tipo-de-embalagem', '0'),
(185, 131, 'order_pa_qtd-da-embalagem', '0'),
(186, 132, 'order_pa_diametro', '0'),
(187, 133, 'order_pa_altura', '0'),
(188, 134, 'order_pa_altura', '0'),
(189, 135, 'order_pa_tempo-de-entrega', '0'),
(191, 137, 'order_pa_tempo-de-entrega', '0'),
(192, 66, 'commision', ''),
(193, 66, 'display_type', ''),
(194, 66, 'thumbnail_id', '145'),
(195, 65, 'commision', ''),
(196, 65, 'display_type', ''),
(197, 65, 'thumbnail_id', '145'),
(198, 64, 'commision', ''),
(199, 64, 'display_type', ''),
(200, 64, 'thumbnail_id', '145'),
(205, 142, 'product_count_product_tag', '1'),
(206, 144, 'product_count_product_tag', '1'),
(207, 142, 'imagem_tag', '512'),
(208, 142, '_imagem_tag', 'field_5bf6f04a03e34'),
(209, 140, 'imagem_tag', '513'),
(210, 140, '_imagem_tag', 'field_5bf6f04a03e34'),
(211, 144, 'imagem_tag', '514'),
(212, 144, '_imagem_tag', 'field_5bf6f04a03e34'),
(213, 143, 'imagem_tag', '516'),
(214, 143, '_imagem_tag', 'field_5bf6f04a03e34'),
(215, 139, 'imagem_tag', '515'),
(216, 139, '_imagem_tag', 'field_5bf6f04a03e34'),
(217, 141, 'imagem_tag', '517'),
(218, 141, '_imagem_tag', 'field_5bf6f04a03e34'),
(219, 145, 'vendor_id', '8'),
(220, 145, 'vendor_shipping_origin', 'BR:SP'),
(221, 146, '_vendor_user_id', '8'),
(222, 147, 'vendor_id', '9'),
(223, 147, 'vendor_shipping_origin', 'BR:SP'),
(224, 148, '_vendor_user_id', '9'),
(225, 149, 'vendor_id', '10'),
(226, 149, 'vendor_shipping_origin', 'BR:SP'),
(227, 150, '_vendor_user_id', '10');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sem categoria', 'sem-categoria', 0),
(2, 'simple', 'simple', 0),
(3, 'grouped', 'grouped', 0),
(4, 'variable', 'variable', 0),
(5, 'external', 'external', 0),
(6, 'exclude-from-search', 'exclude-from-search', 0),
(7, 'exclude-from-catalog', 'exclude-from-catalog', 0),
(8, 'featured', 'featured', 0),
(9, 'outofstock', 'outofstock', 0),
(10, 'rated-1', 'rated-1', 0),
(11, 'rated-2', 'rated-2', 0),
(12, 'rated-3', 'rated-3', 0),
(13, 'rated-4', 'rated-4', 0),
(14, 'rated-5', 'rated-5', 0),
(15, 'Destaque', 'destaque', 0),
(28, 'Copos', 'copos', 0),
(27, 'Bandejas', 'bandejas', 0),
(20, 'PlasticPlus Descartáveis', 'plasticplus-descartaveis', 0),
(21, 'Menu Principal', 'menu-principal', 0),
(23, 'Silva Embalagens', 'silva-embalagens', 0),
(24, 'Preparo de Alimentos', 'preparo-de-alimentos', 0),
(25, 'Delivery', 'delivery', 0),
(26, 'Para o Forno', 'para-o-forno', 0),
(29, 'Potes', 'potes', 0),
(30, 'Acessorios', 'acessorios', 0),
(139, 'Restaurant', 'restaurant', 0),
(33, 'Branco', 'branco', 0),
(34, 'Preto', 'preto', 0),
(35, 'Amarelo', 'amarelo', 0),
(36, 'Verde', 'verde', 0),
(37, 'Rosa', 'rosa', 0),
(38, 'Azul', 'azul', 0),
(39, '500', '500', 0),
(142, 'Butcher', 'butcher', 0),
(141, 'Bar', 'bar', 0),
(140, 'Cafe', 'cafe', 0),
(43, 'Papel', 'papel', 0),
(44, 'Plástico', 'plastico', 0),
(45, 'Isopor', 'isopor', 0),
(46, 'Polypropileno', 'polypropileno', 0),
(47, 'Poliestileno', 'poliestileno', 0),
(48, '50 mm', '50-mm', 0),
(49, '60 mm', '60-mm', 0),
(50, '60 mm', '60-mm', 0),
(51, '300 ml', '300-ml', 0),
(52, 'Pacote', 'pacote', 0),
(53, 'roxo', 'roxo', 0),
(54, 'EPS', 'eps', 0),
(55, 'Polipropileno', 'polipropileno', 0),
(56, 'Polietileno', 'polietileno', 0),
(57, 'PS', 'ps', 0),
(58, 'Recomendados para o seu negócio', 'recomendados', 0),
(59, 'Ofertas do dia', 'ofertas', 0),
(60, 'Branco', 'branco', 0),
(61, 'Bandejas e pratos', 'bandejas-e-pratos', 0),
(62, 'Eps/Espuma', 'eps-espuma', 0),
(63, '300ml', '300ml', 0),
(64, 'potes e acessórios', 'potes-e-acessorios', 0),
(65, 'Copos térmicos', 'copos-termicos', 0),
(66, 'Copos térmicos', 'copos-termicos-potes-e-acessorios', 0),
(67, '180ml', '180ml', 0),
(68, '100ml', '100ml', 0),
(69, 'Color', 'color', 0),
(70, '150ml', '150ml', 0),
(71, '250ml', '250ml', 0),
(72, '350ml', '350ml', 0),
(73, '400ml', '400ml', 0),
(74, '500ml', '500ml', 0),
(75, '700ml', '700ml', 0),
(76, 'Bandejas de espuma', 'bandejas-de-espuma', 0),
(77, 'Embrulho pra alimentos', 'embrulho-pra-alimentos', 0),
(78, 'Filme plástico', 'filme-plastico', 0),
(79, 'Caixas e embalagens', 'caixas-e-embalagens', 0),
(80, 'Embalagens para delivery', 'embalagens-para-delivery', 0),
(81, 'Amarelo', 'amarelo', 0),
(82, 'Bege', 'bege', 0),
(83, 'Confeitaria e padaria', 'confeitaria-e-padaria', 0),
(84, 'Embalagens para delivery', 'embalagens-para-delivery-confeitaria-e-padaria', 0),
(85, 'Verde', 'verde', 0),
(86, 'Amarela', 'amarela', 0),
(87, 'Branca', 'branca', 0),
(88, 'Laranja', 'laranja', 0),
(89, 'Rosa', 'rosa', 0),
(90, 'Azul', 'azul', 0),
(91, 'Vermelho', 'vermelho', 0),
(92, '850ml', '850ml', 0),
(93, '1200ml', '1200ml', 0),
(94, '900ml', '900ml', 0),
(95, 'Embalagens para levar', 'embalagens-para-levar', 0),
(96, 'Potes térmicos', 'potes-termicos', 0),
(97, 'Potes térmicos', 'potes-termicos-potes-e-acessorios', 0),
(98, '200ml', '200ml', 0),
(99, 'Transparente', 'transparente', 0),
(100, 'Embalagens transparentes', 'embalagens-transparentes', 0),
(101, '1000ml', '1000ml', 0),
(102, '950ml', '950ml', 0),
(103, '1500ml', '1500ml', 0),
(104, '2900ml', '2900ml', 0),
(105, '1700ml', '1700ml', 0),
(106, '2600ml', '2600ml', 0),
(107, '600ml', '600ml', 0),
(108, '1800ml', '1800ml', 0),
(109, '750ml', '750ml', 0),
(110, 'Embalagens para bolo', 'embalagens-para-bolo', 0),
(111, 'Embalagens para microondas', 'embalagens-para-microondas', 0),
(112, 'Embalagens para microondas', 'embalagens-para-microondas-potes-e-acessorios', 0),
(113, 'PVC', 'pvc', 0),
(114, '1000m', '1000m', 0),
(115, 'Pratos de espuma', 'pratos-de-espuma', 0),
(116, 'Preto', 'preto', 0),
(117, 'Sacos e sacolas', 'sacos-e-sacolas', 0),
(118, 'Sacos para lixo', 'sacos-para-lixo', 0),
(119, 'Embalagens para levar', 'embalagens-para-levar-copos', 0),
(120, 'Embalagens para levar', 'embalagens-para-levar-potes-e-acessorios', 0),
(121, 'Embalagens para bolo', 'embalagens-para-bolo-copos', 0),
(122, 'Embalagens para bolo', 'embalagens-para-bolo-potes-e-acessorios', 0),
(123, 'Marrom natural', 'marrom-natural', 0),
(124, 'Embalagens para assar', 'embalagens-para-assar', 0),
(125, 'Dourado', 'dourado', 0),
(126, 'Vermelha', 'vermelha', 0),
(127, 'PET', 'pet', 0),
(128, '340ml', '340ml', 0),
(129, 'Embalagens transparentes', 'embalagens-transparentes-2', 0),
(130, 'Caixa', 'caixa', 0),
(131, '200', '200', 0),
(132, '100 mm', '100-mm', 0),
(133, '120 mm', '120-mm', 0),
(134, '60 mm', '60-mm', 0),
(135, '6 a 8 dias úteis', '6-a-8-dias-uteis', 0),
(136, '100', '100', 0),
(137, '12 a 15 dias úteis', '12-a-15-dias-uteis', 0),
(143, 'Take away', 'take-away', 0),
(144, 'Delivery', 'delivery', 0),
(145, 'Packpro-8', 'packpro-8', 0),
(146, 'Packpro', 'packpro', 0),
(147, 'Auspack-9', 'auspack-9', 0),
(148, 'Auspack', 'auspack', 0),
(149, 'Kent-10', 'kent-10', 0),
(150, 'Kent', 'kent', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0),
(474, 15, 0),
(474, 63, 0),
(474, 28, 0),
(474, 62, 0),
(50, 21, 0),
(45, 21, 0),
(46, 21, 0),
(47, 21, 0),
(48, 21, 0),
(49, 21, 0),
(474, 65, 0),
(474, 20, 0),
(474, 137, 0),
(474, 33, 0),
(474, 52, 0),
(474, 136, 0),
(474, 2, 0),
(496, 140, 0),
(496, 143, 0),
(496, 144, 0),
(496, 142, 0),
(496, 141, 0),
(273, 62, 1),
(482, 15, 0),
(482, 28, 0),
(482, 65, 0),
(483, 15, 0),
(482, 62, 0),
(482, 33, 0),
(482, 136, 0),
(482, 52, 0),
(482, 137, 0),
(482, 2, 0),
(482, 74, 0),
(483, 28, 0),
(483, 65, 0),
(483, 63, 0),
(483, 62, 0),
(483, 33, 0),
(483, 136, 0),
(483, 52, 0),
(483, 137, 0),
(483, 2, 0),
(483, 23, 0),
(482, 20, 0),
(496, 117, 0),
(496, 64, 0),
(496, 59, 0),
(496, 76, 0),
(496, 65, 0),
(496, 77, 0),
(496, 28, 0),
(496, 79, 0),
(496, 80, 0),
(496, 118, 0),
(496, 78, 0),
(496, 58, 0),
(496, 24, 0),
(496, 29, 0),
(496, 27, 0),
(496, 129, 0),
(496, 26, 0),
(496, 25, 0),
(496, 83, 0),
(496, 124, 0),
(496, 139, 0),
(496, 30, 0),
(496, 61, 0),
(495, 20, 0),
(495, 2, 0),
(495, 48, 0),
(495, 68, 0),
(495, 38, 0),
(495, 34, 0),
(495, 37, 0),
(495, 39, 0),
(495, 52, 0),
(495, 15, 0),
(495, 66, 0),
(496, 20, 0),
(496, 2, 0),
(496, 134, 0),
(496, 33, 0),
(496, 34, 0),
(496, 37, 0),
(496, 53, 0),
(496, 36, 0),
(496, 132, 0),
(496, 50, 0),
(496, 62, 0),
(496, 127, 0),
(496, 136, 0),
(496, 130, 0),
(496, 70, 0),
(496, 15, 0),
(496, 66, 0),
(496, 135, 0),
(495, 135, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 5),
(3, 3, 'product_type', '', 0, 0),
(4, 4, 'product_type', '', 0, 0),
(5, 5, 'product_type', '', 0, 0),
(6, 6, 'product_visibility', '', 0, 0),
(7, 7, 'product_visibility', '', 0, 0),
(8, 8, 'product_visibility', '', 0, 0),
(9, 9, 'product_visibility', '', 0, 0),
(10, 10, 'product_visibility', '', 0, 0),
(11, 11, 'product_visibility', '', 0, 0),
(12, 12, 'product_visibility', '', 0, 0),
(13, 13, 'product_visibility', '', 0, 0),
(14, 14, 'product_visibility', '', 0, 0),
(15, 15, 'product_cat', '', 0, 5),
(30, 30, 'product_cat', '', 0, 1),
(29, 29, 'product_cat', '', 0, 1),
(28, 28, 'product_cat', '', 0, 4),
(20, 20, 'dc_vendor_shop', '', 0, 4),
(21, 21, 'nav_menu', '', 0, 6),
(27, 27, 'product_cat', '', 0, 1),
(23, 23, 'dc_vendor_shop', '', 0, 1),
(24, 24, 'product_cat', '', 0, 1),
(25, 25, 'product_cat', '', 0, 1),
(26, 26, 'product_cat', '', 0, 1),
(139, 139, 'product_tag', '', 0, 1),
(136, 136, 'pa_qtd-da-embalagem', '', 0, 4),
(33, 33, 'pa_cores', '', 0, 4),
(34, 34, 'pa_cores', '', 0, 2),
(35, 35, 'pa_cores', '', 0, 0),
(36, 36, 'pa_cores', '', 0, 1),
(37, 37, 'pa_cores', '', 0, 2),
(38, 38, 'pa_cores', '', 0, 1),
(39, 39, 'pa_qtd-da-embalagem', '', 0, 1),
(142, 142, 'product_tag', '', 0, 1),
(141, 141, 'product_tag', '', 0, 1),
(140, 140, 'product_tag', '', 0, 1),
(43, 43, 'pa_material', '', 0, 0),
(44, 44, 'pa_material', '', 0, 0),
(45, 45, 'pa_material', '', 0, 0),
(46, 46, 'pa_material', '', 0, 0),
(47, 47, 'pa_material', '', 0, 0),
(48, 48, 'pa_altura', '', 0, 1),
(49, 49, 'pa_diametro', '', 0, 0),
(50, 50, 'pa_largura', '', 0, 1),
(51, 51, 'pa_volume', '', 0, 0),
(52, 52, 'pa_tipo-de-embalagem', '', 0, 4),
(137, 137, 'pa_tempo-de-entrega', '', 0, 3),
(53, 53, 'pa_cores', '', 0, 1),
(54, 54, 'pa_material', '', 0, 0),
(55, 55, 'pa_material', '', 0, 0),
(56, 56, 'pa_material', '', 0, 0),
(57, 57, 'pa_material', '', 0, 0),
(58, 58, 'product_cat', '', 0, 1),
(59, 59, 'product_cat', '', 0, 1),
(60, 60, 'pa_corpo', '', 0, 0),
(61, 61, 'product_cat', '', 0, 1),
(62, 62, 'pa_material', '', 0, 4),
(63, 63, 'pa_volume', '', 0, 2),
(64, 64, 'product_cat', '', 0, 1),
(65, 65, 'product_cat', '', 28, 4),
(66, 66, 'product_cat', '', 64, 2),
(67, 67, 'pa_volume', '', 0, 0),
(68, 68, 'pa_volume', '', 0, 1),
(69, 69, 'pa_corpo', '', 0, 0),
(70, 70, 'pa_volume', '', 0, 1),
(71, 71, 'pa_volume', '', 0, 0),
(72, 72, 'pa_volume', '', 0, 0),
(73, 73, 'pa_volume', '', 0, 0),
(74, 74, 'pa_volume', '', 0, 1),
(75, 75, 'pa_volume', '', 0, 0),
(76, 76, 'product_cat', '', 61, 1),
(77, 77, 'product_cat', '', 0, 1),
(78, 78, 'product_cat', '', 77, 1),
(79, 79, 'product_cat', '', 0, 1),
(80, 80, 'product_cat', '', 79, 1),
(81, 81, 'pa_corpo', '', 0, 0),
(82, 82, 'pa_corpo', '', 0, 0),
(83, 83, 'product_cat', '', 0, 1),
(84, 84, 'product_cat', '', 83, 0),
(85, 85, 'pa_corpo', '', 0, 0),
(86, 86, 'pa_corpo', '', 0, 0),
(87, 87, 'pa_corpo', '', 0, 0),
(88, 88, 'pa_corpo', '', 0, 0),
(89, 89, 'pa_corpo', '', 0, 0),
(90, 90, 'pa_corpo', '', 0, 0),
(91, 91, 'pa_corpo', '', 0, 0),
(92, 92, 'pa_volume', '', 0, 0),
(93, 93, 'pa_volume', '', 0, 0),
(94, 94, 'pa_volume', '', 0, 0),
(95, 95, 'product_cat', '', 83, 0),
(96, 96, 'product_cat', '', 28, 0),
(97, 97, 'product_cat', '', 64, 0),
(98, 98, 'pa_volume', '', 0, 0),
(99, 99, 'pa_corpo', '', 0, 0),
(100, 100, 'product_cat', '', 83, 0),
(101, 101, 'pa_volume', '', 0, 0),
(102, 102, 'pa_volume', '', 0, 0),
(103, 103, 'pa_volume', '', 0, 0),
(104, 104, 'pa_volume', '', 0, 0),
(105, 105, 'pa_volume', '', 0, 0),
(106, 106, 'pa_volume', '', 0, 0),
(107, 107, 'pa_volume', '', 0, 0),
(108, 108, 'pa_volume', '', 0, 0),
(109, 109, 'pa_volume', '', 0, 0),
(110, 110, 'product_cat', '', 83, 0),
(111, 111, 'product_cat', '', 28, 0),
(112, 112, 'product_cat', '', 64, 0),
(113, 113, 'pa_material', '', 0, 0),
(114, 114, 'pa_volume', '', 0, 0),
(115, 115, 'product_cat', '', 61, 0),
(116, 116, 'pa_corpo', '', 0, 0),
(117, 117, 'product_cat', '', 0, 1),
(118, 118, 'product_cat', '', 117, 1),
(119, 119, 'product_cat', '', 28, 0),
(120, 120, 'product_cat', '', 64, 0),
(121, 121, 'product_cat', '', 28, 0),
(122, 122, 'product_cat', '', 64, 0),
(123, 123, 'pa_corpo', '', 0, 0),
(124, 124, 'product_cat', '', 83, 1),
(125, 125, 'pa_corpo', '', 0, 0),
(126, 126, 'pa_corpo', '', 0, 0),
(127, 127, 'pa_material', '', 0, 1),
(128, 128, 'pa_volume', '', 0, 0),
(129, 129, 'product_cat', '', 0, 1),
(130, 130, 'pa_tipo-de-embalagem', '', 0, 1),
(131, 131, 'pa_qtd-da-embalagem', '', 0, 0),
(132, 132, 'pa_diametro', '', 0, 1),
(133, 133, 'pa_altura', '', 0, 0),
(134, 134, 'pa_altura', '', 0, 1),
(135, 135, 'pa_tempo-de-entrega', '', 0, 2),
(143, 143, 'product_tag', '', 0, 1),
(144, 144, 'product_tag', '', 0, 1),
(145, 145, 'product_shipping_class', '', 0, 0),
(146, 146, 'dc_vendor_shop', '', 0, 0),
(147, 147, 'product_shipping_class', '', 0, 0),
(148, 148, 'dc_vendor_shop', '', 0, 0),
(149, 149, 'product_shipping_class', '', 0, 0),
(150, 150, 'dc_vendor_shop', '', 0, 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'ederton'),
(2, 1, 'first_name', 'Ederton'),
(3, 1, 'last_name', 'Lima'),
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
(14, 1, 'dismissed_wp_pointers', 'wp496_privacy,pksn1'),
(15, 1, 'show_welcome_panel', '1'),
(66, 4, 'nickname', 'Silva Embalagens'),
(67, 4, 'first_name', 'Silva Embalagens'),
(68, 4, 'last_name', ''),
(69, 4, 'description', ''),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '504'),
(299, 8, 'nickname', 'Packpro'),
(300, 8, 'first_name', 'Packpro'),
(301, 8, 'last_name', ''),
(241, 1, 'last_update', '1542931673'),
(19, 1, 'wc_last_active', '1542931200'),
(20, 2, 'nickname', 'joaosilva'),
(21, 2, 'first_name', 'PlasticPlus Descartáveis'),
(22, 2, 'last_name', ''),
(23, 2, 'description', ''),
(24, 2, 'rich_editing', 'true'),
(25, 2, 'syntax_highlighting', 'true'),
(26, 2, 'comment_shortcuts', 'false'),
(27, 2, 'admin_color', 'fresh'),
(28, 2, 'use_ssl', '0'),
(29, 2, 'show_admin_bar_front', 'true'),
(30, 2, 'locale', ''),
(31, 2, 'wp_capabilities', 'a:1:{s:9:\"dc_vendor\";b:1;}'),
(32, 2, 'wp_user_level', '0'),
(33, 2, 'shipping_class_id', '19'),
(34, 2, '_vendor_term_id', '20'),
(35, 2, 'dismissed_wp_pointers', 'wp496_privacy'),
(36, 1, 'managenav-menuscolumnshidden', 'a:5:{i:0;s:11:\"link-target\";i:1;s:11:\"css-classes\";i:2;s:3:\"xfn\";i:3;s:11:\"description\";i:4;s:15:\"title-attribute\";}'),
(37, 1, 'metaboxhidden_nav-menus', 'a:5:{i:0;s:21:\"add-post-type-product\";i:1;s:12:\"add-post_tag\";i:2;s:15:\"add-product_cat\";i:3;s:15:\"add-product_tag\";i:4;s:18:\"add-dc_vendor_shop\";}'),
(130, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:4:{s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";a:12:{s:3:\"key\";s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";s:10:\"product_id\";i:474;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45.99000000000000198951966012828052043914794921875;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45.99000000000000198951966012828052043914794921875;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"35051070e572e47d2c26c241ab88307f\";a:12:{s:3:\"key\";s:32:\"35051070e572e47d2c26c241ab88307f\";s:10:\"product_id\";i:495;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:72;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:72;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";a:12:{s:3:\"key\";s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";s:10:\"product_id\";i:482;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:65;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:65;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}}}'),
(131, 1, 'meta-box-order_product', 'a:3:{s:4:\"side\";s:84:\"submitdiv,product_catdiv,tagsdiv-product_tag,postimagediv,woocommerce-product-images\";s:6:\"normal\";s:67:\"woocommerce-product-data,postcustom,slugdiv,postexcerpt,commentsdiv\";s:8:\"advanced\";s:0:\"\";}'),
(39, 2, 'wc_last_active', '1542931200'),
(40, 2, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:5:{s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";a:12:{s:3:\"key\";s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";s:10:\"product_id\";i:482;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:65;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:65;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";a:12:{s:3:\"key\";s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";s:10:\"product_id\";i:474;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45.99000000000000198951966012828052043914794921875;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45.99000000000000198951966012828052043914794921875;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:36;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:36;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"35051070e572e47d2c26c241ab88307f\";a:12:{s:3:\"key\";s:32:\"35051070e572e47d2c26c241ab88307f\";s:10:\"product_id\";i:495;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"e1e32e235eee1f970470a3a6658dfdd5\";a:12:{s:3:\"key\";s:32:\"e1e32e235eee1f970470a3a6658dfdd5\";s:10:\"product_id\";i:483;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:31.780000000000001136868377216160297393798828125;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:31.780000000000001136868377216160297393798828125;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:4;}}}'),
(62, 2, 'last_update', '1538514708'),
(63, 2, '_vendor_payment_mode', 'payment_mode'),
(64, 2, '_vendor_bank_account_type', 'current'),
(65, 2, '_vendor_added_product', '1'),
(41, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:12:\"179.127.54.0\";}'),
(42, 1, 'nav_menu_recently_edited', '21'),
(43, 3, 'nickname', 'pablo'),
(44, 3, 'first_name', 'Pablo'),
(45, 3, 'last_name', ''),
(46, 3, 'description', ''),
(47, 3, 'rich_editing', 'true'),
(48, 3, 'syntax_highlighting', 'true'),
(49, 3, 'comment_shortcuts', 'false'),
(50, 3, 'admin_color', 'fresh'),
(51, 3, 'use_ssl', '0'),
(52, 3, 'show_admin_bar_front', 'true'),
(53, 3, 'locale', ''),
(54, 3, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(55, 3, 'wp_user_level', '10'),
(56, 3, 'dismissed_wp_pointers', 'wp496_privacy,pksn1'),
(124, 2, 'wp_user-settings', 'mfold=f'),
(125, 2, 'wp_user-settings-time', '1533683251'),
(121, 4, 'session_tokens', 'a:1:{s:64:\"37e64a3626656cd75c07cc6e897eae16442ab052c5e860c8e807dfe3d44e7725\";a:4:{s:10:\"expiration\";i:1538702270;s:2:\"ip\";s:13:\"200.52.17.198\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/69.0.3497.100 Safari/537.36\";s:5:\"login\";i:1538529470;}}'),
(122, 4, 'wc_last_active', '1538524800'),
(123, 4, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(145, 2, 'session_tokens', 'a:1:{s:64:\"7a114eae006da573dd574455e8d78e740d4097dc74e47773ba3e56ba9ea16123\";a:4:{s:10:\"expiration\";i:1543104508;s:2:\"ip\";s:13:\"179.127.54.14\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1542931708;}}'),
(58, 3, 'wc_last_active', '1538006400'),
(59, 3, 'wp_dashboard_quick_press_last_post_id', '471'),
(60, 3, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:1:{s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";a:12:{s:3:\"key\";s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";s:10:\"product_id\";i:474;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45.99000000000000198951966012828052043914794921875;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45.99000000000000198951966012828052043914794921875;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}}}'),
(61, 3, 'community-events-location', 'a:1:{s:2:\"ip\";s:11:\"179.83.31.0\";}'),
(129, 5, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:4:{s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";a:12:{s:3:\"key\";s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";s:10:\"product_id\";i:474;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45.99000000000000198951966012828052043914794921875;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45.99000000000000198951966012828052043914794921875;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"35051070e572e47d2c26c241ab88307f\";a:12:{s:3:\"key\";s:32:\"35051070e572e47d2c26c241ab88307f\";s:10:\"product_id\";i:495;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:72;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:72;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";a:12:{s:3:\"key\";s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";s:10:\"product_id\";i:482;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:65;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:65;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}}}'),
(75, 4, 'show_admin_bar_front', 'true'),
(76, 4, 'locale', ''),
(77, 4, 'wp_capabilities', 'a:1:{s:9:\"dc_vendor\";b:1;}'),
(78, 4, 'wp_user_level', '0'),
(79, 4, 'shipping_class_id', '22'),
(171, 4, '_vendor_instagram', 'http://www.instagram.com'),
(105, 3, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(70, 4, 'rich_editing', 'true'),
(71, 4, 'syntax_highlighting', 'true'),
(72, 4, 'comment_shortcuts', 'false'),
(73, 4, 'admin_color', 'fresh'),
(74, 4, 'use_ssl', '0'),
(80, 4, '_vendor_term_id', '23'),
(81, 4, 'dismissed_wp_pointers', 'wp496_privacy'),
(82, 4, '_vendor_added_product', '1'),
(84, 2, '_vendor_commission', ''),
(85, 2, 'billing_first_name', 'João'),
(86, 2, 'billing_last_name', 'Silva Souza'),
(87, 2, 'billing_company', ''),
(88, 2, 'billing_address_1', ''),
(89, 2, 'billing_address_2', ''),
(90, 2, 'billing_city', ''),
(91, 2, 'billing_postcode', ''),
(92, 2, 'billing_country', ''),
(93, 2, 'billing_state', ''),
(94, 2, 'billing_phone', ''),
(95, 2, 'billing_email', 'joao@gmail.com'),
(96, 2, 'shipping_first_name', ''),
(97, 2, 'shipping_last_name', ''),
(98, 2, 'shipping_company', ''),
(99, 2, 'shipping_address_1', ''),
(100, 2, 'shipping_address_2', ''),
(101, 2, 'shipping_city', ''),
(102, 2, 'shipping_postcode', ''),
(103, 2, 'shipping_country', ''),
(104, 2, 'shipping_state', ''),
(244, 6, 'nickname', 'ederton1'),
(245, 6, 'first_name', ''),
(246, 6, 'last_name', ''),
(247, 6, 'description', ''),
(248, 6, 'rich_editing', 'true'),
(249, 6, 'syntax_highlighting', 'true'),
(242, 1, 'billing_first_name', 'Ederton'),
(243, 1, 'billing_last_name', 'Lima'),
(250, 6, 'comment_shortcuts', 'false'),
(251, 6, 'admin_color', 'fresh'),
(234, 4, '_vendor_banner', 'https://ederton.xyz/preview/m2distribuidora/wp-content/plugins/dc-woocommerce-multi-vendor/assets/images/banner_placeholder.jpg'),
(128, 5, 'wc_last_active', '1543190400'),
(106, 3, 'wp_user-settings-time', '1534895440'),
(107, 5, 'nickname', 'fernando'),
(108, 5, 'first_name', 'Fernando'),
(109, 5, 'last_name', ''),
(110, 5, 'description', ''),
(111, 5, 'rich_editing', 'true'),
(112, 5, 'syntax_highlighting', 'true'),
(113, 5, 'comment_shortcuts', 'false'),
(114, 5, 'admin_color', 'fresh'),
(115, 5, 'use_ssl', '0'),
(116, 5, 'show_admin_bar_front', 'true'),
(117, 5, 'locale', ''),
(118, 5, 'wp_capabilities', 'a:1:{s:13:\"administrator\";b:1;}'),
(119, 5, 'wp_user_level', '10'),
(120, 5, 'dismissed_wp_pointers', 'wp496_privacy'),
(132, 1, 'screen_layout_product', '2'),
(134, 5, 'wp_dashboard_quick_press_last_post_id', '518'),
(135, 5, 'community-events-location', 'a:1:{s:2:\"ip\";s:13:\"122.148.136.0\";}'),
(165, 4, '_vendor_state', 'Rio de Janeiro'),
(166, 4, '_vendor_city', 'Rio de Janeiro'),
(167, 4, '_vendor_postcode', '20020-030'),
(168, 4, '_vendor_fb_profile', 'http://www.facebook.com'),
(169, 4, '_vendor_twitter_profile', 'http://www.twitter.com'),
(170, 4, '_vendor_youtube', 'http://www.youtube.com'),
(136, 5, 'closedpostboxes_product', 'a:0:{}'),
(137, 5, 'metaboxhidden_product', 'a:2:{i:0;s:10:\"postcustom\";i:1;s:7:\"slugdiv\";}'),
(138, 1, 'dismissed_no_secure_connection_notice', '1'),
(139, 1, 'wp_user-settings', 'libraryContent=browse&editor=html'),
(140, 1, 'wp_user-settings-time', '1538004399'),
(164, 4, '_vendor_country', 'Brasil'),
(181, 4, 'billing_state', ''),
(182, 4, 'billing_phone', ''),
(183, 4, 'billing_email', 'pedro@pedro.com.br'),
(184, 4, 'shipping_first_name', ''),
(172, 4, '_vendor_commission', ''),
(173, 4, 'billing_first_name', 'Silva Embalagens'),
(174, 4, 'billing_last_name', ''),
(175, 4, 'billing_company', ''),
(176, 4, 'billing_address_1', ''),
(177, 4, 'billing_address_2', ''),
(178, 4, 'billing_city', ''),
(179, 4, 'billing_postcode', ''),
(180, 4, 'billing_country', ''),
(235, 4, '_vendor_message_to_buyers', ''),
(236, 4, 'timezone_string', ''),
(237, 4, 'gmt_offset', '0'),
(146, 3, 'session_tokens', 'a:6:{s:64:\"dfa5117b49bf6559d4972f59532ee99277ac02bf7281ceec8a4f7f77a5bae3f9\";a:4:{s:10:\"expiration\";i:1538181728;s:2:\"ip\";s:13:\"179.83.31.144\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1538008928;}s:64:\"8a0eabf26afc737109708983321cac822744f110730714d6de643f225e40579e\";a:4:{s:10:\"expiration\";i:1538181738;s:2:\"ip\";s:13:\"179.83.31.144\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1538008938;}s:64:\"d0b6cc389a7bd840f17fd7893754d04eb18a14866ab735145b3ae68e097e455e\";a:4:{s:10:\"expiration\";i:1538181747;s:2:\"ip\";s:13:\"179.83.31.144\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1538008947;}s:64:\"02b4258acd832aa5a6955f3d9dadc250fda43a45458a946e78cd8f094b6c1386\";a:4:{s:10:\"expiration\";i:1538181804;s:2:\"ip\";s:13:\"179.83.31.144\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1538009004;}s:64:\"91cd148e0ba57a3b6edbd15179033c4c99892d8875e807362254afa4782c6689\";a:4:{s:10:\"expiration\";i:1538181889;s:2:\"ip\";s:13:\"179.83.31.144\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1538009089;}s:64:\"b08b2f8880a833f8a8ec39c4b5fdd7cc388f09d244063d6b598c73a3ada808d4\";a:4:{s:10:\"expiration\";i:1538182120;s:2:\"ip\";s:13:\"179.83.31.144\";s:2:\"ua\";s:117:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_12_6) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/12.0 Safari/605.1.15\";s:5:\"login\";i:1538009320;}}'),
(225, 2, '_vendor_message_to_buyers', ''),
(226, 2, 'timezone_string', ''),
(227, 2, 'gmt_offset', '0'),
(228, 4, '_vendor_page_title', 'Silva Embalagens'),
(229, 4, '_vendor_page_slug', 'silva-embalagens'),
(230, 4, '_vendor_address_2', ''),
(231, 4, '_vendor_google_plus_profile', ''),
(224, 2, '_vendor_banner', 'https://ederton.xyz/preview/m2distribuidora/wp-content/plugins/dc-woocommerce-multi-vendor/assets/images/banner_placeholder.jpg'),
(185, 4, 'shipping_last_name', ''),
(186, 4, 'shipping_company', ''),
(187, 4, 'shipping_address_1', ''),
(188, 4, 'shipping_address_2', ''),
(189, 4, 'shipping_city', ''),
(190, 4, 'shipping_postcode', ''),
(147, 4, 'last_update', '1538514757'),
(148, 4, '_vendor_payment_mode', 'payment_mode'),
(149, 4, '_vendor_bank_account_type', 'current'),
(233, 4, '_vendor_image', 'https://ederton.xyz/preview/m2distribuidora/wp-content/plugins/dc-woocommerce-multi-vendor/assets/images/WP-stdavatar.png'),
(150, 2, '_vendor_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.'),
(151, 2, '_vendor_phone', '4004-7851'),
(152, 2, '_vendor_address_1', 'Rua Leonilson Pereira Silva, 658'),
(153, 2, '_vendor_country', 'Brasil'),
(154, 2, '_vendor_state', 'São Paulo'),
(155, 2, '_vendor_city', 'Ribeirão Preto'),
(156, 2, '_vendor_postcode', '13171-138'),
(157, 2, '_vendor_fb_profile', 'http://www.facebook.com'),
(158, 2, '_vendor_twitter_profile', 'http://www.twitter.com'),
(159, 2, '_vendor_youtube', 'http://www.youtube.com'),
(160, 2, '_vendor_instagram', 'http://www.instagram.com'),
(161, 4, '_vendor_description', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean eget nulla ultrices, facilisis leo at, accumsan lorem. Nam nisi purus, vulputate et dui non, finibus rutrum justo. Integer ut nunc vel sapien elementum sodales. Sed tempor sem eu mauris lacinia facilisis. Donec dictum massa eget pretium pretium. Nullam in nulla non neque pulvinar mattis. Maecenas eu lacus turpis. Mauris non nisi eget quam vulputate commodo at nec libero. Praesent porttitor leo sit amet aliquam commodo.'),
(162, 4, '_vendor_phone', '4004-1234'),
(163, 4, '_vendor_address_1', 'Rua João Pedro Pereira, 897'),
(191, 4, 'shipping_country', ''),
(192, 4, 'shipping_state', ''),
(218, 2, '_vendor_page_title', 'PlasticPlus Descartáveis'),
(219, 2, '_vendor_page_slug', 'plasticplus-descartaveis'),
(220, 2, '_vendor_address_2', ''),
(221, 2, '_vendor_google_plus_profile', ''),
(222, 2, '_vendor_linkdin_profile', ''),
(223, 2, '_vendor_image', 'https://ederton.xyz/preview/m2distribuidora/wp-content/plugins/dc-woocommerce-multi-vendor/assets/images/WP-stdavatar.png'),
(214, 2, 'valor_minimo_frete', '150'),
(215, 2, '_valor_minimo_frete', 'field_5bac37adfa57c'),
(216, 4, 'valor_minimo_frete', '80'),
(217, 4, '_valor_minimo_frete', 'field_5bac37adfa57c'),
(232, 4, '_vendor_linkdin_profile', ''),
(193, 3, 'billing_first_name', 'Pablo'),
(194, 3, 'billing_last_name', ''),
(195, 3, 'billing_company', ''),
(196, 3, 'billing_address_1', ''),
(197, 3, 'billing_address_2', ''),
(198, 3, 'billing_city', ''),
(199, 3, 'billing_postcode', ''),
(200, 3, 'billing_country', ''),
(201, 3, 'billing_state', ''),
(202, 3, 'billing_phone', ''),
(203, 3, 'billing_email', 'pablo@di20.com.br'),
(204, 3, 'shipping_first_name', ''),
(205, 3, 'shipping_last_name', ''),
(206, 3, 'shipping_company', ''),
(207, 3, 'shipping_address_1', ''),
(208, 3, 'shipping_address_2', ''),
(209, 3, 'shipping_city', ''),
(210, 3, 'shipping_postcode', ''),
(211, 3, 'shipping_country', ''),
(212, 3, 'shipping_state', ''),
(213, 3, 'last_update', '1538009289'),
(239, 1, 'wp_user_avatar', '499'),
(240, 1, 'fb_user_access_token', '{\"access_token\":\"EAAbaCjgvrPoBAFU6VjfBEVLA92q5tVCAJQDz0reG9xvWoWvO95VDTtu67l32XvUKk5OEqPij7bkHAf36dEyHC1XyqKfaJZCpwCpk4M5li531fBmGtrd7K8HRLDluOJXsr1GZAZBqZBZAAMBgpwVtYrbkuWT7fZC7hsMZBZCCpAwo2QZDZD\",\"token_type\":\"bearer\",\"expires_in\":5182773,\"created\":1538610072}'),
(252, 6, 'use_ssl', '0'),
(253, 6, 'show_admin_bar_front', 'true'),
(254, 6, 'locale', ''),
(255, 6, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(256, 6, 'wp_user_level', '0'),
(261, 1, 'session_tokens', 'a:7:{s:64:\"990f566a29ba8e8fb63899d0fce89a45b9ac9eaea274a7df8227b7c696b72240\";a:4:{s:10:\"expiration\";i:1543062449;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1542889649;}s:64:\"9a3939f162148353c3fe78492ba1d4b9fb0d1177be82ef3c7da77affecd6a3aa\";a:4:{s:10:\"expiration\";i:1543070595;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1542897795;}s:64:\"ff50005cde83745b66e9f8901b7db6764d9ce1b8e01c721c1a165a21e996b4da\";a:4:{s:10:\"expiration\";i:1543083640;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1542910840;}s:64:\"0c4830fa94c5fff56c6a0c66d83be7709be4544d5ef34a797e67bfff6f302cc1\";a:4:{s:10:\"expiration\";i:1543092834;s:2:\"ip\";s:13:\"179.127.54.14\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1542920034;}s:64:\"5339bef84518c2ecd1b3807aa12f937106b83972bc82f822a95dd094663a2197\";a:4:{s:10:\"expiration\";i:1543092849;s:2:\"ip\";s:13:\"179.127.54.14\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1542920049;}s:64:\"4408e03a68a0d3857f39a6bff5b7ad6ae2420dd30c6fb960b7be2a873b6d3b7f\";a:4:{s:10:\"expiration\";i:1543094189;s:2:\"ip\";s:13:\"179.127.54.14\";s:2:\"ua\";s:73:\"Mozilla/5.0 (Windows NT 10.0; WOW64; rv:64.0) Gecko/20100101 Firefox/64.0\";s:5:\"login\";i:1542921389;}s:64:\"d5a4280a402bfc5c5b28e9b394ad1e77d40fdcbf9009c73b9c7efad9bea6c308\";a:4:{s:10:\"expiration\";i:1543105644;s:2:\"ip\";s:13:\"179.127.54.14\";s:2:\"ua\";s:115:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.110 Safari/537.36\";s:5:\"login\";i:1542932844;}}'),
(258, 6, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:0:{}}'),
(259, 6, 'wc_last_active', '1539129600'),
(262, 7, 'nickname', 'eu'),
(263, 7, 'first_name', ''),
(264, 7, 'last_name', ''),
(265, 7, 'description', ''),
(266, 7, 'rich_editing', 'true'),
(267, 7, 'syntax_highlighting', 'true'),
(268, 7, 'comment_shortcuts', 'false'),
(269, 7, 'admin_color', 'fresh'),
(270, 7, 'use_ssl', '0'),
(271, 7, 'show_admin_bar_front', 'true'),
(272, 7, 'locale', ''),
(273, 7, 'wp_capabilities', 'a:1:{s:8:\"customer\";b:1;}'),
(274, 7, 'wp_user_level', '0'),
(281, 1, 'shipping_address_2', 'Vila Santista'),
(282, 1, 'shipping_city', 'Bauru'),
(283, 1, 'shipping_state', 'SP'),
(284, 1, 'shipping_postcode', '17054-610'),
(276, 7, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:4:{s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";a:12:{s:3:\"key\";s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";s:10:\"product_id\";i:474;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:91.980000000000004;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:91.980000000000004;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";a:12:{s:3:\"key\";s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";s:10:\"product_id\";i:482;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:65;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:65;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:36;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:36;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"e1e32e235eee1f970470a3a6658dfdd5\";a:12:{s:3:\"key\";s:32:\"e1e32e235eee1f970470a3a6658dfdd5\";s:10:\"product_id\";i:483;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:15.890000000000001;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:15.890000000000001;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:4;}}}'),
(277, 7, 'wc_last_active', '1539993600'),
(278, 1, 'shipping_first_name', 'Ederton'),
(279, 1, 'shipping_last_name', 'Lima'),
(280, 1, 'shipping_address_1', 'Rua João Urias Batista'),
(285, 1, 'shipping_country', 'BR'),
(286, 1, 'billing_address_1', 'Rua João Urias Batista'),
(287, 1, 'billing_address_2', 'Vila Santista'),
(288, 1, 'billing_city', 'Bauru'),
(289, 1, 'billing_state', 'SP'),
(290, 1, 'billing_postcode', '17054-610'),
(291, 1, 'billing_country', 'BR'),
(292, 1, 'billing_email', 'edertton@gmail.com'),
(293, 1, 'billing_phone', '14981225949'),
(297, 1, '_woocommerce_persistent_cart_1', 'a:1:{s:4:\"cart\";a:2:{s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:36;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:36;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"35051070e572e47d2c26c241ab88307f\";a:12:{s:3:\"key\";s:32:\"35051070e572e47d2c26c241ab88307f\";s:10:\"product_id\";i:495;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}}}'),
(298, 1, 'paying_customer', '1'),
(294, 5, 'session_tokens', 'a:1:{s:64:\"8c265a203697441e2e9dcbf33053de896ec7ad27f7a271d80b7773dc7a87b5df\";a:4:{s:10:\"expiration\";i:1543294666;s:2:\"ip\";s:15:\"122.148.136.175\";s:2:\"ua\";s:121:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_13_6) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/70.0.3538.102 Safari/537.36\";s:5:\"login\";i:1543121866;}}'),
(295, 1, 'shipping_method', 'a:2:{i:2;s:36:\"5259bca0-5466-4dcf-b7fd-5a02900629af\";i:4;s:36:\"fd05e6f9-df9e-4a45-ae6d-3e8f958c0043\";}'),
(302, 8, 'description', ''),
(303, 8, 'rich_editing', 'true'),
(304, 8, 'syntax_highlighting', 'true'),
(305, 8, 'comment_shortcuts', 'false'),
(306, 8, 'admin_color', 'fresh'),
(307, 8, 'use_ssl', '0'),
(308, 8, 'show_admin_bar_front', 'true'),
(309, 8, 'locale', ''),
(310, 8, 'wp_capabilities', 'a:1:{s:9:\"dc_vendor\";b:1;}'),
(311, 8, 'wp_user_level', '0'),
(312, 8, 'shipping_class_id', '145'),
(313, 8, '_vendor_term_id', '146'),
(314, 8, 'dismissed_wp_pointers', 'wp496_privacy'),
(315, 8, 'last_update', '1543122488'),
(316, 8, '_vendor_payment_mode', 'payment_mode'),
(317, 8, '_vendor_bank_account_type', 'current'),
(318, 9, 'nickname', 'Auspack'),
(319, 9, 'first_name', 'Auspack'),
(320, 9, 'last_name', ''),
(321, 9, 'description', ''),
(322, 9, 'rich_editing', 'true'),
(323, 9, 'syntax_highlighting', 'true'),
(324, 9, 'comment_shortcuts', 'false'),
(325, 9, 'admin_color', 'fresh'),
(326, 9, 'use_ssl', '0'),
(327, 9, 'show_admin_bar_front', 'true'),
(328, 9, 'locale', ''),
(329, 9, 'wp_capabilities', 'a:1:{s:9:\"dc_vendor\";b:1;}'),
(330, 9, 'wp_user_level', '0'),
(331, 9, 'shipping_class_id', '147'),
(332, 9, '_vendor_term_id', '148'),
(333, 9, 'dismissed_wp_pointers', 'wp496_privacy'),
(334, 10, 'nickname', 'Kent'),
(335, 10, 'first_name', 'Kent'),
(336, 10, 'last_name', ''),
(337, 10, 'description', ''),
(338, 10, 'rich_editing', 'true'),
(339, 10, 'syntax_highlighting', 'true'),
(340, 10, 'comment_shortcuts', 'false'),
(341, 10, 'admin_color', 'fresh'),
(342, 10, 'use_ssl', '0'),
(343, 10, 'show_admin_bar_front', 'true'),
(344, 10, 'locale', ''),
(345, 10, 'wp_capabilities', 'a:1:{s:9:\"dc_vendor\";b:1;}'),
(346, 10, 'wp_user_level', '0'),
(347, 10, 'shipping_class_id', '149'),
(348, 10, '_vendor_term_id', '150'),
(349, 10, 'dismissed_wp_pointers', 'wp496_privacy');

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
  `user_registered` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_activation_key` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'ederton', '$P$BKXw1/guoQJYOC2IzSdEjVdnMftBDD0', 'ederton', 'edertton@gmail.com', '', '2018-07-04 14:45:17', '', 0, 'Ederton'),
(2, 'joaosilva', '$P$BtARPil3OrZdLzRCHfYRORFQFEa4gx1', 'plasticplus', 'joao@gmail.com', '', '2018-07-05 13:00:17', '', 0, 'PlasticPlus Descartáveis'),
(3, 'pablo', '$P$BkAigVLSP6Dhx1fCW1s5VCgh.xvf.p/', 'pablo', 'pablo@di20.com.br', '', '2018-07-05 13:54:21', '1542930465:$P$BahkqDCmm86QjO2XnUNEgYzBzdHK0.1', 0, 'Pablo'),
(4, 'pedro', '$P$BV1LqkfvT09LR25C0AF7jkj/aeXkAV1', 'silvaembalagens', 'pedro@pedro.com.br', '', '2018-07-12 18:55:36', '1531421736:$P$BHLY5pzoRATLrLNj1M0RaHv3Xb9ysX.', 0, 'Silva Embalagens'),
(5, 'fernando', '$P$BwajL1M/zrQZbvMVI/59hUXtWd.25z.', 'fernando', 'melofernandoaugusto@gmail.com', '', '2018-08-07 22:47:52', '1533682072:$P$BsVg157gwLZjeKxZR/xKQPmJHX2yad1', 0, 'Fernando'),
(6, 'ederton1', '$P$BZSVD.GPS38P34Sq1O1z/KRzuQIWqq/', 'ederton1', 'ederton@hotmail.com', '', '2018-10-10 00:53:28', '', 0, 'ederton1'),
(7, 'eu', '$P$B0ESVYDH3J60Kp8Iya/Tukq39SIjtP.', 'eu', 'eu@ederton.xyz', '', '2018-10-20 00:47:08', '', 0, 'eu'),
(8, 'Packpro', '$P$Bwe3YWNnPtAgp/aKxK5a5h/QGFc/qC/', 'packpro', 'packpro.hubsty@gmail.com', '', '2018-11-25 05:01:32', '', 0, 'Packpro'),
(9, 'Auspack', '$P$BkhcOvxvR9/z2TJ6rqH910HXXhydjY1', 'auspack', 'Auspack.Hubsty@gmail.com', '', '2018-11-25 05:03:43', '', 0, 'Auspack'),
(10, 'Kent', '$P$B5BGK2wzeBOOvqaQHHCAgiU1duITic0', 'kent-packaging', 'kent.hubsty@gmail.com', '', '2018-11-25 05:04:11', '', 0, 'Kent');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wcmp_cust_answers`
--

CREATE TABLE `wp_wcmp_cust_answers` (
  `ans_ID` bigint(20) NOT NULL,
  `ques_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ans_details` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ans_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ans_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `ans_vote` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wcmp_cust_questions`
--

CREATE TABLE `wp_wcmp_cust_questions` (
  `ques_ID` bigint(20) NOT NULL,
  `product_ID` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ques_details` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ques_by` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `ques_created` timestamp NOT NULL DEFAULT current_timestamp(),
  `ques_vote` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wcmp_products_map`
--

CREATE TABLE `wp_wcmp_products_map` (
  `ID` bigint(20) NOT NULL,
  `product_title` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_ids` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wcmp_vendor_orders`
--

CREATE TABLE `wp_wcmp_vendor_orders` (
  `ID` bigint(20) NOT NULL,
  `order_id` bigint(20) NOT NULL,
  `commission_id` bigint(20) NOT NULL,
  `commission_status` varchar(100) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT 'unpaid',
  `commission_paid_date` timestamp NULL DEFAULT NULL,
  `vendor_id` bigint(20) NOT NULL,
  `shipping_status` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_id` bigint(20) NOT NULL,
  `line_item_type` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `product_id` bigint(20) NOT NULL,
  `variation_id` bigint(20) NOT NULL DEFAULT 0,
  `quantity` bigint(20) NOT NULL DEFAULT 1,
  `commission_amount` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shipping` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `shipping_tax_amount` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '0',
  `is_trashed` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_wcmp_vendor_orders`
--

INSERT INTO `wp_wcmp_vendor_orders` (`ID`, `order_id`, `commission_id`, `commission_status`, `commission_paid_date`, `vendor_id`, `shipping_status`, `order_item_id`, `line_item_type`, `product_id`, `variation_id`, `quantity`, `commission_amount`, `shipping`, `tax`, `shipping_tax_amount`, `is_trashed`, `created`) VALUES
(1, 519, 520, 'unpaid', NULL, 2, '0', 1, 'product', 474, 0, 1, '4.599', '569.42', '0', '0', '', '2018-11-23 00:01:25'),
(2, 519, 520, 'unpaid', NULL, 2, '0', 2, 'product', 482, 0, 1, '6.5', '569.42', '0', '0', '', '2018-11-23 00:01:25'),
(3, 519, 520, 'unpaid', NULL, 2, '0', 3, 'product', 496, 0, 1, '3.6', '569.42', '0', '0', '', '2018-11-23 00:01:25'),
(4, 519, 520, 'unpaid', NULL, 2, '0', 4, 'product', 495, 0, 1, '8.9', '569.42', '0', '0', '', '2018-11-23 00:01:25'),
(5, 519, 521, 'unpaid', NULL, 4, '0', 5, 'product', 483, 0, 2, '3.178', '31.23', '0', '0', '', '2018-11-23 00:01:25');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wcmp_visitors_stats`
--

CREATE TABLE `wp_wcmp_visitors_stats` (
  `ID` bigint(20) NOT NULL,
  `vendor_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_cookie` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_id` varchar(191) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `ip` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lat` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `lon` varchar(60) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `city` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `regionCode` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `region` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `countryCode` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `country` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `isp` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `timezone` varchar(255) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_wcmp_visitors_stats`
--

INSERT INTO `wp_wcmp_visitors_stats` (`ID`, `vendor_id`, `user_id`, `user_cookie`, `session_id`, `ip`, `lat`, `lon`, `city`, `zip`, `regionCode`, `region`, `countryCode`, `country`, `isp`, `timezone`, `created`) VALUES
(1, 2, 2, 'wcmp_cookie5b3eae6a46c46', '', '177.42.49.73', '-27.5904', '-48.5758', 'Florianópolis', '88000', 'SC', 'Santa Catarina', 'BR', 'Brazil', 'Vivo', 'America/Sao_Paulo', '2018-10-06 18:55:44'),
(2, 4, 1, 'wcmp_cookie5b6a05793e05c', '', '179.127.54.73', '-22.3239', '-49.078', 'Bauru', '', 'SP', 'Sao Paulo', 'BR', 'Brazil', 'Ultrawave Telecom Eireli', 'America/Sao_Paulo', '2018-10-05 01:50:13'),
(3, 2, 0, 'wcmp_cookie5bf71c77f2c5d', 'bbetd6op8h01f2mqrgq90r83c5', '179.127.54.14', '-22.2635', '-49.1364', 'Bauru', '17000', 'SP', 'Sao Paulo', 'BR', 'Brazil', 'Ultrawave Telecom Eireli', 'America/Sao_Paulo', '2018-11-22 21:15:51'),
(4, 2, 0, 'wcmp_cookie5bf71294f02b4', '8f2en3n1m9kk6muos18tgt6g07', '122.148.136.175', '-33.9032', '151.1518', 'Marrickville', '2204', 'NSW', 'New South Wales', 'AU', 'Australia', 'Dodo Australia', 'Australia/Sydney', '2018-11-22 23:24:48'),
(5, 4, 0, 'wcmp_cookie5bf73ee259aeb', 'ff6o5hkndbsoru67mfoiihclk2', '179.180.168.54', '-27.5904', '-48.5758', 'Florianópolis', '88000', 'SC', 'Santa Catarina', 'BR', 'Brazil', 'Vivo', 'America/Sao_Paulo', '2018-11-22 23:43:16'),
(6, 2, 0, 'wcmp_cookie5bf73f1ddd8da', '42dhcgklpum6s358u104u62uj1', '122.148.136.175', '-33.9032', '151.1518', 'Marrickville', '2204', 'NSW', 'New South Wales', 'AU', 'Australia', 'Dodo Australia', 'Australia/Sydney', '2018-11-23 01:27:24'),
(7, 2, 0, 'wcmp_cookie5bf73ee259aeb', 'ff6o5hkndbsoru67mfoiihclk2', '179.180.168.54', '-27.5904', '-48.5758', 'Florianópolis', '88000', 'SC', 'Santa Catarina', 'BR', 'Brazil', 'Vivo', 'America/Sao_Paulo', '2018-11-23 01:29:27'),
(8, 4, 1, 'wcmp_cookie5bf69775ca56d', '1ma411b7759dv3f350piqd9ig3', '179.127.54.14', '-22.2635', '-49.1364', 'Bauru', '17000', 'SP', 'Sao Paulo', 'BR', 'Brazil', 'Ultrawave Telecom Eireli', 'America/Sao_Paulo', '2018-11-23 01:09:40'),
(9, 4, 0, 'wcmp_cookie5bf757b9cf835', 'h9hrv07tv9gpsdrcod7ivobnb3', '122.148.136.175', '-33.9032', '151.1518', 'Marrickville', '2204', 'NSW', 'New South Wales', 'AU', 'Australia', 'Dodo Australia', 'Australia/Sydney', '2018-11-23 01:33:00'),
(10, 2, 1, 'wcmp_cookie5bf69775ca56d', '1ma411b7759dv3f350piqd9ig3', '179.127.54.14', '-22.2635', '-49.1364', 'Bauru', '17000', 'SP', 'Sao Paulo', 'BR', 'Brazil', 'Ultrawave Telecom Eireli', 'America/Sao_Paulo', '2018-11-23 01:30:42'),
(11, 2, 0, 'wcmp_cookie5bf757b9cf835', 'h9hrv07tv9gpsdrcod7ivobnb3', '122.148.136.175', '-33.9032', '151.1518', 'Marrickville', '2204', 'NSW', 'New South Wales', 'AU', 'Australia', 'Dodo Australia', 'Australia/Sydney', '2018-11-23 04:23:33'),
(12, 2, 0, 'wcmp_cookie5bf8754ddbff9', '4f4vmo71qo3caghov90r9i4n05', '122.148.136.175', '-33.9032', '151.1518', 'Marrickville', '2204', 'NSW', 'New South Wales', 'AU', 'Australia', 'Dodo Australia', 'Australia/Sydney', '2018-11-23 21:48:40');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_520_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `delivery_url` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `secret` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `topic` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_modified_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `api_version` smallint(4) NOT NULL,
  `failure_count` smallint(10) NOT NULL DEFAULT 0,
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_api_keys`
--

INSERT INTO `wp_woocommerce_api_keys` (`key_id`, `user_id`, `description`, `permissions`, `consumer_key`, `consumer_secret`, `nonces`, `truncated_key`, `last_access`) VALUES
(1, 1, 'Easyship', 'read_write', '569e3d657e7f1778e320c37dddcfa670aab034b067433ba3ba4e812d75d5c6b5', 'cs_e8fa0f7beb03ce27a449188dc5bc186015c87d0d', NULL, '685d361', '2018-11-25 18:43:59');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_attribute_taxonomies`
--

INSERT INTO `wp_woocommerce_attribute_taxonomies` (`attribute_id`, `attribute_name`, `attribute_label`, `attribute_type`, `attribute_orderby`, `attribute_public`) VALUES
(1, 'codigo-fornecedor', 'Código Fornecedor', 'select', 'menu_order', 0),
(2, 'cores', 'Cores', 'select', 'menu_order', 0),
(3, 'tipo-de-embalagem', 'Tipo de embalagem', 'select', 'menu_order', 0),
(4, 'qtd-da-embalagem', 'Qtd. da embalagem', 'select', 'menu_order', 0),
(5, 'diametro', 'Diâmetro', 'select', 'menu_order', 0),
(6, 'altura', 'Altura', 'select', 'menu_order', 0),
(7, 'largura', 'Largura', 'select', 'menu_order', 0),
(8, 'volume', 'Volume', 'select', 'menu_order', 0),
(9, 'material', 'Material', 'select', 'menu_order', 0),
(10, 'corpo', 'Corpo', 'select', 'menu_order', 1),
(11, 'tempo-de-entrega', 'Tempo de entrega', 'select', 'menu_order', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_order_itemmeta`
--

INSERT INTO `wp_woocommerce_order_itemmeta` (`meta_id`, `order_item_id`, `meta_key`, `meta_value`) VALUES
(1, 1, '_product_id', '474'),
(2, 1, '_variation_id', '0'),
(3, 1, '_qty', '1'),
(4, 1, '_tax_class', ''),
(5, 1, '_line_subtotal', '45.99'),
(6, 1, '_line_subtotal_tax', '0'),
(7, 1, '_line_total', '45.99'),
(8, 1, '_line_tax', '0'),
(9, 1, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(10, 2, '_product_id', '482'),
(11, 2, '_variation_id', '0'),
(12, 2, '_qty', '1'),
(13, 2, '_tax_class', ''),
(14, 2, '_line_subtotal', '65'),
(15, 2, '_line_subtotal_tax', '0'),
(16, 2, '_line_total', '65'),
(17, 2, '_line_tax', '0'),
(18, 2, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(19, 3, '_product_id', '496'),
(20, 3, '_variation_id', '0'),
(21, 3, '_qty', '1'),
(22, 3, '_tax_class', ''),
(23, 3, '_line_subtotal', '36'),
(24, 3, '_line_subtotal_tax', '0'),
(25, 3, '_line_total', '36'),
(26, 3, '_line_tax', '0'),
(27, 3, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(28, 4, '_product_id', '495'),
(29, 4, '_variation_id', '0'),
(30, 4, '_qty', '1'),
(31, 4, '_tax_class', ''),
(32, 4, '_line_subtotal', '89'),
(33, 4, '_line_subtotal_tax', '0'),
(34, 4, '_line_total', '89'),
(35, 4, '_line_tax', '0'),
(36, 4, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(37, 5, '_product_id', '483'),
(38, 5, '_variation_id', '0'),
(39, 5, '_qty', '2'),
(40, 5, '_tax_class', ''),
(41, 5, '_line_subtotal', '31.78'),
(42, 5, '_line_subtotal_tax', '0'),
(43, 5, '_line_total', '31.78'),
(44, 5, '_line_tax', '0'),
(45, 5, '_line_tax_data', 'a:2:{s:5:\"total\";a:0:{}s:8:\"subtotal\";a:0:{}}'),
(46, 6, 'method_id', 'easyship'),
(47, 6, 'instance_id', '9'),
(48, 6, 'cost', '2277.66'),
(49, 6, 'total_tax', '0'),
(50, 6, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(51, 6, 'vendor_id', '2'),
(52, 6, 'package_qty', '4'),
(53, 7, 'method_id', 'easyship'),
(54, 7, 'instance_id', '9'),
(55, 7, 'cost', '31.23'),
(56, 7, 'total_tax', '0'),
(57, 7, 'taxes', 'a:1:{s:5:\"total\";a:0:{}}'),
(58, 7, 'vendor_id', '4'),
(59, 7, 'package_qty', '2');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_order_items`
--

INSERT INTO `wp_woocommerce_order_items` (`order_item_id`, `order_item_name`, `order_item_type`, `order_id`) VALUES
(1, 'Copo Genérico Meiwa 300ml', 'line_item', 519),
(2, 'Copo Genérico Meiwa 500ml', 'line_item', 519),
(3, 'Copo Genérico Meiwa 50ml', 'line_item', 519),
(4, 'Copo Genérico Meiwa 80ml', 'line_item', 519),
(5, 'Copo Genérico Meiwa 150ml', 'line_item', 519),
(6, 'UPS - Express Saver B2C (3-5 working days) Estimated BRL 526.47 tax & duty due on delivery. Handling fees may apply', 'shipping', 519),
(7, 'Australia Post - Postal Standard BNE (8-12 working days) Estimated BRL 68.5 tax & duty due on delivery. Handling fees may apply', 'shipping', 519);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_520_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_520_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(3632, '1', 'a:11:{s:4:\"cart\";s:852:\"a:2:{s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:36;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:36;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"35051070e572e47d2c26c241ab88307f\";a:12:{s:3:\"key\";s:32:\"35051070e572e47d2c26c241ab88307f\";s:10:\"product_id\";i:495;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}}\";s:11:\"cart_totals\";s:412:\"a:15:{s:8:\"subtotal\";s:6:\"125.00\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:7:\"2209.75\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"125.00\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:7:\"2334.75\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_2\";s:495:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_6e5d94957b25d714d5aa46fddcc86821\";s:5:\"rates\";a:1:{s:36:\"5259bca0-5466-4dcf-b7fd-5a02900629af\";O:16:\"WC_Shipping_Rate\":2:{s:7:\"\0*\0data\";a:6:{s:2:\"id\";s:36:\"5259bca0-5466-4dcf-b7fd-5a02900629af\";s:9:\"method_id\";s:8:\"easyship\";s:11:\"instance_id\";i:9;s:5:\"label\";s:114:\"UPS - Express Saver B2C (3-5 working days) Estimated BRL 463.6 tax & duty due on delivery. Handling fees may apply\";s:4:\"cost\";s:7:\"2209.75\";s:5:\"taxes\";a:0:{}}s:12:\"\0*\0meta_data\";a:0:{}}}}\";s:25:\"previous_shipping_methods\";s:64:\"a:1:{i:2;a:1:{i:0;s:36:\"5259bca0-5466-4dcf-b7fd-5a02900629af\";}}\";s:23:\"chosen_shipping_methods\";s:54:\"a:1:{i:2;s:36:\"5259bca0-5466-4dcf-b7fd-5a02900629af\";}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:2;i:1;}\";s:8:\"customer\";s:922:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:25:\"2018-11-22T22:07:53-02:00\";s:8:\"postcode\";s:9:\"17054-610\";s:4:\"city\";s:5:\"Bauru\";s:9:\"address_1\";s:23:\"Rua João Urias Batista\";s:7:\"address\";s:23:\"Rua João Urias Batista\";s:9:\"address_2\";s:13:\"Vila Santista\";s:5:\"state\";s:2:\"SP\";s:7:\"country\";s:2:\"BR\";s:17:\"shipping_postcode\";s:9:\"17054-610\";s:13:\"shipping_city\";s:5:\"Bauru\";s:18:\"shipping_address_1\";s:23:\"Rua João Urias Batista\";s:16:\"shipping_address\";s:23:\"Rua João Urias Batista\";s:18:\"shipping_address_2\";s:13:\"Vila Santista\";s:14:\"shipping_state\";s:2:\"SP\";s:16:\"shipping_country\";s:2:\"BR\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:7:\"Ederton\";s:9:\"last_name\";s:4:\"Lima\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:11:\"14981225949\";s:5:\"email\";s:18:\"edertton@gmail.com\";s:19:\"shipping_first_name\";s:7:\"Ederton\";s:18:\"shipping_last_name\";s:4:\"Lima\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1543351435),
(3633, '5', 'a:12:{s:22:\"mailchimp_landing_site\";s:73:\"https://ederton.xyz/preview/hubsty/preview/hubsty/wp-admin/admin-ajax.php\";s:4:\"cart\";s:1794:\"a:4:{s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";a:12:{s:3:\"key\";s:32:\"25ddc0f8c9d3e22e03d3076f98d83cb2\";s:10:\"product_id\";i:474;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:45.99000000000000198951966012828052043914794921875;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:45.99000000000000198951966012828052043914794921875;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"35051070e572e47d2c26c241ab88307f\";a:12:{s:3:\"key\";s:32:\"35051070e572e47d2c26c241ab88307f\";s:10:\"product_id\";i:495;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:89;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:89;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"b534ba68236ba543ae44b22bd110a1d6\";a:12:{s:3:\"key\";s:32:\"b534ba68236ba543ae44b22bd110a1d6\";s:10:\"product_id\";i:496;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:2;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:72;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:72;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";a:12:{s:3:\"key\";s:32:\"f770b62bc8f42a0b66751fe636fc6eb0\";s:10:\"product_id\";i:482;s:12:\"variation_id\";i:0;s:9:\"variation\";a:0:{}s:8:\"quantity\";i:1;s:9:\"data_hash\";s:32:\"b5c1d5ca8bae6d4896cf1807cdf763f0\";s:13:\"line_tax_data\";a:2:{s:8:\"subtotal\";a:0:{}s:5:\"total\";a:0:{}}s:13:\"line_subtotal\";d:65;s:17:\"line_subtotal_tax\";i:0;s:10:\"line_total\";d:65;s:8:\"line_tax\";i:0;s:7:\"sold_by\";i:2;}}\";s:11:\"cart_totals\";s:408:\"a:15:{s:8:\"subtotal\";s:6:\"271.99\";s:12:\"subtotal_tax\";d:0;s:14:\"shipping_total\";s:4:\"0.00\";s:12:\"shipping_tax\";d:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";d:0;s:12:\"discount_tax\";d:0;s:19:\"cart_contents_total\";s:6:\"271.99\";s:17:\"cart_contents_tax\";d:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";s:4:\"0.00\";s:7:\"fee_tax\";d:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";s:6:\"271.99\";s:9:\"total_tax\";d:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:22:\"shipping_for_package_2\";s:92:\"a:2:{s:12:\"package_hash\";s:40:\"wc_ship_ec0ebee0f24930acfa31c7098fd412c3\";s:5:\"rates\";a:0:{}}\";s:25:\"previous_shipping_methods\";s:16:\"a:1:{i:2;a:0:{}}\";s:23:\"chosen_shipping_methods\";s:14:\"a:1:{i:2;b:0;}\";s:22:\"shipping_method_counts\";s:14:\"a:1:{i:2;i:0;}\";s:8:\"customer\";s:717:\"a:26:{s:2:\"id\";s:1:\"5\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"AU\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"AU\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:29:\"melofernandoaugusto@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1543356817);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_shipping_zones`
--

INSERT INTO `wp_woocommerce_shipping_zones` (`zone_id`, `zone_name`, `zone_order`) VALUES
(3, 'Entrega', 0);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_shipping_zone_locations`
--

INSERT INTO `wp_woocommerce_shipping_zone_locations` (`location_id`, `zone_id`, `location_code`, `location_type`) VALUES
(7, 3, 'AU', 'country'),
(8, 3, 'BR', 'country');

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Extraindo dados da tabela `wp_woocommerce_shipping_zone_methods`
--

INSERT INTO `wp_woocommerce_shipping_zone_methods` (`zone_id`, `instance_id`, `method_id`, `method_order`, `is_enabled`) VALUES
(0, 2, 'flat_rate', 1, 0),
(3, 8, 'flat_rate', 1, 0),
(0, 6, 'correios-pac', 2, 1),
(0, 7, 'correios-sedex', 3, 1),
(3, 9, 'easyship', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_520_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_520_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_520_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `wp_apsl_users_social_profile_details`
--
ALTER TABLE `wp_apsl_users_social_profile_details`
  ADD UNIQUE KEY `id` (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_name` (`provider_name`);

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
  ADD KEY `comment_author_email` (`comment_author_email`(10)),
  ADD KEY `woo_idx_comment_type` (`comment_type`);

--
-- Indexes for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_pmxi_files`
--
ALTER TABLE `wp_pmxi_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_history`
--
ALTER TABLE `wp_pmxi_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_images`
--
ALTER TABLE `wp_pmxi_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_imports`
--
ALTER TABLE `wp_pmxi_imports`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_pmxi_posts`
--
ALTER TABLE `wp_pmxi_posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `import_id` (`import_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `wp_pmxi_templates`
--
ALTER TABLE `wp_pmxi_templates`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `wp_queue`
--
ALTER TABLE `wp_queue`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wp_social_users`
--
ALTER TABLE `wp_social_users`
  ADD KEY `ID` (`ID`,`type`);

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
-- Indexes for table `wp_wcmp_cust_answers`
--
ALTER TABLE `wp_wcmp_cust_answers`
  ADD PRIMARY KEY (`ans_ID`),
  ADD UNIQUE KEY `ques_id` (`ques_ID`);

--
-- Indexes for table `wp_wcmp_cust_questions`
--
ALTER TABLE `wp_wcmp_cust_questions`
  ADD PRIMARY KEY (`ques_ID`);

--
-- Indexes for table `wp_wcmp_products_map`
--
ALTER TABLE `wp_wcmp_products_map`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `wp_wcmp_vendor_orders`
--
ALTER TABLE `wp_wcmp_vendor_orders`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `vendor_orders` (`order_id`,`vendor_id`,`commission_id`,`order_item_id`);

--
-- Indexes for table `wp_wcmp_visitors_stats`
--
ALTER TABLE `wp_wcmp_visitors_stats`
  ADD PRIMARY KEY (`ID`),
  ADD UNIQUE KEY `visitor` (`vendor_id`,`session_id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `user_cookie` (`user_cookie`(191)),
  ADD KEY `session_id` (`session_id`),
  ADD KEY `ip` (`ip`);

--
-- Indexes for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indexes for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indexes for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indexes for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indexes for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indexes for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_key`),
  ADD UNIQUE KEY `session_id` (`session_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indexes for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indexes for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indexes for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indexes for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `wp_apsl_users_social_profile_details`
--
ALTER TABLE `wp_apsl_users_social_profile_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_failed_jobs`
--
ALTER TABLE `wp_failed_jobs`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5339;

--
-- AUTO_INCREMENT for table `wp_pmxi_files`
--
ALTER TABLE `wp_pmxi_files`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_pmxi_history`
--
ALTER TABLE `wp_pmxi_history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_pmxi_images`
--
ALTER TABLE `wp_pmxi_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `wp_pmxi_imports`
--
ALTER TABLE `wp_pmxi_imports`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `wp_pmxi_posts`
--
ALTER TABLE `wp_pmxi_posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `wp_pmxi_templates`
--
ALTER TABLE `wp_pmxi_templates`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12251;

--
-- AUTO_INCREMENT for table `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=524;

--
-- AUTO_INCREMENT for table `wp_queue`
--
ALTER TABLE `wp_queue`
  MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=151;

--
-- AUTO_INCREMENT for table `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=350;

--
-- AUTO_INCREMENT for table `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wp_wcmp_cust_answers`
--
ALTER TABLE `wp_wcmp_cust_answers`
  MODIFY `ans_ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wcmp_cust_questions`
--
ALTER TABLE `wp_wcmp_cust_questions`
  MODIFY `ques_ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wcmp_products_map`
--
ALTER TABLE `wp_wcmp_products_map`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wcmp_vendor_orders`
--
ALTER TABLE `wp_wcmp_vendor_orders`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wp_wcmp_visitors_stats`
--
ALTER TABLE `wp_wcmp_visitors_stats`
  MODIFY `ID` bigint(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3634;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
