-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-05-2020 a las 21:07:09
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `wpp`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_actions`
--

CREATE TABLE `wp_actionscheduler_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
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
  `extended_args` varchar(8000) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_actions`
--

INSERT INTO `wp_actionscheduler_actions` (`action_id`, `hook`, `status`, `scheduled_date_gmt`, `scheduled_date_local`, `args`, `schedule`, `group_id`, `attempts`, `last_attempt_gmt`, `last_attempt_local`, `claim_id`, `extended_args`) VALUES
(13, 'action_scheduler/migration_hook', 'complete', '2020-04-30 21:21:34', '2020-04-30 21:21:34', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1588281694;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1588281694;}', 1, 1, '2020-04-30 21:21:38', '2020-04-30 21:21:38', 0, NULL),
(14, 'action_scheduler/migration_hook', 'complete', '2020-04-30 21:21:38', '2020-04-30 21:21:38', '[]', 'O:30:\"ActionScheduler_SimpleSchedule\":2:{s:22:\"\0*\0scheduled_timestamp\";i:1588281698;s:41:\"\0ActionScheduler_SimpleSchedule\0timestamp\";i:1588281698;}', 1, 1, '2020-04-30 21:21:45', '2020-04-30 21:21:45', 0, NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_claims`
--

CREATE TABLE `wp_actionscheduler_claims` (
  `claim_id` bigint(20) UNSIGNED NOT NULL,
  `date_created_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_groups`
--

CREATE TABLE `wp_actionscheduler_groups` (
  `group_id` bigint(20) UNSIGNED NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_groups`
--

INSERT INTO `wp_actionscheduler_groups` (`group_id`, `slug`) VALUES
(1, 'action-scheduler-migration');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_actionscheduler_logs`
--

CREATE TABLE `wp_actionscheduler_logs` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `log_date_gmt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `log_date_local` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_actionscheduler_logs`
--

INSERT INTO `wp_actionscheduler_logs` (`log_id`, `action_id`, `message`, `log_date_gmt`, `log_date_local`) VALUES
(1, 13, 'action created', '2020-04-30 21:21:34', '2020-04-30 21:21:34'),
(2, 13, 'action started via Async Request', '2020-04-30 21:21:37', '2020-04-30 21:21:37'),
(3, 13, 'action complete via Async Request', '2020-04-30 21:21:38', '2020-04-30 21:21:38'),
(4, 14, 'action created', '2020-04-30 21:21:38', '2020-04-30 21:21:38'),
(5, 14, 'action started via Async Request', '2020-04-30 21:21:45', '2020-04-30 21:21:45'),
(6, 14, 'action complete via Async Request', '2020-04-30 21:21:45', '2020-04-30 21:21:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_commentmeta`
--

CREATE TABLE `wp_commentmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `comment_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_comments`
--

CREATE TABLE `wp_comments` (
  `comment_ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `comment_parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_comments`
--

INSERT INTO `wp_comments` (`comment_ID`, `comment_post_ID`, `comment_author`, `comment_author_email`, `comment_author_url`, `comment_author_IP`, `comment_date`, `comment_date_gmt`, `comment_content`, `comment_karma`, `comment_approved`, `comment_agent`, `comment_type`, `comment_parent`, `user_id`) VALUES
(1, 1, 'Un comentarista de WordPress', 'wapuu@wordpress.example', 'https://wordpress.org/', '', '2020-04-30 20:12:48', '2020-04-30 20:12:48', 'Hola, esto es un comentario.\nPara empezar a moderar, editar y borrar comentarios, por favor, visita la pantalla de comentarios en el escritorio.\nLos avatares de los comentaristas provienen de <a href=\"https://gravatar.com\">Gravatar</a>.', 0, '1', '', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_links`
--

CREATE TABLE `wp_links` (
  `link_id` bigint(20) UNSIGNED NOT NULL,
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
  `link_rss` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_options`
--

CREATE TABLE `wp_options` (
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `option_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `option_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `autoload` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'yes'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_options`
--

INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(1, 'siteurl', 'http://localhost/mi_sitio', 'yes'),
(2, 'home', 'http://localhost/mi_sitio', 'yes'),
(3, 'blogname', 'Prueba', 'yes'),
(4, 'blogdescription', 'Otro sitio realizado con WordPress', 'yes'),
(5, 'users_can_register', '0', 'yes'),
(6, 'admin_email', 'sarielux26@gmail.com', 'yes'),
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
(23, 'date_format', 'j F Y', 'yes'),
(24, 'time_format', 'H:i', 'yes'),
(25, 'links_updated_date_format', 'j F Y H:i', 'yes'),
(26, 'comment_moderation', '0', 'yes'),
(27, 'moderation_notify', '1', 'yes'),
(28, 'permalink_structure', '/%year%/%monthnum%/%day%/%postname%/', 'yes'),
(29, 'rewrite_rules', 'a:156:{s:11:\"^wp-json/?$\";s:22:\"index.php?rest_route=/\";s:14:\"^wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:21:\"^index.php/wp-json/?$\";s:22:\"index.php?rest_route=/\";s:24:\"^index.php/wp-json/(.*)?\";s:33:\"index.php?rest_route=/$matches[1]\";s:7:\"shop/?$\";s:27:\"index.php?post_type=product\";s:37:\"shop/feed/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:32:\"shop/(feed|rdf|rss|rss2|atom)/?$\";s:44:\"index.php?post_type=product&feed=$matches[1]\";s:24:\"shop/page/([0-9]{1,})/?$\";s:45:\"index.php?post_type=product&paged=$matches[1]\";s:47:\"category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:42:\"category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:52:\"index.php?category_name=$matches[1]&feed=$matches[2]\";s:23:\"category/(.+?)/embed/?$\";s:46:\"index.php?category_name=$matches[1]&embed=true\";s:35:\"category/(.+?)/page/?([0-9]{1,})/?$\";s:53:\"index.php?category_name=$matches[1]&paged=$matches[2]\";s:17:\"category/(.+?)/?$\";s:35:\"index.php?category_name=$matches[1]\";s:44:\"tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:39:\"tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?tag=$matches[1]&feed=$matches[2]\";s:20:\"tag/([^/]+)/embed/?$\";s:36:\"index.php?tag=$matches[1]&embed=true\";s:32:\"tag/([^/]+)/page/?([0-9]{1,})/?$\";s:43:\"index.php?tag=$matches[1]&paged=$matches[2]\";s:14:\"tag/([^/]+)/?$\";s:25:\"index.php?tag=$matches[1]\";s:45:\"type/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:40:\"type/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?post_format=$matches[1]&feed=$matches[2]\";s:21:\"type/([^/]+)/embed/?$\";s:44:\"index.php?post_format=$matches[1]&embed=true\";s:33:\"type/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?post_format=$matches[1]&paged=$matches[2]\";s:15:\"type/([^/]+)/?$\";s:33:\"index.php?post_format=$matches[1]\";s:35:\"product/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:45:\"product/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:65:\"product/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:60:\"product/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:41:\"product/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:24:\"product/([^/]+)/embed/?$\";s:40:\"index.php?product=$matches[1]&embed=true\";s:28:\"product/([^/]+)/trackback/?$\";s:34:\"index.php?product=$matches[1]&tb=1\";s:48:\"product/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:43:\"product/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:46:\"index.php?product=$matches[1]&feed=$matches[2]\";s:36:\"product/([^/]+)/page/?([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&paged=$matches[2]\";s:43:\"product/([^/]+)/comment-page-([0-9]{1,})/?$\";s:47:\"index.php?product=$matches[1]&cpage=$matches[2]\";s:32:\"product/([^/]+)(?:/([0-9]+))?/?$\";s:46:\"index.php?product=$matches[1]&page=$matches[2]\";s:24:\"product/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:34:\"product/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:54:\"product/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:49:\"product/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:30:\"product/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:22:\"^wc-api/v([1-3]{1})/?$\";s:51:\"index.php?wc-api-version=$matches[1]&wc-api-route=/\";s:24:\"^wc-api/v([1-3]{1})(.*)?\";s:61:\"index.php?wc-api-version=$matches[1]&wc-api-route=$matches[2]\";s:24:\"^wc-auth/v([1]{1})/(.*)?\";s:63:\"index.php?wc-auth-version=$matches[1]&wc-auth-route=$matches[2]\";s:32:\"category/(.+?)/wc-api(/(.*))?/?$\";s:54:\"index.php?category_name=$matches[1]&wc-api=$matches[3]\";s:29:\"tag/([^/]+)/wc-api(/(.*))?/?$\";s:44:\"index.php?tag=$matches[1]&wc-api=$matches[3]\";s:33:\"product/([^/]+)/wc-api(/(.*))?/?$\";s:48:\"index.php?product=$matches[1]&wc-api=$matches[3]\";s:39:\"product/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:50:\"product/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:55:\"product-category/(.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:50:\"product-category/(.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_cat=$matches[1]&feed=$matches[2]\";s:31:\"product-category/(.+?)/embed/?$\";s:44:\"index.php?product_cat=$matches[1]&embed=true\";s:43:\"product-category/(.+?)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_cat=$matches[1]&paged=$matches[2]\";s:25:\"product-category/(.+?)/?$\";s:33:\"index.php?product_cat=$matches[1]\";s:52:\"product-tag/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:47:\"product-tag/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?product_tag=$matches[1]&feed=$matches[2]\";s:28:\"product-tag/([^/]+)/embed/?$\";s:44:\"index.php?product_tag=$matches[1]&embed=true\";s:40:\"product-tag/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?product_tag=$matches[1]&paged=$matches[2]\";s:22:\"product-tag/([^/]+)/?$\";s:33:\"index.php?product_tag=$matches[1]\";s:48:\".*wp-(atom|rdf|rss|rss2|feed|commentsrss2)\\.php$\";s:18:\"index.php?feed=old\";s:20:\".*wp-app\\.php(/.*)?$\";s:19:\"index.php?error=403\";s:18:\".*wp-register.php$\";s:23:\"index.php?register=true\";s:32:\"feed/(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:27:\"(feed|rdf|rss|rss2|atom)/?$\";s:27:\"index.php?&feed=$matches[1]\";s:8:\"embed/?$\";s:21:\"index.php?&embed=true\";s:20:\"page/?([0-9]{1,})/?$\";s:28:\"index.php?&paged=$matches[1]\";s:17:\"wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:41:\"comments/feed/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:36:\"comments/(feed|rdf|rss|rss2|atom)/?$\";s:42:\"index.php?&feed=$matches[1]&withcomments=1\";s:17:\"comments/embed/?$\";s:21:\"index.php?&embed=true\";s:26:\"comments/wc-api(/(.*))?/?$\";s:29:\"index.php?&wc-api=$matches[2]\";s:44:\"search/(.+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:39:\"search/(.+)/(feed|rdf|rss|rss2|atom)/?$\";s:40:\"index.php?s=$matches[1]&feed=$matches[2]\";s:20:\"search/(.+)/embed/?$\";s:34:\"index.php?s=$matches[1]&embed=true\";s:32:\"search/(.+)/page/?([0-9]{1,})/?$\";s:41:\"index.php?s=$matches[1]&paged=$matches[2]\";s:29:\"search/(.+)/wc-api(/(.*))?/?$\";s:42:\"index.php?s=$matches[1]&wc-api=$matches[3]\";s:14:\"search/(.+)/?$\";s:23:\"index.php?s=$matches[1]\";s:47:\"author/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:42:\"author/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:50:\"index.php?author_name=$matches[1]&feed=$matches[2]\";s:23:\"author/([^/]+)/embed/?$\";s:44:\"index.php?author_name=$matches[1]&embed=true\";s:35:\"author/([^/]+)/page/?([0-9]{1,})/?$\";s:51:\"index.php?author_name=$matches[1]&paged=$matches[2]\";s:32:\"author/([^/]+)/wc-api(/(.*))?/?$\";s:52:\"index.php?author_name=$matches[1]&wc-api=$matches[3]\";s:17:\"author/([^/]+)/?$\";s:33:\"index.php?author_name=$matches[1]\";s:69:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:80:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&feed=$matches[4]\";s:45:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/embed/?$\";s:74:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&paged=$matches[4]\";s:54:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:82:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&wc-api=$matches[5]\";s:39:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/?$\";s:63:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]\";s:56:\"([0-9]{4})/([0-9]{1,2})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:51:\"([0-9]{4})/([0-9]{1,2})/(feed|rdf|rss|rss2|atom)/?$\";s:64:\"index.php?year=$matches[1]&monthnum=$matches[2]&feed=$matches[3]\";s:32:\"([0-9]{4})/([0-9]{1,2})/embed/?$\";s:58:\"index.php?year=$matches[1]&monthnum=$matches[2]&embed=true\";s:44:\"([0-9]{4})/([0-9]{1,2})/page/?([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&paged=$matches[3]\";s:41:\"([0-9]{4})/([0-9]{1,2})/wc-api(/(.*))?/?$\";s:66:\"index.php?year=$matches[1]&monthnum=$matches[2]&wc-api=$matches[4]\";s:26:\"([0-9]{4})/([0-9]{1,2})/?$\";s:47:\"index.php?year=$matches[1]&monthnum=$matches[2]\";s:43:\"([0-9]{4})/feed/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:38:\"([0-9]{4})/(feed|rdf|rss|rss2|atom)/?$\";s:43:\"index.php?year=$matches[1]&feed=$matches[2]\";s:19:\"([0-9]{4})/embed/?$\";s:37:\"index.php?year=$matches[1]&embed=true\";s:31:\"([0-9]{4})/page/?([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&paged=$matches[2]\";s:28:\"([0-9]{4})/wc-api(/(.*))?/?$\";s:45:\"index.php?year=$matches[1]&wc-api=$matches[3]\";s:13:\"([0-9]{4})/?$\";s:26:\"index.php?year=$matches[1]\";s:58:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:68:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:88:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:83:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:64:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:53:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/embed/?$\";s:91:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&embed=true\";s:57:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/trackback/?$\";s:85:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&tb=1\";s:77:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&feed=$matches[5]\";s:65:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/page/?([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&paged=$matches[5]\";s:72:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/comment-page-([0-9]{1,})/?$\";s:98:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&cpage=$matches[5]\";s:62:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)/wc-api(/(.*))?/?$\";s:99:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&wc-api=$matches[6]\";s:62:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:73:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:61:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/([^/]+)(?:/([0-9]+))?/?$\";s:97:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&name=$matches[4]&page=$matches[5]\";s:47:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:57:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:77:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:72:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:53:\"[0-9]{4}/[0-9]{1,2}/[0-9]{1,2}/[^/]+/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:64:\"([0-9]{4})/([0-9]{1,2})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:81:\"index.php?year=$matches[1]&monthnum=$matches[2]&day=$matches[3]&cpage=$matches[4]\";s:51:\"([0-9]{4})/([0-9]{1,2})/comment-page-([0-9]{1,})/?$\";s:65:\"index.php?year=$matches[1]&monthnum=$matches[2]&cpage=$matches[3]\";s:38:\"([0-9]{4})/comment-page-([0-9]{1,})/?$\";s:44:\"index.php?year=$matches[1]&cpage=$matches[2]\";s:27:\".?.+?/attachment/([^/]+)/?$\";s:32:\"index.php?attachment=$matches[1]\";s:37:\".?.+?/attachment/([^/]+)/trackback/?$\";s:37:\"index.php?attachment=$matches[1]&tb=1\";s:57:\".?.+?/attachment/([^/]+)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/(feed|rdf|rss|rss2|atom)/?$\";s:49:\"index.php?attachment=$matches[1]&feed=$matches[2]\";s:52:\".?.+?/attachment/([^/]+)/comment-page-([0-9]{1,})/?$\";s:50:\"index.php?attachment=$matches[1]&cpage=$matches[2]\";s:33:\".?.+?/attachment/([^/]+)/embed/?$\";s:43:\"index.php?attachment=$matches[1]&embed=true\";s:16:\"(.?.+?)/embed/?$\";s:41:\"index.php?pagename=$matches[1]&embed=true\";s:20:\"(.?.+?)/trackback/?$\";s:35:\"index.php?pagename=$matches[1]&tb=1\";s:40:\"(.?.+?)/feed/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:35:\"(.?.+?)/(feed|rdf|rss|rss2|atom)/?$\";s:47:\"index.php?pagename=$matches[1]&feed=$matches[2]\";s:28:\"(.?.+?)/page/?([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&paged=$matches[2]\";s:35:\"(.?.+?)/comment-page-([0-9]{1,})/?$\";s:48:\"index.php?pagename=$matches[1]&cpage=$matches[2]\";s:28:\"(.?.+?)/order-pay(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&order-pay=$matches[3]\";s:33:\"(.?.+?)/order-received(/(.*))?/?$\";s:57:\"index.php?pagename=$matches[1]&order-received=$matches[3]\";s:25:\"(.?.+?)/orders(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&orders=$matches[3]\";s:29:\"(.?.+?)/view-order(/(.*))?/?$\";s:53:\"index.php?pagename=$matches[1]&view-order=$matches[3]\";s:28:\"(.?.+?)/downloads(/(.*))?/?$\";s:52:\"index.php?pagename=$matches[1]&downloads=$matches[3]\";s:31:\"(.?.+?)/edit-account(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-account=$matches[3]\";s:31:\"(.?.+?)/edit-address(/(.*))?/?$\";s:55:\"index.php?pagename=$matches[1]&edit-address=$matches[3]\";s:34:\"(.?.+?)/payment-methods(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&payment-methods=$matches[3]\";s:32:\"(.?.+?)/lost-password(/(.*))?/?$\";s:56:\"index.php?pagename=$matches[1]&lost-password=$matches[3]\";s:34:\"(.?.+?)/customer-logout(/(.*))?/?$\";s:58:\"index.php?pagename=$matches[1]&customer-logout=$matches[3]\";s:37:\"(.?.+?)/add-payment-method(/(.*))?/?$\";s:61:\"index.php?pagename=$matches[1]&add-payment-method=$matches[3]\";s:40:\"(.?.+?)/delete-payment-method(/(.*))?/?$\";s:64:\"index.php?pagename=$matches[1]&delete-payment-method=$matches[3]\";s:45:\"(.?.+?)/set-default-payment-method(/(.*))?/?$\";s:69:\"index.php?pagename=$matches[1]&set-default-payment-method=$matches[3]\";s:25:\"(.?.+?)/wc-api(/(.*))?/?$\";s:49:\"index.php?pagename=$matches[1]&wc-api=$matches[3]\";s:31:\".?.+?/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:42:\".?.+?/attachment/([^/]+)/wc-api(/(.*))?/?$\";s:51:\"index.php?attachment=$matches[1]&wc-api=$matches[3]\";s:24:\"(.?.+?)(?:/([0-9]+))?/?$\";s:47:\"index.php?pagename=$matches[1]&page=$matches[2]\";}', 'yes'),
(30, 'hack_file', '0', 'yes'),
(31, 'blog_charset', 'UTF-8', 'yes'),
(32, 'moderation_keys', '', 'no'),
(33, 'active_plugins', 'a:2:{i:0;s:39:\"static-html-output-plugin/wp2static.php\";i:1;s:27:\"woocommerce/woocommerce.php\";}', 'yes'),
(34, 'category_base', '', 'yes'),
(35, 'ping_sites', 'http://rpc.pingomatic.com/', 'yes'),
(36, 'comment_max_links', '2', 'yes'),
(37, 'gmt_offset', '0', 'yes'),
(38, 'default_email_category', '1', 'yes'),
(39, 'recently_edited', '', 'no'),
(40, 'template', 'twentytwenty', 'yes'),
(41, 'stylesheet', 'twentytwenty', 'yes'),
(42, 'comment_whitelist', '1', 'yes'),
(43, 'blacklist_keys', '', 'no'),
(44, 'comment_registration', '0', 'yes'),
(45, 'html_type', 'text/html', 'yes'),
(46, 'use_trackback', '0', 'yes'),
(47, 'default_role', 'subscriber', 'yes'),
(48, 'db_version', '47018', 'yes'),
(49, 'uploads_use_yearmonth_folders', '1', 'yes'),
(50, 'upload_path', '', 'yes'),
(51, 'blog_public', '1', 'yes'),
(52, 'default_link_category', '2', 'yes'),
(53, 'show_on_front', 'posts', 'yes'),
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
(79, 'widget_text', 'a:3:{i:2;a:4:{s:5:\"title\";s:20:\"Acerca de este sitio\";s:4:\"text\";s:108:\"Este puede ser un buen lugar para presentarte a ti mismo y a tu sitio o para incluir algunas acreditaciones.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}i:3;a:4:{s:5:\"title\";s:13:\"Encuéntranos\";s:4:\"text\";s:161:\"<strong>Dirección</strong>\nCalle Principal, 123\nMadrid, 28000\n\n<strong>Horas</strong>\nLunes a viernes: de 9:00 a 17:00 h.\nSábado y domingo: de 11:00 a 15:00 h.\";s:6:\"filter\";b:1;s:6:\"visual\";b:1;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(80, 'widget_rss', 'a:2:{i:1;a:0:{}s:12:\"_multiwidget\";i:1;}', 'yes'),
(81, 'uninstall_plugins', 'a:0:{}', 'no'),
(82, 'timezone_string', '', 'yes'),
(83, 'page_for_posts', '0', 'yes'),
(84, 'page_on_front', '0', 'yes'),
(85, 'default_post_format', '0', 'yes'),
(86, 'link_manager_enabled', '0', 'yes'),
(87, 'finished_splitting_shared_terms', '1', 'yes'),
(88, 'site_icon', '0', 'yes'),
(89, 'medium_large_size_w', '768', 'yes'),
(90, 'medium_large_size_h', '0', 'yes'),
(91, 'wp_page_for_privacy_policy', '3', 'yes'),
(92, 'show_comments_cookies_opt_in', '1', 'yes'),
(93, 'admin_email_lifespan', '1603829566', 'yes'),
(94, 'initial_db_version', '47018', 'yes'),
(95, 'wp_user_roles', 'a:7:{s:13:\"administrator\";a:2:{s:4:\"name\";s:13:\"Administrator\";s:12:\"capabilities\";a:114:{s:13:\"switch_themes\";b:1;s:11:\"edit_themes\";b:1;s:16:\"activate_plugins\";b:1;s:12:\"edit_plugins\";b:1;s:10:\"edit_users\";b:1;s:10:\"edit_files\";b:1;s:14:\"manage_options\";b:1;s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:6:\"import\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:8:\"level_10\";b:1;s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;s:12:\"delete_users\";b:1;s:12:\"create_users\";b:1;s:17:\"unfiltered_upload\";b:1;s:14:\"edit_dashboard\";b:1;s:14:\"update_plugins\";b:1;s:14:\"delete_plugins\";b:1;s:15:\"install_plugins\";b:1;s:13:\"update_themes\";b:1;s:14:\"install_themes\";b:1;s:11:\"update_core\";b:1;s:10:\"list_users\";b:1;s:12:\"remove_users\";b:1;s:13:\"promote_users\";b:1;s:18:\"edit_theme_options\";b:1;s:13:\"delete_themes\";b:1;s:6:\"export\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}s:6:\"editor\";a:2:{s:4:\"name\";s:6:\"Editor\";s:12:\"capabilities\";a:34:{s:17:\"moderate_comments\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:12:\"upload_files\";b:1;s:15:\"unfiltered_html\";b:1;s:10:\"edit_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:10:\"edit_pages\";b:1;s:4:\"read\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:17:\"edit_others_pages\";b:1;s:20:\"edit_published_pages\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_pages\";b:1;s:19:\"delete_others_pages\";b:1;s:22:\"delete_published_pages\";b:1;s:12:\"delete_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:22:\"delete_published_posts\";b:1;s:20:\"delete_private_posts\";b:1;s:18:\"edit_private_posts\";b:1;s:18:\"read_private_posts\";b:1;s:20:\"delete_private_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"read_private_pages\";b:1;}}s:6:\"author\";a:2:{s:4:\"name\";s:6:\"Author\";s:12:\"capabilities\";a:10:{s:12:\"upload_files\";b:1;s:10:\"edit_posts\";b:1;s:20:\"edit_published_posts\";b:1;s:13:\"publish_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;s:22:\"delete_published_posts\";b:1;}}s:11:\"contributor\";a:2:{s:4:\"name\";s:11:\"Contributor\";s:12:\"capabilities\";a:5:{s:10:\"edit_posts\";b:1;s:4:\"read\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:12:\"delete_posts\";b:1;}}s:10:\"subscriber\";a:2:{s:4:\"name\";s:10:\"Subscriber\";s:12:\"capabilities\";a:2:{s:4:\"read\";b:1;s:7:\"level_0\";b:1;}}s:8:\"customer\";a:2:{s:4:\"name\";s:8:\"Customer\";s:12:\"capabilities\";a:1:{s:4:\"read\";b:1;}}s:12:\"shop_manager\";a:2:{s:4:\"name\";s:12:\"Shop manager\";s:12:\"capabilities\";a:92:{s:7:\"level_9\";b:1;s:7:\"level_8\";b:1;s:7:\"level_7\";b:1;s:7:\"level_6\";b:1;s:7:\"level_5\";b:1;s:7:\"level_4\";b:1;s:7:\"level_3\";b:1;s:7:\"level_2\";b:1;s:7:\"level_1\";b:1;s:7:\"level_0\";b:1;s:4:\"read\";b:1;s:18:\"read_private_pages\";b:1;s:18:\"read_private_posts\";b:1;s:10:\"edit_posts\";b:1;s:10:\"edit_pages\";b:1;s:20:\"edit_published_posts\";b:1;s:20:\"edit_published_pages\";b:1;s:18:\"edit_private_pages\";b:1;s:18:\"edit_private_posts\";b:1;s:17:\"edit_others_posts\";b:1;s:17:\"edit_others_pages\";b:1;s:13:\"publish_posts\";b:1;s:13:\"publish_pages\";b:1;s:12:\"delete_posts\";b:1;s:12:\"delete_pages\";b:1;s:20:\"delete_private_pages\";b:1;s:20:\"delete_private_posts\";b:1;s:22:\"delete_published_pages\";b:1;s:22:\"delete_published_posts\";b:1;s:19:\"delete_others_posts\";b:1;s:19:\"delete_others_pages\";b:1;s:17:\"manage_categories\";b:1;s:12:\"manage_links\";b:1;s:17:\"moderate_comments\";b:1;s:12:\"upload_files\";b:1;s:6:\"export\";b:1;s:6:\"import\";b:1;s:10:\"list_users\";b:1;s:18:\"edit_theme_options\";b:1;s:18:\"manage_woocommerce\";b:1;s:24:\"view_woocommerce_reports\";b:1;s:12:\"edit_product\";b:1;s:12:\"read_product\";b:1;s:14:\"delete_product\";b:1;s:13:\"edit_products\";b:1;s:20:\"edit_others_products\";b:1;s:16:\"publish_products\";b:1;s:21:\"read_private_products\";b:1;s:15:\"delete_products\";b:1;s:23:\"delete_private_products\";b:1;s:25:\"delete_published_products\";b:1;s:22:\"delete_others_products\";b:1;s:21:\"edit_private_products\";b:1;s:23:\"edit_published_products\";b:1;s:20:\"manage_product_terms\";b:1;s:18:\"edit_product_terms\";b:1;s:20:\"delete_product_terms\";b:1;s:20:\"assign_product_terms\";b:1;s:15:\"edit_shop_order\";b:1;s:15:\"read_shop_order\";b:1;s:17:\"delete_shop_order\";b:1;s:16:\"edit_shop_orders\";b:1;s:23:\"edit_others_shop_orders\";b:1;s:19:\"publish_shop_orders\";b:1;s:24:\"read_private_shop_orders\";b:1;s:18:\"delete_shop_orders\";b:1;s:26:\"delete_private_shop_orders\";b:1;s:28:\"delete_published_shop_orders\";b:1;s:25:\"delete_others_shop_orders\";b:1;s:24:\"edit_private_shop_orders\";b:1;s:26:\"edit_published_shop_orders\";b:1;s:23:\"manage_shop_order_terms\";b:1;s:21:\"edit_shop_order_terms\";b:1;s:23:\"delete_shop_order_terms\";b:1;s:23:\"assign_shop_order_terms\";b:1;s:16:\"edit_shop_coupon\";b:1;s:16:\"read_shop_coupon\";b:1;s:18:\"delete_shop_coupon\";b:1;s:17:\"edit_shop_coupons\";b:1;s:24:\"edit_others_shop_coupons\";b:1;s:20:\"publish_shop_coupons\";b:1;s:25:\"read_private_shop_coupons\";b:1;s:19:\"delete_shop_coupons\";b:1;s:27:\"delete_private_shop_coupons\";b:1;s:29:\"delete_published_shop_coupons\";b:1;s:26:\"delete_others_shop_coupons\";b:1;s:25:\"edit_private_shop_coupons\";b:1;s:27:\"edit_published_shop_coupons\";b:1;s:24:\"manage_shop_coupon_terms\";b:1;s:22:\"edit_shop_coupon_terms\";b:1;s:24:\"delete_shop_coupon_terms\";b:1;s:24:\"assign_shop_coupon_terms\";b:1;}}}', 'yes'),
(96, 'fresh_site', '0', 'yes'),
(97, 'WPLANG', 'es_ES', 'yes'),
(98, 'widget_search', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(99, 'widget_recent-posts', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(100, 'widget_recent-comments', 'a:2:{i:2;a:2:{s:5:\"title\";s:0:\"\";s:6:\"number\";i:5;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(101, 'widget_archives', 'a:2:{i:2;a:3:{s:5:\"title\";s:0:\"\";s:5:\"count\";i:0;s:8:\"dropdown\";i:0;}s:12:\"_multiwidget\";i:1;}', 'yes'),
(102, 'widget_meta', 'a:2:{i:2;a:1:{s:5:\"title\";s:0:\"\";}s:12:\"_multiwidget\";i:1;}', 'yes'),
(103, 'sidebars_widgets', 'a:4:{s:19:\"wp_inactive_widgets\";a:0:{}s:9:\"sidebar-1\";a:3:{i:0;s:8:\"search-2\";i:1;s:14:\"recent-posts-2\";i:2;s:17:\"recent-comments-2\";}s:9:\"sidebar-2\";a:3:{i:0;s:10:\"archives-2\";i:1;s:12:\"categories-2\";i:2;s:6:\"meta-2\";}s:13:\"array_version\";i:3;}', 'yes'),
(104, 'cron', 'a:17:{i:1588446387;a:1:{s:26:\"action_scheduler_run_queue\";a:1:{s:32:\"0d04ed39571b55704c122d726248bbac\";a:3:{s:8:\"schedule\";s:12:\"every_minute\";s:4:\"args\";a:1:{i:0;s:7:\"WP Cron\";}s:8:\"interval\";i:60;}}}i:1588446770;a:1:{s:34:\"wp_privacy_delete_old_export_files\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588447296;a:1:{s:33:\"wc_admin_process_orders_milestone\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588447304;a:1:{s:29:\"wc_admin_unsnooze_admin_notes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"hourly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:3600;}}}i:1588449855;a:1:{s:32:\"woocommerce_cancel_unpaid_orders\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:2:{s:8:\"schedule\";b:0;s:4:\"args\";a:0:{}}}}i:1588450369;a:1:{s:32:\"recovery_mode_clean_expired_keys\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588450370;a:3:{s:16:\"wp_version_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:17:\"wp_update_plugins\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}s:16:\"wp_update_themes\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588450386;a:2:{s:19:\"wp_scheduled_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:25:\"delete_expired_transients\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588450388;a:1:{s:30:\"wp_scheduled_auto_draft_delete\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588454497;a:1:{s:14:\"wc_admin_daily\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588454502;a:2:{s:33:\"woocommerce_cleanup_personal_data\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}s:30:\"woocommerce_tracker_send_event\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588464000;a:1:{s:27:\"woocommerce_scheduled_sales\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588465292;a:1:{s:24:\"woocommerce_cleanup_logs\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:5:\"daily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:86400;}}}i:1588476092;a:1:{s:28:\"woocommerce_cleanup_sessions\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:10:\"twicedaily\";s:4:\"args\";a:0:{}s:8:\"interval\";i:43200;}}}i:1588968769;a:1:{s:30:\"wp_site_health_scheduled_check\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:6:\"weekly\";s:4:\"args\";a:0:{}s:8:\"interval\";i:604800;}}}i:1589577752;a:1:{s:25:\"woocommerce_geoip_updater\";a:1:{s:32:\"40cd750bba9870f18aada2478b24840a\";a:3:{s:8:\"schedule\";s:11:\"fifteendays\";s:4:\"args\";a:0:{}s:8:\"interval\";i:1296000;}}}s:7:\"version\";i:2;}', 'yes'),
(105, 'widget_pages', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(106, 'widget_calendar', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(107, 'widget_media_audio', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(108, 'widget_media_image', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(109, 'widget_media_gallery', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(110, 'widget_media_video', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(111, 'widget_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(112, 'widget_nav_menu', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(113, 'widget_custom_html', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(115, 'recovery_keys', 'a:0:{}', 'yes'),
(117, 'theme_mods_twentytwenty', 'a:2:{s:18:\"custom_css_post_id\";i:-1;s:16:\"background_color\";s:3:\"fff\";}', 'yes'),
(127, '_site_transient_timeout_browser_2397a7ecb9ce737f692b6cba71051dc3', '1588882387', 'no'),
(128, '_site_transient_browser_2397a7ecb9ce737f692b6cba71051dc3', 'a:10:{s:4:\"name\";s:7:\"Firefox\";s:7:\"version\";s:4:\"75.0\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:32:\"https://www.mozilla.org/firefox/\";s:7:\"img_src\";s:44:\"http://s.w.org/images/browsers/firefox.png?1\";s:11:\"img_src_ssl\";s:45:\"https://s.w.org/images/browsers/firefox.png?1\";s:15:\"current_version\";s:2:\"56\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(129, '_site_transient_timeout_php_check_f9714bbe413cc376a70847d9c1f86fcc', '1588882387', 'no'),
(130, '_site_transient_php_check_f9714bbe413cc376a70847d9c1f86fcc', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(134, 'can_compress_scripts', '1', 'no'),
(152, 'recently_activated', 'a:0:{}', 'yes'),
(162, 'action_scheduler_hybrid_store_demarkation', '12', 'yes'),
(163, 'schema-ActionScheduler_StoreSchema', '3.0.1588281687', 'yes'),
(164, 'schema-ActionScheduler_LoggerSchema', '2.0.1588281687', 'yes'),
(167, 'woocommerce_store_address', '', 'yes'),
(168, 'woocommerce_store_address_2', '', 'yes'),
(169, 'woocommerce_store_city', '', 'yes'),
(170, 'woocommerce_default_country', 'GB', 'yes'),
(171, 'woocommerce_store_postcode', '', 'yes'),
(172, 'woocommerce_allowed_countries', 'all', 'yes'),
(173, 'woocommerce_all_except_countries', '', 'yes'),
(174, 'woocommerce_specific_allowed_countries', '', 'yes'),
(175, 'woocommerce_ship_to_countries', '', 'yes'),
(176, 'woocommerce_specific_ship_to_countries', '', 'yes'),
(177, 'woocommerce_default_customer_address', 'base', 'yes'),
(178, 'woocommerce_calc_taxes', 'no', 'yes'),
(179, 'woocommerce_enable_coupons', 'yes', 'yes'),
(180, 'woocommerce_calc_discounts_sequentially', 'no', 'no'),
(181, 'woocommerce_currency', 'GBP', 'yes'),
(182, 'woocommerce_currency_pos', 'left', 'yes'),
(183, 'woocommerce_price_thousand_sep', ',', 'yes'),
(184, 'woocommerce_price_decimal_sep', '.', 'yes'),
(185, 'woocommerce_price_num_decimals', '2', 'yes'),
(186, 'woocommerce_shop_page_id', '', 'yes'),
(187, 'woocommerce_cart_redirect_after_add', 'no', 'yes'),
(188, 'woocommerce_enable_ajax_add_to_cart', 'yes', 'yes'),
(189, 'woocommerce_placeholder_image', '12', 'yes'),
(190, 'woocommerce_weight_unit', 'kg', 'yes'),
(191, 'woocommerce_dimension_unit', 'cm', 'yes'),
(192, 'woocommerce_enable_reviews', 'yes', 'yes'),
(193, 'woocommerce_review_rating_verification_label', 'yes', 'no'),
(194, 'woocommerce_review_rating_verification_required', 'no', 'no'),
(195, 'woocommerce_enable_review_rating', 'yes', 'yes'),
(196, 'woocommerce_review_rating_required', 'yes', 'no'),
(197, 'woocommerce_manage_stock', 'yes', 'yes'),
(198, 'woocommerce_hold_stock_minutes', '60', 'no'),
(199, 'woocommerce_notify_low_stock', 'yes', 'no'),
(200, 'woocommerce_notify_no_stock', 'yes', 'no'),
(201, 'woocommerce_stock_email_recipient', 'sarielux26@gmail.com', 'no'),
(202, 'woocommerce_notify_low_stock_amount', '2', 'no'),
(203, 'woocommerce_notify_no_stock_amount', '0', 'yes'),
(204, 'woocommerce_hide_out_of_stock_items', 'no', 'yes'),
(205, 'woocommerce_stock_format', '', 'yes'),
(206, 'woocommerce_file_download_method', 'force', 'no'),
(207, 'woocommerce_downloads_require_login', 'no', 'no'),
(208, 'woocommerce_downloads_grant_access_after_payment', 'yes', 'no'),
(209, 'woocommerce_downloads_add_hash_to_filename', 'yes', 'yes'),
(210, 'woocommerce_prices_include_tax', 'no', 'yes'),
(211, 'woocommerce_tax_based_on', 'shipping', 'yes'),
(212, 'woocommerce_shipping_tax_class', 'inherit', 'yes'),
(213, 'woocommerce_tax_round_at_subtotal', 'no', 'yes'),
(214, 'woocommerce_tax_classes', '', 'yes'),
(215, 'woocommerce_tax_display_shop', 'excl', 'yes'),
(216, 'woocommerce_tax_display_cart', 'excl', 'yes'),
(217, 'woocommerce_price_display_suffix', '', 'yes'),
(218, 'woocommerce_tax_total_display', 'itemized', 'no'),
(219, 'woocommerce_enable_shipping_calc', 'yes', 'no'),
(220, 'woocommerce_shipping_cost_requires_address', 'no', 'yes'),
(221, 'woocommerce_ship_to_destination', 'billing', 'no'),
(222, 'woocommerce_shipping_debug_mode', 'no', 'yes'),
(223, 'woocommerce_enable_guest_checkout', 'yes', 'no'),
(224, 'woocommerce_enable_checkout_login_reminder', 'no', 'no'),
(225, 'woocommerce_enable_signup_and_login_from_checkout', 'no', 'no'),
(226, 'woocommerce_enable_myaccount_registration', 'no', 'no'),
(227, 'woocommerce_registration_generate_username', 'yes', 'no'),
(228, 'woocommerce_registration_generate_password', 'yes', 'no'),
(229, 'woocommerce_erasure_request_removes_order_data', 'no', 'no'),
(230, 'woocommerce_erasure_request_removes_download_data', 'no', 'no'),
(231, 'woocommerce_allow_bulk_remove_personal_data', 'no', 'no'),
(232, 'woocommerce_registration_privacy_policy_text', 'Your personal data will be used to support your experience throughout this website, to manage access to your account, and for other purposes described in our [privacy_policy].', 'yes'),
(233, 'woocommerce_checkout_privacy_policy_text', 'Your personal data will be used to process your order, support your experience throughout this website, and for other purposes described in our [privacy_policy].', 'yes'),
(234, 'woocommerce_delete_inactive_accounts', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(235, 'woocommerce_trash_pending_orders', '', 'no'),
(236, 'woocommerce_trash_failed_orders', '', 'no'),
(237, 'woocommerce_trash_cancelled_orders', '', 'no'),
(238, 'woocommerce_anonymize_completed_orders', 'a:2:{s:6:\"number\";s:0:\"\";s:4:\"unit\";s:6:\"months\";}', 'no'),
(239, 'woocommerce_email_from_name', 'Prueba', 'no'),
(240, 'woocommerce_email_from_address', 'sarielux26@gmail.com', 'no'),
(241, 'woocommerce_email_header_image', '', 'no'),
(242, 'woocommerce_email_footer_text', '{site_title} &mdash; Built with {WooCommerce}', 'no'),
(243, 'woocommerce_email_base_color', '#96588a', 'no'),
(244, 'woocommerce_email_background_color', '#f7f7f7', 'no'),
(245, 'woocommerce_email_body_background_color', '#ffffff', 'no'),
(246, 'woocommerce_email_text_color', '#3c3c3c', 'no'),
(247, 'woocommerce_cart_page_id', '', 'no'),
(248, 'woocommerce_checkout_page_id', '', 'no'),
(249, 'woocommerce_myaccount_page_id', '', 'no'),
(250, 'woocommerce_terms_page_id', '', 'no'),
(251, 'woocommerce_force_ssl_checkout', 'no', 'yes'),
(252, 'woocommerce_unforce_ssl_checkout', 'no', 'yes'),
(253, 'woocommerce_checkout_pay_endpoint', 'order-pay', 'yes'),
(254, 'woocommerce_checkout_order_received_endpoint', 'order-received', 'yes'),
(255, 'woocommerce_myaccount_add_payment_method_endpoint', 'add-payment-method', 'yes'),
(256, 'woocommerce_myaccount_delete_payment_method_endpoint', 'delete-payment-method', 'yes'),
(257, 'woocommerce_myaccount_set_default_payment_method_endpoint', 'set-default-payment-method', 'yes'),
(258, 'woocommerce_myaccount_orders_endpoint', 'orders', 'yes'),
(259, 'woocommerce_myaccount_view_order_endpoint', 'view-order', 'yes'),
(260, 'woocommerce_myaccount_downloads_endpoint', 'downloads', 'yes'),
(261, 'woocommerce_myaccount_edit_account_endpoint', 'edit-account', 'yes'),
(262, 'woocommerce_myaccount_edit_address_endpoint', 'edit-address', 'yes'),
(263, 'woocommerce_myaccount_payment_methods_endpoint', 'payment-methods', 'yes'),
(264, 'woocommerce_myaccount_lost_password_endpoint', 'lost-password', 'yes'),
(265, 'woocommerce_logout_endpoint', 'customer-logout', 'yes'),
(266, 'woocommerce_api_enabled', 'no', 'yes'),
(267, 'woocommerce_allow_tracking', 'no', 'no'),
(268, 'woocommerce_show_marketplace_suggestions', 'yes', 'no'),
(269, 'woocommerce_single_image_width', '600', 'yes'),
(270, 'woocommerce_thumbnail_image_width', '300', 'yes'),
(271, 'woocommerce_checkout_highlight_required_fields', 'yes', 'yes'),
(272, 'woocommerce_demo_store', 'no', 'no'),
(273, 'woocommerce_permalinks', 'a:5:{s:12:\"product_base\";s:7:\"product\";s:13:\"category_base\";s:16:\"product-category\";s:8:\"tag_base\";s:11:\"product-tag\";s:14:\"attribute_base\";s:0:\"\";s:22:\"use_verbose_page_rules\";b:0;}', 'yes'),
(274, 'current_theme_supports_woocommerce', 'yes', 'yes'),
(275, 'woocommerce_queue_flush_rewrite_rules', 'no', 'yes'),
(276, '_transient_wc_attribute_taxonomies', 'a:0:{}', 'yes'),
(277, 'product_cat_children', 'a:0:{}', 'yes'),
(278, 'default_product_cat', '15', 'yes'),
(279, 'woocommerce_admin_notices', 'a:1:{i:1;s:20:\"no_secure_connection\";}', 'yes'),
(282, 'woocommerce_version', '4.0.1', 'yes'),
(283, 'woocommerce_db_version', '4.0.1', 'yes'),
(284, 'action_scheduler_lock_async-request-runner', '1588446434', 'yes'),
(285, 'woocommerce_maxmind_geolocation_settings', 'a:1:{s:15:\"database_prefix\";s:32:\"Z4DDUSoZQQg2dAtqQsQSza2xASm6X15a\";}', 'yes'),
(286, '_transient_woocommerce_webhook_ids_status_active', 'a:0:{}', 'yes'),
(287, 'widget_woocommerce_widget_cart', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(288, 'widget_woocommerce_layered_nav_filters', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(289, 'widget_woocommerce_layered_nav', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(290, 'widget_woocommerce_price_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(291, 'widget_woocommerce_product_categories', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(292, 'widget_woocommerce_product_search', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(293, 'widget_woocommerce_product_tag_cloud', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(294, 'widget_woocommerce_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(295, 'widget_woocommerce_recently_viewed_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(296, 'widget_woocommerce_top_rated_products', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(297, 'widget_woocommerce_recent_reviews', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(298, 'widget_woocommerce_rating_filter', 'a:1:{s:12:\"_multiwidget\";i:1;}', 'yes'),
(299, 'woocommerce_onboarding_opt_in', 'no', 'yes'),
(304, 'woocommerce_admin_version', '1.0.3', 'yes'),
(305, 'woocommerce_admin_install_timestamp', '1588281697', 'yes'),
(308, 'action_scheduler_migration_status', 'complete', 'yes'),
(309, '_transient_wc_count_comments', 'O:8:\"stdClass\":7:{s:14:\"total_comments\";i:1;s:3:\"all\";i:1;s:8:\"approved\";s:1:\"1\";s:9:\"moderated\";i:0;s:4:\"spam\";i:0;s:5:\"trash\";i:0;s:12:\"post-trashed\";i:0;}', 'yes'),
(310, 'woocommerce_admin_last_orders_milestone', '0', 'yes'),
(311, 'woocommerce_meta_box_errors', 'a:0:{}', 'yes'),
(312, 'woocommerce_onboarding_profile', 'a:0:{}', 'yes'),
(313, 'woocommerce_setup_ab_wc_admin_onboarding', 'a', 'yes'),
(321, '_transient_woocommerce_reports-transient-version', '1588281779', 'yes'),
(322, '_transient_timeout_wc_report_orders_stats_d9e67c6fe7f654440bcd54378d4a447a', '1588886579', 'no'),
(323, '_transient_wc_report_orders_stats_d9e67c6fe7f654440bcd54378d4a447a', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-18\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2019-17\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2019-16\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2019-15\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2019-14\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(324, '_transient_timeout_wc_report_orders_stats_2a0b249e9f0c1d9e460caebf4c6590a9', '1588886579', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(325, '_transient_wc_report_orders_stats_2a0b249e9f0c1d9e460caebf4c6590a9', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2019-18\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2019-17\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2019-16\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2019-15\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2019-14\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(326, '_transient_timeout_wc_report_orders_stats_7747bd8fc3159d1039eaadc6c2008ca8', '1588886581', 'no'),
(327, '_transient_wc_report_orders_stats_7747bd8fc3159d1039eaadc6c2008ca8', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-18\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 16:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 16:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-17\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-16\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2020-15\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2020-14\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(328, '_transient_timeout_wc_report_orders_stats_ca72bb7f05adf3c73d1068fa2493c2ed', '1588886581', 'no'),
(329, '_transient_wc_report_orders_stats_ca72bb7f05adf3c73d1068fa2493c2ed', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-18\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 16:22:00\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 16:22:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-17\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-16\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2020-15\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2020-14\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(330, '_transient_timeout_wc_report_orders_stats_0db402ea42cb057d5285ba4ceeaa2140', '1588886582', 'no'),
(331, '_transient_wc_report_orders_stats_0db402ea42cb057d5285ba4ceeaa2140', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-04-01\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-04-02\";s:10:\"date_start\";s:19:\"2020-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-04-03\";s:10:\"date_start\";s:19:\"2020-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-04-04\";s:10:\"date_start\";s:19:\"2020-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-04-05\";s:10:\"date_start\";s:19:\"2020-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-04-06\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-04-07\";s:10:\"date_start\";s:19:\"2020-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-04-08\";s:10:\"date_start\";s:19:\"2020-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-04-09\";s:10:\"date_start\";s:19:\"2020-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-04-10\";s:10:\"date_start\";s:19:\"2020-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-04-11\";s:10:\"date_start\";s:19:\"2020-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-04-12\";s:10:\"date_start\";s:19:\"2020-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-04-13\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-04-14\";s:10:\"date_start\";s:19:\"2020-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-04-15\";s:10:\"date_start\";s:19:\"2020-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-04-16\";s:10:\"date_start\";s:19:\"2020-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-04-17\";s:10:\"date_start\";s:19:\"2020-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-04-18\";s:10:\"date_start\";s:19:\"2020-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-04-19\";s:10:\"date_start\";s:19:\"2020-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-04-20\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-04-21\";s:10:\"date_start\";s:19:\"2020-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-04-22\";s:10:\"date_start\";s:19:\"2020-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-04-23\";s:10:\"date_start\";s:19:\"2020-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-04-24\";s:10:\"date_start\";s:19:\"2020-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-04-25\";s:10:\"date_start\";s:19:\"2020-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-04-26\";s:10:\"date_start\";s:19:\"2020-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-04-27\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-04-28\";s:10:\"date_start\";s:19:\"2020-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-04-29\";s:10:\"date_start\";s:19:\"2020-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-04-30\";s:10:\"date_start\";s:19:\"2020-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(332, '_transient_timeout_wc_report_orders_stats_522bd64b08b6880cd4b7877a360f70dd', '1588886582', 'no'),
(333, '_transient_wc_report_orders_stats_522bd64b08b6880cd4b7877a360f70dd', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-04-01\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-04-02\";s:10:\"date_start\";s:19:\"2019-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-04-03\";s:10:\"date_start\";s:19:\"2019-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-04-04\";s:10:\"date_start\";s:19:\"2019-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-04-05\";s:10:\"date_start\";s:19:\"2019-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-04-06\";s:10:\"date_start\";s:19:\"2019-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-04-07\";s:10:\"date_start\";s:19:\"2019-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-04-08\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-04-09\";s:10:\"date_start\";s:19:\"2019-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-04-10\";s:10:\"date_start\";s:19:\"2019-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-04-11\";s:10:\"date_start\";s:19:\"2019-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-04-12\";s:10:\"date_start\";s:19:\"2019-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-04-13\";s:10:\"date_start\";s:19:\"2019-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-04-14\";s:10:\"date_start\";s:19:\"2019-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-04-15\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-04-16\";s:10:\"date_start\";s:19:\"2019-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-04-17\";s:10:\"date_start\";s:19:\"2019-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-04-18\";s:10:\"date_start\";s:19:\"2019-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-04-19\";s:10:\"date_start\";s:19:\"2019-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-04-20\";s:10:\"date_start\";s:19:\"2019-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-04-21\";s:10:\"date_start\";s:19:\"2019-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-04-22\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-04-23\";s:10:\"date_start\";s:19:\"2019-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-04-24\";s:10:\"date_start\";s:19:\"2019-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-04-25\";s:10:\"date_start\";s:19:\"2019-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-04-26\";s:10:\"date_start\";s:19:\"2019-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-04-27\";s:10:\"date_start\";s:19:\"2019-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-04-28\";s:10:\"date_start\";s:19:\"2019-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-04-29\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-04-30\";s:10:\"date_start\";s:19:\"2019-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(334, '_transient_timeout_wc_report_orders_stats_7f4d9e02286c9fcefb2eb28c1be90e48', '1588886582', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(335, '_transient_wc_report_orders_stats_7f4d9e02286c9fcefb2eb28c1be90e48', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-04-01\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-04-02\";s:10:\"date_start\";s:19:\"2020-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-04-03\";s:10:\"date_start\";s:19:\"2020-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-04-04\";s:10:\"date_start\";s:19:\"2020-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-04-05\";s:10:\"date_start\";s:19:\"2020-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-04-06\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-04-07\";s:10:\"date_start\";s:19:\"2020-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-04-08\";s:10:\"date_start\";s:19:\"2020-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-04-09\";s:10:\"date_start\";s:19:\"2020-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-04-10\";s:10:\"date_start\";s:19:\"2020-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-04-11\";s:10:\"date_start\";s:19:\"2020-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-04-12\";s:10:\"date_start\";s:19:\"2020-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-04-13\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-04-14\";s:10:\"date_start\";s:19:\"2020-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-04-15\";s:10:\"date_start\";s:19:\"2020-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-04-16\";s:10:\"date_start\";s:19:\"2020-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-04-17\";s:10:\"date_start\";s:19:\"2020-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-04-18\";s:10:\"date_start\";s:19:\"2020-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-04-19\";s:10:\"date_start\";s:19:\"2020-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-04-20\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-04-21\";s:10:\"date_start\";s:19:\"2020-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-04-22\";s:10:\"date_start\";s:19:\"2020-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-04-23\";s:10:\"date_start\";s:19:\"2020-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-04-24\";s:10:\"date_start\";s:19:\"2020-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-04-25\";s:10:\"date_start\";s:19:\"2020-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-04-26\";s:10:\"date_start\";s:19:\"2020-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-04-27\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-04-28\";s:10:\"date_start\";s:19:\"2020-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-04-29\";s:10:\"date_start\";s:19:\"2020-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-04-30\";s:10:\"date_start\";s:19:\"2020-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(336, '_transient_timeout_wc_report_orders_stats_c4bd4c516c4f0cbe15eea16aa0d2d285', '1588886582', 'no'),
(337, '_transient_wc_report_orders_stats_c4bd4c516c4f0cbe15eea16aa0d2d285', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-04-01\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-04-02\";s:10:\"date_start\";s:19:\"2019-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-04-03\";s:10:\"date_start\";s:19:\"2019-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-04-04\";s:10:\"date_start\";s:19:\"2019-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-04-05\";s:10:\"date_start\";s:19:\"2019-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-04-06\";s:10:\"date_start\";s:19:\"2019-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-04-07\";s:10:\"date_start\";s:19:\"2019-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-04-08\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-04-09\";s:10:\"date_start\";s:19:\"2019-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-04-10\";s:10:\"date_start\";s:19:\"2019-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-04-11\";s:10:\"date_start\";s:19:\"2019-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-04-12\";s:10:\"date_start\";s:19:\"2019-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-04-13\";s:10:\"date_start\";s:19:\"2019-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-04-14\";s:10:\"date_start\";s:19:\"2019-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-04-15\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-04-16\";s:10:\"date_start\";s:19:\"2019-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-04-17\";s:10:\"date_start\";s:19:\"2019-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-04-18\";s:10:\"date_start\";s:19:\"2019-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-04-19\";s:10:\"date_start\";s:19:\"2019-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-04-20\";s:10:\"date_start\";s:19:\"2019-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-04-21\";s:10:\"date_start\";s:19:\"2019-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-04-22\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-04-23\";s:10:\"date_start\";s:19:\"2019-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-04-24\";s:10:\"date_start\";s:19:\"2019-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-04-25\";s:10:\"date_start\";s:19:\"2019-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-04-26\";s:10:\"date_start\";s:19:\"2019-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-04-27\";s:10:\"date_start\";s:19:\"2019-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-04-28\";s:10:\"date_start\";s:19:\"2019-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-04-29\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-04-30\";s:10:\"date_start\";s:19:\"2019-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(338, '_transient_timeout_wc_report_coupons_stats_f3f3b1c3a2b87527d771b3ceaf252333', '1588886585', 'no'),
(339, '_transient_wc_report_coupons_stats_f3f3b1c3a2b87527d771b3ceaf252333', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-04-01\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-04-02\";s:10:\"date_start\";s:19:\"2019-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-04-03\";s:10:\"date_start\";s:19:\"2019-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-04-04\";s:10:\"date_start\";s:19:\"2019-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-04-05\";s:10:\"date_start\";s:19:\"2019-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-04-06\";s:10:\"date_start\";s:19:\"2019-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-04-07\";s:10:\"date_start\";s:19:\"2019-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-04-08\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-04-09\";s:10:\"date_start\";s:19:\"2019-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-04-10\";s:10:\"date_start\";s:19:\"2019-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-04-11\";s:10:\"date_start\";s:19:\"2019-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-04-12\";s:10:\"date_start\";s:19:\"2019-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-04-13\";s:10:\"date_start\";s:19:\"2019-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-04-14\";s:10:\"date_start\";s:19:\"2019-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-04-15\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-04-16\";s:10:\"date_start\";s:19:\"2019-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-04-17\";s:10:\"date_start\";s:19:\"2019-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-04-18\";s:10:\"date_start\";s:19:\"2019-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-04-19\";s:10:\"date_start\";s:19:\"2019-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-04-20\";s:10:\"date_start\";s:19:\"2019-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-04-21\";s:10:\"date_start\";s:19:\"2019-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-04-22\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-04-23\";s:10:\"date_start\";s:19:\"2019-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-04-24\";s:10:\"date_start\";s:19:\"2019-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-04-25\";s:10:\"date_start\";s:19:\"2019-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-04-26\";s:10:\"date_start\";s:19:\"2019-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-04-27\";s:10:\"date_start\";s:19:\"2019-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-04-28\";s:10:\"date_start\";s:19:\"2019-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-04-29\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-04-30\";s:10:\"date_start\";s:19:\"2019-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(340, '_transient_timeout_wc_report_taxes_stats_20ffb1eb1a7c5a11044a5917e0800ba6', '1588886585', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(341, '_transient_wc_report_taxes_stats_20ffb1eb1a7c5a11044a5917e0800ba6', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-04-01\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-04-02\";s:10:\"date_start\";s:19:\"2020-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-04-03\";s:10:\"date_start\";s:19:\"2020-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-04-04\";s:10:\"date_start\";s:19:\"2020-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-04-05\";s:10:\"date_start\";s:19:\"2020-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-04-06\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-04-07\";s:10:\"date_start\";s:19:\"2020-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-04-08\";s:10:\"date_start\";s:19:\"2020-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-04-09\";s:10:\"date_start\";s:19:\"2020-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-04-10\";s:10:\"date_start\";s:19:\"2020-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-04-11\";s:10:\"date_start\";s:19:\"2020-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-04-12\";s:10:\"date_start\";s:19:\"2020-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-04-13\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-04-14\";s:10:\"date_start\";s:19:\"2020-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-04-15\";s:10:\"date_start\";s:19:\"2020-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-04-16\";s:10:\"date_start\";s:19:\"2020-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-04-17\";s:10:\"date_start\";s:19:\"2020-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-04-18\";s:10:\"date_start\";s:19:\"2020-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-04-19\";s:10:\"date_start\";s:19:\"2020-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-04-20\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-04-21\";s:10:\"date_start\";s:19:\"2020-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-04-22\";s:10:\"date_start\";s:19:\"2020-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-04-23\";s:10:\"date_start\";s:19:\"2020-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-04-24\";s:10:\"date_start\";s:19:\"2020-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-04-25\";s:10:\"date_start\";s:19:\"2020-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-04-26\";s:10:\"date_start\";s:19:\"2020-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-04-27\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-04-28\";s:10:\"date_start\";s:19:\"2020-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-04-29\";s:10:\"date_start\";s:19:\"2020-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-04-30\";s:10:\"date_start\";s:19:\"2020-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(342, '_transient_timeout_wc_report_coupons_stats_f5c402d5cebd195ed74b9bbeeecfb0f9', '1588886586', 'no'),
(343, '_transient_wc_report_coupons_stats_f5c402d5cebd195ed74b9bbeeecfb0f9', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-04-01\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-04-02\";s:10:\"date_start\";s:19:\"2020-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-04-03\";s:10:\"date_start\";s:19:\"2020-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-04-04\";s:10:\"date_start\";s:19:\"2020-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-04-05\";s:10:\"date_start\";s:19:\"2020-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-04-06\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-04-07\";s:10:\"date_start\";s:19:\"2020-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-04-08\";s:10:\"date_start\";s:19:\"2020-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-04-09\";s:10:\"date_start\";s:19:\"2020-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-04-10\";s:10:\"date_start\";s:19:\"2020-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-04-11\";s:10:\"date_start\";s:19:\"2020-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-04-12\";s:10:\"date_start\";s:19:\"2020-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-04-13\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-04-14\";s:10:\"date_start\";s:19:\"2020-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-04-15\";s:10:\"date_start\";s:19:\"2020-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-04-16\";s:10:\"date_start\";s:19:\"2020-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-04-17\";s:10:\"date_start\";s:19:\"2020-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-04-18\";s:10:\"date_start\";s:19:\"2020-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-04-19\";s:10:\"date_start\";s:19:\"2020-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-04-20\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-04-21\";s:10:\"date_start\";s:19:\"2020-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-04-22\";s:10:\"date_start\";s:19:\"2020-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-04-23\";s:10:\"date_start\";s:19:\"2020-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-04-24\";s:10:\"date_start\";s:19:\"2020-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-04-25\";s:10:\"date_start\";s:19:\"2020-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-04-26\";s:10:\"date_start\";s:19:\"2020-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-04-27\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-04-28\";s:10:\"date_start\";s:19:\"2020-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-04-29\";s:10:\"date_start\";s:19:\"2020-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-04-30\";s:10:\"date_start\";s:19:\"2020-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":4:{s:6:\"amount\";d:0;s:13:\"coupons_count\";i:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(344, '_transient_timeout_wc_report_taxes_stats_19d5b5a15b42f1874df3b5743487a1aa', '1588886586', 'no'),
(345, '_transient_wc_report_taxes_stats_19d5b5a15b42f1874df3b5743487a1aa', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-04-01\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-04-02\";s:10:\"date_start\";s:19:\"2019-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-04-03\";s:10:\"date_start\";s:19:\"2019-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-04-04\";s:10:\"date_start\";s:19:\"2019-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-04-05\";s:10:\"date_start\";s:19:\"2019-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-04-06\";s:10:\"date_start\";s:19:\"2019-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-04-07\";s:10:\"date_start\";s:19:\"2019-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-04-08\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-04-09\";s:10:\"date_start\";s:19:\"2019-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-04-10\";s:10:\"date_start\";s:19:\"2019-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-04-11\";s:10:\"date_start\";s:19:\"2019-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-04-12\";s:10:\"date_start\";s:19:\"2019-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-04-13\";s:10:\"date_start\";s:19:\"2019-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-04-14\";s:10:\"date_start\";s:19:\"2019-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-04-15\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-04-16\";s:10:\"date_start\";s:19:\"2019-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-04-17\";s:10:\"date_start\";s:19:\"2019-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-04-18\";s:10:\"date_start\";s:19:\"2019-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-04-19\";s:10:\"date_start\";s:19:\"2019-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-04-20\";s:10:\"date_start\";s:19:\"2019-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-04-21\";s:10:\"date_start\";s:19:\"2019-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-04-22\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-04-23\";s:10:\"date_start\";s:19:\"2019-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-04-24\";s:10:\"date_start\";s:19:\"2019-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-04-25\";s:10:\"date_start\";s:19:\"2019-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-04-26\";s:10:\"date_start\";s:19:\"2019-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-04-27\";s:10:\"date_start\";s:19:\"2019-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-04-28\";s:10:\"date_start\";s:19:\"2019-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-04-29\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-04-30\";s:10:\"date_start\";s:19:\"2019-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":6:{s:9:\"tax_codes\";i:0;s:9:\"total_tax\";d:0;s:9:\"order_tax\";d:0;s:12:\"shipping_tax\";d:0;s:12:\"orders_count\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(346, '_transient_timeout_wc_report_downloads_stats_74a4225f2c8b10fd4003f94fd166e776', '1588886586', 'no'),
(347, '_transient_wc_report_downloads_stats_74a4225f2c8b10fd4003f94fd166e776', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2020-04-01\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:1;a:6:{s:8:\"interval\";s:10:\"2020-04-02\";s:10:\"date_start\";s:19:\"2020-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:2;a:6:{s:8:\"interval\";s:10:\"2020-04-03\";s:10:\"date_start\";s:19:\"2020-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:3;a:6:{s:8:\"interval\";s:10:\"2020-04-04\";s:10:\"date_start\";s:19:\"2020-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:4;a:6:{s:8:\"interval\";s:10:\"2020-04-05\";s:10:\"date_start\";s:19:\"2020-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:5;a:6:{s:8:\"interval\";s:10:\"2020-04-06\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:6;a:6:{s:8:\"interval\";s:10:\"2020-04-07\";s:10:\"date_start\";s:19:\"2020-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:7;a:6:{s:8:\"interval\";s:10:\"2020-04-08\";s:10:\"date_start\";s:19:\"2020-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:8;a:6:{s:8:\"interval\";s:10:\"2020-04-09\";s:10:\"date_start\";s:19:\"2020-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:9;a:6:{s:8:\"interval\";s:10:\"2020-04-10\";s:10:\"date_start\";s:19:\"2020-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:10;a:6:{s:8:\"interval\";s:10:\"2020-04-11\";s:10:\"date_start\";s:19:\"2020-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:11;a:6:{s:8:\"interval\";s:10:\"2020-04-12\";s:10:\"date_start\";s:19:\"2020-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:12;a:6:{s:8:\"interval\";s:10:\"2020-04-13\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:13;a:6:{s:8:\"interval\";s:10:\"2020-04-14\";s:10:\"date_start\";s:19:\"2020-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:14;a:6:{s:8:\"interval\";s:10:\"2020-04-15\";s:10:\"date_start\";s:19:\"2020-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:15;a:6:{s:8:\"interval\";s:10:\"2020-04-16\";s:10:\"date_start\";s:19:\"2020-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:16;a:6:{s:8:\"interval\";s:10:\"2020-04-17\";s:10:\"date_start\";s:19:\"2020-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:17;a:6:{s:8:\"interval\";s:10:\"2020-04-18\";s:10:\"date_start\";s:19:\"2020-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:18;a:6:{s:8:\"interval\";s:10:\"2020-04-19\";s:10:\"date_start\";s:19:\"2020-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:19;a:6:{s:8:\"interval\";s:10:\"2020-04-20\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:20;a:6:{s:8:\"interval\";s:10:\"2020-04-21\";s:10:\"date_start\";s:19:\"2020-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:21;a:6:{s:8:\"interval\";s:10:\"2020-04-22\";s:10:\"date_start\";s:19:\"2020-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:22;a:6:{s:8:\"interval\";s:10:\"2020-04-23\";s:10:\"date_start\";s:19:\"2020-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:23;a:6:{s:8:\"interval\";s:10:\"2020-04-24\";s:10:\"date_start\";s:19:\"2020-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:24;a:6:{s:8:\"interval\";s:10:\"2020-04-25\";s:10:\"date_start\";s:19:\"2020-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:25;a:6:{s:8:\"interval\";s:10:\"2020-04-26\";s:10:\"date_start\";s:19:\"2020-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:26;a:6:{s:8:\"interval\";s:10:\"2020-04-27\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:27;a:6:{s:8:\"interval\";s:10:\"2020-04-28\";s:10:\"date_start\";s:19:\"2020-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:28;a:6:{s:8:\"interval\";s:10:\"2020-04-29\";s:10:\"date_start\";s:19:\"2020-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:29;a:6:{s:8:\"interval\";s:10:\"2020-04-30\";s:10:\"date_start\";s:19:\"2020-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(348, '_transient_timeout_wc_report_downloads_stats_0f215f0358a0b57815f590ad1c6d167f', '1588886586', 'no');
INSERT INTO `wp_options` (`option_id`, `option_name`, `option_value`, `autoload`) VALUES
(349, '_transient_wc_report_downloads_stats_0f215f0358a0b57815f590ad1c6d167f', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}s:9:\"intervals\";a:30:{i:0;a:6:{s:8:\"interval\";s:10:\"2019-04-01\";s:10:\"date_start\";s:19:\"2019-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-01 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-01 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:1;a:6:{s:8:\"interval\";s:10:\"2019-04-02\";s:10:\"date_start\";s:19:\"2019-04-02 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-02 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-02 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-02 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:2;a:6:{s:8:\"interval\";s:10:\"2019-04-03\";s:10:\"date_start\";s:19:\"2019-04-03 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-03 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-03 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-03 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:3;a:6:{s:8:\"interval\";s:10:\"2019-04-04\";s:10:\"date_start\";s:19:\"2019-04-04 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-04 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-04 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-04 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:4;a:6:{s:8:\"interval\";s:10:\"2019-04-05\";s:10:\"date_start\";s:19:\"2019-04-05 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-05 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:5;a:6:{s:8:\"interval\";s:10:\"2019-04-06\";s:10:\"date_start\";s:19:\"2019-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-06 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-06 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:6;a:6:{s:8:\"interval\";s:10:\"2019-04-07\";s:10:\"date_start\";s:19:\"2019-04-07 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-07 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-07 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-07 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:7;a:6:{s:8:\"interval\";s:10:\"2019-04-08\";s:10:\"date_start\";s:19:\"2019-04-08 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-08 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-08 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-08 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:8;a:6:{s:8:\"interval\";s:10:\"2019-04-09\";s:10:\"date_start\";s:19:\"2019-04-09 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-09 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-09 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-09 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:9;a:6:{s:8:\"interval\";s:10:\"2019-04-10\";s:10:\"date_start\";s:19:\"2019-04-10 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-10 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-10 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-10 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:10;a:6:{s:8:\"interval\";s:10:\"2019-04-11\";s:10:\"date_start\";s:19:\"2019-04-11 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-11 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-11 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-11 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:11;a:6:{s:8:\"interval\";s:10:\"2019-04-12\";s:10:\"date_start\";s:19:\"2019-04-12 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-12 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:12;a:6:{s:8:\"interval\";s:10:\"2019-04-13\";s:10:\"date_start\";s:19:\"2019-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-13 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-13 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:13;a:6:{s:8:\"interval\";s:10:\"2019-04-14\";s:10:\"date_start\";s:19:\"2019-04-14 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-14 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-14 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-14 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:14;a:6:{s:8:\"interval\";s:10:\"2019-04-15\";s:10:\"date_start\";s:19:\"2019-04-15 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-15 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-15 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-15 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:15;a:6:{s:8:\"interval\";s:10:\"2019-04-16\";s:10:\"date_start\";s:19:\"2019-04-16 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-16 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-16 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-16 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:16;a:6:{s:8:\"interval\";s:10:\"2019-04-17\";s:10:\"date_start\";s:19:\"2019-04-17 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-17 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-17 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-17 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:17;a:6:{s:8:\"interval\";s:10:\"2019-04-18\";s:10:\"date_start\";s:19:\"2019-04-18 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-18 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-18 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-18 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:18;a:6:{s:8:\"interval\";s:10:\"2019-04-19\";s:10:\"date_start\";s:19:\"2019-04-19 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-19 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:19;a:6:{s:8:\"interval\";s:10:\"2019-04-20\";s:10:\"date_start\";s:19:\"2019-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-20 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-20 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:20;a:6:{s:8:\"interval\";s:10:\"2019-04-21\";s:10:\"date_start\";s:19:\"2019-04-21 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-21 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-21 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-21 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:21;a:6:{s:8:\"interval\";s:10:\"2019-04-22\";s:10:\"date_start\";s:19:\"2019-04-22 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-22 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-22 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-22 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:22;a:6:{s:8:\"interval\";s:10:\"2019-04-23\";s:10:\"date_start\";s:19:\"2019-04-23 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-23 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-23 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-23 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:23;a:6:{s:8:\"interval\";s:10:\"2019-04-24\";s:10:\"date_start\";s:19:\"2019-04-24 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-24 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-24 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-24 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:24;a:6:{s:8:\"interval\";s:10:\"2019-04-25\";s:10:\"date_start\";s:19:\"2019-04-25 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-25 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-25 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-25 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:25;a:6:{s:8:\"interval\";s:10:\"2019-04-26\";s:10:\"date_start\";s:19:\"2019-04-26 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-26 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:26;a:6:{s:8:\"interval\";s:10:\"2019-04-27\";s:10:\"date_start\";s:19:\"2019-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-27 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-27 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:27;a:6:{s:8:\"interval\";s:10:\"2019-04-28\";s:10:\"date_start\";s:19:\"2019-04-28 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-28 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-28 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-28 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:28;a:6:{s:8:\"interval\";s:10:\"2019-04-29\";s:10:\"date_start\";s:19:\"2019-04-29 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-29 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-29 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-29 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}i:29;a:6:{s:8:\"interval\";s:10:\"2019-04-30\";s:10:\"date_start\";s:19:\"2019-04-30 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2019-04-30 00:00:00\";s:8:\"date_end\";s:19:\"2019-04-30 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2019-04-30 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":1:{s:14:\"download_count\";i:0;}}}s:5:\"total\";i:30;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(350, '_transient_timeout_wc_report_orders_stats_756bae59039dd43006b2fdd2c506e5ad', '1588886587', 'no'),
(351, '_transient_wc_report_orders_stats_756bae59039dd43006b2fdd2c506e5ad', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":12:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-18\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 16:23:00\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 16:23:00\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-17\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-16\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2020-15\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2020-14\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":11:{s:12:\"orders_count\";i:0;s:14:\"num_items_sold\";i:0;s:11:\"total_sales\";d:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:7:\"refunds\";d:0;s:5:\"taxes\";d:0;s:8:\"shipping\";d:0;s:11:\"net_revenue\";d:0;s:11:\"gross_sales\";d:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(352, '_transient_timeout_wc_report_orders_stats_b2cd8e5a8fbc84337e971854ee24ca45', '1588886587', 'no'),
(353, '_transient_wc_report_orders_stats_b2cd8e5a8fbc84337e971854ee24ca45', 'a:2:{s:7:\"version\";s:10:\"1588281779\";s:5:\"value\";O:8:\"stdClass\":5:{s:6:\"totals\";O:8:\"stdClass\":11:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"products\";i:0;s:8:\"segments\";a:0:{}}s:9:\"intervals\";a:5:{i:0;a:6:{s:8:\"interval\";s:7:\"2020-18\";s:10:\"date_start\";s:19:\"2020-04-27 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-27 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-30 16:23:00\";s:12:\"date_end_gmt\";s:19:\"2020-04-30 16:23:00\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:1;a:6:{s:8:\"interval\";s:7:\"2020-17\";s:10:\"date_start\";s:19:\"2020-04-20 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-20 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-26 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-26 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:2;a:6:{s:8:\"interval\";s:7:\"2020-16\";s:10:\"date_start\";s:19:\"2020-04-13 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-13 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-19 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-19 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:3;a:6:{s:8:\"interval\";s:7:\"2020-15\";s:10:\"date_start\";s:19:\"2020-04-06 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-06 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-12 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-12 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}i:4;a:6:{s:8:\"interval\";s:7:\"2020-14\";s:10:\"date_start\";s:19:\"2020-04-01 00:00:00\";s:14:\"date_start_gmt\";s:19:\"2020-04-01 00:00:00\";s:8:\"date_end\";s:19:\"2020-04-05 23:59:59\";s:12:\"date_end_gmt\";s:19:\"2020-04-05 23:59:59\";s:9:\"subtotals\";O:8:\"stdClass\":10:{s:11:\"net_revenue\";d:0;s:15:\"avg_order_value\";d:0;s:12:\"orders_count\";i:0;s:19:\"avg_items_per_order\";d:0;s:14:\"num_items_sold\";i:0;s:7:\"coupons\";d:0;s:13:\"coupons_count\";i:0;s:23:\"num_returning_customers\";i:0;s:17:\"num_new_customers\";i:0;s:8:\"segments\";a:0:{}}}}s:5:\"total\";i:5;s:5:\"pages\";i:1;s:7:\"page_no\";i:1;}}', 'no'),
(356, 'category_children', 'a:0:{}', 'yes'),
(361, '_transient_timeout_wc_low_stock_count', '1590874145', 'no'),
(362, '_transient_wc_low_stock_count', '0', 'no'),
(363, '_transient_timeout_wc_outofstock_count', '1590874145', 'no'),
(364, '_transient_wc_outofstock_count', '0', 'no'),
(375, 'wp2static-options', 'a:73:{s:7:\"version\";s:5:\"6.6.7\";s:22:\"static_export_settings\";s:5:\"6.6.7\";s:14:\"rewriteWPPaths\";s:1:\"1\";s:29:\"removeConditionalHeadComments\";s:1:\"1\";s:12:\"removeWPMeta\";s:1:\"1\";s:13:\"removeWPLinks\";s:1:\"1\";s:18:\"removeHTMLComments\";s:1:\"1\";s:14:\"additionalUrls\";N;s:17:\"allowOfflineUsage\";N;s:8:\"baseHREF\";N;s:7:\"baseUrl\";s:41:\"https://sarielpinto.github.io/mi_sitio/. \";s:17:\"baseUrl-bitbucket\";N;s:16:\"baseUrl-bunnycdn\";N;s:14:\"baseUrl-folder\";s:41:\"https://sarielpinto.github.io/mi_sitio/. \";s:11:\"baseUrl-ftp\";N;s:14:\"baseUrl-github\";N;s:14:\"baseUrl-gitlab\";N;s:15:\"baseUrl-netlify\";N;s:10:\"baseUrl-s3\";N;s:11:\"baseUrl-zip\";N;s:17:\"basicAuthPassword\";N;s:13:\"basicAuthUser\";N;s:8:\"bbBranch\";N;s:6:\"bbPath\";N;s:6:\"bbRepo\";N;s:7:\"bbToken\";N;s:28:\"bunnycdnStorageZoneAccessKey\";N;s:25:\"bunnycdnPullZoneAccessKey\";N;s:18:\"bunnycdnPullZoneID\";N;s:23:\"bunnycdnStorageZoneName\";N;s:18:\"bunnycdnRemotePath\";N;s:16:\"cfDistributionId\";N;s:15:\"completionEmail\";N;s:11:\"crawl_delay\";s:1:\"0\";s:15:\"crawl_increment\";s:1:\"1\";s:9:\"crawlPort\";N;s:10:\"debug_mode\";N;s:15:\"detection_level\";s:10:\"everything\";s:20:\"delayBetweenAPICalls\";s:1:\"0\";s:15:\"deployBatchSize\";s:1:\"1\";s:11:\"excludeURLs\";N;s:11:\"ftpPassword\";N;s:13:\"ftpRemotePath\";N;s:9:\"ftpServer\";N;s:7:\"ftpPort\";N;s:6:\"ftpTLS\";N;s:11:\"ftpUsername\";N;s:8:\"ghBranch\";N;s:15:\"ghCommitMessage\";N;s:6:\"ghPath\";N;s:6:\"ghRepo\";N;s:7:\"ghToken\";N;s:8:\"glBranch\";N;s:6:\"glPath\";N;s:9:\"glProject\";N;s:7:\"glToken\";N;s:14:\"netlifyHeaders\";N;s:26:\"netlifyPersonalAccessToken\";N;s:16:\"netlifyRedirects\";N;s:13:\"netlifySiteID\";N;s:13:\"rewrite_rules\";N;s:12:\"rename_rules\";N;s:8:\"s3Bucket\";N;s:5:\"s3Key\";N;s:8:\"s3Region\";N;s:12:\"s3RemotePath\";N;s:8:\"s3Secret\";N;s:26:\"selected_deployment_option\";s:6:\"folder\";s:12:\"targetFolder\";s:37:\"C:\\xampp\\htdocs\\mi_sitio/mystaticsite\";s:12:\"useActiveFTP\";N;s:11:\"useBaseHref\";N;s:12:\"useBasicAuth\";N;s:15:\"useRelativeURLs\";N;}', 'yes'),
(394, '_site_transient_timeout_browser_86a808444a987d4d5d658209bd6758b7', '1588889174', 'no'),
(395, '_site_transient_browser_86a808444a987d4d5d658209bd6758b7', 'a:10:{s:4:\"name\";s:6:\"Chrome\";s:7:\"version\";s:13:\"81.0.4044.129\";s:8:\"platform\";s:7:\"Windows\";s:10:\"update_url\";s:29:\"https://www.google.com/chrome\";s:7:\"img_src\";s:43:\"http://s.w.org/images/browsers/chrome.png?1\";s:11:\"img_src_ssl\";s:44:\"https://s.w.org/images/browsers/chrome.png?1\";s:15:\"current_version\";s:2:\"18\";s:7:\"upgrade\";b:0;s:8:\"insecure\";b:0;s:6:\"mobile\";b:0;}', 'no'),
(396, '_site_transient_timeout_php_check_141a8d7da406be785ba26084a46e1c00', '1588889175', 'no'),
(397, '_site_transient_php_check_141a8d7da406be785ba26084a46e1c00', 'a:5:{s:19:\"recommended_version\";s:3:\"7.3\";s:15:\"minimum_version\";s:6:\"5.6.20\";s:12:\"is_supported\";b:1;s:9:\"is_secure\";b:1;s:13:\"is_acceptable\";b:1;}', 'no'),
(400, '_transient_product_query-transient-version', '1588382639', 'yes'),
(418, '_transient_health-check-site-status-result', '{\"good\":10,\"recommended\":6,\"critical\":1}', 'yes'),
(423, '_transient_timeout_woocommerce_admin_low_out_of_stock_count', '1588385965', 'no'),
(424, '_transient_woocommerce_admin_low_out_of_stock_count', '0', 'no'),
(439, '_site_transient_timeout_theme_roots', '1588444341', 'no'),
(440, '_site_transient_theme_roots', 'a:3:{s:14:\"twentynineteen\";s:7:\"/themes\";s:15:\"twentyseventeen\";s:7:\"/themes\";s:12:\"twentytwenty\";s:7:\"/themes\";}', 'no'),
(441, '_transient_timeout__woocommerce_helper_updates', '1588485741', 'no'),
(442, '_transient__woocommerce_helper_updates', 'a:4:{s:4:\"hash\";s:32:\"d751713988987e9331980363e24189ce\";s:7:\"updated\";i:1588442541;s:8:\"products\";a:0:{}s:6:\"errors\";a:1:{i:0;s:10:\"http-error\";}}', 'no'),
(444, '_site_transient_update_core', 'O:8:\"stdClass\":4:{s:7:\"updates\";a:3:{i:0;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"es_ES\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:65:\"https://downloads.wordpress.org/release/es_ES/wordpress-5.4.1.zip\";s:10:\"no_content\";b:0;s:11:\"new_bundled\";b:0;s:7:\"partial\";b:0;s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:0:\"\";}i:1;O:8:\"stdClass\":10:{s:8:\"response\";s:7:\"upgrade\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.1-partial-0.zip\";s:8:\"rollback\";b:0;}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";}i:2;O:8:\"stdClass\":11:{s:8:\"response\";s:10:\"autoupdate\";s:8:\"download\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:6:\"locale\";s:5:\"en_US\";s:8:\"packages\";O:8:\"stdClass\":5:{s:4:\"full\";s:59:\"https://downloads.wordpress.org/release/wordpress-5.4.1.zip\";s:10:\"no_content\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-no-content.zip\";s:11:\"new_bundled\";s:71:\"https://downloads.wordpress.org/release/wordpress-5.4.1-new-bundled.zip\";s:7:\"partial\";s:69:\"https://downloads.wordpress.org/release/wordpress-5.4.1-partial-0.zip\";s:8:\"rollback\";s:70:\"https://downloads.wordpress.org/release/wordpress-5.4.1-rollback-0.zip\";}s:7:\"current\";s:5:\"5.4.1\";s:7:\"version\";s:5:\"5.4.1\";s:11:\"php_version\";s:6:\"5.6.20\";s:13:\"mysql_version\";s:3:\"5.0\";s:11:\"new_bundled\";s:3:\"5.3\";s:15:\"partial_version\";s:3:\"5.4\";s:9:\"new_files\";s:0:\"\";}}s:12:\"last_checked\";i:1588442546;s:15:\"version_checked\";s:3:\"5.4\";s:12:\"translations\";a:0:{}}', 'no'),
(445, '_site_transient_update_themes', 'O:8:\"stdClass\":4:{s:12:\"last_checked\";i:1588442547;s:7:\"checked\";a:3:{s:14:\"twentynineteen\";s:3:\"1.5\";s:15:\"twentyseventeen\";s:3:\"2.3\";s:12:\"twentytwenty\";s:3:\"1.2\";}s:8:\"response\";a:0:{}s:12:\"translations\";a:3:{i:0;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:14:\"twentynineteen\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.5\";s:7:\"updated\";s:19:\"2020-04-21 17:44:41\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/theme/twentynineteen/1.5/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:15:\"twentyseventeen\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"2.3\";s:7:\"updated\";s:19:\"2020-04-14 13:15:19\";s:7:\"package\";s:79:\"https://downloads.wordpress.org/translation/theme/twentyseventeen/2.3/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:5:\"theme\";s:4:\"slug\";s:12:\"twentytwenty\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:3:\"1.2\";s:7:\"updated\";s:19:\"2020-05-02 06:40:58\";s:7:\"package\";s:76:\"https://downloads.wordpress.org/translation/theme/twentytwenty/1.2/es_ES.zip\";s:10:\"autoupdate\";b:1;}}}', 'no'),
(446, '_site_transient_update_plugins', 'O:8:\"stdClass\":5:{s:12:\"last_checked\";i:1588442548;s:7:\"checked\";a:4:{s:19:\"akismet/akismet.php\";s:5:\"4.1.4\";s:9:\"hello.php\";s:5:\"1.7.2\";s:27:\"woocommerce/woocommerce.php\";s:5:\"4.0.1\";s:39:\"static-html-output-plugin/wp2static.php\";s:5:\"6.6.7\";}s:8:\"response\";a:1:{s:19:\"akismet/akismet.php\";O:8:\"stdClass\":12:{s:2:\"id\";s:21:\"w.org/plugins/akismet\";s:4:\"slug\";s:7:\"akismet\";s:6:\"plugin\";s:19:\"akismet/akismet.php\";s:11:\"new_version\";s:5:\"4.1.5\";s:3:\"url\";s:38:\"https://wordpress.org/plugins/akismet/\";s:7:\"package\";s:56:\"https://downloads.wordpress.org/plugin/akismet.4.1.5.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:59:\"https://ps.w.org/akismet/assets/icon-256x256.png?rev=969272\";s:2:\"1x\";s:59:\"https://ps.w.org/akismet/assets/icon-128x128.png?rev=969272\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:61:\"https://ps.w.org/akismet/assets/banner-772x250.jpg?rev=479904\";}s:11:\"banners_rtl\";a:0:{}s:6:\"tested\";s:5:\"5.4.1\";s:12:\"requires_php\";b:0;s:13:\"compatibility\";O:8:\"stdClass\":0:{}}}s:12:\"translations\";a:4:{i:0;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:7:\"akismet\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.1.4\";s:7:\"updated\";s:19:\"2020-04-14 19:30:04\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/translation/plugin/akismet/4.1.4/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:1;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"hello-dolly\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"1.7.2\";s:7:\"updated\";s:19:\"2019-10-09 18:49:33\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/hello-dolly/1.7.2/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:2;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:11:\"woocommerce\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"4.0.1\";s:7:\"updated\";s:19:\"2020-04-17 07:23:00\";s:7:\"package\";s:78:\"https://downloads.wordpress.org/translation/plugin/woocommerce/4.0.1/es_ES.zip\";s:10:\"autoupdate\";b:1;}i:3;a:7:{s:4:\"type\";s:6:\"plugin\";s:4:\"slug\";s:25:\"static-html-output-plugin\";s:8:\"language\";s:5:\"es_ES\";s:7:\"version\";s:5:\"6.6.7\";s:7:\"updated\";s:19:\"2019-08-05 10:04:28\";s:7:\"package\";s:92:\"https://downloads.wordpress.org/translation/plugin/static-html-output-plugin/6.6.7/es_ES.zip\";s:10:\"autoupdate\";b:1;}}s:9:\"no_update\";a:3:{s:9:\"hello.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/hello-dolly\";s:4:\"slug\";s:11:\"hello-dolly\";s:6:\"plugin\";s:9:\"hello.php\";s:11:\"new_version\";s:5:\"1.7.2\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/hello-dolly/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/hello-dolly.1.7.2.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-256x256.jpg?rev=2052855\";s:2:\"1x\";s:64:\"https://ps.w.org/hello-dolly/assets/icon-128x128.jpg?rev=2052855\";}s:7:\"banners\";a:1:{s:2:\"1x\";s:66:\"https://ps.w.org/hello-dolly/assets/banner-772x250.jpg?rev=2052855\";}s:11:\"banners_rtl\";a:0:{}}s:27:\"woocommerce/woocommerce.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:25:\"w.org/plugins/woocommerce\";s:4:\"slug\";s:11:\"woocommerce\";s:6:\"plugin\";s:27:\"woocommerce/woocommerce.php\";s:11:\"new_version\";s:5:\"4.0.1\";s:3:\"url\";s:42:\"https://wordpress.org/plugins/woocommerce/\";s:7:\"package\";s:60:\"https://downloads.wordpress.org/plugin/woocommerce.4.0.1.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-256x256.png?rev=2075035\";s:2:\"1x\";s:64:\"https://ps.w.org/woocommerce/assets/icon-128x128.png?rev=2075035\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:67:\"https://ps.w.org/woocommerce/assets/banner-1544x500.png?rev=2075035\";s:2:\"1x\";s:66:\"https://ps.w.org/woocommerce/assets/banner-772x250.png?rev=2075035\";}s:11:\"banners_rtl\";a:0:{}}s:39:\"static-html-output-plugin/wp2static.php\";O:8:\"stdClass\":9:{s:2:\"id\";s:39:\"w.org/plugins/static-html-output-plugin\";s:4:\"slug\";s:25:\"static-html-output-plugin\";s:6:\"plugin\";s:39:\"static-html-output-plugin/wp2static.php\";s:11:\"new_version\";s:5:\"6.6.7\";s:3:\"url\";s:56:\"https://wordpress.org/plugins/static-html-output-plugin/\";s:7:\"package\";s:74:\"https://downloads.wordpress.org/plugin/static-html-output-plugin.6.6.7.zip\";s:5:\"icons\";a:2:{s:2:\"2x\";s:78:\"https://ps.w.org/static-html-output-plugin/assets/icon-256x256.jpg?rev=1953361\";s:2:\"1x\";s:78:\"https://ps.w.org/static-html-output-plugin/assets/icon-128x128.jpg?rev=1953361\";}s:7:\"banners\";a:2:{s:2:\"2x\";s:81:\"https://ps.w.org/static-html-output-plugin/assets/banner-1544x500.png?rev=2193351\";s:2:\"1x\";s:80:\"https://ps.w.org/static-html-output-plugin/assets/banner-772x250.png?rev=2193351\";}s:11:\"banners_rtl\";a:0:{}}}}', 'no');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_postmeta`
--

CREATE TABLE `wp_postmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `post_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_postmeta`
--

INSERT INTO `wp_postmeta` (`meta_id`, `post_id`, `meta_key`, `meta_value`) VALUES
(1, 2, '_wp_page_template', 'default'),
(2, 3, '_wp_page_template', 'default'),
(3, 5, '_wp_attached_file', '2020/04/2020-landscape-1.png'),
(4, 5, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:769;s:4:\"file\";s:28:\"2020/04/2020-landscape-1.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-300x192.png\";s:5:\"width\";i:300;s:6:\"height\";i:192;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:29:\"2020-landscape-1-1024x656.png\";s:5:\"width\";i:1024;s:6:\"height\";i:656;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:28:\"2020-landscape-1-768x492.png\";s:5:\"width\";i:768;s:6:\"height\";i:492;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(5, 5, '_starter_content_theme', 'twentytwenty'),
(6, 5, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(7, 6, '_thumbnail_id', '5'),
(8, 6, '_customize_draft_post_name', 'the-new-umoma-opens-its-doors'),
(9, 6, '_customize_changeset_uuid', 'b8d271bb-cab8-40a4-900e-7c927ae78336'),
(10, 7, '_customize_draft_post_name', 'acerca-de'),
(11, 7, '_customize_changeset_uuid', 'b8d271bb-cab8-40a4-900e-7c927ae78336'),
(12, 8, '_customize_draft_post_name', 'contacto'),
(13, 8, '_customize_changeset_uuid', 'b8d271bb-cab8-40a4-900e-7c927ae78336'),
(14, 9, '_customize_draft_post_name', 'blog'),
(15, 9, '_customize_changeset_uuid', 'b8d271bb-cab8-40a4-900e-7c927ae78336'),
(16, 1, '_edit_lock', '1588382584:1'),
(19, 12, '_wp_attached_file', 'woocommerce-placeholder.png'),
(20, 12, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:1200;s:6:\"height\";i:1200;s:4:\"file\";s:27:\"woocommerce-placeholder.png\";s:5:\"sizes\";a:4:{s:6:\"medium\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-300x300.png\";s:5:\"width\";i:300;s:6:\"height\";i:300;s:9:\"mime-type\";s:9:\"image/png\";}s:5:\"large\";a:4:{s:4:\"file\";s:37:\"woocommerce-placeholder-1024x1024.png\";s:5:\"width\";i:1024;s:6:\"height\";i:1024;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"medium_large\";a:4:{s:4:\"file\";s:35:\"woocommerce-placeholder-768x768.png\";s:5:\"width\";i:768;s:6:\"height\";i:768;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(21, 2, '_edit_lock', '1588284310:1'),
(24, 10, '_customize_restore_dismissed', '1'),
(27, 15, '_wp_attached_file', '2020/05/Eslogan.png'),
(28, 15, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:589;s:6:\"height\";i:81;s:4:\"file\";s:19:\"2020/05/Eslogan.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:18:\"Eslogan-300x41.png\";s:5:\"width\";i:300;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:18:\"Eslogan-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:18:\"Eslogan-450x81.png\";s:5:\"width\";i:450;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:18:\"Eslogan-100x81.png\";s:5:\"width\";i:100;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:18:\"Eslogan-450x81.png\";s:5:\"width\";i:450;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:18:\"Eslogan-100x81.png\";s:5:\"width\";i:100;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(29, 16, '_wp_attached_file', '2020/05/Logo.png'),
(30, 16, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:462;s:6:\"height\";i:449;s:4:\"file\";s:16:\"2020/05/Logo.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:16:\"Logo-300x292.png\";s:5:\"width\";i:300;s:6:\"height\";i:292;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:16:\"Logo-150x150.png\";s:5:\"width\";i:150;s:6:\"height\";i:150;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:16:\"Logo-450x449.png\";s:5:\"width\";i:450;s:6:\"height\";i:449;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:16:\"Logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:16:\"Logo-450x449.png\";s:5:\"width\";i:450;s:6:\"height\";i:449;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:16:\"Logo-100x100.png\";s:5:\"width\";i:100;s:6:\"height\";i:100;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}'),
(35, 20, '_wp_attached_file', '2020/05/Eslogan-1.png'),
(36, 20, '_wp_attachment_metadata', 'a:5:{s:5:\"width\";i:589;s:6:\"height\";i:81;s:4:\"file\";s:21:\"2020/05/Eslogan-1.png\";s:5:\"sizes\";a:6:{s:6:\"medium\";a:4:{s:4:\"file\";s:20:\"Eslogan-1-300x41.png\";s:5:\"width\";i:300;s:6:\"height\";i:41;s:9:\"mime-type\";s:9:\"image/png\";}s:9:\"thumbnail\";a:4:{s:4:\"file\";s:20:\"Eslogan-1-150x81.png\";s:5:\"width\";i:150;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:21:\"woocommerce_thumbnail\";a:5:{s:4:\"file\";s:20:\"Eslogan-1-450x81.png\";s:5:\"width\";i:450;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";s:9:\"uncropped\";b:0;}s:29:\"woocommerce_gallery_thumbnail\";a:4:{s:4:\"file\";s:20:\"Eslogan-1-100x81.png\";s:5:\"width\";i:100;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:12:\"shop_catalog\";a:4:{s:4:\"file\";s:20:\"Eslogan-1-450x81.png\";s:5:\"width\";i:450;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}s:14:\"shop_thumbnail\";a:4:{s:4:\"file\";s:20:\"Eslogan-1-100x81.png\";s:5:\"width\";i:100;s:6:\"height\";i:81;s:9:\"mime-type\";s:9:\"image/png\";}}s:10:\"image_meta\";a:12:{s:8:\"aperture\";s:1:\"0\";s:6:\"credit\";s:0:\"\";s:6:\"camera\";s:0:\"\";s:7:\"caption\";s:0:\"\";s:17:\"created_timestamp\";s:1:\"0\";s:9:\"copyright\";s:0:\"\";s:12:\"focal_length\";s:1:\"0\";s:3:\"iso\";s:1:\"0\";s:13:\"shutter_speed\";s:1:\"0\";s:5:\"title\";s:0:\"\";s:11:\"orientation\";s:1:\"0\";s:8:\"keywords\";a:0:{}}}');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_posts`
--

CREATE TABLE `wp_posts` (
  `ID` bigint(20) UNSIGNED NOT NULL,
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
  `comment_count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_posts`
--

INSERT INTO `wp_posts` (`ID`, `post_author`, `post_date`, `post_date_gmt`, `post_content`, `post_title`, `post_excerpt`, `post_status`, `comment_status`, `ping_status`, `post_password`, `post_name`, `to_ping`, `pinged`, `post_modified`, `post_modified_gmt`, `post_content_filtered`, `post_parent`, `guid`, `menu_order`, `post_type`, `post_mime_type`, `comment_count`) VALUES
(1, 1, '2020-04-30 20:12:48', '2020-04-30 20:12:48', '<!-- wp:gallery {\"ids\":[16]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" alt=\"\" data-id=\"16\" data-full-url=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" data-link=\"http://localhost/mi_sitio/2020/04/30/hola-mundo/logo/\" class=\"wp-image-16\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:image {\"id\":20,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Eslogan-1.png\" alt=\"\" class=\"wp-image-20\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¡Bienvenido a Rico Suaves!', '', 'publish', 'open', 'open', '', 'hola-mundo', '', '', '2020-05-02 01:23:59', '2020-05-02 01:23:59', '', 0, 'http://localhost/mi_sitio/?p=1', 0, 'post', '', 1),
(2, 1, '2020-04-30 20:12:48', '2020-04-30 20:12:48', '<!-- wp:paragraph -->\n<p>Esta es una página de ejemplo. Es diferente a una entrada del blog porque permanecerá en un solo lugar y aparecerá en la navegación de tu sitio (en la mayoría de los temas). La mayoría de las personas comienzan con una página «Acerca de» que les presenta a los visitantes potenciales del sitio. Podrías decir algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>¡Bienvenido! Soy camarero de día, aspirante a actor de noche y esta es mi web. Vivo en Mairena del Alcor, tengo un perro que se llama Firulais y me gusta el rebujito. (Y las tardes largas con café).</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>…o algo así:</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:quote -->\n<blockquote class=\"wp-block-quote\"><p>La empresa «Mariscos Recio» fue fundada por Antonio Recio Mata. Empezó siendo una pequeña empresa que suministraba marisco a hoteles y restaurantes, pero poco a poco se ha ido transformando en un gran imperio. Mariscos Recio, el mar al mejor precio.</p></blockquote>\n<!-- /wp:quote -->\n\n<!-- wp:paragraph -->\n<p>Como nuevo usuario de WordPress, deberías ir a <a href=\"http://localhost/mi_sitio/wp-admin/\">tu escritorio</a> para borrar esta página y crear nuevas páginas para tu contenido. ¡Pásalo bien!</p>\n<!-- /wp:paragraph -->', 'Página de ejemplo', '', 'publish', 'closed', 'open', '', 'pagina-ejemplo', '', '', '2020-04-30 20:12:48', '2020-04-30 20:12:48', '', 0, 'http://localhost/mi_sitio/?page_id=2', 0, 'page', '', 0),
(3, 1, '2020-04-30 20:12:48', '2020-04-30 20:12:48', '<!-- wp:heading --><h2>Quiénes somos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>La dirección de nuestra web es: http://localhost/mi_sitio.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué datos personales recogemos y por qué los recogemos</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Comentarios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Cuando los visitantes dejan comentarios en la web, recopilamos los datos que se muestran en el formulario de comentarios, así como la dirección IP del visitante y la cadena de agentes de usuario del navegador para ayudar a la detección de spam.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Una cadena anónima creada a partir de tu dirección de correo electrónico (también llamada hash) puede ser proporcionada al servicio de Gravatar para ver si la estás usando. La política de privacidad del servicio Gravatar está disponible aquí: https://automattic.com/privacy/. Después de la aprobación de tu comentario, la imagen de tu perfil es visible para el público en el contexto de tu comentario.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Medios</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si subes imágenes a la web, deberías evitar subir imágenes con datos de ubicación (GPS EXIF) incluidos. Los visitantes de la web pueden descargar y extraer cualquier dato de ubicación de las imágenes de la web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Formularios de contacto</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cookies</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario en nuestro sitio puedes elegir guardar tu nombre, dirección de correo electrónico y web en cookies. Esto es para tu comodidad, para que no tengas que volver a rellenar tus datos cuando dejes otro comentario. Estas cookies tendrán una duración de un año.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si tienes una cuenta y te conectas a este sitio, instalaremos una cookie temporal para determinar si tu navegador acepta cookies. Esta cookie no contiene datos personales y se elimina al cerrar el navegador.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Cuando accedas, también instalaremos varias cookies para guardar tu información de acceso y tus opciones de visualización de pantalla. Las cookies de acceso duran dos días, y las cookies de opciones de pantalla duran un año. Si seleccionas «Recuérdarme», tu acceso perdurará durante dos semanas. Si sales de tu cuenta, las cookies de acceso se eliminarán.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Si editas o publicas un artículo se guardará una cookie adicional en tu navegador. Esta cookie no incluye datos personales y simplemente indica el ID del artículo que acabas de editar. Caduca después de 1 día.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Contenido incrustado de otros sitios web</h3><!-- /wp:heading --><!-- wp:paragraph --><p>Los artículos de este sitio pueden incluir contenido incrustado (por ejemplo, vídeos, imágenes, artículos, etc.). El contenido incrustado de otras webs se comporta exactamente de la misma manera que si el visitante hubiera visitado la otra web.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>Estas web pueden recopilar datos sobre ti, utilizar cookies, incrustar un seguimiento adicional de terceros, y supervisar tu interacción con ese contenido incrustado, incluido el seguimiento de tu interacción con el contenido incrustado si tienes una cuenta y estás conectado a esa web.</p><!-- /wp:paragraph --><!-- wp:heading {\"level\":3} --><h3>Analítica</h3><!-- /wp:heading --><!-- wp:heading --><h2>Con quién compartimos tus datos</h2><!-- /wp:heading --><!-- wp:heading --><h2>Cuánto tiempo conservamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si dejas un comentario, el comentario y sus metadatos se conservan indefinidamente. Esto es para que podamos reconocer y aprobar comentarios sucesivos automáticamente, en lugar de mantenerlos en una cola de moderación.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>De los usuarios que se registran en nuestra web (si los hay), también almacenamos la información personal que proporcionan en su perfil de usuario. Todos los usuarios pueden ver, editar o eliminar su información personal en cualquier momento (excepto que no pueden cambiar su nombre de usuario). Los administradores de la web también pueden ver y editar esa información.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Qué derechos tienes sobre tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Si tienes una cuenta o has dejado comentarios en esta web, puedes solicitar recibir un archivo de exportación de los datos personales que tenemos sobre ti, incluyendo cualquier dato que nos hayas proporcionado. También puedes solicitar que eliminemos cualquier dato personal que tengamos sobre ti. Esto no incluye ningún dato que estemos obligados a conservar con fines administrativos, legales o de seguridad.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Dónde enviamos tus datos</h2><!-- /wp:heading --><!-- wp:paragraph --><p>Los comentarios de los visitantes puede que los revise un servicio de detección automática de spam.</p><!-- /wp:paragraph --><!-- wp:heading --><h2>Tu información de contacto</h2><!-- /wp:heading --><!-- wp:heading --><h2>Información adicional</h2><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Cómo protegemos tus datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué procedimientos utilizamos contra las brechas de datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>De qué terceros recibimos datos</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Qué tipo de toma de decisiones automatizada y/o perfilado hacemos con los datos del usuario</h3><!-- /wp:heading --><!-- wp:heading {\"level\":3} --><h3>Requerimientos regulatorios de revelación de información del sector</h3><!-- /wp:heading -->', 'Política de privacidad', '', 'draft', 'closed', 'open', '', 'politica-privacidad', '', '', '2020-04-30 20:12:48', '2020-04-30 20:12:48', '', 0, 'http://localhost/mi_sitio/?page_id=3', 0, 'page', '', 0),
(4, 1, '2020-04-30 20:13:08', '0000-00-00 00:00:00', '', 'Borrador automático', '', 'auto-draft', 'open', 'open', '', '', '', '', '2020-04-30 20:13:08', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/?p=4', 0, 'post', '', 0),
(5, 1, '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'open', 'closed', '', '', '', '', '2020-04-30 21:10:01', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/wp-content/uploads/2020/04/2020-landscape-1.png', 0, 'attachment', 'image/png', 0),
(6, 1, '2020-04-30 21:10:03', '0000-00-00 00:00:00', '<!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">The premier destination for modern art in Northern Sweden. Open from 10 AM to 6 PM every day during the summer months.</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:columns {\"align\":\"wide\"} --><div class=\"wp-block-columns alignwide\"><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-1.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Works and Days</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-3.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>Theatre of Operations</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --><!-- wp:column --><div class=\"wp-block-column\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>The Life I Deserve</h3><!-- /wp:heading --><!-- wp:paragraph --><p>August 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-three-quarters-4.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:heading {\"level\":3} --><h3>From Signac to Matisse</h3><!-- /wp:heading --><!-- wp:paragraph --><p>October 1 -- December 1</p><!-- /wp:paragraph --><!-- wp:button {\"className\":\"is-style-outline\"} --><div class=\"wp-block-button is-style-outline\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Read More</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div><!-- /wp:column --></div><!-- /wp:columns --><!-- wp:image {\"align\":\"full\",\"id\":37,\"sizeSlug\":\"full\"} --><figure class=\"wp-block-image alignfull size-full\"><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-landscape-2.png\" alt=\"\" class=\"wp-image-37\"/></figure><!-- /wp:image --><!-- wp:group {\"align\":\"wide\"} --><div class=\"wp-block-group alignwide\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\",\"textColor\":\"accent\"} --><h2 class=\"has-accent-color has-text-align-center\">&#8220;Cyborgs, as the philosopher Donna Haraway established, are not reverent. They do not remember the cosmos.&#8221;</h2><!-- /wp:heading --></div></div><!-- /wp:group --><!-- wp:paragraph {\"dropCap\":true} --><p class=\"has-drop-cap\">With seven floors of striking architecture, UMoMA shows exhibitions of international contemporary art, sometimes along with art historical retrospectives. Existential, political and philosophical issues are intrinsic to our programme. As visitor you are invited to guided tours artist talks, lectures, film screenings and other events with free admission</p><!-- /wp:paragraph --><!-- wp:paragraph --><p>The exhibitions are produced by UMoMA in collaboration with artists and museums around the world and they often attract international attention. UMoMA has received a Special Commendation from the European Museum of the Year, and was among the top candidates for the Swedish Museum of the Year Award as well as for the Council of Europe Museum Prize.</p><!-- /wp:paragraph --><!-- wp:paragraph --><p></p><!-- /wp:paragraph --><!-- wp:group {\"customBackgroundColor\":\"#ffffff\",\"align\":\"wide\"} --><div class=\"wp-block-group alignwide has-background\" style=\"background-color:#ffffff\"><div class=\"wp-block-group__inner-container\"><!-- wp:group --><div class=\"wp-block-group\"><div class=\"wp-block-group__inner-container\"><!-- wp:heading {\"align\":\"center\"} --><h2 class=\"has-text-align-center\">Become a Member and Get Exclusive Offers!</h2><!-- /wp:heading --><!-- wp:paragraph {\"align\":\"center\"} --><p class=\"has-text-align-center\">Members get access to exclusive exhibits and sales. Our memberships cost $99.99 and are billed annually.</p><!-- /wp:paragraph --><!-- wp:button {\"align\":\"center\"} --><div class=\"wp-block-button aligncenter\"><a class=\"wp-block-button__link\" href=\"https://make.wordpress.org/core/2019/09/27/block-editor-theme-related-updates-in-wordpress-5-3/\">Join the Club</a></div><!-- /wp:button --></div></div><!-- /wp:group --></div></div><!-- /wp:group --><!-- wp:gallery {\"ids\":[39,38],\"align\":\"wide\"} --><figure class=\"wp-block-gallery alignwide columns-2 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" alt=\"\" data-id=\"39\" data-full-url=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-square-2.png\" data-link=\"assets/images/2020-square-2/\" class=\"wp-image-39\"/></figure></li><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" alt=\"\" data-id=\"38\" data-full-url=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-square-1.png\" data-link=\"http://localhost/mi_sitio/wp-content/themes/twentytwenty/assets/images/2020-square-1/\" class=\"wp-image-38\"/></figure></li></ul></figure><!-- /wp:gallery -->', 'The New UMoMA Opens its Doors', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/?page_id=6', 0, 'page', '', 0),
(7, 1, '2020-04-30 21:10:03', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Puedes ser un artista que quiere presentarse a sí mismo y a su trabajo o un negocio con un objetivo que describir.</p>\n<!-- /wp:paragraph -->', 'Acerca de', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/?page_id=7', 0, 'page', '', 0),
(8, 1, '2020-04-30 21:10:03', '0000-00-00 00:00:00', '<!-- wp:paragraph -->\n<p>Esta es una página con información de contacto básica, como la dirección y el número de teléfono. Incluso puedes probar un plugin para añadir un formulario de contacto.</p>\n<!-- /wp:paragraph -->', 'Contacto', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/?page_id=8', 0, 'page', '', 0),
(9, 1, '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 'Blog', '', 'auto-draft', 'closed', 'closed', '', '', '', '', '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/?page_id=9', 0, 'page', '', 0),
(10, 1, '2020-04-30 21:10:03', '0000-00-00 00:00:00', '{\n    \"widget_text[2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjIwOiJBY2VyY2EgZGUgZXN0ZSBzaXRpbyI7czo0OiJ0ZXh0IjtzOjEwODoiRXN0ZSBwdWVkZSBzZXIgdW4gYnVlbiBsdWdhciBwYXJhIHByZXNlbnRhcnRlIGEgdGkgbWlzbW8geSBhIHR1IHNpdGlvIG8gcGFyYSBpbmNsdWlyIGFsZ3VuYXMgYWNyZWRpdGFjaW9uZXMuIjtzOjY6ImZpbHRlciI7YjoxO3M6NjoidmlzdWFsIjtiOjE7fQ==\",\n            \"title\": \"Acerca de este sitio\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"4b85bfd7f5b0f24b2726c904077a1ce0\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"sidebars_widgets[sidebar-1]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-2\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"widget_text[3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"encoded_serialized_instance\": \"YTo0OntzOjU6InRpdGxlIjtzOjEzOiJFbmN1w6ludHJhbm9zIjtzOjQ6InRleHQiO3M6MTYxOiI8c3Ryb25nPkRpcmVjY2nDs248L3N0cm9uZz4KQ2FsbGUgUHJpbmNpcGFsLCAxMjMKTWFkcmlkLCAyODAwMAoKPHN0cm9uZz5Ib3Jhczwvc3Ryb25nPgpMdW5lcyBhIHZpZXJuZXM6IGRlIDk6MDAgYSAxNzowMCBoLgpTw6FiYWRvIHkgZG9taW5nbzogZGUgMTE6MDAgYSAxNTowMCBoLiI7czo2OiJmaWx0ZXIiO2I6MTtzOjY6InZpc3VhbCI7YjoxO30=\",\n            \"title\": \"Encu\\u00e9ntranos\",\n            \"is_widget_customizer_js_value\": true,\n            \"instance_hash_key\": \"d6bdbf9b04d937c5203bc9c5c7945846\"\n        },\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"sidebars_widgets[sidebar-2]\": {\n        \"starter_content\": true,\n        \"value\": [\n            \"text-3\"\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menus_created_posts\": {\n        \"starter_content\": true,\n        \"value\": [\n            5,\n            6,\n            7,\n            8,\n            9\n        ],\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-1]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Inicio\",\n            \"url\": \"http://localhost/mi_sitio/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -1,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-2]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Acerca de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-3]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-4]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -1,\n            \"title\": \"Contacto\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"twentytwenty::nav_menu_locations[primary]\": {\n        \"starter_content\": true,\n        \"value\": -1,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Primary\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-5]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"custom\",\n            \"title\": \"Inicio\",\n            \"url\": \"http://localhost/mi_sitio/\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -5,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-6]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 7,\n            \"position\": 1,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Acerca de\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-7]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 9,\n            \"position\": 2,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Blog\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-8]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"type\": \"post_type\",\n            \"object\": \"page\",\n            \"object_id\": 8,\n            \"position\": 3,\n            \"nav_menu_term_id\": -5,\n            \"title\": \"Contacto\"\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"twentytwenty::nav_menu_locations[expanded]\": {\n        \"starter_content\": true,\n        \"value\": -5,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"name\": \"Social Links Menu\"\n        },\n        \"type\": \"nav_menu\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-9]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Yelp\",\n            \"url\": \"https://www.yelp.com\",\n            \"position\": 0,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-10]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Facebook\",\n            \"url\": \"https://www.facebook.com/wordpress\",\n            \"position\": 1,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-11]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Twitter\",\n            \"url\": \"https://twitter.com/wordpress\",\n            \"position\": 2,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-12]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Instagram\",\n            \"url\": \"https://www.instagram.com/explore/tags/wordcamp/\",\n            \"position\": 3,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"nav_menu_item[-13]\": {\n        \"starter_content\": true,\n        \"value\": {\n            \"title\": \"Correo electr\\u00f3nico\",\n            \"url\": \"mailto:wordpress@example.com\",\n            \"position\": 4,\n            \"nav_menu_term_id\": -9,\n            \"object_id\": 0\n        },\n        \"type\": \"nav_menu_item\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"twentytwenty::nav_menu_locations[social]\": {\n        \"starter_content\": true,\n        \"value\": -9,\n        \"type\": \"theme_mod\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"show_on_front\": {\n        \"starter_content\": true,\n        \"value\": \"page\",\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"page_on_front\": {\n        \"starter_content\": true,\n        \"value\": 6,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    },\n    \"page_for_posts\": {\n        \"starter_content\": true,\n        \"value\": 9,\n        \"type\": \"option\",\n        \"user_id\": 1,\n        \"date_modified_gmt\": \"2020-04-30 21:10:03\"\n    }\n}', '', '', 'auto-draft', 'closed', 'closed', '', 'b8d271bb-cab8-40a4-900e-7c927ae78336', '', '', '2020-04-30 21:10:03', '0000-00-00 00:00:00', '', 0, 'http://localhost/mi_sitio/?p=10', 0, 'customize_changeset', '', 0),
(11, 1, '2020-04-30 21:10:47', '2020-04-30 21:10:47', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, danie!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-30 21:10:47', '2020-04-30 21:10:47', '', 1, 'http://localhost/mi_sitio/2020/04/30/1-revision-v1/', 0, 'revision', '', 0),
(12, 1, '2020-04-30 21:21:32', '2020-04-30 21:21:32', '', 'woocommerce-placeholder', '', 'inherit', 'open', 'closed', '', 'woocommerce-placeholder', '', '', '2020-04-30 21:21:32', '2020-04-30 21:21:32', '', 0, 'http://localhost/mi_sitio/wp-content/uploads/2020/04/woocommerce-placeholder.png', 0, 'attachment', 'image/png', 0),
(13, 1, '2020-04-30 22:08:13', '2020-04-30 22:08:13', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Hola, Noé!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-04-30 22:08:13', '2020-04-30 22:08:13', '', 1, 'http://localhost/mi_sitio/2020/04/30/1-revision-v1/', 0, 'revision', '', 0),
(14, 1, '2020-05-02 01:19:48', '2020-05-02 01:19:48', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡BIenvenido a Rico Suaves!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-02 01:19:48', '2020-05-02 01:19:48', '', 1, 'http://localhost/mi_sitio/2020/05/02/1-revision-v1/', 0, 'revision', '', 0),
(15, 1, '2020-05-02 01:21:19', '2020-05-02 01:21:19', '', 'Eslogan', '', 'inherit', 'open', 'closed', '', 'eslogan', '', '', '2020-05-02 01:21:19', '2020-05-02 01:21:19', '', 1, 'http://localhost/mi_sitio/wp-content/uploads/2020/05/Eslogan.png', 0, 'attachment', 'image/png', 0),
(16, 1, '2020-05-02 01:21:21', '2020-05-02 01:21:21', '', 'Logo', '', 'inherit', 'open', 'closed', '', 'logo', '', '', '2020-05-02 01:21:21', '2020-05-02 01:21:21', '', 1, 'http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png', 0, 'attachment', 'image/png', 0),
(17, 1, '2020-05-02 01:21:33', '2020-05-02 01:21:33', '<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->\n\n<!-- wp:gallery {\"ids\":[16]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" alt=\"\" data-id=\"16\" data-full-url=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" data-link=\"http://localhost/mi_sitio/2020/04/30/hola-mundo/logo/\" class=\"wp-image-16\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->', '¡BIenvenido a Rico Suaves!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-02 01:21:33', '2020-05-02 01:21:33', '', 1, 'http://localhost/mi_sitio/2020/05/02/1-revision-v1/', 0, 'revision', '', 0),
(18, 1, '2020-05-02 01:25:21', '2020-05-02 01:25:21', '<!-- wp:gallery {\"ids\":[16]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" alt=\"\" data-id=\"16\" data-full-url=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" data-link=\"http://localhost/mi_sitio/2020/04/30/hola-mundo/logo/\" class=\"wp-image-16\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:image {\"id\":20,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Eslogan-1.png\" alt=\"\" class=\"wp-image-20\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¡BIenvenido a Rico Suaves!', '', 'inherit', 'closed', 'closed', '', '1-autosave-v1', '', '', '2020-05-02 01:25:21', '2020-05-02 01:25:21', '', 1, 'http://localhost/mi_sitio/2020/05/02/1-autosave-v1/', 0, 'revision', '', 0),
(19, 1, '2020-05-02 01:22:11', '2020-05-02 01:22:11', '<!-- wp:gallery {\"ids\":[16]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" alt=\"\" data-id=\"16\" data-full-url=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" data-link=\"http://localhost/mi_sitio/2020/04/30/hola-mundo/logo/\" class=\"wp-image-16\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:paragraph -->\n<p>Bienvenido a WordPress. Esta es tu primera entrada. Edítala o bórrala, ¡luego empieza a escribir!</p>\n<!-- /wp:paragraph -->', '¡Bienvenido a Rico Suaves!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-02 01:22:11', '2020-05-02 01:22:11', '', 1, 'http://localhost/mi_sitio/2020/05/02/1-revision-v1/', 0, 'revision', '', 0),
(20, 1, '2020-05-02 01:23:36', '2020-05-02 01:23:36', '', 'Eslogan-1', '', 'inherit', 'open', 'closed', '', 'eslogan-1', '', '', '2020-05-02 01:23:36', '2020-05-02 01:23:36', '', 1, 'http://localhost/mi_sitio/wp-content/uploads/2020/05/Eslogan-1.png', 0, 'attachment', 'image/png', 0),
(21, 1, '2020-05-02 01:23:59', '2020-05-02 01:23:59', '<!-- wp:gallery {\"ids\":[16]} -->\n<figure class=\"wp-block-gallery columns-1 is-cropped\"><ul class=\"blocks-gallery-grid\"><li class=\"blocks-gallery-item\"><figure><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" alt=\"\" data-id=\"16\" data-full-url=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Logo.png\" data-link=\"http://localhost/mi_sitio/2020/04/30/hola-mundo/logo/\" class=\"wp-image-16\"/></figure></li></ul></figure>\n<!-- /wp:gallery -->\n\n<!-- wp:image {\"id\":20,\"sizeSlug\":\"large\"} -->\n<figure class=\"wp-block-image size-large\"><img src=\"http://localhost/mi_sitio/wp-content/uploads/2020/05/Eslogan-1.png\" alt=\"\" class=\"wp-image-20\"/></figure>\n<!-- /wp:image -->\n\n<!-- wp:paragraph -->\n<p></p>\n<!-- /wp:paragraph -->', '¡Bienvenido a Rico Suaves!', '', 'inherit', 'closed', 'closed', '', '1-revision-v1', '', '', '2020-05-02 01:23:59', '2020-05-02 01:23:59', '', 1, 'http://localhost/mi_sitio/2020/05/02/1-revision-v1/', 0, 'revision', '', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_termmeta`
--

CREATE TABLE `wp_termmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_terms`
--

CREATE TABLE `wp_terms` (
  `term_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `term_group` bigint(10) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_terms`
--

INSERT INTO `wp_terms` (`term_id`, `name`, `slug`, `term_group`) VALUES
(1, 'Sin categoría', 'sin-categoria', 0),
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
(15, 'Uncategorized', 'uncategorized', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_relationships`
--

CREATE TABLE `wp_term_relationships` (
  `object_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `term_order` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_relationships`
--

INSERT INTO `wp_term_relationships` (`object_id`, `term_taxonomy_id`, `term_order`) VALUES
(1, 1, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_term_taxonomy`
--

CREATE TABLE `wp_term_taxonomy` (
  `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL,
  `term_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `taxonomy` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `count` bigint(20) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_term_taxonomy`
--

INSERT INTO `wp_term_taxonomy` (`term_taxonomy_id`, `term_id`, `taxonomy`, `description`, `parent`, `count`) VALUES
(1, 1, 'category', '', 0, 1),
(2, 2, 'product_type', '', 0, 0),
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
(15, 15, 'product_cat', '', 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_usermeta`
--

CREATE TABLE `wp_usermeta` (
  `umeta_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_usermeta`
--

INSERT INTO `wp_usermeta` (`umeta_id`, `user_id`, `meta_key`, `meta_value`) VALUES
(1, 1, 'nickname', 'sariel'),
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
(15, 1, 'show_welcome_panel', '1'),
(16, 1, 'session_tokens', 'a:3:{s:64:\"65a7539003745ee4f09375e24b46f9a956c9238f135677991b43684f721dbcfb\";a:4:{s:10:\"expiration\";i:1588450384;s:2:\"ip\";s:9:\"127.0.0.1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1588277584;}s:64:\"3b88fc055d1b6ce6c1b2252d6ace32c65e4c04d1ca007895dfb22992e9ebd815\";a:4:{s:10:\"expiration\";i:1589490589;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:78:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:75.0) Gecko/20100101 Firefox/75.0\";s:5:\"login\";i:1588280989;}s:64:\"9cb66615328ed0754ae429219b0f1579af46b4bad94571b3a6d86bc40cf92021\";a:4:{s:10:\"expiration\";i:1588457171;s:2:\"ip\";s:3:\"::1\";s:2:\"ua\";s:131:\"Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/81.0.4044.129 Safari/537.36 Edg/81.0.416.68\";s:5:\"login\";i:1588284371;}}'),
(17, 1, 'wp_dashboard_quick_press_last_post_id', '4'),
(18, 1, 'community-events-location', 'a:1:{s:2:\"ip\";s:9:\"127.0.0.0\";}'),
(19, 1, '_woocommerce_tracks_anon_id', 'woo:HUIAhGBBGcxMoWqWR7hdivRC'),
(20, 1, 'wc_last_active', '1588377600'),
(21, 1, 'dismissed_install_notice', '1'),
(23, 1, '_order_count', '0');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_users`
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
  `user_status` int(11) NOT NULL DEFAULT 0,
  `display_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_users`
--

INSERT INTO `wp_users` (`ID`, `user_login`, `user_pass`, `user_nicename`, `user_email`, `user_url`, `user_registered`, `user_activation_key`, `user_status`, `display_name`) VALUES
(1, 'sariel', '$P$B7yaXQBfS35m3GOeTbN/Az42eOB/R01', 'sariel', 'sarielux26@gmail.com', 'http://localhost/mi_sitio', '2020-04-30 20:12:47', '', 0, 'sariel');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_admin_notes`
--

CREATE TABLE `wp_wc_admin_notes` (
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `locale` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content_data` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `date_reminder` datetime DEFAULT NULL,
  `is_snoozable` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_admin_notes`
--

INSERT INTO `wp_wc_admin_notes` (`note_id`, `name`, `type`, `locale`, `title`, `content`, `icon`, `content_data`, `status`, `source`, `date_created`, `date_reminder`, `is_snoozable`) VALUES
(1, 'wc-admin-store-notice-setting-moved', 'info', 'en_US', 'Looking for the Store Notice setting?', 'It can now be found in the Customizer.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-30 21:21:37', NULL, 0),
(2, 'wc-admin-welcome-note', 'info', 'en_US', 'New feature(s)', 'Welcome to the new WooCommerce experience! In this new release you\'ll be able to have a glimpse of how your store is doing in the Dashboard, manage important aspects of your business (such as managing orders, stock, reviews) from anywhere in the interface, dive into your store data with a completely new Analytics section and more!', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-30 21:21:37', NULL, 0),
(3, 'wc-admin-wc-helper-connection', 'info', 'en_US', 'Connect to WooCommerce.com', 'Connect to get important product notifications and updates.', 'info', '{}', 'unactioned', 'woocommerce-admin', '2020-04-30 21:21:37', NULL, 0),
(4, 'wc-admin-add-first-product', 'info', 'en_US', 'Add your first product', 'Grow your revenue by adding products to your store. Add products manually, import from a sheet, or migrate from another platform.', 'product', '{}', 'unactioned', 'woocommerce-admin', '2020-04-30 21:21:38', NULL, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_admin_note_actions`
--

CREATE TABLE `wp_wc_admin_note_actions` (
  `action_id` bigint(20) UNSIGNED NOT NULL,
  `note_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `query` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_primary` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_admin_note_actions`
--

INSERT INTO `wp_wc_admin_note_actions` (`action_id`, `note_id`, `name`, `label`, `query`, `status`, `is_primary`) VALUES
(1, 1, 'open-customizer', 'Open Customizer', 'customize.php', 'actioned', 0),
(2, 2, 'learn-more', 'Learn more', 'https://woocommerce.wordpress.com/', 'actioned', 0),
(3, 3, 'connect', 'Connect', '?page=wc-addons&section=helper', 'actioned', 0),
(4, 4, 'add-a-product', 'Add a product', 'http://localhost/mi_sitio/wp-admin/post-new.php?post_type=product', 'actioned', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_category_lookup`
--

CREATE TABLE `wp_wc_category_lookup` (
  `category_tree_id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_category_lookup`
--

INSERT INTO `wp_wc_category_lookup` (`category_tree_id`, `category_id`) VALUES
(15, 15);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_customer_lookup`
--

CREATE TABLE `wp_wc_customer_lookup` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
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
  `state` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_download_log`
--

CREATE TABLE `wp_wc_download_log` (
  `download_log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_ip_address` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_coupon_lookup`
--

CREATE TABLE `wp_wc_order_coupon_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `coupon_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `discount_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_product_lookup`
--

CREATE TABLE `wp_wc_order_product_lookup` (
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
  `shipping_tax_amount` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_stats`
--

CREATE TABLE `wp_wc_order_stats` (
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
  `customer_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_order_tax_lookup`
--

CREATE TABLE `wp_wc_order_tax_lookup` (
  `order_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `shipping_tax` double NOT NULL DEFAULT 0,
  `order_tax` double NOT NULL DEFAULT 0,
  `total_tax` double NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_product_meta_lookup`
--

CREATE TABLE `wp_wc_product_meta_lookup` (
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
  `tax_class` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_tax_rate_classes`
--

CREATE TABLE `wp_wc_tax_rate_classes` (
  `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_wc_tax_rate_classes`
--

INSERT INTO `wp_wc_tax_rate_classes` (`tax_rate_class_id`, `name`, `slug`) VALUES
(1, 'Reduced rate', 'reduced-rate'),
(2, 'Zero rate', 'zero-rate');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_wc_webhooks`
--

CREATE TABLE `wp_wc_webhooks` (
  `webhook_id` bigint(20) UNSIGNED NOT NULL,
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
  `pending_delivery` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_api_keys`
--

CREATE TABLE `wp_woocommerce_api_keys` (
  `key_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `permissions` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_key` char(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `consumer_secret` char(43) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nonces` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `truncated_key` char(7) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_access` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_attribute_taxonomies`
--

CREATE TABLE `wp_woocommerce_attribute_taxonomies` (
  `attribute_id` bigint(20) UNSIGNED NOT NULL,
  `attribute_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_label` varchar(200) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `attribute_type` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_orderby` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `attribute_public` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_downloadable_product_permissions`
--

CREATE TABLE `wp_woocommerce_downloadable_product_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `download_id` varchar(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `order_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `order_key` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_email` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `downloads_remaining` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_granted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `access_expires` datetime DEFAULT NULL,
  `download_count` bigint(20) UNSIGNED NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_log`
--

CREATE TABLE `wp_woocommerce_log` (
  `log_id` bigint(20) UNSIGNED NOT NULL,
  `timestamp` datetime NOT NULL,
  `level` smallint(4) NOT NULL,
  `source` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `context` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_itemmeta`
--

CREATE TABLE `wp_woocommerce_order_itemmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_order_items`
--

CREATE TABLE `wp_woocommerce_order_items` (
  `order_item_id` bigint(20) UNSIGNED NOT NULL,
  `order_item_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_item_type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `order_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokenmeta`
--

CREATE TABLE `wp_woocommerce_payment_tokenmeta` (
  `meta_id` bigint(20) UNSIGNED NOT NULL,
  `payment_token_id` bigint(20) UNSIGNED NOT NULL,
  `meta_key` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_value` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_payment_tokens`
--

CREATE TABLE `wp_woocommerce_payment_tokens` (
  `token_id` bigint(20) UNSIGNED NOT NULL,
  `gateway_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `type` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_sessions`
--

CREATE TABLE `wp_woocommerce_sessions` (
  `session_id` bigint(20) UNSIGNED NOT NULL,
  `session_key` char(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_value` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `session_expiry` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `wp_woocommerce_sessions`
--

INSERT INTO `wp_woocommerce_sessions` (`session_id`, `session_key`, `session_value`, `session_expiry`) VALUES
(1, '1', 'a:7:{s:4:\"cart\";s:6:\"a:0:{}\";s:11:\"cart_totals\";s:367:\"a:15:{s:8:\"subtotal\";i:0;s:12:\"subtotal_tax\";i:0;s:14:\"shipping_total\";i:0;s:12:\"shipping_tax\";i:0;s:14:\"shipping_taxes\";a:0:{}s:14:\"discount_total\";i:0;s:12:\"discount_tax\";i:0;s:19:\"cart_contents_total\";i:0;s:17:\"cart_contents_tax\";i:0;s:19:\"cart_contents_taxes\";a:0:{}s:9:\"fee_total\";i:0;s:7:\"fee_tax\";i:0;s:9:\"fee_taxes\";a:0:{}s:5:\"total\";i:0;s:9:\"total_tax\";i:0;}\";s:15:\"applied_coupons\";s:6:\"a:0:{}\";s:22:\"coupon_discount_totals\";s:6:\"a:0:{}\";s:26:\"coupon_discount_tax_totals\";s:6:\"a:0:{}\";s:21:\"removed_cart_contents\";s:6:\"a:0:{}\";s:8:\"customer\";s:708:\"a:26:{s:2:\"id\";s:1:\"1\";s:13:\"date_modified\";s:0:\"\";s:8:\"postcode\";s:0:\"\";s:4:\"city\";s:0:\"\";s:9:\"address_1\";s:0:\"\";s:7:\"address\";s:0:\"\";s:9:\"address_2\";s:0:\"\";s:5:\"state\";s:0:\"\";s:7:\"country\";s:2:\"GB\";s:17:\"shipping_postcode\";s:0:\"\";s:13:\"shipping_city\";s:0:\"\";s:18:\"shipping_address_1\";s:0:\"\";s:16:\"shipping_address\";s:0:\"\";s:18:\"shipping_address_2\";s:0:\"\";s:14:\"shipping_state\";s:0:\"\";s:16:\"shipping_country\";s:2:\"GB\";s:13:\"is_vat_exempt\";s:0:\"\";s:19:\"calculated_shipping\";s:0:\"\";s:10:\"first_name\";s:0:\"\";s:9:\"last_name\";s:0:\"\";s:7:\"company\";s:0:\"\";s:5:\"phone\";s:0:\"\";s:5:\"email\";s:20:\"sarielux26@gmail.com\";s:19:\"shipping_first_name\";s:0:\"\";s:18:\"shipping_last_name\";s:0:\"\";s:16:\"shipping_company\";s:0:\"\";}\";}', 1588454496);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zones`
--

CREATE TABLE `wp_woocommerce_shipping_zones` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `zone_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone_order` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_locations`
--

CREATE TABLE `wp_woocommerce_shipping_zone_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_shipping_zone_methods`
--

CREATE TABLE `wp_woocommerce_shipping_zone_methods` (
  `zone_id` bigint(20) UNSIGNED NOT NULL,
  `instance_id` bigint(20) UNSIGNED NOT NULL,
  `method_id` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `method_order` bigint(20) UNSIGNED NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rates`
--

CREATE TABLE `wp_woocommerce_tax_rates` (
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_country` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_state` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_name` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `tax_rate_priority` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_compound` int(1) NOT NULL DEFAULT 0,
  `tax_rate_shipping` int(1) NOT NULL DEFAULT 1,
  `tax_rate_order` bigint(20) UNSIGNED NOT NULL,
  `tax_rate_class` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wp_woocommerce_tax_rate_locations`
--

CREATE TABLE `wp_woocommerce_tax_rate_locations` (
  `location_id` bigint(20) UNSIGNED NOT NULL,
  `location_code` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` bigint(20) UNSIGNED NOT NULL,
  `location_type` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `hook` (`hook`),
  ADD KEY `status` (`status`),
  ADD KEY `scheduled_date_gmt` (`scheduled_date_gmt`),
  ADD KEY `args` (`args`),
  ADD KEY `group_id` (`group_id`),
  ADD KEY `last_attempt_gmt` (`last_attempt_gmt`),
  ADD KEY `claim_id` (`claim_id`);

--
-- Indices de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  ADD PRIMARY KEY (`claim_id`),
  ADD KEY `date_created_gmt` (`date_created_gmt`);

--
-- Indices de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `action_id` (`action_id`),
  ADD KEY `log_date_gmt` (`log_date_gmt`);

--
-- Indices de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `comment_id` (`comment_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_comments`
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
-- Indices de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  ADD PRIMARY KEY (`link_id`),
  ADD KEY `link_visible` (`link_visible`);

--
-- Indices de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  ADD PRIMARY KEY (`option_id`),
  ADD UNIQUE KEY `option_name` (`option_name`),
  ADD KEY `autoload` (`autoload`);

--
-- Indices de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `post_id` (`post_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `post_name` (`post_name`(191)),
  ADD KEY `type_status_date` (`post_type`,`post_status`,`post_date`,`ID`),
  ADD KEY `post_parent` (`post_parent`),
  ADD KEY `post_author` (`post_author`);

--
-- Indices de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  ADD PRIMARY KEY (`term_id`),
  ADD KEY `slug` (`slug`(191)),
  ADD KEY `name` (`name`(191));

--
-- Indices de la tabla `wp_term_relationships`
--
ALTER TABLE `wp_term_relationships`
  ADD PRIMARY KEY (`object_id`,`term_taxonomy_id`),
  ADD KEY `term_taxonomy_id` (`term_taxonomy_id`);

--
-- Indices de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  ADD PRIMARY KEY (`term_taxonomy_id`),
  ADD UNIQUE KEY `term_id_taxonomy` (`term_id`,`taxonomy`),
  ADD KEY `taxonomy` (`taxonomy`);

--
-- Indices de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  ADD PRIMARY KEY (`umeta_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `meta_key` (`meta_key`(191));

--
-- Indices de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `user_login_key` (`user_login`),
  ADD KEY `user_nicename` (`user_nicename`),
  ADD KEY `user_email` (`user_email`);

--
-- Indices de la tabla `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  ADD PRIMARY KEY (`note_id`);

--
-- Indices de la tabla `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  ADD PRIMARY KEY (`action_id`),
  ADD KEY `note_id` (`note_id`);

--
-- Indices de la tabla `wp_wc_category_lookup`
--
ALTER TABLE `wp_wc_category_lookup`
  ADD PRIMARY KEY (`category_tree_id`,`category_id`);

--
-- Indices de la tabla `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  ADD PRIMARY KEY (`customer_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD KEY `email` (`email`);

--
-- Indices de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD PRIMARY KEY (`download_log_id`),
  ADD KEY `permission_id` (`permission_id`),
  ADD KEY `timestamp` (`timestamp`);

--
-- Indices de la tabla `wp_wc_order_coupon_lookup`
--
ALTER TABLE `wp_wc_order_coupon_lookup`
  ADD PRIMARY KEY (`order_id`,`coupon_id`),
  ADD KEY `coupon_id` (`coupon_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_order_product_lookup`
--
ALTER TABLE `wp_wc_order_product_lookup`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_order_stats`
--
ALTER TABLE `wp_wc_order_stats`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `date_created` (`date_created`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `status` (`status`(191));

--
-- Indices de la tabla `wp_wc_order_tax_lookup`
--
ALTER TABLE `wp_wc_order_tax_lookup`
  ADD PRIMARY KEY (`order_id`,`tax_rate_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `date_created` (`date_created`);

--
-- Indices de la tabla `wp_wc_product_meta_lookup`
--
ALTER TABLE `wp_wc_product_meta_lookup`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `virtual` (`virtual`),
  ADD KEY `downloadable` (`downloadable`),
  ADD KEY `stock_status` (`stock_status`),
  ADD KEY `stock_quantity` (`stock_quantity`),
  ADD KEY `onsale` (`onsale`),
  ADD KEY `min_max_price` (`min_price`,`max_price`);

--
-- Indices de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  ADD PRIMARY KEY (`tax_rate_class_id`),
  ADD UNIQUE KEY `slug` (`slug`(191));

--
-- Indices de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  ADD PRIMARY KEY (`webhook_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  ADD PRIMARY KEY (`key_id`),
  ADD KEY `consumer_key` (`consumer_key`),
  ADD KEY `consumer_secret` (`consumer_secret`);

--
-- Indices de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  ADD PRIMARY KEY (`attribute_id`),
  ADD KEY `attribute_name` (`attribute_name`(20));

--
-- Indices de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  ADD PRIMARY KEY (`permission_id`),
  ADD KEY `download_order_key_product` (`product_id`,`order_id`,`order_key`(16),`download_id`),
  ADD KEY `download_order_product` (`download_id`,`order_id`,`product_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `user_order_remaining_expires` (`user_id`,`order_id`,`downloads_remaining`,`access_expires`);

--
-- Indices de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  ADD PRIMARY KEY (`log_id`),
  ADD KEY `level` (`level`);

--
-- Indices de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `order_item_id` (`order_item_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  ADD PRIMARY KEY (`order_item_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indices de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  ADD PRIMARY KEY (`meta_id`),
  ADD KEY `payment_token_id` (`payment_token_id`),
  ADD KEY `meta_key` (`meta_key`(32));

--
-- Indices de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  ADD PRIMARY KEY (`token_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indices de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  ADD PRIMARY KEY (`session_id`),
  ADD UNIQUE KEY `session_key` (`session_key`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  ADD PRIMARY KEY (`zone_id`);

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `location_id` (`location_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- Indices de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  ADD PRIMARY KEY (`instance_id`);

--
-- Indices de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  ADD PRIMARY KEY (`tax_rate_id`),
  ADD KEY `tax_rate_country` (`tax_rate_country`),
  ADD KEY `tax_rate_state` (`tax_rate_state`(2)),
  ADD KEY `tax_rate_class` (`tax_rate_class`(10)),
  ADD KEY `tax_rate_priority` (`tax_rate_priority`);

--
-- Indices de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  ADD PRIMARY KEY (`location_id`),
  ADD KEY `tax_rate_id` (`tax_rate_id`),
  ADD KEY `location_type_code` (`location_type`(10),`location_code`(20));

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_actions`
--
ALTER TABLE `wp_actionscheduler_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_claims`
--
ALTER TABLE `wp_actionscheduler_claims`
  MODIFY `claim_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_groups`
--
ALTER TABLE `wp_actionscheduler_groups`
  MODIFY `group_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_actionscheduler_logs`
--
ALTER TABLE `wp_actionscheduler_logs`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `wp_commentmeta`
--
ALTER TABLE `wp_commentmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_comments`
--
ALTER TABLE `wp_comments`
  MODIFY `comment_ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_links`
--
ALTER TABLE `wp_links`
  MODIFY `link_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_options`
--
ALTER TABLE `wp_options`
  MODIFY `option_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=465;

--
-- AUTO_INCREMENT de la tabla `wp_postmeta`
--
ALTER TABLE `wp_postmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT de la tabla `wp_posts`
--
ALTER TABLE `wp_posts`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT de la tabla `wp_termmeta`
--
ALTER TABLE `wp_termmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_terms`
--
ALTER TABLE `wp_terms`
  MODIFY `term_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `wp_term_taxonomy`
--
ALTER TABLE `wp_term_taxonomy`
  MODIFY `term_taxonomy_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `wp_usermeta`
--
ALTER TABLE `wp_usermeta`
  MODIFY `umeta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT de la tabla `wp_users`
--
ALTER TABLE `wp_users`
  MODIFY `ID` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_wc_admin_notes`
--
ALTER TABLE `wp_wc_admin_notes`
  MODIFY `note_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_wc_admin_note_actions`
--
ALTER TABLE `wp_wc_admin_note_actions`
  MODIFY `action_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wp_wc_customer_lookup`
--
ALTER TABLE `wp_wc_customer_lookup`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  MODIFY `download_log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_wc_tax_rate_classes`
--
ALTER TABLE `wp_wc_tax_rate_classes`
  MODIFY `tax_rate_class_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `wp_wc_webhooks`
--
ALTER TABLE `wp_wc_webhooks`
  MODIFY `webhook_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_api_keys`
--
ALTER TABLE `wp_woocommerce_api_keys`
  MODIFY `key_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_attribute_taxonomies`
--
ALTER TABLE `wp_woocommerce_attribute_taxonomies`
  MODIFY `attribute_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_downloadable_product_permissions`
--
ALTER TABLE `wp_woocommerce_downloadable_product_permissions`
  MODIFY `permission_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_log`
--
ALTER TABLE `wp_woocommerce_log`
  MODIFY `log_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_itemmeta`
--
ALTER TABLE `wp_woocommerce_order_itemmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_order_items`
--
ALTER TABLE `wp_woocommerce_order_items`
  MODIFY `order_item_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokenmeta`
--
ALTER TABLE `wp_woocommerce_payment_tokenmeta`
  MODIFY `meta_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_payment_tokens`
--
ALTER TABLE `wp_woocommerce_payment_tokens`
  MODIFY `token_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_sessions`
--
ALTER TABLE `wp_woocommerce_sessions`
  MODIFY `session_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zones`
--
ALTER TABLE `wp_woocommerce_shipping_zones`
  MODIFY `zone_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_locations`
--
ALTER TABLE `wp_woocommerce_shipping_zone_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_shipping_zone_methods`
--
ALTER TABLE `wp_woocommerce_shipping_zone_methods`
  MODIFY `instance_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rates`
--
ALTER TABLE `wp_woocommerce_tax_rates`
  MODIFY `tax_rate_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `wp_woocommerce_tax_rate_locations`
--
ALTER TABLE `wp_woocommerce_tax_rate_locations`
  MODIFY `location_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `wp_wc_download_log`
--
ALTER TABLE `wp_wc_download_log`
  ADD CONSTRAINT `fk_wp_wc_download_log_permission_id` FOREIGN KEY (`permission_id`) REFERENCES `wp_woocommerce_downloadable_product_permissions` (`permission_id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
