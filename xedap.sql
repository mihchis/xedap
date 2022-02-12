-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2016 at 05:11 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `xedap`
--

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors`
--

CREATE TABLE `nv4_authors` (
  `admin_id` mediumint(8) UNSIGNED NOT NULL,
  `editor` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `lev` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `files_level` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `position` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `edittime` int(11) NOT NULL DEFAULT '0',
  `is_suspend` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `susp_reason` text COLLATE utf8mb4_unicode_ci,
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors`
--

INSERT INTO `nv4_authors` (`admin_id`, `editor`, `lev`, `files_level`, `position`, `addtime`, `edittime`, `is_suspend`, `susp_reason`, `check_num`, `last_login`, `last_ip`, `last_agent`) VALUES
(1, 'ckeditor', 1, 'adobe,archives,audio,documents,flash,images,real,video|1|1|1', 'Administrator', 0, 0, 0, '', '8a9edf9291ffdbfe72a31b13da6d3f9c', 1467596580, '::1', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_config`
--

CREATE TABLE `nv4_authors_config` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `keyname` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_authors_module`
--

CREATE TABLE `nv4_authors_module` (
  `mid` mediumint(8) NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) NOT NULL DEFAULT '0',
  `act_1` tinyint(4) NOT NULL DEFAULT '0',
  `act_2` tinyint(4) NOT NULL DEFAULT '1',
  `act_3` tinyint(4) NOT NULL DEFAULT '1',
  `checksum` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_authors_module`
--

INSERT INTO `nv4_authors_module` (`mid`, `module`, `lang_key`, `weight`, `act_1`, `act_2`, `act_3`, `checksum`) VALUES
(1, 'siteinfo', 'mod_siteinfo', 1, 1, 1, 1, '769d2b903fa83753584a17ae94e1e931'),
(2, 'authors', 'mod_authors', 2, 1, 1, 1, 'cf237f14c40e2facce82e056966da4ac'),
(3, 'settings', 'mod_settings', 3, 1, 1, 0, 'd16a51889fb0f04291580b94ff23b94f'),
(4, 'database', 'mod_database', 4, 1, 0, 0, '4780f42dfc325cb067d437cf233ce06e'),
(5, 'webtools', 'mod_webtools', 5, 1, 0, 0, '070982287906abf684c95d24157dfb2e'),
(6, 'seotools', 'mod_seotools', 6, 1, 0, 0, '46ac110299d567727f42c028e17a2fd8'),
(7, 'language', 'mod_language', 7, 1, 1, 0, 'c3d6d5d698b26d9aa0037b8b421a437b'),
(8, 'modules', 'mod_modules', 8, 1, 1, 0, 'e60fd55dfe0a23e990cbe49278ae87e2'),
(9, 'themes', 'mod_themes', 9, 1, 1, 0, '34a3ad416fb9a041542a782125c72b46'),
(10, 'extensions', 'mod_extensions', 10, 1, 0, 0, '1b100618381d2a409b41ec44f2a12c94'),
(11, 'upload', 'mod_upload', 11, 1, 1, 1, '672743a70dfa6950d14016ba6e17c1b6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banip`
--

CREATE TABLE `nv4_banip` (
  `id` mediumint(8) NOT NULL,
  `ip` varchar(32) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mask` tinyint(4) NOT NULL DEFAULT '0',
  `area` tinyint(3) NOT NULL,
  `begintime` int(11) DEFAULT NULL,
  `endtime` int(11) DEFAULT NULL,
  `notice` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_click`
--

CREATE TABLE `nv4_banners_click` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `click_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `click_day` int(2) NOT NULL,
  `click_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_country` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_browse_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_key` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_os_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `click_ref` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_clients`
--

CREATE TABLE `nv4_banners_clients` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `login` varchar(60) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pass` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reg_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `yim` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `check_num` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `uploadtype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_plans`
--

CREATE TABLE `nv4_banners_plans` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `blang` char(2) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `form` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_plans`
--

INSERT INTO `nv4_banners_plans` (`id`, `blang`, `title`, `description`, `form`, `width`, `height`, `act`) VALUES
(1, '', 'Quang cao giua trang', '', 'sequential', 575, 72, 1),
(2, '', 'Quang cao trai', '', 'sequential', 212, 800, 1),
(3, '', 'Quang cao Phai', '', 'random', 250, 500, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_banners_rows`
--

CREATE TABLE `nv4_banners_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `clid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `file_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_ext` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_mime` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `width` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `height` int(4) UNSIGNED NOT NULL DEFAULT '0',
  `file_alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageforswf` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `click_url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_blank',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `hits_total` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_banners_rows`
--

INSERT INTO `nv4_banners_rows` (`id`, `title`, `pid`, `clid`, `file_name`, `file_ext`, `file_mime`, `width`, `height`, `file_alt`, `imageforswf`, `click_url`, `target`, `add_time`, `publ_time`, `exp_time`, `hits_total`, `act`, `weight`) VALUES
(2, 'vinades', 2, 0, 'vinades.jpg', 'jpg', 'image/jpeg', 212, 400, '', '', 'http://vinades.vn', '_blank', 1467124147, 1467124147, 0, 0, 1, 2),
(3, 'Quang cao giua trang', 1, 0, 'webnhanh.jpg', 'png', 'image/jpeg', 575, 72, '', '', 'http://webnhanh.vn', '_blank', 1467124147, 1467124147, 0, 0, 1, 1),
(4, '123host_Nukeviet', 3, 0, '123host_nukeviet.jpg', 'jpg', 'image/jpeg', 250, 250, '', '', 'http://event.123host.vn/link/out/338', '_blank', 1453194858, 1453194858, 0, 0, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_config`
--

CREATE TABLE `nv4_config` (
  `lang` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sys',
  `module` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'global',
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `config_value` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_config`
--

INSERT INTO `nv4_config` (`lang`, `module`, `config_name`, `config_value`) VALUES
('sys', 'site', 'closed_site', '0'),
('sys', 'site', 'admin_theme', 'admin_default'),
('sys', 'site', 'date_pattern', 'l, d/m/Y'),
('sys', 'site', 'time_pattern', 'H:i'),
('sys', 'site', 'online_upd', '1'),
('sys', 'site', 'statistic', '1'),
('sys', 'site', 'mailer_mode', ''),
('sys', 'site', 'smtp_host', 'smtp.gmail.com'),
('sys', 'site', 'smtp_ssl', '1'),
('sys', 'site', 'smtp_port', '465'),
('sys', 'site', 'smtp_username', 'user@gmail.com'),
('sys', 'site', 'smtp_password', ''),
('sys', 'site', 'googleAnalyticsID', ''),
('sys', 'site', 'googleAnalyticsSetDomainName', '0'),
('sys', 'site', 'googleAnalyticsMethod', 'classic'),
('sys', 'site', 'searchEngineUniqueID', ''),
('sys', 'site', 'metaTagsOgp', '1'),
('sys', 'site', 'pageTitleMode', 'pagetitle'),
('sys', 'site', 'description_length', '170'),
('sys', 'global', 'ssl_https', '0'),
('sys', 'global', 'notification_active', '1'),
('sys', 'global', 'notification_autodel', '15'),
('sys', 'global', 'site_keywords', 'NukeViet, portal, mysql, php'),
('sys', 'global', 'site_phone', ''),
('sys', 'global', 'block_admin_ip', '0'),
('sys', 'global', 'admfirewall', '0'),
('sys', 'global', 'dump_autobackup', '1'),
('sys', 'global', 'dump_backup_ext', 'gz'),
('sys', 'global', 'dump_backup_day', '30'),
('sys', 'global', 'gfx_chk', '3'),
('sys', 'global', 'file_allowed_ext', 'adobe,archives,audio,documents,flash,images,real,video'),
('sys', 'global', 'forbid_extensions', 'php,php3,php4,php5,phtml,inc'),
('sys', 'global', 'forbid_mimes', ''),
('sys', 'global', 'nv_max_size', '2097152'),
('sys', 'global', 'upload_checking_mode', 'strong'),
('sys', 'global', 'upload_alt_require', '1'),
('sys', 'global', 'upload_auto_alt', '1'),
('sys', 'global', 'allowuserreg', '1'),
('sys', 'global', 'allowuserlogin', '1'),
('sys', 'global', 'allowuserloginmulti', '0'),
('sys', 'global', 'allowloginchange', '0'),
('sys', 'global', 'allowquestion', '0'),
('sys', 'global', 'allowuserpublic', '1'),
('sys', 'global', 'useactivate', '2'),
('sys', 'global', 'allowmailchange', '1'),
('sys', 'global', 'allow_sitelangs', 'vi'),
('sys', 'global', 'read_type', '0'),
('sys', 'global', 'rewrite_optional', '1'),
('sys', 'global', 'rewrite_endurl', '/'),
('sys', 'global', 'rewrite_exturl', '.html'),
('sys', 'global', 'rewrite_op_mod', 'shops'),
('sys', 'global', 'autocheckupdate', '1'),
('sys', 'global', 'autoupdatetime', '24'),
('sys', 'global', 'gzip_method', '1'),
('sys', 'global', 'is_user_forum', '0'),
('sys', 'global', 'authors_detail_main', '0'),
('sys', 'global', 'spadmin_add_admin', '1'),
('sys', 'global', 'openid_servers', ''),
('sys', 'global', 'timestamp', '37'),
('sys', 'global', 'openid_processing', '0'),
('sys', 'global', 'captcha_type', '1'),
('sys', 'global', 'version', '4.0.29'),
('sys', 'global', 'whoviewuser', '2'),
('sys', 'global', 'facebook_client_id', ''),
('sys', 'global', 'facebook_client_secret', ''),
('sys', 'global', 'google_client_id', ''),
('sys', 'global', 'google_client_secret', ''),
('sys', 'global', 'cookie_httponly', '1'),
('sys', 'global', 'admin_check_pass_time', '1800'),
('sys', 'global', 'user_check_pass_time', '1800'),
('sys', 'global', 'auto_login_after_reg', '1'),
('sys', 'global', 'cookie_secure', '0'),
('sys', 'global', 'nv_unick_type', '4'),
('sys', 'global', 'nv_upass_type', '2'),
('sys', 'global', 'is_flood_blocker', '1'),
('sys', 'global', 'max_requests_60', '40'),
('sys', 'global', 'max_requests_300', '150'),
('sys', 'global', 'nv_display_errors_list', '1'),
('sys', 'global', 'display_errors_list', '1'),
('sys', 'global', 'nv_auto_resize', '1'),
('sys', 'global', 'dump_interval', '1'),
('sys', 'global', 'cdn_url', ''),
('sys', 'define', 'nv_unickmin', '4'),
('sys', 'define', 'nv_unickmax', '20'),
('sys', 'define', 'nv_upassmin', '8'),
('sys', 'define', 'nv_upassmax', '20'),
('sys', 'define', 'nv_gfx_num', '3'),
('sys', 'define', 'nv_gfx_width', '150'),
('sys', 'define', 'nv_gfx_height', '40'),
('sys', 'define', 'nv_max_width', '1500'),
('sys', 'define', 'nv_max_height', '1500'),
('sys', 'define', 'nv_live_cookie_time', '31104000'),
('sys', 'define', 'nv_live_session_time', '0'),
('sys', 'define', 'nv_anti_iframe', '0'),
('sys', 'define', 'nv_anti_agent', '0'),
('sys', 'define', 'nv_allowed_html_tags', 'embed, object, param, a, b, blockquote, br, caption, col, colgroup, div, em, h1, h2, h3, h4, h5, h6, hr, i, img, li, p, span, strong, s, sub, sup, table, tbody, td, th, tr, u, ul, ol, iframe, figure, figcaption, video, audio, source, track, code, pre'),
('sys', 'define', 'dir_forum', ''),
('vi', 'global', 'site_domain', ''),
('vi', 'global', 'site_name', 'Xe đạp điện'),
('vi', 'global', 'site_logo', 'uploads/logo.png'),
('vi', 'global', 'site_banner', ''),
('vi', 'global', 'site_favicon', ''),
('vi', 'global', 'site_description', ''),
('vi', 'global', 'site_keywords', ''),
('vi', 'global', 'theme_type', 'r'),
('vi', 'global', 'site_theme', 'default'),
('vi', 'global', 'mobile_theme', ''),
('vi', 'global', 'site_home_module', 'shops'),
('vi', 'global', 'switch_mobi_des', '0'),
('vi', 'global', 'upload_logo', ''),
('vi', 'global', 'upload_logo_pos', 'bottomRight'),
('vi', 'global', 'autologosize1', '50'),
('vi', 'global', 'autologosize2', '40'),
('vi', 'global', 'autologosize3', '30'),
('vi', 'global', 'autologomod', ''),
('vi', 'global', 'name_show', '0'),
('vi', 'global', 'cronjobs_next_time', '1467601693'),
('vi', 'global', 'disable_site_content', 'Vì lý do kỹ thuật website tạm ngưng hoạt động. Thành thật xin lỗi các bạn vì sự bất tiện này!'),
('vi', 'global', 'ssl_https_modules', ''),
('vi', 'seotools', 'prcservice', ''),
('vi', 'about', 'auto_postcomm', '1'),
('vi', 'about', 'allowed_comm', '-1'),
('vi', 'about', 'view_comm', '6'),
('vi', 'about', 'setcomm', '4'),
('vi', 'about', 'activecomm', '0'),
('vi', 'about', 'emailcomm', '0'),
('vi', 'about', 'adminscomm', ''),
('vi', 'about', 'sortcomm', '0'),
('vi', 'about', 'captcha', '1'),
('vi', 'news', 'indexfile', 'viewcat_page_new'),
('vi', 'news', 'per_page', '20'),
('vi', 'news', 'st_links', '10'),
('vi', 'news', 'homewidth', '150'),
('vi', 'news', 'homeheight', '200'),
('vi', 'news', 'blockwidth', '85'),
('vi', 'news', 'blockheight', '90'),
('vi', 'news', 'imagefull', '460'),
('vi', 'news', 'copyright', 'Chú ý: Việc đăng lại bài viết trên ở website hoặc các phương tiện truyền thông khác mà không ghi rõ nguồn http://nukeviet.vn là vi phạm bản quyền'),
('vi', 'news', 'showtooltip', '0'),
('vi', 'news', 'tooltip_position', 'bottom'),
('vi', 'news', 'tooltip_length', '150'),
('vi', 'news', 'showhometext', '1'),
('vi', 'news', 'timecheckstatus', '0'),
('vi', 'news', 'config_source', '0'),
('vi', 'news', 'show_no_image', ''),
('vi', 'news', 'allowed_rating_point', '1'),
('vi', 'news', 'facebookappid', ''),
('vi', 'news', 'socialbutton', '1'),
('vi', 'news', 'alias_lower', '1'),
('vi', 'news', 'tags_alias', '0'),
('vi', 'news', 'auto_tags', '1'),
('vi', 'news', 'tags_remind', '1'),
('vi', 'news', 'structure_upload', 'Ym'),
('vi', 'news', 'imgposition', '2'),
('vi', 'news', 'auto_postcomm', '1'),
('vi', 'news', 'allowed_comm', '-1'),
('vi', 'news', 'view_comm', '6'),
('vi', 'news', 'setcomm', '4'),
('vi', 'news', 'activecomm', '1'),
('vi', 'news', 'emailcomm', '1'),
('vi', 'news', 'adminscomm', ''),
('vi', 'news', 'sortcomm', '0'),
('vi', 'news', 'captcha', '1'),
('vi', 'page', 'auto_postcomm', '1'),
('vi', 'page', 'allowed_comm', '-1'),
('vi', 'page', 'view_comm', '6'),
('vi', 'page', 'setcomm', '4'),
('vi', 'page', 'activecomm', '1'),
('vi', 'page', 'emailcomm', '1'),
('vi', 'page', 'adminscomm', ''),
('vi', 'page', 'sortcomm', '0'),
('vi', 'page', 'captcha', '1'),
('vi', 'siteterms', 'auto_postcomm', '1'),
('vi', 'siteterms', 'allowed_comm', '-1'),
('vi', 'siteterms', 'view_comm', '6'),
('vi', 'siteterms', 'setcomm', '4'),
('vi', 'siteterms', 'activecomm', '0'),
('vi', 'siteterms', 'emailcomm', '0'),
('vi', 'siteterms', 'adminscomm', ''),
('vi', 'siteterms', 'sortcomm', '0'),
('vi', 'siteterms', 'captcha', '1'),
('vi', 'freecontent', 'next_execute', '0'),
('vi', 'contact', 'bodytext', 'Để không ngừng nâng cao chất lượng dịch vụ và đáp ứng tốt hơn nữa các yêu cầu của Quý khách, chúng tôi mong muốn nhận được các thông tin phản hồi. Nếu Quý khách có bất kỳ thắc mắc hoặc đóng góp nào, xin vui lòng liên hệ với chúng tôi theo thông tin dưới đây. Chúng tôi sẽ phản hồi lại Quý khách trong thời gian sớm nhất.'),
('sys', 'site', 'statistics_timezone', 'Asia/Bangkok'),
('sys', 'site', 'site_email', 'thangviades@gmail.com'),
('sys', 'global', 'error_set_logs', '1'),
('sys', 'global', 'error_send_email', 'thangviades@gmail.com'),
('sys', 'global', 'site_lang', 'vi'),
('sys', 'global', 'my_domains', 'localhost'),
('sys', 'global', 'cookie_prefix', 'nv4c_s5Ylw'),
('sys', 'global', 'session_prefix', 'nv4s_r1Gq6r'),
('sys', 'global', 'site_timezone', 'byCountry'),
('sys', 'global', 'proxy_blocker', '0'),
('sys', 'global', 'str_referer_blocker', '0'),
('sys', 'global', 'lang_multi', '0'),
('sys', 'global', 'lang_geo', '0'),
('sys', 'global', 'ftp_server', 'localhost'),
('sys', 'global', 'ftp_port', '21'),
('sys', 'global', 'ftp_user_name', ''),
('sys', 'global', 'ftp_user_pass', 'ZIXwVxHXe9lVLd9jhw6RAWSF8FcR13vZVS3fY4cOkQE,'),
('sys', 'global', 'ftp_path', '/'),
('sys', 'global', 'ftp_check_login', '0'),
('vi', 'shops', 'activecomm', '1'),
('vi', 'shops', 'setcomm', '4'),
('vi', 'shops', 'view_comm', '6'),
('vi', 'shops', 'allowed_comm', '-1'),
('vi', 'shops', 'auto_postcomm', '1'),
('vi', 'shops', 'alias_lower', '1'),
('vi', 'shops', 'download_groups', '6'),
('vi', 'shops', 'download_active', '1'),
('vi', 'shops', 'template_active', '1'),
('vi', 'shops', 'groups_notify', '3'),
('vi', 'shops', 'group_price', ''),
('vi', 'shops', 'review_captcha', '1'),
('vi', 'shops', 'review_check', '1'),
('vi', 'shops', 'review_active', '1'),
('vi', 'shops', 'point_new_order', '0'),
('vi', 'shops', 'point_conversion', '0'),
('vi', 'shops', 'point_active', '0'),
('vi', 'shops', 'tags_remind', '0'),
('vi', 'shops', 'auto_tags', '1'),
('vi', 'shops', 'tags_alias', '0'),
('vi', 'shops', 'active_warehouse', '0'),
('vi', 'shops', 'active_gift', '1'),
('vi', 'shops', 'active_wishlist', '0'),
('vi', 'shops', 'use_coupons', '1'),
('vi', 'shops', 'use_shipping', '0'),
('vi', 'shops', 'show_displays', '0'),
('vi', 'shops', 'show_product_code', '1'),
('vi', 'shops', 'show_compare', '0'),
('vi', 'shops', 'timecheckstatus', '0'),
('vi', 'shops', 'active_tooltip', '0'),
('vi', 'shops', 'groups_price', '3'),
('vi', 'shops', 'active_payment', '1'),
('vi', 'shops', 'order_nexttime', '0'),
('vi', 'shops', 'order_day', '0'),
('vi', 'shops', 'active_order_number', '0'),
('vi', 'shops', 'active_order_non_detail', '0'),
('vi', 'shops', 'active_price', '1'),
('vi', 'shops', 'emailcomm', '1'),
('vi', 'shops', 'active_order_popup', '1'),
('vi', 'shops', 'active_order', '1'),
('vi', 'shops', 'active_guest_order', '1'),
('vi', 'shops', 'active_showhomtext', '1'),
('vi', 'shops', 'facebookappid', ''),
('vi', 'shops', 'format_code_id', 'S%06s'),
('vi', 'shops', 'format_order_id', 'S%06s'),
('vi', 'shops', 'auto_check_order', '1'),
('vi', 'shops', 'post_auto_member', '0'),
('vi', 'shops', 'weight_unit', 'g'),
('vi', 'shops', 'money_unit', 'VND'),
('vi', 'shops', 'per_row', '4'),
('vi', 'shops', 'per_page', '20'),
('vi', 'shops', 'home_view', 'view_home_cat'),
('vi', 'shops', 'image_size', '250x160'),
('vi', 'shops', 'adminscomm', ''),
('vi', 'shops', 'sortcomm', '0'),
('vi', 'shops', 'captcha', '1'),
('vi', 'videos', 'indexfile', 'viewgrid_by_cat'),
('vi', 'videos', 'per_page', '20'),
('vi', 'videos', 'st_links', '10'),
('vi', 'videos', 'per_line', '3'),
('vi', 'videos', 'homewidth', '270'),
('vi', 'videos', 'homeheight', '200'),
('vi', 'videos', 'blockwidth', '350'),
('vi', 'videos', 'blockheight', '300'),
('vi', 'videos', 'titlecut', '75'),
('vi', 'videos', 'copyright', ''),
('vi', 'videos', 'timecheckstatus', '0'),
('vi', 'videos', 'config_source', '0'),
('vi', 'videos', 'show_no_image', ''),
('vi', 'videos', 'allowed_rating_point', '1'),
('vi', 'videos', 'facebookappid', ''),
('vi', 'videos', 'fb_comm', '1'),
('vi', 'videos', 'fb_admin', ''),
('vi', 'videos', 'socialbutton', '1'),
('vi', 'videos', 'alias_lower', '1'),
('vi', 'videos', 'tags_alias', '0'),
('vi', 'videos', 'auto_tags', '1'),
('vi', 'videos', 'tags_remind', '1'),
('vi', 'videos', 'structure_upload', 'Ym'),
('vi', 'videos', 'allow_user_plist', '1'),
('vi', 'videos', 'playlist_moderate', '1'),
('vi', 'videos', 'playlist_allow_detele', '1'),
('vi', 'videos', 'playlist_max_items', '20'),
('vi', 'videos', 'youtube_api', ''),
('vi', 'videos', 'jwplayer_license', 'GUAZ1ClKIHmVeTpYQkGdXSYsTxnmnDSWP/42dA=='),
('vi', 'videos', 'jwplayer_autoplay', 'false'),
('vi', 'videos', 'jwplayer_loop', 'false'),
('vi', 'videos', 'jwplayer_controlbar', 'true'),
('vi', 'videos', 'jwplayer_mute', 'false'),
('vi', 'videos', 'jwplayer_skin', 'five'),
('vi', 'videos', 'jwplayer_sharing', '0'),
('vi', 'videos', 'jwplayer_sharingsite', 'facebook,twitter,googleplus'),
('vi', 'videos', 'jwplayer_logo', '0'),
('vi', 'videos', 'jwplayer_logo_file', ''),
('vi', 'videos', 'jwplayer_position', 'top-right'),
('vi', 'videos', 'auto_postcomm', '1'),
('vi', 'videos', 'allowed_comm', '-1'),
('vi', 'videos', 'view_comm', '6'),
('vi', 'videos', 'setcomm', '4'),
('vi', 'videos', 'activecomm', '1'),
('vi', 'videos', 'emailcomm', '1'),
('vi', 'videos', 'adminscomm', ''),
('vi', 'videos', 'sortcomm', '0'),
('vi', 'videos', 'captcha', '1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cookies`
--

CREATE TABLE `nv4_cookies` (
  `name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `expires` int(11) NOT NULL DEFAULT '0',
  `secure` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_counter`
--

CREATE TABLE `nv4_counter` (
  `c_type` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `c_val` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_update` int(11) NOT NULL DEFAULT '0',
  `c_count` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `vi_count` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_counter`
--

INSERT INTO `nv4_counter` (`c_type`, `c_val`, `last_update`, `c_count`, `vi_count`) VALUES
('c_time', 'start', 0, 0, 0),
('c_time', 'last', 0, 1467601391, 0),
('total', 'hits', 1467601391, 49, 49),
('year', '2016', 1467601391, 49, 49),
('year', '2017', 0, 0, 0),
('year', '2018', 0, 0, 0),
('year', '2019', 0, 0, 0),
('year', '2020', 0, 0, 0),
('year', '2021', 0, 0, 0),
('year', '2022', 0, 0, 0),
('year', '2023', 0, 0, 0),
('year', '2024', 0, 0, 0),
('month', 'Jan', 0, 0, 0),
('month', 'Feb', 0, 0, 0),
('month', 'Mar', 0, 0, 0),
('month', 'Apr', 0, 0, 0),
('month', 'May', 0, 0, 0),
('month', 'Jun', 1467175746, 14, 14),
('month', 'Jul', 1467601391, 35, 35),
('month', 'Aug', 0, 0, 0),
('month', 'Sep', 0, 0, 0),
('month', 'Oct', 0, 0, 0),
('month', 'Nov', 0, 0, 0),
('month', 'Dec', 0, 0, 0),
('day', '01', 1467387738, 14, 14),
('day', '02', 1467467042, 7, 7),
('day', '03', 1467555822, 11, 11),
('day', '04', 1467601391, 3, 3),
('day', '05', 0, 0, 0),
('day', '06', 0, 0, 0),
('day', '07', 0, 0, 0),
('day', '08', 0, 0, 0),
('day', '09', 0, 0, 0),
('day', '10', 0, 0, 0),
('day', '11', 0, 0, 0),
('day', '12', 0, 0, 0),
('day', '13', 0, 0, 0),
('day', '14', 0, 0, 0),
('day', '15', 0, 0, 0),
('day', '16', 0, 0, 0),
('day', '17', 0, 0, 0),
('day', '18', 0, 0, 0),
('day', '19', 0, 0, 0),
('day', '20', 0, 0, 0),
('day', '21', 0, 0, 0),
('day', '22', 0, 0, 0),
('day', '23', 0, 0, 0),
('day', '24', 0, 0, 0),
('day', '25', 0, 0, 0),
('day', '26', 0, 0, 0),
('day', '27', 0, 0, 0),
('day', '28', 1467129866, 0, 0),
('day', '29', 1467175746, 0, 0),
('day', '30', 1467253838, 0, 0),
('day', '31', 0, 0, 0),
('dayofweek', 'Sunday', 1467555822, 11, 11),
('dayofweek', 'Monday', 1467601391, 3, 3),
('dayofweek', 'Tuesday', 1467129866, 4, 4),
('dayofweek', 'Wednesday', 1467175746, 7, 7),
('dayofweek', 'Thursday', 1467253838, 3, 3),
('dayofweek', 'Friday', 1467387738, 14, 14),
('dayofweek', 'Saturday', 1467467042, 7, 7),
('hour', '00', 0, 0, 0),
('hour', '01', 0, 0, 0),
('hour', '02', 0, 0, 0),
('hour', '03', 0, 0, 0),
('hour', '04', 0, 0, 0),
('hour', '05', 0, 0, 0),
('hour', '06', 0, 0, 0),
('hour', '07', 0, 0, 0),
('hour', '08', 1467596583, 1, 1),
('hour', '09', 1467598437, 1, 1),
('hour', '10', 1467601391, 1, 1),
('hour', '11', 1467521252, 0, 0),
('hour', '12', 0, 0, 0),
('hour', '13', 1467529035, 0, 0),
('hour', '14', 1467532666, 0, 0),
('hour', '15', 1467534929, 0, 0),
('hour', '16', 1467453113, 0, 0),
('hour', '17', 1467369467, 0, 0),
('hour', '18', 1467373746, 0, 0),
('hour', '19', 1467550733, 0, 0),
('hour', '20', 1467553515, 0, 0),
('hour', '21', 1467555822, 0, 0),
('hour', '22', 1467387738, 0, 0),
('hour', '23', 1467216447, 0, 0),
('bot', 'googlebot', 0, 0, 0),
('bot', 'msnbot', 0, 0, 0),
('bot', 'bingbot', 0, 0, 0),
('bot', 'yahooslurp', 0, 0, 0),
('bot', 'w3cvalidator', 0, 0, 0),
('browser', 'opera', 0, 0, 0),
('browser', 'operamini', 0, 0, 0),
('browser', 'webtv', 0, 0, 0),
('browser', 'explorer', 0, 0, 0),
('browser', 'edge', 0, 0, 0),
('browser', 'pocket', 0, 0, 0),
('browser', 'konqueror', 0, 0, 0),
('browser', 'icab', 0, 0, 0),
('browser', 'omniweb', 0, 0, 0),
('browser', 'firebird', 0, 0, 0),
('browser', 'firefox', 0, 0, 0),
('browser', 'iceweasel', 0, 0, 0),
('browser', 'shiretoko', 0, 0, 0),
('browser', 'mozilla', 0, 0, 0),
('browser', 'amaya', 0, 0, 0),
('browser', 'lynx', 0, 0, 0),
('browser', 'safari', 0, 0, 0),
('browser', 'iphone', 0, 0, 0),
('browser', 'ipod', 0, 0, 0),
('browser', 'ipad', 0, 0, 0),
('browser', 'chrome', 1467601391, 49, 49),
('browser', 'cococ', 0, 0, 0),
('browser', 'android', 0, 0, 0),
('browser', 'googlebot', 0, 0, 0),
('browser', 'yahooslurp', 0, 0, 0),
('browser', 'w3cvalidator', 0, 0, 0),
('browser', 'blackberry', 0, 0, 0),
('browser', 'icecat', 0, 0, 0),
('browser', 'nokias60', 0, 0, 0),
('browser', 'nokia', 0, 0, 0),
('browser', 'msn', 0, 0, 0),
('browser', 'msnbot', 0, 0, 0),
('browser', 'bingbot', 0, 0, 0),
('browser', 'netscape', 0, 0, 0),
('browser', 'galeon', 0, 0, 0),
('browser', 'netpositive', 0, 0, 0),
('browser', 'phoenix', 0, 0, 0),
('browser', 'Mobile', 0, 0, 0),
('browser', 'bots', 0, 0, 0),
('browser', 'Unknown', 0, 0, 0),
('os', 'unknown', 0, 0, 0),
('os', 'win', 0, 0, 0),
('os', 'win10', 0, 0, 0),
('os', 'win8', 1467601391, 49, 49),
('os', 'win7', 0, 0, 0),
('os', 'win2003', 0, 0, 0),
('os', 'winvista', 0, 0, 0),
('os', 'wince', 0, 0, 0),
('os', 'winxp', 0, 0, 0),
('os', 'win2000', 0, 0, 0),
('os', 'apple', 0, 0, 0),
('os', 'linux', 0, 0, 0),
('os', 'os2', 0, 0, 0),
('os', 'beos', 0, 0, 0),
('os', 'iphone', 0, 0, 0),
('os', 'ipod', 0, 0, 0),
('os', 'ipad', 0, 0, 0),
('os', 'blackberry', 0, 0, 0),
('os', 'nokia', 0, 0, 0),
('os', 'freebsd', 0, 0, 0),
('os', 'openbsd', 0, 0, 0),
('os', 'netbsd', 0, 0, 0),
('os', 'sunos', 0, 0, 0),
('os', 'opensolaris', 0, 0, 0),
('os', 'android', 0, 0, 0),
('os', 'irix', 0, 0, 0),
('os', 'palm', 0, 0, 0),
('country', 'AD', 0, 0, 0),
('country', 'AE', 0, 0, 0),
('country', 'AF', 0, 0, 0),
('country', 'AG', 0, 0, 0),
('country', 'AI', 0, 0, 0),
('country', 'AL', 0, 0, 0),
('country', 'AM', 0, 0, 0),
('country', 'AN', 0, 0, 0),
('country', 'AO', 0, 0, 0),
('country', 'AQ', 0, 0, 0),
('country', 'AR', 0, 0, 0),
('country', 'AS', 0, 0, 0),
('country', 'AT', 0, 0, 0),
('country', 'AU', 0, 0, 0),
('country', 'AW', 0, 0, 0),
('country', 'AZ', 0, 0, 0),
('country', 'BA', 0, 0, 0),
('country', 'BB', 0, 0, 0),
('country', 'BD', 0, 0, 0),
('country', 'BE', 0, 0, 0),
('country', 'BF', 0, 0, 0),
('country', 'BG', 0, 0, 0),
('country', 'BH', 0, 0, 0),
('country', 'BI', 0, 0, 0),
('country', 'BJ', 0, 0, 0),
('country', 'BM', 0, 0, 0),
('country', 'BN', 0, 0, 0),
('country', 'BO', 0, 0, 0),
('country', 'BR', 0, 0, 0),
('country', 'BS', 0, 0, 0),
('country', 'BT', 0, 0, 0),
('country', 'BW', 0, 0, 0),
('country', 'BY', 0, 0, 0),
('country', 'BZ', 0, 0, 0),
('country', 'CA', 0, 0, 0),
('country', 'CD', 0, 0, 0),
('country', 'CF', 0, 0, 0),
('country', 'CG', 0, 0, 0),
('country', 'CH', 0, 0, 0),
('country', 'CI', 0, 0, 0),
('country', 'CK', 0, 0, 0),
('country', 'CL', 0, 0, 0),
('country', 'CM', 0, 0, 0),
('country', 'CN', 0, 0, 0),
('country', 'CO', 0, 0, 0),
('country', 'CR', 0, 0, 0),
('country', 'CS', 0, 0, 0),
('country', 'CU', 0, 0, 0),
('country', 'CV', 0, 0, 0),
('country', 'CY', 0, 0, 0),
('country', 'CZ', 0, 0, 0),
('country', 'DE', 0, 0, 0),
('country', 'DJ', 0, 0, 0),
('country', 'DK', 0, 0, 0),
('country', 'DM', 0, 0, 0),
('country', 'DO', 0, 0, 0),
('country', 'DZ', 0, 0, 0),
('country', 'EC', 0, 0, 0),
('country', 'EE', 0, 0, 0),
('country', 'EG', 0, 0, 0),
('country', 'ER', 0, 0, 0),
('country', 'ES', 0, 0, 0),
('country', 'ET', 0, 0, 0),
('country', 'EU', 0, 0, 0),
('country', 'FI', 0, 0, 0),
('country', 'FJ', 0, 0, 0),
('country', 'FK', 0, 0, 0),
('country', 'FM', 0, 0, 0),
('country', 'FO', 0, 0, 0),
('country', 'FR', 0, 0, 0),
('country', 'GA', 0, 0, 0),
('country', 'GB', 0, 0, 0),
('country', 'GD', 0, 0, 0),
('country', 'GE', 0, 0, 0),
('country', 'GF', 0, 0, 0),
('country', 'GH', 0, 0, 0),
('country', 'GI', 0, 0, 0),
('country', 'GL', 0, 0, 0),
('country', 'GM', 0, 0, 0),
('country', 'GN', 0, 0, 0),
('country', 'GP', 0, 0, 0),
('country', 'GQ', 0, 0, 0),
('country', 'GR', 0, 0, 0),
('country', 'GS', 0, 0, 0),
('country', 'GT', 0, 0, 0),
('country', 'GU', 0, 0, 0),
('country', 'GW', 0, 0, 0),
('country', 'GY', 0, 0, 0),
('country', 'HK', 0, 0, 0),
('country', 'HN', 0, 0, 0),
('country', 'HR', 0, 0, 0),
('country', 'HT', 0, 0, 0),
('country', 'HU', 0, 0, 0),
('country', 'ID', 0, 0, 0),
('country', 'IE', 0, 0, 0),
('country', 'IL', 0, 0, 0),
('country', 'IN', 0, 0, 0),
('country', 'IO', 0, 0, 0),
('country', 'IQ', 0, 0, 0),
('country', 'IR', 0, 0, 0),
('country', 'IS', 0, 0, 0),
('country', 'IT', 0, 0, 0),
('country', 'JM', 0, 0, 0),
('country', 'JO', 0, 0, 0),
('country', 'JP', 0, 0, 0),
('country', 'KE', 0, 0, 0),
('country', 'KG', 0, 0, 0),
('country', 'KH', 0, 0, 0),
('country', 'KI', 0, 0, 0),
('country', 'KM', 0, 0, 0),
('country', 'KN', 0, 0, 0),
('country', 'KR', 0, 0, 0),
('country', 'KW', 0, 0, 0),
('country', 'KY', 0, 0, 0),
('country', 'KZ', 0, 0, 0),
('country', 'LA', 0, 0, 0),
('country', 'LB', 0, 0, 0),
('country', 'LC', 0, 0, 0),
('country', 'LI', 0, 0, 0),
('country', 'LK', 0, 0, 0),
('country', 'LR', 0, 0, 0),
('country', 'LS', 0, 0, 0),
('country', 'LT', 0, 0, 0),
('country', 'LU', 0, 0, 0),
('country', 'LV', 0, 0, 0),
('country', 'LY', 0, 0, 0),
('country', 'MA', 0, 0, 0),
('country', 'MC', 0, 0, 0),
('country', 'MD', 0, 0, 0),
('country', 'MG', 0, 0, 0),
('country', 'MH', 0, 0, 0),
('country', 'MK', 0, 0, 0),
('country', 'ML', 0, 0, 0),
('country', 'MM', 0, 0, 0),
('country', 'MN', 0, 0, 0),
('country', 'MO', 0, 0, 0),
('country', 'MP', 0, 0, 0),
('country', 'MQ', 0, 0, 0),
('country', 'MR', 0, 0, 0),
('country', 'MT', 0, 0, 0),
('country', 'MU', 0, 0, 0),
('country', 'MV', 0, 0, 0),
('country', 'MW', 0, 0, 0),
('country', 'MX', 0, 0, 0),
('country', 'MY', 0, 0, 0),
('country', 'MZ', 0, 0, 0),
('country', 'NA', 0, 0, 0),
('country', 'NC', 0, 0, 0),
('country', 'NE', 0, 0, 0),
('country', 'NF', 0, 0, 0),
('country', 'NG', 0, 0, 0),
('country', 'NI', 0, 0, 0),
('country', 'NL', 0, 0, 0),
('country', 'NO', 0, 0, 0),
('country', 'NP', 0, 0, 0),
('country', 'NR', 0, 0, 0),
('country', 'NU', 0, 0, 0),
('country', 'NZ', 0, 0, 0),
('country', 'OM', 0, 0, 0),
('country', 'PA', 0, 0, 0),
('country', 'PE', 0, 0, 0),
('country', 'PF', 0, 0, 0),
('country', 'PG', 0, 0, 0),
('country', 'PH', 0, 0, 0),
('country', 'PK', 0, 0, 0),
('country', 'PL', 0, 0, 0),
('country', 'PR', 0, 0, 0),
('country', 'PS', 0, 0, 0),
('country', 'PT', 0, 0, 0),
('country', 'PW', 0, 0, 0),
('country', 'PY', 0, 0, 0),
('country', 'QA', 0, 0, 0),
('country', 'RE', 0, 0, 0),
('country', 'RO', 0, 0, 0),
('country', 'RU', 0, 0, 0),
('country', 'RW', 0, 0, 0),
('country', 'SA', 0, 0, 0),
('country', 'SB', 0, 0, 0),
('country', 'SC', 0, 0, 0),
('country', 'SD', 0, 0, 0),
('country', 'SE', 0, 0, 0),
('country', 'SG', 0, 0, 0),
('country', 'SI', 0, 0, 0),
('country', 'SK', 0, 0, 0),
('country', 'SL', 0, 0, 0),
('country', 'SM', 0, 0, 0),
('country', 'SN', 0, 0, 0),
('country', 'SO', 0, 0, 0),
('country', 'SR', 0, 0, 0),
('country', 'ST', 0, 0, 0),
('country', 'SV', 0, 0, 0),
('country', 'SY', 0, 0, 0),
('country', 'SZ', 0, 0, 0),
('country', 'TD', 0, 0, 0),
('country', 'TF', 0, 0, 0),
('country', 'TG', 0, 0, 0),
('country', 'TH', 0, 0, 0),
('country', 'TJ', 0, 0, 0),
('country', 'TK', 0, 0, 0),
('country', 'TL', 0, 0, 0),
('country', 'TM', 0, 0, 0),
('country', 'TN', 0, 0, 0),
('country', 'TO', 0, 0, 0),
('country', 'TR', 0, 0, 0),
('country', 'TT', 0, 0, 0),
('country', 'TV', 0, 0, 0),
('country', 'TW', 0, 0, 0),
('country', 'TZ', 0, 0, 0),
('country', 'UA', 0, 0, 0),
('country', 'UG', 0, 0, 0),
('country', 'US', 0, 0, 0),
('country', 'UY', 0, 0, 0),
('country', 'UZ', 0, 0, 0),
('country', 'VA', 0, 0, 0),
('country', 'VC', 0, 0, 0),
('country', 'VE', 0, 0, 0),
('country', 'VG', 0, 0, 0),
('country', 'VI', 0, 0, 0),
('country', 'VN', 0, 0, 0),
('country', 'VU', 0, 0, 0),
('country', 'WS', 0, 0, 0),
('country', 'YE', 0, 0, 0),
('country', 'YT', 0, 0, 0),
('country', 'YU', 0, 0, 0),
('country', 'ZA', 0, 0, 0),
('country', 'ZM', 0, 0, 0),
('country', 'ZW', 0, 0, 0),
('country', 'ZZ', 1467601391, 49, 49),
('country', 'unkown', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_cronjobs`
--

CREATE TABLE `nv4_cronjobs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `start_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inter_val` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `run_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `run_func` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `params` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `del` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_sys` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `last_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_result` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `vi_cron_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_cronjobs`
--

INSERT INTO `nv4_cronjobs` (`id`, `start_time`, `inter_val`, `run_file`, `run_func`, `params`, `del`, `is_sys`, `act`, `last_time`, `last_result`, `vi_cron_name`) VALUES
(1, 1467124147, 5, 'online_expired_del.php', 'cron_online_expired_del', '', 0, 1, 1, 1467601393, 1, 'Xóa các dòng ghi trạng thái online đã cũ trong CSDL'),
(2, 1467124147, 1440, 'dump_autobackup.php', 'cron_dump_autobackup', '', 0, 1, 1, 1467529220, 1, 'Tự động lưu CSDL'),
(3, 1467124147, 60, 'temp_download_destroy.php', 'cron_auto_del_temp_download', '', 0, 1, 1, 1467601393, 1, 'Xóa các file tạm trong thư mục tmp'),
(4, 1467124147, 30, 'ip_logs_destroy.php', 'cron_del_ip_logs', '', 0, 1, 1, 1467601393, 1, 'Xóa IP log files, Xóa các file nhật ký truy cập'),
(5, 1467124147, 1440, 'error_log_destroy.php', 'cron_auto_del_error_log', '', 0, 1, 1, 1467529220, 1, 'Xóa các file error_log quá hạn'),
(6, 1467124147, 360, 'error_log_sendmail.php', 'cron_auto_sendmail_error_log', '', 0, 1, 0, 0, 0, 'Gửi email các thông báo lỗi cho admin'),
(7, 1467124147, 60, 'ref_expired_del.php', 'cron_ref_expired_del', '', 0, 1, 1, 1467601393, 1, 'Xóa các referer quá hạn'),
(8, 1467124147, 60, 'check_version.php', 'cron_auto_check_version', '', 0, 1, 1, 1467601393, 1, 'Kiểm tra phiên bản NukeViet'),
(9, 1467124147, 1440, 'notification_autodel.php', 'cron_notification_autodel', '', 0, 1, 1, 1467529220, 1, 'Xóa thông báo cũ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_extension_files`
--

CREATE TABLE `nv4_extension_files` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lastmodified` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `duplicate` smallint(4) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_extension_files`
--

INSERT INTO `nv4_extension_files` (`idfile`, `type`, `title`, `path`, `lastmodified`, `duplicate`) VALUES
(488, 'module', 'support', 'modules/support/blocks/global.support_all_cat.php', 1467535102, 0),
(487, 'module', 'support', 'modules/support/blocks/global.support_all_cat.ini', 1467535102, 0),
(486, 'module', 'support', 'modules/support/blocks/global.support.php', 1467535102, 0),
(485, 'module', 'support', 'modules/support/blocks/global.support.ini', 1467535102, 0),
(484, 'module', 'support', 'modules/support/admin.menu.php', 1467535102, 0),
(483, 'module', 'support', 'modules/support/admin.functions.php', 1467535102, 0),
(482, 'module', 'support', 'modules/support/admin/rows.php', 1467535102, 0),
(481, 'module', 'support', 'modules/support/admin/main.php', 1467535102, 0),
(480, 'module', 'support', 'modules/support/admin/index.html', 1467535102, 0),
(479, 'module', 'support', 'modules/support/admin/del_row.php', 1467535102, 0),
(478, 'module', 'support', 'modules/support/admin/change_weight_row.php', 1467535102, 0),
(477, 'module', 'support', 'modules/support/admin/change_active.php', 1467535102, 0),
(476, 'module', 'support', 'modules/support/admin/cat.php', 1467535102, 0),
(475, 'module', 'support', 'modules/support/action_mysql.php', 1467535102, 0),
(474, 'module', 'videos', 'themes/default/modules/videos/viewgrid_by_cat.tpl', 1467384175, 0),
(473, 'module', 'videos', 'themes/default/modules/videos/viewcat_page.tpl', 1467384175, 0),
(472, 'module', 'videos', 'themes/default/modules/videos/viewcat_grid.tpl', 1467384175, 0),
(471, 'module', 'videos', 'themes/default/modules/videos/user-video.tpl', 1467384175, 0),
(470, 'module', 'videos', 'themes/default/modules/videos/user-playlist.tpl', 1467384175, 0),
(469, 'module', 'videos', 'themes/default/modules/videos/uploader.tpl', 1467384175, 0),
(468, 'module', 'videos', 'themes/default/modules/videos/tag.tpl', 1467384175, 0),
(467, 'module', 'videos', 'themes/default/modules/videos/sendmail.tpl', 1467384175, 0),
(466, 'module', 'videos', 'themes/default/modules/videos/search.tpl', 1467384175, 0),
(465, 'module', 'videos', 'themes/default/modules/videos/playlist_list.tpl', 1467384175, 0),
(464, 'module', 'videos', 'themes/default/modules/videos/playlist_cat.tpl', 1467384175, 0),
(463, 'module', 'videos', 'themes/default/modules/videos/playlist.tpl', 1467384175, 0),
(462, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/vapor.css', 1467384175, 0),
(461, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/stormtrooper.css', 1467384175, 0),
(460, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/six.css', 1467384175, 0),
(459, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/seven.css', 1467384175, 0),
(458, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/roundster.css', 1467384175, 0),
(457, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/glow.css', 1467384175, 0),
(456, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/five.css', 1467384175, 0),
(455, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/bekle.css', 1467384175, 0),
(454, 'module', 'videos', 'themes/default/modules/videos/jwplayer/skins/beelden.css', 1467384175, 0),
(453, 'module', 'videos', 'themes/default/modules/videos/jwplayer/provider.youtube.js', 1467384175, 0),
(452, 'module', 'videos', 'themes/default/modules/videos/jwplayer/provider.shaka.js', 1467384175, 0),
(451, 'module', 'videos', 'themes/default/modules/videos/jwplayer/provider.caterpillar.js', 1467384175, 0),
(450, 'module', 'videos', 'themes/default/modules/videos/jwplayer/provider.cast.js', 1467384175, 0),
(449, 'module', 'videos', 'themes/default/modules/videos/jwplayer/polyfills.promise.js', 1467384175, 0),
(448, 'module', 'videos', 'themes/default/modules/videos/jwplayer/polyfills.base64.js', 1467384175, 0),
(447, 'module', 'videos', 'themes/default/modules/videos/jwplayer/jwplayer5.swf', 1467384175, 0),
(446, 'module', 'videos', 'themes/default/modules/videos/jwplayer/jwplayer.js', 1467384175, 0),
(445, 'module', 'videos', 'themes/default/modules/videos/jwplayer/jwplayer.flash.swf', 1467384175, 0),
(444, 'module', 'videos', 'themes/default/modules/videos/jwplayer/jw-icons.woff', 1467384175, 0),
(443, 'module', 'videos', 'themes/default/modules/videos/jwplayer/jw-icons.ttf', 1467384175, 0),
(442, 'module', 'videos', 'themes/default/modules/videos/index.html', 1467384175, 0),
(441, 'module', 'videos', 'themes/default/modules/videos/fav_report.tpl', 1467384175, 0),
(440, 'module', 'videos', 'themes/default/modules/videos/detail.tpl', 1467384175, 0),
(439, 'module', 'videos', 'themes/default/modules/videos/block_videos_cat.tpl', 1467384175, 0),
(438, 'module', 'videos', 'themes/default/modules/videos/block_tophits.tpl', 1467384175, 0),
(437, 'module', 'videos', 'themes/default/modules/videos/block_new_comment.tpl', 1467384175, 0),
(436, 'module', 'videos', 'themes/default/modules/videos/block_groups_tabs.tpl', 1467384175, 0),
(435, 'module', 'videos', 'themes/default/modules/videos/block_groups_multi_tabs.tpl', 1467384175, 0),
(434, 'module', 'videos', 'themes/default/modules/videos/block_groups.tpl', 1467384175, 0),
(433, 'module', 'videos', 'themes/default/modules/videos/block_cat_quickplay.tpl', 1467384175, 0),
(432, 'module', 'videos', 'themes/default/modules/videos/block_category.tpl', 1467384175, 0),
(431, 'module', 'videos', 'themes/default/js/videos.js', 1467384175, 0),
(430, 'module', 'videos', 'themes/default/images/videos/video_placeholder.png', 1467384175, 0),
(429, 'module', 'videos', 'themes/default/images/videos/index.html', 1467384175, 0),
(428, 'module', 'videos', 'themes/default/css/videos.css', 1467384175, 0),
(427, 'module', 'videos', 'themes/admin_default/modules/videos/tags_lists.tpl', 1467384175, 0),
(426, 'module', 'videos', 'themes/admin_default/modules/videos/tags.tpl', 1467384175, 0),
(425, 'module', 'videos', 'themes/admin_default/modules/videos/sources_list.tpl', 1467384175, 0),
(424, 'module', 'videos', 'themes/admin_default/modules/videos/sources.tpl', 1467384175, 0),
(423, 'module', 'videos', 'themes/admin_default/modules/videos/settings.tpl', 1467384175, 0),
(422, 'module', 'videos', 'themes/admin_default/modules/videos/report.tpl', 1467384175, 0),
(421, 'module', 'videos', 'themes/admin_default/modules/videos/redriect.tpl', 1467384175, 0),
(420, 'module', 'videos', 'themes/admin_default/modules/videos/playlist_list.tpl', 1467384175, 0),
(419, 'module', 'videos', 'themes/admin_default/modules/videos/playlists.tpl', 1467384175, 0),
(418, 'module', 'videos', 'themes/admin_default/modules/videos/playlistcat_lists.tpl', 1467384175, 0),
(417, 'module', 'videos', 'themes/admin_default/modules/videos/playlist.tpl', 1467384175, 0),
(416, 'module', 'videos', 'themes/admin_default/modules/videos/move.tpl', 1467384175, 0),
(415, 'module', 'videos', 'themes/admin_default/modules/videos/main.tpl', 1467384175, 0),
(414, 'module', 'videos', 'themes/admin_default/modules/videos/index.html', 1467384175, 0),
(413, 'module', 'videos', 'themes/admin_default/modules/videos/groups.tpl', 1467384175, 0),
(412, 'module', 'videos', 'themes/admin_default/modules/videos/del_cat.tpl', 1467384175, 0),
(411, 'module', 'videos', 'themes/admin_default/modules/videos/content.tpl', 1467384175, 0),
(410, 'module', 'videos', 'themes/admin_default/modules/videos/cat_list.tpl', 1467384175, 0),
(409, 'module', 'videos', 'themes/admin_default/modules/videos/cat.tpl', 1467384175, 0),
(408, 'module', 'videos', 'themes/admin_default/modules/videos/block_list.tpl', 1467384175, 0),
(407, 'module', 'videos', 'themes/admin_default/modules/videos/blockcat_lists.tpl', 1467384175, 0),
(406, 'module', 'videos', 'themes/admin_default/modules/videos/block.tpl', 1467384175, 0),
(405, 'module', 'videos', 'themes/admin_default/modules/videos/admin.tpl', 1467384175, 0),
(404, 'module', 'videos', 'themes/admin_default/js/videos_content.js', 1467384175, 0),
(403, 'module', 'videos', 'themes/admin_default/js/videos.js', 1467384175, 0),
(402, 'module', 'videos', 'themes/admin_default/css/videos.css', 1467384175, 0),
(401, 'module', 'videos', 'modules/videos/version.php', 1467384175, 0),
(400, 'module', 'videos', 'modules/videos/theme.php', 1467384175, 0),
(399, 'module', 'videos', 'modules/videos/siteinfo.php', 1467384175, 0),
(398, 'module', 'videos', 'modules/videos/site.functions.php', 1467384175, 0),
(397, 'module', 'videos', 'modules/videos/search.php', 1467384175, 0),
(396, 'module', 'videos', 'modules/videos/rssdata.php', 1467384175, 0),
(395, 'module', 'videos', 'modules/videos/mobile/index.html', 1467384175, 0),
(394, 'module', 'videos', 'modules/videos/menu.php', 1467384175, 0),
(393, 'module', 'videos', 'modules/videos/language/vi.php', 1467384175, 0),
(392, 'module', 'videos', 'modules/videos/language/index.html', 1467384175, 0),
(391, 'module', 'videos', 'modules/videos/language/en.php', 1467384175, 0),
(390, 'module', 'videos', 'modules/videos/language/block.module.block_news_vi.php', 1467384175, 0),
(389, 'module', 'videos', 'modules/videos/language/block.module.block_news_en.php', 1467384175, 0),
(388, 'module', 'videos', 'modules/videos/language/block.module.block_newscenter_vi.php', 1467384175, 0),
(387, 'module', 'videos', 'modules/videos/language/block.module.block_newscenter_en.php', 1467384175, 0),
(386, 'module', 'videos', 'modules/videos/language/block.module.block_headline_vi.php', 1467384175, 0),
(385, 'module', 'videos', 'modules/videos/language/block.module.block_headline_en.php', 1467384175, 0),
(384, 'module', 'videos', 'modules/videos/language/block.global.block_tophits_vi.php', 1467384175, 0),
(383, 'module', 'videos', 'modules/videos/language/block.global.block_tophits_en.php', 1467384175, 0),
(382, 'module', 'videos', 'modules/videos/language/block.global.block_news_cat_vi.php', 1467384175, 0),
(381, 'module', 'videos', 'modules/videos/language/block.global.block_news_cat_en.php', 1467384175, 0),
(380, 'module', 'videos', 'modules/videos/language/block.global.block_groups_vi.php', 1467384175, 0),
(379, 'module', 'videos', 'modules/videos/language/block.global.block_groups_en.php', 1467384175, 0),
(378, 'module', 'videos', 'modules/videos/language/block.global.block_category_vi.php', 1467384175, 0),
(377, 'module', 'videos', 'modules/videos/language/block.global.block_category_en.php', 1467384175, 0),
(376, 'module', 'videos', 'modules/videos/language/admin_vi.php', 1467384175, 0),
(375, 'module', 'videos', 'modules/videos/language/admin_en.php', 1467384175, 0),
(374, 'module', 'videos', 'modules/videos/index.html', 1467384175, 0),
(373, 'module', 'videos', 'modules/videos/global.functions.php', 1467384175, 0),
(372, 'module', 'videos', 'modules/videos/functions.php', 1467384175, 0),
(371, 'module', 'videos', 'modules/videos/funcs/v_funcs.php', 1467384175, 0),
(370, 'module', 'videos', 'modules/videos/funcs/viewcat.php', 1467384175, 0),
(369, 'module', 'videos', 'modules/videos/funcs/user-video.php', 1467384175, 0),
(368, 'module', 'videos', 'modules/videos/funcs/user-playlist.php', 1467384175, 0),
(367, 'module', 'videos', 'modules/videos/funcs/uploader.php', 1467384175, 0),
(366, 'module', 'videos', 'modules/videos/funcs/tag.php', 1467384175, 0),
(365, 'module', 'videos', 'modules/videos/funcs/sitemap.php', 1467384175, 0),
(364, 'module', 'videos', 'modules/videos/funcs/sendmail.php', 1467384175, 0),
(363, 'module', 'videos', 'modules/videos/funcs/search.php', 1467384175, 0),
(362, 'module', 'videos', 'modules/videos/funcs/savefile.php', 1467384175, 0),
(361, 'module', 'videos', 'modules/videos/funcs/rss.php', 1467384175, 0),
(360, 'module', 'videos', 'modules/videos/funcs/rating.php', 1467384175, 0),
(359, 'module', 'videos', 'modules/videos/funcs/playlists.php', 1467384175, 0),
(358, 'module', 'videos', 'modules/videos/funcs/player.php', 1467384175, 0),
(357, 'module', 'videos', 'modules/videos/funcs/main.php', 1467384175, 0),
(356, 'module', 'videos', 'modules/videos/funcs/list_playlist_cat.php', 1467384175, 0),
(355, 'module', 'videos', 'modules/videos/funcs/index.html', 1467384175, 0),
(354, 'module', 'videos', 'modules/videos/funcs/groups.php', 1467384175, 0),
(353, 'module', 'videos', 'modules/videos/funcs/detail.php', 1467384175, 0),
(352, 'module', 'videos', 'modules/videos/comment.php', 1467384175, 0),
(351, 'module', 'videos', 'modules/videos/blocks/index.html', 1467384175, 0),
(350, 'module', 'videos', 'modules/videos/blocks/global.block_tophits.php', 1467384175, 0),
(349, 'module', 'videos', 'modules/videos/blocks/global.block_tophits.ini', 1467384175, 0),
(348, 'module', 'videos', 'modules/videos/blocks/global.block_new_comment.php', 1467384175, 0),
(347, 'module', 'videos', 'modules/videos/blocks/global.block_new_comment.ini', 1467384175, 0),
(346, 'module', 'videos', 'modules/videos/blocks/global.block_news_cat.php', 1467384175, 0),
(345, 'module', 'videos', 'modules/videos/blocks/global.block_news_cat.ini', 1467384175, 0),
(344, 'module', 'videos', 'modules/videos/blocks/global.block_groups_tabs.php', 1467384175, 0),
(343, 'module', 'videos', 'modules/videos/blocks/global.block_groups_tabs.ini', 1467384175, 0),
(342, 'module', 'videos', 'modules/videos/blocks/global.block_groups_multi_tabs.php', 1467384175, 0),
(341, 'module', 'videos', 'modules/videos/blocks/global.block_groups_multi_tabs.ini', 1467384175, 0),
(340, 'module', 'videos', 'modules/videos/blocks/global.block_groups.php', 1467384175, 0),
(339, 'module', 'videos', 'modules/videos/blocks/global.block_groups.ini', 1467384175, 0),
(338, 'module', 'videos', 'modules/videos/blocks/global.block_cat_quickplay.php', 1467384175, 0),
(337, 'module', 'videos', 'modules/videos/blocks/global.block_cat_quickplay.ini', 1467384175, 0),
(336, 'module', 'videos', 'modules/videos/blocks/global.block_category.php', 1467384175, 0),
(335, 'module', 'videos', 'modules/videos/blocks/global.block_category.ini', 1467384175, 0),
(334, 'module', 'videos', 'modules/videos/admin.menu.php', 1467384175, 0),
(333, 'module', 'videos', 'modules/videos/admin.functions.php', 1467384175, 0),
(332, 'module', 'videos', 'modules/videos/admin/waiting.php', 1467384175, 0),
(331, 'module', 'videos', 'modules/videos/admin/view.php', 1467384175, 0),
(330, 'module', 'videos', 'modules/videos/admin/vid_info.php', 1467384175, 0),
(329, 'module', 'videos', 'modules/videos/admin/tagsajax.php', 1467384175, 0),
(328, 'module', 'videos', 'modules/videos/admin/tags.php', 1467384175, 0),
(327, 'module', 'videos', 'modules/videos/admin/stop.php', 1467384175, 0),
(326, 'module', 'videos', 'modules/videos/admin/sources.php', 1467384175, 0),
(325, 'module', 'videos', 'modules/videos/admin/sourceajax.php', 1467384175, 0),
(324, 'module', 'videos', 'modules/videos/admin/setting.php', 1467384175, 0),
(323, 'module', 'videos', 'modules/videos/admin/rpc.php', 1467384175, 0),
(322, 'module', 'videos', 'modules/videos/admin/report.php', 1467384175, 0),
(321, 'module', 'videos', 'modules/videos/admin/re-published.php', 1467384175, 0),
(320, 'module', 'videos', 'modules/videos/admin/publtime.php', 1467384175, 0),
(319, 'module', 'videos', 'modules/videos/admin/playlists.php', 1467384175, 0),
(318, 'module', 'videos', 'modules/videos/admin/playlist.php', 1467384175, 0),
(317, 'module', 'videos', 'modules/videos/admin/move.php', 1467384175, 0),
(316, 'module', 'videos', 'modules/videos/admin/main.php', 1467384175, 0),
(315, 'module', 'videos', 'modules/videos/admin/list_source.php', 1467384175, 0),
(314, 'module', 'videos', 'modules/videos/admin/list_playlist_cat.php', 1467384175, 0),
(313, 'module', 'videos', 'modules/videos/admin/list_playlist.php', 1467384175, 0),
(312, 'module', 'videos', 'modules/videos/admin/list_cat.php', 1467384175, 0),
(311, 'module', 'videos', 'modules/videos/admin/list_block_cat.php', 1467384175, 0),
(310, 'module', 'videos', 'modules/videos/admin/list_block.php', 1467384175, 0),
(309, 'module', 'videos', 'modules/videos/admin/index.html', 1467384175, 0),
(308, 'module', 'videos', 'modules/videos/admin/groups.php', 1467384175, 0),
(307, 'module', 'videos', 'modules/videos/admin/del_source.php', 1467384175, 0),
(306, 'module', 'videos', 'modules/videos/admin/del_report.php', 1467384175, 0),
(305, 'module', 'videos', 'modules/videos/admin/del_playlist_cat.php', 1467384175, 0),
(304, 'module', 'videos', 'modules/videos/admin/del_playlist.php', 1467384175, 0),
(303, 'module', 'videos', 'modules/videos/admin/del_content.php', 1467384175, 0),
(302, 'module', 'videos', 'modules/videos/admin/del_cat.php', 1467384175, 0),
(301, 'module', 'videos', 'modules/videos/admin/del_block_cat.php', 1467384175, 0),
(300, 'module', 'videos', 'modules/videos/admin/declined.php', 1467384175, 0),
(299, 'module', 'videos', 'modules/videos/admin/content.php', 1467384175, 0),
(298, 'module', 'videos', 'modules/videos/admin/chang_block_cat.php', 1467384175, 0),
(297, 'module', 'videos', 'modules/videos/admin/change_source.php', 1467384175, 0),
(296, 'module', 'videos', 'modules/videos/admin/change_playlist_cat.php', 1467384175, 0),
(295, 'module', 'videos', 'modules/videos/admin/change_playlist.php', 1467384175, 0),
(294, 'module', 'videos', 'modules/videos/admin/change_cat.php', 1467384175, 0),
(293, 'module', 'videos', 'modules/videos/admin/change_block.php', 1467384175, 0),
(292, 'module', 'videos', 'modules/videos/admin/cat.php', 1467384175, 0),
(291, 'module', 'videos', 'modules/videos/admin/block.php', 1467384175, 0),
(290, 'module', 'videos', 'modules/videos/admin/alias.php', 1467384175, 0),
(289, 'module', 'videos', 'modules/videos/admin/admins.php', 1467384175, 0),
(288, 'module', 'videos', 'modules/videos/action_mysql.php', 1467384175, 0),
(489, 'module', 'support', 'modules/support/blocks/global.support_bottom_right.ini', 1467535102, 0),
(490, 'module', 'support', 'modules/support/blocks/global.support_bottom_right.php', 1467535102, 0),
(491, 'module', 'support', 'modules/support/blocks/index.html', 1467535102, 0),
(492, 'module', 'support', 'modules/support/funcs/index.html', 1467535102, 0),
(493, 'module', 'support', 'modules/support/funcs/main.php', 1467535102, 0),
(494, 'module', 'support', 'modules/support/functions.php', 1467535102, 0),
(495, 'module', 'support', 'modules/support/index.html', 1467535102, 0),
(496, 'module', 'support', 'modules/support/language/admin_en.php', 1467535102, 0),
(497, 'module', 'support', 'modules/support/language/admin_fr.php', 1467535102, 0),
(498, 'module', 'support', 'modules/support/language/admin_vi.php', 1467535102, 0),
(499, 'module', 'support', 'modules/support/language/block.config_en.php', 1467535102, 0),
(500, 'module', 'support', 'modules/support/language/block.config_vi.php', 1467535102, 0),
(501, 'module', 'support', 'modules/support/language/index.html', 1467535102, 0),
(502, 'module', 'support', 'modules/support/support_blocks.php', 1467535102, 0),
(503, 'module', 'support', 'modules/support/support_config.php', 1467535102, 0),
(504, 'module', 'support', 'modules/support/version.php', 1467535102, 0),
(505, 'module', 'support', 'themes/default/modules/support/global.support.tpl', 1467535102, 0),
(506, 'module', 'support', 'themes/default/modules/support/global.support_all_group.tpl', 1467535102, 0),
(507, 'module', 'support', 'themes/default/modules/support/global.support_bottom_right.tpl', 1467535102, 0),
(508, 'module', 'support', 'themes/default/modules/support/index.html', 1467535102, 0),
(509, 'module', 'support', 'themes/default/css/support.css', 1467535102, 0),
(510, 'module', 'support', 'themes/default/images/support/bg_linked_mod.png', 1467535102, 0),
(511, 'module', 'support', 'themes/default/images/support/bg_link_mod.png', 1467535102, 0),
(512, 'module', 'support', 'themes/default/images/support/FolderWindows.png', 1467535102, 0),
(513, 'module', 'support', 'themes/default/images/support/icon-cat.gif', 1467535102, 0),
(514, 'module', 'support', 'themes/default/images/support/icons.gif', 1467535102, 0),
(515, 'module', 'support', 'themes/default/images/support/index.html', 1467535102, 0),
(516, 'module', 'support', 'themes/default/images/support/no_image.gif', 1467535102, 0),
(517, 'module', 'support', 'themes/default/images/support/OpenWeb.png', 1467535102, 0),
(518, 'module', 'support', 'themes/default/images/support/report-hover.png', 1467535102, 0),
(519, 'module', 'support', 'themes/default/images/support/report.png', 1467535102, 0),
(520, 'module', 'support', 'themes/default/images/support/weblinks.gif', 1467535102, 0),
(521, 'module', 'support', 'themes/admin_default/js/support.js', 1467535102, 0),
(522, 'module', 'support', 'themes/admin_default/modules/support/cat.tpl', 1467535102, 0),
(523, 'module', 'support', 'themes/admin_default/modules/support/index.html', 1467535102, 0),
(524, 'module', 'support', 'themes/admin_default/modules/support/main.tpl', 1467535102, 0),
(525, 'module', 'support', 'themes/admin_default/modules/support/rows.tpl', 1467535102, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_googleplus`
--

CREATE TABLE `nv4_googleplus` (
  `gid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `idprofile` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language`
--

CREATE TABLE `nv4_language` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `idfile` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `lang_key` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_language_file`
--

CREATE TABLE `nv4_language_file` (
  `idfile` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_file` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `langtype` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_logs`
--

CREATE TABLE `nv4_logs` (
  `id` int(11) NOT NULL,
  `lang` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_name` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note_action` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_acess` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `log_time` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_logs`
--

INSERT INTO `nv4_logs` (`id`, `lang`, `module_name`, `name_key`, `note_action`, `link_acess`, `userid`, `log_time`) VALUES
(1, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467124199),
(2, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1467124215),
(3, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1467124244),
(4, 'vi', 'modules', 'Thứ tự module: shops', '15 -> 3', '', 1, 1467124252),
(5, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467124432),
(6, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1467124492),
(7, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1467124757),
(8, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1467124769),
(9, 'vi', 'slider', 'Thêm nhóm', 'group_id: 1', '', 1, 1467124783),
(10, 'vi', 'slider', 'Thêm nhóm', 'group_id: 2', '', 1, 1467124795),
(11, 'vi', 'upload', 'Upload file', 'uploads/slider/images/1.jpg', '', 1, 1467124859),
(12, 'vi', 'upload', 'Upload file', 'uploads/slider/images/2.jpg', '', 1, 1467124859),
(13, 'vi', 'upload', 'Upload file', 'uploads/slider/images/3.jpg', '', 1, 1467124860),
(14, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 1', '', 1, 1467124869),
(15, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 2', '', 1, 1467124882),
(16, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 3', '', 1, 1467124893),
(17, 'vi', 'slider', 'log_del_template', '4', '', 1, 1467124946),
(18, 'vi', 'slider', 'log_del_template', '1', '', 1, 1467124948),
(19, 'vi', 'slider', 'log_del_template', '2', '', 1, 1467124950),
(20, 'vi', 'slider', 'log_del_template', '3', '', 1, 1467124951),
(21, 'vi', 'slider', 'log_add_template', 'template_id: 5', '', 1, 1467124978),
(22, 'vi', 'slider', 'log_add_template', 'template_id: 6', '', 1, 1467124992),
(23, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467125020),
(24, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467125139),
(25, 'vi', 'slider', 'log_add_template', 'template_id: 7', '', 1, 1467125309),
(26, 'vi', 'slider', 'log_add_template', 'template_id: 8', '', 1, 1467125326),
(27, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467125340),
(28, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467125360),
(29, 'vi', 'slider', 'log_add_template', 'template_id: 9', '', 1, 1467125398),
(30, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467125421),
(31, 'vi', 'upload', 'Upload file', 'uploads/slider/images/aocuoi_1427096408.jpg', '', 1, 1467125530),
(32, 'vi', 'upload', 'Upload file', 'uploads/slider/images/logo_1427182967.png', '', 1, 1467125531),
(33, 'vi', 'upload', 'Upload file', 'uploads/slider/images/logo_1427188300.png', '', 1, 1467125531),
(34, 'vi', 'upload', 'Upload file', 'uploads/slider/images/logo_1427188340.png', '', 1, 1467125531),
(35, 'vi', 'upload', 'Upload file', 'uploads/slider/images/logo_1427188411.png', '', 1, 1467125531),
(36, 'vi', 'upload', 'Upload file', 'uploads/slider/images/logo_1427188551.png', '', 1, 1467125531),
(37, 'vi', 'upload', 'Upload file', 'uploads/slider/images/xe-dien-zoomer-x5_3.png', '', 1, 1467125532),
(38, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/xe-dien-zoomer-x5_3.png', '', 1, 1467125606),
(39, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/logo_1427182967.png', '', 1, 1467125606),
(40, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/logo_1427188300.png', '', 1, 1467125606),
(41, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/logo_1427188340.png', '', 1, 1467125606),
(42, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/logo_1427188411.png', '', 1, 1467125606),
(43, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/logo_1427188551.png', '', 1, 1467125606),
(44, 'vi', 'upload', 'Xóa file', 'uploads/slider/images/aocuoi_1427096408.jpg', '', 1, 1467125606),
(45, 'vi', 'upload', 'Upload file', 'uploads/slider/images/01.png', '', 1, 1467125622),
(46, 'vi', 'upload', 'Upload file', 'uploads/slider/images/02.png', '', 1, 1467125623),
(47, 'vi', 'upload', 'Upload file', 'uploads/slider/images/03.png', '', 1, 1467125623),
(48, 'vi', 'upload', 'Upload file', 'uploads/slider/images/04.png', '', 1, 1467125623),
(49, 'vi', 'upload', 'Upload file', 'uploads/slider/images/05.jpg', '', 1, 1467125623),
(50, 'vi', 'upload', 'Upload file', 'uploads/slider/images/07-1.png', '', 1, 1467125623),
(51, 'vi', 'upload', 'Upload file', 'uploads/slider/images/07-2.png', '', 1, 1467125624),
(52, 'vi', 'slider', 'log_del_group', '2', '', 1, 1467125757),
(53, 'vi', 'slider', 'Thêm nhóm', 'group_id: 3', '', 1, 1467125767),
(54, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 4', '', 1, 1467125782),
(55, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 5', '', 1, 1467125795),
(56, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 6', '', 1, 1467125804),
(57, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 7', '', 1, 1467125813),
(58, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 8', '', 1, 1467125822),
(59, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 9', '', 1, 1467125842),
(60, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 10', '', 1, 1467125855),
(61, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467125889),
(62, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467126295),
(63, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467126386),
(64, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467126422),
(65, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467126448),
(66, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467126466),
(67, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467126485),
(68, 'vi', 'upload', 'Upload file', 'uploads/logo.png', '', 1, 1467127166),
(69, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467127176),
(70, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467127275),
(71, 'vi', 'upload', 'Xóa file', 'uploads/logo.png', '', 1, 1467127483),
(72, 'vi', 'upload', 'Upload file', 'uploads/logo.png', '', 1, 1467127489),
(73, 'vi', 'themes', 'Sửa block', 'Name : Contact Default', '', 1, 1467127646),
(74, 'vi', 'themes', 'Sửa block', 'Name : Contact Default', '', 1, 1467127675),
(75, 'vi', 'shops', 'log_del_catalog', 'id 9', '', 1, 1467127937),
(76, 'vi', 'shops', 'log_del_catalog', 'id 8', '', 1, 1467127941),
(77, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1467127979),
(78, 'vi', 'shops', 'log_del_catalog', 'id 16', '', 1, 1467128024),
(79, 'vi', 'shops', 'log_del_catalog', 'id 14', '', 1, 1467128034),
(80, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1467128056),
(81, 'vi', 'shops', 'log_del_catalog', 'id 22', '', 1, 1467128085),
(82, 'vi', 'shops', 'log_del_catalog', 'id 21', '', 1, 1467128086),
(83, 'vi', 'shops', 'log_del_catalog', 'id 20', '', 1, 1467128087),
(84, 'vi', 'shops', 'log_del_catalog', 'id 19', '', 1, 1467128088),
(85, 'vi', 'shops', 'log_del_catalog', 'id 18', '', 1, 1467128090),
(86, 'vi', 'shops', 'log_del_catalog', 'id 5', '', 1, 1467128095),
(87, 'vi', 'shops', 'log_del_catalog', 'id 12', '', 1, 1467128099),
(88, 'vi', 'shops', 'log_del_catalog', 'id 4', '', 1, 1467128116),
(89, 'vi', 'upload', 'Upload file', 'uploads/01.png', '', 1, 1467128559),
(90, 'vi', 'upload', 'Upload file', 'uploads/02.jpg', '', 1, 1467128559),
(91, 'vi', 'upload', 'Upload file', 'uploads/03.jpg', '', 1, 1467128560),
(92, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/02.jpg', '', 1, 1467128600),
(93, 'vi', 'shops', 'Edit A Product', 'ID: 4', '', 1, 1467128643),
(94, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/01.png', '', 1, 1467128673),
(95, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/03.jpg', '', 1, 1467128673),
(96, 'vi', 'shops', 'Edit A Product', 'ID: 4', '', 1, 1467128694),
(97, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467128720),
(98, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467128739),
(99, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467128794),
(100, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467130018),
(101, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/04.png', '', 1, 1467130122),
(102, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/05.png', '', 1, 1467130122),
(103, 'vi', 'shops', 'Add A Product', 'ID: 12', '', 1, 1467130198),
(104, 'vi', 'shops', 'Add A Product', 'ID: 13', '', 1, 1467130218),
(105, 'vi', 'shops', 'log_del_product', 'id 12', '', 1, 1467130228),
(106, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467130360),
(107, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467130385),
(108, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467130392),
(109, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467189955),
(110, 'vi', 'modules', 'Xóa module "shops"', '', '', 1, 1467190501),
(111, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1467190581),
(112, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1467190595),
(113, 'vi', 'modules', 'Thứ tự module: shops', '16 -> 3', '', 1, 1467190602),
(114, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467190715),
(115, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467190772),
(116, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467190788),
(117, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467190816),
(118, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467190838),
(119, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1467190862),
(120, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467190978),
(121, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467191029),
(122, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1467191346),
(123, 'vi', 'shops', 'log_del_catalog', 'id 9', '', 1, 1467191353),
(124, 'vi', 'shops', 'log_del_catalog', 'id 8', '', 1, 1467191355),
(125, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1467191405),
(126, 'vi', 'shops', 'log_del_catalog', 'id 16', '', 1, 1467191410),
(127, 'vi', 'shops', 'log_del_catalog', 'id 14', '', 1, 1467191417),
(128, 'vi', 'shops', 'log_del_catalog', 'id 12', '', 1, 1467191431),
(129, 'vi', 'shops', 'log_del_catalog', 'id 4', '', 1, 1467191449),
(130, 'vi', 'shops', 'log_del_catalog', 'id 22', '', 1, 1467191453),
(131, 'vi', 'shops', 'log_del_catalog', 'id 21', '', 1, 1467191455),
(132, 'vi', 'shops', 'log_del_catalog', 'id 20', '', 1, 1467191456),
(133, 'vi', 'shops', 'log_del_catalog', 'id 19', '', 1, 1467191457),
(134, 'vi', 'shops', 'log_del_catalog', 'id 18', '', 1, 1467191458),
(135, 'vi', 'shops', 'log_del_catalog', 'id 5', '', 1, 1467191465),
(136, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/01.png', '', 1, 1467191647),
(137, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/02.jpg', '', 1, 1467191648),
(138, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/03.jpg', '', 1, 1467191649),
(139, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/04.png', '', 1, 1467191649),
(140, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/05.png', '', 1, 1467191649),
(141, 'vi', 'shops', 'Edit A Product', 'ID: 4', '', 1, 1467191747),
(142, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467191776),
(143, 'vi', 'shops', 'Edit A Product', 'ID: 4', '', 1, 1467191833),
(144, 'vi', 'shops', 'Add A Product', 'ID: 12', '', 1, 1467191976),
(145, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467193778),
(146, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467212495),
(147, 'vi', 'modules', 'Xóa module "shops"', '', '', 1, 1467212512),
(148, 'vi', 'extensions', 'Cài đặt ứng dụng', 'nv4_module_shops.zip', '', 1, 1467212531),
(149, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1467212553),
(150, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1467212565),
(151, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467212614),
(152, 'vi', 'modules', 'Thứ tự module: shops', '16 -> 3', '', 1, 1467212635),
(153, 'vi', 'shops', 'log_del_catalog', 'id 22', '', 1, 1467212691),
(154, 'vi', 'shops', 'log_del_catalog', 'id 21', '', 1, 1467212692),
(155, 'vi', 'shops', 'log_del_catalog', 'id 20', '', 1, 1467212693),
(156, 'vi', 'shops', 'log_del_catalog', 'id 19', '', 1, 1467212701),
(157, 'vi', 'shops', 'log_del_catalog', 'id 18', '', 1, 1467212702),
(158, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1467212741),
(159, 'vi', 'shops', 'log_del_catalog', 'id 9', '', 1, 1467212746),
(160, 'vi', 'shops', 'log_del_catalog', 'id 8', '', 1, 1467212748),
(161, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1467212782),
(162, 'vi', 'shops', 'log_del_catalog', 'id 16', '', 1, 1467212787),
(163, 'vi', 'shops', 'log_del_catalog', 'id 14', '', 1, 1467212793),
(164, 'vi', 'shops', 'log_del_catalog', 'id 12', '', 1, 1467212807),
(165, 'vi', 'shops', 'log_del_catalog', 'id 4', '', 1, 1467212822),
(166, 'vi', 'shops', 'log_del_catalog', 'id 5', '', 1, 1467212824),
(167, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467212848),
(168, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467212879),
(169, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1467212896),
(170, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/01.png', '', 1, 1467212971),
(171, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/02.jpg', '', 1, 1467212972),
(172, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/03.jpg', '', 1, 1467212972),
(173, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/04.png', '', 1, 1467212973),
(174, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/05.png', '', 1, 1467212973),
(175, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467213078),
(176, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467213140),
(177, 'vi', 'modules', 'Xóa module "shops"', '', '', 1, 1467213314),
(178, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1467213481),
(179, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1467213494),
(180, 'vi', 'modules', 'Thứ tự module: shops', '16 -> 3', '', 1, 1467213509),
(181, 'vi', 'modules', 'Xóa module "shops"', '', '', 1, 1467213567),
(182, 'vi', 'modules', 'Thiết lập module mới shops', '', '', 1, 1467213738),
(183, 'vi', 'modules', 'Sửa module &ldquo;shops&rdquo;', '', '', 1, 1467213750),
(184, 'vi', 'modules', 'Thứ tự module: shops', '16 -> 4', '', 1, 1467213785),
(185, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467213812),
(186, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/01.png', '', 1, 1467213922),
(187, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/02.jpg', '', 1, 1467213923),
(188, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/03.jpg', '', 1, 1467213923),
(189, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/04.png', '', 1, 1467213924),
(190, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/05.png', '', 1, 1467213924),
(191, 'vi', 'shops', 'Edit A Product', 'ID: 4', '', 1, 1467213949),
(192, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1467214099),
(193, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467214123),
(194, 'vi', 'shops', 'Edit A Product', 'ID: 11', '', 1, 1467214460),
(195, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1467214522),
(196, 'vi', 'shops', 'Edit A Product', 'ID: 9', '', 1, 1467214555),
(197, 'vi', 'shops', 'Edit A Product', 'ID: 6', '', 1, 1467214603),
(198, 'vi', 'shops', 'Edit A Product', 'ID: 5', '', 1, 1467214657),
(199, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467214694),
(200, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467216101),
(201, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467249939),
(202, 'vi', 'shops', 'log_edit_catalog', 'id 2', '', 1, 1467250031),
(203, 'vi', 'shops', 'log_edit_catalog', 'id 3', '', 1, 1467250052),
(204, 'vi', 'shops', 'log_del_catalog', 'id 9', '', 1, 1467250057),
(205, 'vi', 'shops', 'log_del_catalog', 'id 8', '', 1, 1467250059),
(206, 'vi', 'shops', 'log_del_catalog', 'id 16', '', 1, 1467250080),
(207, 'vi', 'shops', 'log_del_catalog', 'id 14', '', 1, 1467250087),
(208, 'vi', 'shops', 'log_del_catalog', 'id 12', '', 1, 1467250100),
(209, 'vi', 'shops', 'log_del_catalog', 'id 4', '', 1, 1467250116),
(210, 'vi', 'shops', 'log_del_catalog', 'id 22', '', 1, 1467250120),
(211, 'vi', 'shops', 'log_del_catalog', 'id 21', '', 1, 1467250121),
(212, 'vi', 'shops', 'log_del_catalog', 'id 20', '', 1, 1467250122),
(213, 'vi', 'shops', 'log_del_catalog', 'id 19', '', 1, 1467250123),
(214, 'vi', 'shops', 'log_del_catalog', 'id 18', '', 1, 1467250124),
(215, 'vi', 'shops', 'log_del_catalog', 'id 5', '', 1, 1467250128),
(216, 'vi', 'shops', 'Edit A Product', 'ID: 8', '', 1, 1467250271),
(217, 'vi', 'shops', 'Edit A Product', 'ID: 7', '', 1, 1467250353),
(218, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/4.jpg', '', 1, 1467250438),
(219, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/5.png', '', 1, 1467250439),
(220, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_06/6.png', '', 1, 1467250439),
(221, 'vi', 'shops', 'Edit A Product', 'ID: 3', '', 1, 1467250501),
(222, 'vi', 'shops', 'Edit A Product', 'ID: 2', '', 1, 1467250640),
(223, 'vi', 'shops', 'Edit A Product', 'ID: 1', '', 1, 1467250744),
(224, 'vi', 'shops', 'Edit A Product', 'ID: 2', '', 1, 1467250782),
(225, 'vi', 'shops', 'Edit A Product', 'ID: 10', '', 1, 1467250849),
(226, 'vi', 'shops', 'Edit A Product', 'ID: 5', '', 1, 1467250921),
(227, 'vi', 'shops', 'Edit A Product', 'ID: 9', '', 1, 1467250984),
(228, 'vi', 'shops', 'Edit A Product', 'ID: 7', '', 1, 1467251026),
(229, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467251291),
(230, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467251306),
(231, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467251763),
(232, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467252126),
(233, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467253833),
(234, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467254257),
(235, 'vi', 'slider', 'log_del_template', '5', '', 1, 1467254349),
(236, 'vi', 'slider', 'log_del_template', '8', '', 1, 1467254354),
(237, 'vi', 'slider', 'log_change_weight_template', 'template_id:9', '', 1, 1467254360),
(238, 'vi', 'slider', 'log_del_template', '7', '', 1, 1467254390),
(239, 'vi', 'slider', 'log_edit_template', 'template_id: 6', '', 1, 1467254414),
(240, 'vi', 'themes', 'Thêm block', 'Name : global reviews', '', 1, 1467255028),
(241, 'vi', 'themes', 'Thêm block', 'Name : global reviews', '', 1, 1467255064),
(242, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467255095),
(243, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467255184),
(244, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467255214),
(245, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1467255237),
(246, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467255279),
(247, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467175641),
(248, 'vi', 'shops', 'Edit A Product', 'ID: 11', '', 1, 1467175693),
(249, 'vi', 'shops', 'Edit A Product', 'ID: 6', '', 1, 1467175718),
(250, 'vi', 'shops', 'Edit A Product', 'ID: 5', '', 1, 1467175739),
(251, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467176266),
(252, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467176272),
(253, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467184110),
(254, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467184117),
(255, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467184387),
(256, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467185082),
(257, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467186883),
(258, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467192024),
(259, 'vi', 'upload', 'Upload file', 'uploads/xe-dien-viet-thanh.jpg', '', 1, 1467192118),
(260, 'vi', 'upload', 'Upload file', 'uploads/xe-die-tra-gop.png', '', 1, 1467192118),
(261, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1467192161),
(262, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1467192182),
(263, 'vi', 'themes', 'Thêm block', 'Name : global html', '', 1, 1467192206),
(264, 'vi', 'modules', 'Xóa module "slider"', '', '', 1, 1467193430),
(265, 'vi', 'modules', 'Thiết lập module mới slider', '', '', 1, 1467193480),
(266, 'vi', 'modules', 'Sửa module &ldquo;slider&rdquo;', '', '', 1, 1467193489),
(267, 'vi', 'slider', 'Thêm nhóm', 'group_id: 1', '', 1, 1467193502),
(268, 'vi', 'slider', 'Thêm nhóm', 'group_id: 2', '', 1, 1467193508),
(269, 'vi', 'slider', 'log_add_template', 'template_id: 5', '', 1, 1467193552),
(270, 'vi', 'upload', 'Upload file', 'uploads/slider/images/01.jpg', '', 1, 1467193640),
(271, 'vi', 'upload', 'Upload file', 'uploads/slider/images/02.jpg', '', 1, 1467193640),
(272, 'vi', 'upload', 'Upload file', 'uploads/slider/images/03.jpg', '', 1, 1467193640),
(273, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 1', '', 1, 1467193648),
(274, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 2', '', 1, 1467193658),
(275, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 3', '', 1, 1467193667),
(276, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467193698),
(277, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467193718),
(278, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467193732),
(279, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-1.jpg', '', 1, 1467193951),
(280, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-1.png', '', 1, 1467193951),
(281, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-2.png', '', 1, 1467193952),
(282, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-3.png', '', 1, 1467193952),
(283, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-4.png', '', 1, 1467193952),
(284, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-5.png', '', 1, 1467193952),
(285, 'vi', 'upload', 'Upload file', 'uploads/slider/images/a-6.png', '', 1, 1467193952),
(286, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 4', '', 1, 1467193961),
(287, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 5', '', 1, 1467193974),
(288, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 6', '', 1, 1467193983),
(289, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 7', '', 1, 1467193991),
(290, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 8', '', 1, 1467193999),
(291, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 9', '', 1, 1467194024),
(292, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 10', '', 1, 1467194031),
(293, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467194059),
(294, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467194079),
(295, 'vi', 'slider', 'log_add_template', 'template_id: 6', '', 1, 1467194346),
(296, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467194385),
(297, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467195099),
(298, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467195517),
(299, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467195692),
(300, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467208814),
(301, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467208902),
(302, 'vi', 'news', 'Thêm bài viết', 'HD tạo QC giữa bài viết', '', 1, 1467209066),
(303, 'vi', 'news', 'Sửa bài viết', 'HD tạo QC giữa bài viết', '', 1, 1467209121),
(304, 'vi', 'news', 'Sửa bài viết', 'HD tạo QC giữa bài viết', '', 1, 1467210231),
(305, 'vi', 'news', 'Sửa bài viết', 'HD tạo QC giữa bài viết', '', 1, 1467210374),
(306, 'vi', 'shops', 'Edit A Product', 'ID: 9', '', 1, 1467210700),
(307, 'vi', 'shops', 'Edit A Product', 'ID: 7', '', 1, 1467210757),
(308, 'vi', 'shops', 'Edit A Product', 'ID: 7', '', 1, 1467210801),
(309, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467210851),
(310, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467363340),
(311, 'vi', 'themes', 'Thêm block', 'Name : global reviews', '', 1, 1467363625),
(312, 'vi', 'themes', 'Sửa block', 'Name : global reviews', '', 1, 1467363857),
(313, 'vi', 'themes', 'Sửa block', 'Name : global reviews', '', 1, 1467363986),
(314, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467365299),
(315, 'vi', 'themes', 'Sửa block', 'Name : global reviews', '', 1, 1467366326),
(316, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467367100),
(317, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467367145),
(318, 'vi', 'themes', 'Sửa block', 'Name : global reviews', '', 1, 1467367207),
(319, 'vi', 'themes', 'Thêm block', 'Name : global slider', '', 1, 1467367498),
(320, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467367599),
(321, 'vi', 'themes', 'Sửa block', 'Name : global slider', '', 1, 1467367917),
(322, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467368260),
(323, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467368329),
(324, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467369478),
(325, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467373823),
(326, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467373829),
(327, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467374066),
(328, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467374307),
(329, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467382371),
(330, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467382379),
(331, 'vi', 'themes', 'Thêm block', 'Name : Bình luận', '', 1, 1467384126),
(332, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-videos-0.2.04.zip', '', 1, 1467384165),
(333, 'vi', 'modules', 'Thiết lập module mới videos', '', '', 1, 1467384183),
(334, 'vi', 'modules', 'Sửa module &ldquo;videos&rdquo;', '', '', 1, 1467384198),
(335, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467384483),
(336, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467385138),
(337, 'vi', 'extensions', 'Cài đặt ứng dụng', 'module-videos-0.2.04.zip', '', 1, 1467385163),
(338, 'vi', 'videos', 'Thêm chuyên mục', 'Quảng cáo xe đạp', '', 1, 1467385213),
(339, 'vi', 'upload', 'Upload file', 'uploads/videos/img/2016_07/0044.jpg', '', 1, 1467385314),
(340, 'vi', 'videos', 'Thêm bảng Uploader', 'admin', '', 1, 1467385335),
(341, 'vi', 'videos', 'Thêm Videos', 'Quảng cáo xe đạp tại Mỹ', '', 1, 1467385335),
(342, 'vi', 'themes', 'Thêm block', 'Name : Video', '', 1, 1467385649),
(343, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467385729),
(344, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467386011),
(345, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467386083),
(346, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467386931),
(347, 'vi', 'themes', 'Thêm block', 'Name : global social', '', 1, 1467387431),
(348, 'vi', 'upload', 'Upload file', 'uploads/users/logo.png', '', 1, 1467387511),
(349, 'vi', 'themes', 'Sửa block', 'Name : Các chuyên mục chính', '', 1, 1467387519),
(350, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1467387580),
(351, 'vi', 'themes', 'Sửa block', 'Name : global html', '', 1, 1467387597),
(352, 'vi', 'themes', 'Sửa block', 'Name : Công ty chủ quản', '', 1, 1467387620),
(353, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467387631),
(354, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467442571),
(355, 'vi', 'themes', 'Thêm block', 'Name : tin mới', '', 1, 1467442622),
(356, 'vi', 'themes', 'Sửa block', 'Name : tin mới', '', 1, 1467442824),
(357, 'vi', 'themes', 'Sửa block', 'Name : tin mới', '', 1, 1467442926),
(358, 'vi', 'themes', 'Sửa block', 'Name : tin mới', '', 1, 1467443380),
(359, 'vi', 'themes', 'Sửa block', 'Name : tin mới', '', 1, 1467443715),
(360, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467446056),
(361, 'vi', 'themes', 'Sửa block', 'Name : Video', '', 1, 1467446073),
(362, 'vi', 'themes', 'Sửa block', 'Name : global block bxproduct center', '', 1, 1467446504),
(363, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467446532),
(364, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467446583),
(365, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467446603),
(366, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467446621),
(367, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467446980),
(368, 'vi', 'themes', 'Thêm block', 'Name : global block bxproduct center', '', 1, 1467447027),
(369, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467447050),
(370, 'vi', 'themes', 'Sửa block', 'Name : sản phẩm hot', '', 1, 1467447083),
(371, 'vi', 'themes', 'Thêm block', 'Name : tin mới', '', 1, 1467447188),
(372, 'vi', 'news', 'Xóa bài viêt', 'HD tạo QC giữa bài viết', '', 1, 1467447205),
(373, 'vi', 'themes', 'Sửa block', 'Name : tin mới', '', 1, 1467447220),
(374, 'vi', 'themes', 'Thêm block', 'Name : bình luận mới', '', 1, 1467447306),
(375, 'vi', 'users', 'log_edit_user', 'userid 1', '', 1, 1467447544),
(376, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467447556),
(377, 'vi', 'themes', 'Sửa block', 'Name : bình luận mới', '', 1, 1467447638),
(378, 'vi', 'themes', 'Sửa block', 'Name : bình luận mới', '', 1, 1467447653),
(379, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467447675),
(380, 'vi', 'themes', 'Sửa block', 'Name : bình luận mới', '', 1, 1467448000),
(381, 'vi', 'themes', 'Sửa block', 'Name : tin mới', '', 1, 1467448107),
(382, 'vi', 'themes', 'Sửa block', 'Name : Tin thị trường xe đạp', '', 1, 1467448133),
(383, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/2.png', '', 1, 1467448235),
(384, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/3.jpg', '', 1, 1467448235),
(385, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/05.png', '', 1, 1467448236),
(386, 'vi', 'shops', 'Add A Product', 'ID: 12', '', 1, 1467448291),
(387, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/4.png', '', 1, 1467448392),
(388, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/5.png', '', 1, 1467448392),
(389, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/6.jpg', '', 1, 1467448393),
(390, 'vi', 'shops', 'Add A Product', 'ID: 13', '', 1, 1467448409),
(391, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/7.png', '', 1, 1467448486),
(392, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/8.jpg', '', 1, 1467448487),
(393, 'vi', 'shops', 'Add A Product', 'ID: 14', '', 1, 1467448508),
(394, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/9.jpg', '', 1, 1467448592),
(395, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/10.png', '', 1, 1467448592),
(396, 'vi', 'upload', 'Upload file', 'uploads/shops/2016_07/111.png', '', 1, 1467448593),
(397, 'vi', 'shops', 'Add A Product', 'ID: 15', '', 1, 1467448656),
(398, 'vi', 'shops', 'Add A Product', 'ID: 16', '', 1, 1467448742),
(399, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467448747),
(400, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467448837),
(401, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467448968),
(402, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467449115),
(403, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467512011),
(404, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467512433),
(405, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467512454),
(406, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467512459),
(407, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467513096),
(408, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467513107),
(409, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467521390),
(410, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'Việt Tiến', '', 1, 1467521521),
(411, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'ZARA', '', 1, 1467521524),
(412, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'VICTORIA SECRECT', '', 1, 1467521528),
(413, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'THÁI TUẤN', '', 1, 1467521529),
(414, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'KELVIN', '', 1, 1467521532),
(415, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'MATTANA', '', 1, 1467521534),
(416, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'Thương hiệu', '', 1, 1467521540),
(417, 'vi', 'shops', 'Xóa nhóm và các sản phẩm', 'VÀNG', '', 1, 1467521550),
(418, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467521601),
(419, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467527233),
(420, 'vi', 'themes', 'Sửa block', 'Name : Tin thị trường xe đạp', '', 1, 1467528167),
(421, 'vi', 'themes', 'Thêm block', 'Name : Thị trường xe đạp', '', 1, 1467528302),
(422, 'vi', 'themes', 'Sửa block', 'Name : Thị trường xe đạp', '', 1, 1467528688),
(423, 'vi', 'themes', 'Thêm block', 'Name : global counter', '', 1, 1467529560),
(424, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467530744),
(425, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467530908),
(426, 'vi', 'themes', 'Sửa block', 'Name : Tin mới nhất', '', 1, 1467531055),
(427, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467531615),
(428, 'vi', 'upload', 'Upload file', 'uploads/slider/images/01_1.jpg', '', 1, 1467532067),
(429, 'vi', 'upload', 'Upload file', 'uploads/slider/images/03_1.jpg', '', 1, 1467532067),
(430, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 11', '', 1, 1467532073),
(431, 'vi', 'slider', 'Thêm ảnh', 'photo_id: 12', '', 1, 1467532085),
(432, 'vi', 'slider', 'log_change_weight_photo', 'photo_id:11', '', 1, 1467532096),
(433, 'vi', 'slider', 'log_change_weight_photo', 'photo_id:11', '', 1, 1467532101),
(434, 'vi', 'slider', 'log_change_weight_photo', 'photo_id:1', '', 1, 1467532104),
(435, 'vi', 'slider', 'log_change_weight_photo', 'photo_id:2', '', 1, 1467532118),
(436, 'vi', 'slider', 'log_change_weight_photo', 'photo_id:1', '', 1, 1467532154),
(437, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467532162),
(438, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467534924),
(439, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467534928),
(440, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467535058),
(441, 'vi', 'extensions', 'Cài đặt ứng dụng', 'nv4_module_support.zip', '', 1, 1467535097),
(442, 'vi', 'modules', 'Thiết lập module mới support', '', '', 1, 1467535107),
(443, 'vi', 'modules', 'Sửa module &ldquo;support&rdquo;', '', '', 1, 1467535122),
(444, 'vi', 'support', 'delete support id: 2', 'Phòng kỹ thuật', '', 1, 1467535153),
(445, 'vi', 'upload', 'Upload file', 'uploads/support/04.jpg', '', 1, 1467535342),
(446, 'vi', 'themes', 'Thêm block', 'Name : global support bottom right', '', 1, 1467535395),
(447, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467535930),
(448, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467550760),
(449, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467550846),
(450, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467551107),
(451, 'vi', 'webtools', 'Dọn dẹp hệ thống', 'clearcache, clearfiletemp, clearerrorlogs, clearip_logs', '', 1, 1467551344),
(452, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467551347),
(453, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467551392),
(454, 'vi', 'shops', 'Add A Product', 'ID: 17', '', 1, 1467551522),
(455, 'vi', 'themes', 'Sửa block', 'Name : bình luận mới', '', 1, 1467551580),
(456, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467553514),
(457, 'vi', 'login', '[admin] Đăng nhập', ' Client IP:::1', '', 0, 1467596580),
(458, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467598061),
(459, 'vi', 'shops', 'Edit A Product', 'ID: 17', '', 1, 1467598199),
(460, 'vi', 'shops', 'Edit A Product', 'ID: 14', '', 1, 1467598243),
(461, 'vi', 'shops', 'Cấu hình module', 'Setting', '', 1, 1467598307),
(462, 'vi', 'login', '[admin] Thoát khỏi tài khoản Quản trị', ' Client IP:::1', '', 0, 1467598570);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_notification`
--

CREATE TABLE `nv4_notification` (
  `id` int(11) UNSIGNED NOT NULL,
  `send_to` mediumint(8) UNSIGNED NOT NULL,
  `send_from` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `area` tinyint(1) UNSIGNED NOT NULL,
  `language` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `obid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL,
  `view` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_plugin`
--

CREATE TABLE `nv4_plugin` (
  `pid` tinyint(4) NOT NULL,
  `plugin_file` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plugin_area` tinyint(4) NOT NULL,
  `weight` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_plugin`
--

INSERT INTO `nv4_plugin` (`pid`, `plugin_file`, `plugin_area`, `weight`) VALUES
(1, 'qrcode.php', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_sessions`
--

CREATE TABLE `nv4_sessions` (
  `session_id` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `onl_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MEMORY DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_sessions`
--

INSERT INTO `nv4_sessions` (`session_id`, `userid`, `username`, `onl_time`) VALUES
('q5f3v9jf2qhkc9jlcnv5j42da3', 0, 'guest', 1467601394);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup`
--

CREATE TABLE `nv4_setup` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tables` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `version` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_extensions`
--

CREATE TABLE `nv4_setup_extensions` (
  `id` int(11) NOT NULL DEFAULT '0',
  `type` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'other',
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_sys` tinyint(1) NOT NULL DEFAULT '0',
  `is_virtual` tinyint(1) NOT NULL DEFAULT '0',
  `basename` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `table_prefix` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `version` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `addtime` int(11) NOT NULL DEFAULT '0',
  `author` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_extensions`
--

INSERT INTO `nv4_setup_extensions` (`id`, `type`, `title`, `is_sys`, `is_virtual`, `basename`, `table_prefix`, `version`, `addtime`, `author`, `note`) VALUES
(0, 'module', 'about', 0, 0, 'page', 'about', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'siteterms', 0, 0, 'page', 'siteterms', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(19, 'module', 'banners', 1, 0, 'banners', 'banners', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(20, 'module', 'contact', 0, 1, 'contact', 'contact', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(1, 'module', 'news', 0, 1, 'news', 'news', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(21, 'module', 'voting', 0, 0, 'voting', 'voting', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'shops', 0, 1, 'shops', 'shops', '4.0.25 1371948600', 1467213732, 'VINADES (contact@vinades.vn)', ''),
(284, 'module', 'seek', 1, 0, 'seek', 'seek', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(24, 'module', 'users', 1, 1, 'users', 'users', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(27, 'module', 'statistics', 0, 0, 'statistics', 'statistics', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(29, 'module', 'menu', 0, 0, 'menu', 'menu', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(283, 'module', 'feeds', 1, 0, 'feeds', 'feeds', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(282, 'module', 'page', 1, 1, 'page', 'page', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(281, 'module', 'comment', 1, 0, 'comment', 'comment', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(312, 'module', 'freecontent', 0, 0, 'freecontent', 'freecontent', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(307, 'theme', 'default', 0, 0, 'default', 'default', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(311, 'theme', 'mobile_default', 0, 0, 'mobile_default', 'mobile_default', '4.0.29 1463652000', 1467124147, 'VINADES (contact@vinades.vn)', ''),
(0, 'module', 'slider', 0, 1, 'slider', 'slider', '4.0.27 1421848859', 1467193478, 'DANGDINHTU (dlinhvan@gmail.com)', ''),
(313, 'module', 'videos', 0, 1, 'videos', 'videos', '0.2.04 1467384175', 1467384175, 'KENNY NGUYEN (nguyentiendat713@gmail.com)', 'Compatible with NukeViet 4 Final'),
(0, 'module', 'support', 0, 0, 'support', 'support', '4.0.21 1467535102', 1467535102, 'VINADES (contact@vinades.vn)', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_setup_language`
--

CREATE TABLE `nv4_setup_language` (
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `setup` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_setup_language`
--

INSERT INTO `nv4_setup_language` (`lang`, `setup`) VALUES
('vi', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block`
--

CREATE TABLE `nv4_shops_block` (
  `bid` int(11) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block`
--

INSERT INTO `nv4_shops_block` (`bid`, `id`, `weight`) VALUES
(1, 4, 0),
(2, 4, 0),
(1, 7, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_block_cat`
--

CREATE TABLE `nv4_shops_block_cat` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_block_cat`
--

INSERT INTO `nv4_shops_block_cat` (`bid`, `adddefault`, `image`, `weight`, `add_time`, `edit_time`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(1, 0, '', 1, 1433298294, 1433298294, 'Sản phẩm bán chạy', 'San-pham-ban-chay', '', ''),
(2, 0, '', 2, 1433298325, 1433298325, 'Sản phẩm hot', 'San-pham-hot', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier`
--

CREATE TABLE `nv4_shops_carrier` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config`
--

CREATE TABLE `nv4_shops_carrier_config` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_items`
--

CREATE TABLE `nv4_shops_carrier_config_items` (
  `id` smallint(4) UNSIGNED NOT NULL,
  `cid` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_location`
--

CREATE TABLE `nv4_shops_carrier_config_location` (
  `cid` tinyint(3) UNSIGNED NOT NULL,
  `iid` smallint(4) UNSIGNED NOT NULL,
  `lid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_carrier_config_weight`
--

CREATE TABLE `nv4_shops_carrier_config_weight` (
  `iid` smallint(4) UNSIGNED NOT NULL,
  `weight` float UNSIGNED NOT NULL,
  `weight_unit` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrier_price` float NOT NULL,
  `carrier_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_catalogs`
--

CREATE TABLE `nv4_shops_catalogs` (
  `catid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` int(11) NOT NULL DEFAULT '0',
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(4) NOT NULL DEFAULT '3',
  `typeprice` tinyint(4) NOT NULL DEFAULT '2',
  `form` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `group_price` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `viewdescriptionhtml` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `cat_allow_point` tinyint(1) NOT NULL DEFAULT '0',
  `cat_number_point` tinyint(4) NOT NULL DEFAULT '0',
  `cat_number_product` tinyint(4) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title_custom` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_descriptionhtml` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_catalogs`
--

INSERT INTO `nv4_shops_catalogs` (`catid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `typeprice`, `form`, `group_price`, `viewdescriptionhtml`, `admins`, `add_time`, `edit_time`, `groups_view`, `cat_allow_point`, `cat_number_point`, `cat_number_product`, `vi_title`, `vi_title_custom`, `vi_alias`, `vi_description`, `vi_descriptionhtml`, `vi_keywords`) VALUES
(2, 0, '', 1, 1, 0, 'viewcat_page_list', 0, '', 1, 8, 7, 1, '', '', 0, '', 1432362728, 1467250031, '6', 0, 0, 0, 'XE MÁY ĐIỆN ZOOMER', 'XE MÁY ĐIỆN ZOOMER', 'xe-may-dien-zoomer', '', '', 'XE MÁY ĐIỆN'),
(3, 0, '', 2, 2, 0, 'viewcat_page_list', 0, '', 1, 8, 7, 1, '', '', 0, '', 1432362789, 1467250052, '6', 0, 0, 0, 'XE ĐẠP ĐIỆN NIJIA', 'XE ĐẠP ĐIỆN NIJIA', 'xe-dap-dien-nijia', '', '', 'XE ĐẠP ĐIỆN NIJIA');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons`
--

CREATE TABLE `nv4_shops_coupons` (
  `id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `code` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'p',
  `discount` float NOT NULL DEFAULT '0',
  `total_amount` float NOT NULL DEFAULT '0',
  `date_start` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `date_end` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `uses_per_coupon` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `uses_per_coupon_count` int(11) NOT NULL DEFAULT '0',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_history`
--

CREATE TABLE `nv4_shops_coupons_history` (
  `id` int(11) NOT NULL,
  `cid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` float NOT NULL DEFAULT '0',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_coupons_product`
--

CREATE TABLE `nv4_shops_coupons_product` (
  `cid` int(11) UNSIGNED NOT NULL,
  `pid` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_discounts`
--

CREATE TABLE `nv4_shops_discounts` (
  `did` smallint(6) NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(6) NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `begin_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `end_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_discounts`
--

INSERT INTO `nv4_shops_discounts` (`did`, `title`, `weight`, `add_time`, `edit_time`, `begin_time`, `end_time`, `config`, `detail`) VALUES
(1, 'Giảm giá 27/7', 0, 1467598181, 1467598181, 1467565200, 1468169999, 'a:2:{i:0;a:4:{s:13:"discount_from";i:1;s:11:"discount_to";i:5;s:15:"discount_number";d:5;s:13:"discount_unit";s:1:"p";}i:1;a:4:{s:13:"discount_from";i:1;s:11:"discount_to";i:10;s:15:"discount_number";d:7;s:13:"discount_unit";s:1:"p";}}', 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field`
--

CREATE TABLE `nv4_shops_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `listtemplate` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tab` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `class` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_field_value_vi`
--

CREATE TABLE `nv4_shops_field_value_vi` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `rows_id` int(11) UNSIGNED NOT NULL,
  `field_id` mediumint(8) NOT NULL,
  `field_value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files`
--

CREATE TABLE `nv4_shops_files` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `path` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `filesize` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `extension` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `download_groups` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '-1',
  `status` tinyint(1) UNSIGNED DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_files_rows`
--

CREATE TABLE `nv4_shops_files_rows` (
  `id_rows` int(11) UNSIGNED NOT NULL,
  `id_files` mediumint(8) UNSIGNED NOT NULL,
  `download_hits` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group`
--

CREATE TABLE `nv4_shops_group` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `viewgroup` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubgroup` int(11) NOT NULL DEFAULT '0',
  `subgroupid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `indetail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numpro` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `in_order` tinyint(2) NOT NULL DEFAULT '0',
  `is_require` tinyint(1) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_description` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group`
--

INSERT INTO `nv4_shops_group` (`groupid`, `parentid`, `image`, `weight`, `sort`, `lev`, `viewgroup`, `numsubgroup`, `subgroupid`, `inhome`, `indetail`, `add_time`, `edit_time`, `numpro`, `in_order`, `is_require`, `vi_title`, `vi_alias`, `vi_description`, `vi_keywords`) VALUES
(2, 0, '', 1, 1, 0, 'viewcat_page_list', 9, '16,17,18,19,20,21,22,23,24', 1, 0, 1432623083, 1432623083, 0, 1, 0, 'Màu sắc', 'Mau-sac', '', ''),
(3, 0, '', 2, 11, 0, 'viewcat_page_list', 15, '25,26,27,28,29,30,31,32,33,34,35,36,37,38,39', 1, 0, 1432623101, 1432623101, 0, 1, 0, 'Kích thước', 'Kich-thuoc', '', ''),
(4, 0, '', 3, 27, 0, 'viewcat_page_list', 8, '40,41,42,43,44,45,46,47', 1, 0, 1432623118, 1432623118, 0, 1, 0, 'Chất liệu', 'Chat-lieu', '', ''),
(5, 0, '', 4, 36, 0, 'viewcat_page_list', 6, '52,53,54,55,56,57', 1, 0, 1432623133, 1432623133, 0, 1, 0, 'Xuất xứ', 'Xuat-xu', '', ''),
(16, 2, '', 1, 2, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627102, 1432627102, 0, 1, 0, 'HỒNG PHẤN', 'HONG-PHAN', '', ''),
(17, 2, '', 2, 3, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627107, 1432627107, 0, 1, 0, 'XANH RÊU', 'XANH-REU', '', ''),
(18, 2, '', 3, 4, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627112, 1432627112, 0, 1, 0, 'TÍM', 'TIM', '', ''),
(19, 2, '', 4, 5, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627123, 1432627123, 0, 1, 0, 'XÁM', 'XAM', '', ''),
(20, 2, '', 5, 6, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627135, 1432627135, 0, 1, 0, 'XANH NƯỚC BIỂN', 'XANH-NUOC-BIEN', '', ''),
(21, 2, '', 6, 7, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627148, 1432627148, 0, 1, 0, 'CAM', 'CAM', '', ''),
(22, 2, '', 7, 8, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627153, 1432627153, 0, 1, 0, 'BẠC', 'BAC', '', ''),
(23, 2, '', 8, 9, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627160, 1432627160, 0, 1, 0, 'MÀU DA', 'MAU-DA', '', ''),
(24, 2, '', 9, 10, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627182, 1432627182, 0, 1, 0, 'ĐEN', 'DEN', '', ''),
(25, 3, '', 1, 12, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627201, 1432627201, 0, 1, 0, 'F', 'F', '', ''),
(26, 3, '', 2, 13, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627210, 1432627210, 0, 1, 0, 'L', 'L', '', ''),
(27, 3, '', 3, 14, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627215, 1432627215, 0, 1, 0, 'M', 'M', '', ''),
(28, 3, '', 4, 15, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627219, 1432627219, 0, 1, 0, 'S', 'S', '', ''),
(29, 3, '', 5, 16, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627223, 1432627223, 0, 1, 0, 'XL', 'XL', '', ''),
(30, 3, '', 6, 17, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627241, 1432627241, 0, 1, 0, 'XXL', 'XXL', '', ''),
(31, 3, '', 7, 18, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627250, 1432627250, 0, 1, 0, 'XXXL', 'XXXL', '', ''),
(32, 3, '', 8, 19, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627259, 1432627259, 0, 1, 0, '35', '35', '', ''),
(33, 3, '', 9, 20, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627264, 1432627264, 0, 1, 0, '36', '36', '', ''),
(34, 3, '', 10, 21, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627269, 1432627269, 0, 1, 0, '37', '37', '', ''),
(35, 3, '', 11, 22, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627274, 1432627274, 0, 1, 0, '38', '38', '', ''),
(36, 3, '', 12, 23, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627279, 1432627279, 0, 1, 0, '39', '39', '', ''),
(37, 3, '', 13, 24, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627284, 1432627284, 0, 1, 0, '40', '40', '', ''),
(38, 3, '', 14, 25, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627291, 1432627291, 0, 1, 0, '41', '41', '', ''),
(39, 3, '', 15, 26, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627296, 1432627296, 0, 1, 0, '42', '42', '', ''),
(40, 4, '', 1, 28, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627339, 1432627339, 0, 1, 0, 'COTTON', 'COTTON', '', ''),
(41, 4, '', 2, 29, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627346, 1432627346, 0, 1, 0, 'DẠ', 'DA', '', ''),
(42, 4, '', 3, 30, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627364, 1432627364, 0, 1, 0, 'JEANS', 'JEANS', '', ''),
(43, 4, '', 4, 31, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627369, 1432627369, 0, 1, 0, 'BÒ', 'BO', '', ''),
(44, 4, '', 5, 32, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627378, 1432627378, 0, 1, 0, 'LANH', 'LANH', '', ''),
(45, 4, '', 6, 33, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627385, 1432627385, 0, 1, 0, 'TƠ TẰM', 'TO-TAM', '', ''),
(46, 4, '', 7, 34, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627399, 1432627399, 0, 1, 0, 'THUN', 'THUN', '', ''),
(47, 4, '', 8, 35, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627407, 1432627407, 0, 1, 0, 'LỤA', 'LUA', '', ''),
(52, 5, '', 1, 37, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627541, 1432627541, 0, 1, 0, 'THÁI LAN', 'THAI-LAN', '', ''),
(53, 5, '', 2, 38, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627553, 1432627553, 0, 1, 0, 'HONGKONG', 'HONGKONG', '', ''),
(54, 5, '', 3, 39, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627565, 1432627565, 0, 1, 0, 'TRUNG QUỐC', 'TRUNG-QUOC', '', ''),
(55, 5, '', 4, 40, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627573, 1432627573, 0, 1, 0, 'PHÁP', 'PHAP', '', ''),
(56, 5, '', 5, 41, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627579, 1432627579, 0, 1, 0, 'ANH', 'ANH', '', ''),
(57, 5, '', 6, 42, 1, 'viewcat_page_list', 0, '', 1, 0, 1432627617, 1432627617, 0, 1, 0, 'AUSTRALIA', 'AUSTRALIA', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_cateid`
--

CREATE TABLE `nv4_shops_group_cateid` (
  `groupid` mediumint(8) UNSIGNED NOT NULL,
  `cateid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_group_cateid`
--

INSERT INTO `nv4_shops_group_cateid` (`groupid`, `cateid`) VALUES
(2, 2),
(2, 3),
(2, 4),
(2, 5),
(3, 2),
(3, 3),
(3, 4),
(3, 5),
(4, 2),
(4, 3),
(4, 4),
(4, 5),
(5, 2),
(5, 3),
(5, 4),
(5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_items`
--

CREATE TABLE `nv4_shops_group_items` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `group_id` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_group_quantity`
--

CREATE TABLE `nv4_shops_group_quantity` (
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `listgroup` varchar(247) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_location`
--

CREATE TABLE `nv4_shops_location` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `parentid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` smallint(4) UNSIGNED NOT NULL DEFAULT '0',
  `sort` mediumint(8) NOT NULL DEFAULT '0',
  `lev` smallint(4) NOT NULL DEFAULT '0',
  `numsub` int(11) NOT NULL DEFAULT '0',
  `subid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_money_vi`
--

CREATE TABLE `nv4_shops_money_vi` (
  `id` mediumint(11) NOT NULL,
  `code` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `number_format` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ',||.'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_money_vi`
--

INSERT INTO `nv4_shops_money_vi` (`id`, `code`, `currency`, `exchange`, `round`, `number_format`) VALUES
(840, 'USD', 'US Dollar', 21000, '0.01', ',||.'),
(704, 'VND', 'Vietnam Dong', 1, '100', ',||.');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders`
--

CREATE TABLE `nv4_shops_orders` (
  `order_id` int(11) UNSIGNED NOT NULL,
  `order_code` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'en',
  `order_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_phone` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `shop_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `who_is` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `unit_total` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_total` double UNSIGNED NOT NULL DEFAULT '0',
  `order_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `postip` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_view` tinyint(2) NOT NULL DEFAULT '0',
  `transaction_status` tinyint(4) NOT NULL,
  `transaction_id` int(11) NOT NULL DEFAULT '0',
  `transaction_count` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id`
--

CREATE TABLE `nv4_shops_orders_id` (
  `id` int(11) UNSIGNED NOT NULL,
  `order_id` int(11) NOT NULL,
  `proid` mediumint(9) NOT NULL,
  `num` mediumint(9) NOT NULL,
  `price` int(11) NOT NULL,
  `discount_id` smallint(6) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_id_group`
--

CREATE TABLE `nv4_shops_orders_id_group` (
  `order_i` int(11) NOT NULL,
  `group_id` mediumint(8) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_orders_shipping`
--

CREATE TABLE `nv4_shops_orders_shipping` (
  `id` tinyint(11) UNSIGNED NOT NULL,
  `order_id` tinyint(11) UNSIGNED NOT NULL,
  `ship_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_phone` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_location_id` mediumint(8) UNSIGNED NOT NULL,
  `ship_address_extend` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ship_shops_id` tinyint(3) UNSIGNED NOT NULL,
  `ship_carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `ship_price` float NOT NULL DEFAULT '0',
  `ship_price_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_payment`
--

CREATE TABLE `nv4_shops_payment` (
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `paymentname` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `domain` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `images_button` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point`
--

CREATE TABLE `nv4_shops_point` (
  `userid` int(11) NOT NULL DEFAULT '0',
  `point_total` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_history`
--

CREATE TABLE `nv4_shops_point_history` (
  `id` int(11) NOT NULL,
  `userid` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL,
  `point` int(11) NOT NULL DEFAULT '0',
  `time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_point_queue`
--

CREATE TABLE `nv4_shops_point_queue` (
  `order_id` int(11) NOT NULL,
  `point` mediumint(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_review`
--

CREATE TABLE `nv4_shops_review` (
  `review_id` int(11) UNSIGNED NOT NULL,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `sender` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating` int(1) NOT NULL,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_rows`
--

CREATE TABLE `nv4_shops_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `listcatid` int(11) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `product_code` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `product_number` int(11) NOT NULL DEFAULT '0',
  `product_price` float NOT NULL DEFAULT '0',
  `price_config` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_unit` smallint(4) NOT NULL,
  `product_weight` float NOT NULL DEFAULT '0',
  `weight_unit` char(20) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `discount_id` smallint(6) NOT NULL DEFAULT '0',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `otherimage` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `gift_from` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `gift_to` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `ratingdetail` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `allowed_send` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitslm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `num_sell` mediumint(8) NOT NULL DEFAULT '0',
  `showprice` tinyint(2) NOT NULL DEFAULT '0',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_gift_content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vi_address` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_rows`
--

INSERT INTO `nv4_shops_rows` (`id`, `listcatid`, `user_id`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `product_code`, `product_number`, `product_price`, `price_config`, `money_unit`, `product_unit`, `product_weight`, `weight_unit`, `discount_id`, `homeimgfile`, `homeimgthumb`, `homeimgalt`, `otherimage`, `imgposition`, `copyright`, `gift_from`, `gift_to`, `inhome`, `allowed_comm`, `allowed_rating`, `ratingdetail`, `allowed_send`, `allowed_print`, `allowed_save`, `hitstotal`, `hitscm`, `hitslm`, `num_sell`, `showprice`, `vi_title`, `vi_alias`, `vi_hometext`, `vi_bodytext`, `vi_gift_content`, `vi_address`) VALUES
(4, 2, 1, 1432367089, 1467213949, 1, 1432367089, 0, 2, 'S000004', 17, 17212700, '', 'VND', 1, 300, 'g', 0, '2016_06/04.png', 1, 'XE ĐIỆN AIMA NEW FREEDOM', '2016_06/05.png|2016_06/01.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 6, 0, 0, 3, 1, 'XE ĐIỆN AIMA NEW FREEDOM', 'xe-dien-aima-new-freedom', 'chân váy caro', 'Sản phẩm thời trang<br  />&nbsp;<div style="text-align:center"><img alt="giay bup be ngoi sao nhap khau" height="800" src="/uploads/shops/2015_05/giay-bup-be-ngoi-sao-nhap-khau.jpg" width="800" /></div>&nbsp;', '', ''),
(7, 2, 1, 1432369124, 1467210801, 1, 1432369124, 0, 2, 'S000007', 50, 120000, '', 'VND', 1, 150, 'g', 0, '2016_06/02.jpg', 1, '', '2016_06/04.png|2016_06/01.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 6, 1, 0, 0, 1, 'MAXBIKE COOL 48V -40AH', 'maxbike-cool-48v-40ah', 'Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '&nbsp;<div style="text-align:center"><img alt="03" height="720" src="/xedap/uploads/shops/2016_06/03.jpg" width="960" /></div>&nbsp;THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '', ''),
(17, 3, 1, 1467551522, 1467598199, 1, 1467551522, 0, 2, 'S000017', 0, 13599000, '', 'VND', 1, 0, 'g', 1, '2016_07/10.png', 1, '', '2016_07/05.png|2016_07/2.png|2016_07/9.jpg', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'XE ĐẠP ĐIỆN NIJIA 2016', 'xe-dap-dien-nijia-2016', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm', '<div style="text-align: justify;">THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN</div>', '', ''),
(12, 3, 1, 1467448291, 1467448291, 1, 1467448291, 0, 2, 'ABJGH6U5', 0, 3290000, '', 'VND', 1, 0, 'g', 0, '2016_07/3.jpg', 1, '', '2016_07/2.png|2016_07/05.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 2, 0, 0, 0, 1, 'XE ĐIỆN MOCHA MILAN III', 'xe-dien-mocha-milan-iii', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '', ''),
(13, 3, 1, 1467448409, 1467448409, 1, 1467448409, 0, 2, 'S000013', 0, 11579000, '', 'VND', 1, 0, 'g', 0, '2016_07/4.png', 1, '', '2016_07/6.jpg|2016_07/5.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'XE ĐIỆN MOCHA  II', 'xe-dien-mocha-ii', 'Khung xe được thiết kế bằng vật liệu thép có độ cứng cao, không gỉ. Ngoài ra, xe còn được phủ thêm lớp sơn tĩnh điện bóng đẹp, có độ chống xước tốt giúp xe bền đẹp theo thời gian. Vỏ xe được sử dụng chất nhựa dẻo siêu bền, Nijia Dibao khắc phục hoàn toàn được nhược điểm yếu phần nhựa của các xe nijia hiện tại.', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '', ''),
(14, 3, 1, 1467448508, 1467598243, 1, 1467448508, 0, 2, 'S000014', 0, 11590000, '', 'VND', 1, 0, 'g', 1, '2016_07/7.png', 1, '', '2016_07/8.jpg|2016_07/6.jpg|2016_07/3.jpg', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 1, 0, 0, 0, 1, 'MAXBIKE COOL 48V -20AH', 'maxbike-cool-48v-20ah-14', 'Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '', ''),
(15, 2, 1, 1467448656, 1467448656, 1, 1467448656, 0, 2, 'S000015', 0, 11579000, '', 'VND', 1, 0, 'g', 0, '2016_07/9.jpg', 1, '', '2016_07/10.png|2016_07/111.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'XE MÁY ĐIỆN ZOOMER 2016', 'xe-may-dien-zoomer-2016', 'Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '', ''),
(16, 2, 1, 1467448742, 1467448742, 1, 1467448742, 0, 2, 'S000016', 0, 13990000, '', 'VND', 1, 0, 'g', 0, '2016_07/7.png', 1, '', '2016_07/10.png|2016_07/2.png', 0, 0, 0, 0, 1, 4, 1, '0', 1, 1, 1, 0, 0, 0, 0, 1, 'M133F 2015 PHANH ĐĨA', 'm133f-2015-phanh-dia', 'Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A', 'THÔNG TIN CHUNG<br  />Hãng&nbsp;&nbsp; &nbsp;HTC<br  />Xuất xứ&nbsp;&nbsp; &nbsp;NHẬP KHẨU CHÍNH HÃNG<br  />Bảo hành Khung xe&nbsp;&nbsp; &nbsp;3 năm<br  />Bảo hành Ác quy, IC&nbsp;&nbsp; &nbsp;1 năm<br  />Motor&nbsp;&nbsp; &nbsp;2 năm<br  />NGOẠI HÌNH<br  />Chiều dài x rộng x cao&nbsp;&nbsp; &nbsp;1640mm x 640mm x 1200mm<br  />Chiều cao yên xe&nbsp;&nbsp; &nbsp;750 mm<br  />Đường kính bánh xe&nbsp;&nbsp; &nbsp;Lốp: 406mm - Vành: 254mm<br  />Mầu sắc có bán&nbsp;&nbsp; &nbsp;Đủ mầu<br  />ĐẶC ĐIỂM<br  />Động cơ&nbsp;&nbsp; &nbsp;Động cơ 3 pha siêu khỏe 1200W<br  />Vận hành&nbsp;&nbsp; &nbsp;Tự động<br  />Vận tốc tối da&nbsp;&nbsp; &nbsp;50-55 km/h<br  />Tải trọng&nbsp;&nbsp; &nbsp;180-200kg<br  />Trọng lượng xe&nbsp;&nbsp; &nbsp;90 kg<br  />Quãng đường tối đa đi được khi pin đầy&nbsp;&nbsp; &nbsp;70 - 80 km<br  />Sạc điện&nbsp;&nbsp; &nbsp;tự động ngắt khi Acquy đầy<br  />Thời gian sạc&nbsp;&nbsp; &nbsp;10 -12 giờ<br  />Phanh trước/sau&nbsp;&nbsp; &nbsp;Phanh đĩa trước<br  />Loại acquy&nbsp;&nbsp; &nbsp;5 bình Acquy công nghệ mới<br  />Lốp&nbsp;&nbsp; &nbsp;Không săm - Kích cỡ: 3.00-10 4PR<br  />Bảo vệ tụt áp&nbsp;&nbsp; &nbsp;42 + / - 1.0V<br  />Bảo vệ dòng&nbsp;&nbsp; &nbsp;14 + / -2.0A<br  />Phụ kiện đi kèm theo xe&nbsp;&nbsp; &nbsp;Sạc 60V 20Ah, Hướng dẫn sử dụng, Dây sạc, Khóa báo động chống trộm, Gương, Có xi-nhan<br  /><br  />&nbsp;<br  />Khi so sánh xe máy điện XMEN DTP2016 với một số dòng xe máy 50cc thì dòng xe điện này hoàn toàn ưu việt hơn với kiểu dáng thể thao, sành điệu và đặc biệt khả năng tăng tốc, an toàn, tiết kiệm.<br  />Để biết thêm xin liên hệ Mr.hai - 09865659454.<br  />Xem xe tại showroom: 69 Chùa Láng, Đống Đa, Hà Nội hoặc 99A Thoại Ngọc Hầu, Tân Phú, Tp.HN', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops`
--

CREATE TABLE `nv4_shops_shops` (
  `id` tinyint(3) UNSIGNED NOT NULL,
  `name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `address` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_shops_carrier`
--

CREATE TABLE `nv4_shops_shops_carrier` (
  `shops_id` tinyint(3) UNSIGNED NOT NULL,
  `carrier_id` tinyint(3) UNSIGNED NOT NULL,
  `config_id` tinyint(3) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tabs`
--

CREATE TABLE `nv4_shops_tabs` (
  `id` int(3) UNSIGNED NOT NULL,
  `icon` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `active` tinyint(1) NOT NULL DEFAULT '1',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tabs`
--

INSERT INTO `nv4_shops_tabs` (`id`, `icon`, `content`, `weight`, `active`, `vi_title`) VALUES
(1, '', 'content_detail', 1, 1, 'Chi tiết sản phẩm'),
(2, '', 'content_comments', 2, 1, 'Bình luận'),
(3, '', 'content_rate', 3, 1, 'Đánh giá');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_id_vi`
--

CREATE TABLE `nv4_shops_tags_id_vi` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_id_vi`
--

INSERT INTO `nv4_shops_tags_id_vi` (`id`, `tid`, `keyword`) VALUES
(1, 1, 'thời trang'),
(1, 2, 'sang trọng'),
(1, 3, 'phù hợp'),
(1, 4, 'đi chơi'),
(6, 5, 'áo sơ mi'),
(10, 6, 'mũi nhọn'),
(11, 7, 'búp bê'),
(8, 8, 'so sánh'),
(8, 9, 'xe điện'),
(8, 10, 'hoàn toàn'),
(8, 11, 'ưu việt'),
(8, 12, 'thể thao'),
(8, 13, 'đặc biệt'),
(8, 14, 'khả năng'),
(8, 15, 'an toàn'),
(8, 16, 'liên hệ'),
(8, 17, 'hà nội'),
(8, 18, 'tân phú'),
(7, 8, 'so sánh'),
(7, 9, 'xe điện'),
(7, 10, 'hoàn toàn'),
(7, 11, 'ưu việt'),
(7, 12, 'thể thao'),
(7, 13, 'đặc biệt'),
(7, 14, 'khả năng'),
(7, 15, 'an toàn'),
(7, 16, 'liên hệ'),
(7, 17, 'hà nội'),
(7, 18, 'tân phú'),
(3, 8, 'so sánh'),
(3, 9, 'xe điện'),
(3, 10, 'hoàn toàn'),
(3, 11, 'ưu việt'),
(3, 12, 'thể thao'),
(3, 13, 'đặc biệt'),
(3, 14, 'khả năng'),
(3, 15, 'an toàn'),
(3, 16, 'liên hệ'),
(3, 17, 'hà nội'),
(3, 18, 'tân phú'),
(2, 8, 'so sánh'),
(2, 9, 'xe điện'),
(2, 10, 'hoàn toàn'),
(2, 11, 'ưu việt'),
(2, 12, 'thể thao'),
(2, 13, 'đặc biệt'),
(2, 14, 'khả năng'),
(2, 15, 'an toàn'),
(2, 16, 'liên hệ'),
(2, 17, 'hà nội'),
(2, 18, 'tân phú'),
(5, 8, 'so sánh'),
(5, 9, 'xe điện'),
(5, 10, 'hoàn toàn'),
(5, 11, 'ưu việt'),
(5, 12, 'thể thao'),
(5, 13, 'đặc biệt'),
(5, 14, 'khả năng'),
(5, 15, 'an toàn'),
(5, 16, 'liên hệ'),
(5, 17, 'hà nội'),
(5, 18, 'tân phú'),
(9, 8, 'so sánh'),
(9, 9, 'xe điện'),
(9, 10, 'hoàn toàn'),
(9, 11, 'ưu việt'),
(9, 12, 'thể thao'),
(9, 13, 'đặc biệt'),
(9, 14, 'khả năng'),
(9, 15, 'an toàn'),
(9, 16, 'liên hệ'),
(9, 17, 'hà nội'),
(9, 18, 'tân phú'),
(12, 19, 'thông tin'),
(13, 20, 'thiết kế'),
(13, 21, 'vật liệu'),
(13, 22, 'ngoài ra'),
(13, 23, 'sơn tĩnh'),
(13, 24, 'thời gian'),
(13, 25, 'sử dụng'),
(13, 26, 'khắc phục'),
(13, 10, 'hoàn toàn'),
(13, 27, 'nhược điểm'),
(14, 8, 'so sánh'),
(14, 9, 'xe điện'),
(14, 10, 'hoàn toàn'),
(14, 11, 'ưu việt'),
(14, 12, 'thể thao'),
(14, 13, 'đặc biệt'),
(14, 14, 'khả năng'),
(14, 15, 'an toàn'),
(14, 16, 'liên hệ'),
(14, 17, 'hà nội'),
(14, 18, 'tân phú'),
(15, 8, 'so sánh'),
(15, 9, 'xe điện'),
(15, 10, 'hoàn toàn'),
(15, 11, 'ưu việt'),
(15, 12, 'thể thao'),
(15, 13, 'đặc biệt'),
(15, 14, 'khả năng'),
(15, 15, 'an toàn'),
(15, 16, 'liên hệ'),
(15, 17, 'hà nội'),
(15, 18, 'tân phú'),
(16, 28, 'công nghệ'),
(17, 19, 'thông tin');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_tags_vi`
--

CREATE TABLE `nv4_shops_tags_vi` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numpro` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_tags_vi`
--

INSERT INTO `nv4_shops_tags_vi` (`tid`, `numpro`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 1, 'thời-trang', '', '', 'thời trang'),
(2, 1, 'sang-trọng', '', '', 'sang trọng'),
(3, 1, 'phù-hợp', '', '', 'phù hợp'),
(4, 1, 'đi-chơi', '', '', 'đi chơi'),
(5, 1, 'áo-sơ-mi', '', '', 'áo sơ mi'),
(6, 1, 'mũi-nhọn', '', '', 'mũi nhọn'),
(7, 1, 'búp-bê', '', '', 'búp bê'),
(8, 8, 'so-sánh', '', '', 'so sánh'),
(9, 8, 'xe-điện', '', '', 'xe điện'),
(10, 9, 'hoàn-toàn', '', '', 'hoàn toàn'),
(11, 8, 'ưu-việt', '', '', 'ưu việt'),
(12, 8, 'thể-thao', '', '', 'thể thao'),
(13, 8, 'đặc-biệt', '', '', 'đặc biệt'),
(14, 8, 'khả-năng', '', '', 'khả năng'),
(15, 8, 'an-toàn', '', '', 'an toàn'),
(16, 8, 'liên-hệ', '', '', 'liên hệ'),
(17, 8, 'hà-nội', '', '', 'hà nội'),
(18, 8, 'tân-phú', '', '', 'tân phú'),
(19, 2, 'thông-tin', '', '', 'thông tin'),
(20, 1, 'thiết-kế', '', '', 'thiết kế'),
(21, 1, 'vật-liệu', '', '', 'vật liệu'),
(22, 1, 'ngoài-ra', '', '', 'ngoài ra'),
(23, 1, 'sơn-tĩnh', '', '', 'sơn tĩnh'),
(24, 1, 'thời-gian', '', '', 'thời gian'),
(25, 1, 'sử-dụng', '', '', 'sử dụng'),
(26, 1, 'khắc-phục', '', '', 'khắc phục'),
(27, 1, 'nhược-điểm', '', '', 'nhược điểm'),
(28, 1, 'công-nghệ', '', '', 'công nghệ');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_template`
--

CREATE TABLE `nv4_shops_template` (
  `id` mediumint(8) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_transaction`
--

CREATE TABLE `nv4_shops_transaction` (
  `transaction_id` int(11) NOT NULL,
  `transaction_time` int(11) NOT NULL DEFAULT '0',
  `transaction_status` int(11) NOT NULL,
  `order_id` int(11) NOT NULL DEFAULT '0',
  `userid` int(11) NOT NULL DEFAULT '0',
  `payment` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_id` varchar(22) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `payment_time` int(11) NOT NULL DEFAULT '0',
  `payment_amount` float NOT NULL DEFAULT '0',
  `payment_data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_units`
--

CREATE TABLE `nv4_shops_units` (
  `id` int(11) NOT NULL,
  `vi_title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `vi_note` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_units`
--

INSERT INTO `nv4_shops_units` (`id`, `vi_title`, `vi_note`) VALUES
(1, 'cái', ''),
(2, 'đôi', '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse`
--

CREATE TABLE `nv4_shops_warehouse` (
  `wid` int(11) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse`
--

INSERT INTO `nv4_shops_warehouse` (`wid`, `title`, `note`, `user_id`, `addtime`) VALUES
(1, 'Nhập kho ngày 23/05/2015', '', 1, 1432364016),
(2, 'Nhập kho ngày 23/05/2015', '', 1, 1432365552),
(3, 'Nhập kho ngày 23/05/2015', '', 1, 1432366753),
(4, 'Nhập kho ngày 23/05/2015', '', 1, 1432367106),
(5, 'Nhập kho ngày 23/05/2015', '', 1, 1432367387),
(6, 'Nhập kho ngày 23/05/2015', '', 1, 1432367857),
(7, 'Nhập kho ngày 23/05/2015', '', 1, 1432369139),
(8, 'Nhập kho ngày 26/05/2015', '', 1, 1432608794),
(9, 'Nhập kho ngày 26/05/2015', '', 1, 1432608805),
(10, 'Nhập kho ngày 26/05/2015', '', 1, 1432608819),
(11, 'Nhập kho ngày 26/05/2015', '', 1, 1432608835);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs`
--

CREATE TABLE `nv4_shops_warehouse_logs` (
  `logid` int(11) UNSIGNED NOT NULL,
  `wid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `pro_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_warehouse_logs`
--

INSERT INTO `nv4_shops_warehouse_logs` (`logid`, `wid`, `pro_id`, `quantity`, `price`, `money_unit`) VALUES
(1, 1, 1, 20, 150000, 'VND'),
(2, 2, 2, 50, 250000, 'VND'),
(3, 3, 3, 15, 70000, 'VND'),
(4, 4, 4, 20, 120000, 'VND'),
(5, 5, 5, 30, 120000, 'VND'),
(6, 6, 6, 15, 180000, 'VND'),
(7, 7, 7, 50, 50000, 'VND'),
(8, 8, 11, 20, 80, 'VND'),
(9, 9, 10, 10, 180, 'VND'),
(10, 10, 9, 10, 150, 'VND'),
(11, 11, 8, 15, 50000, 'VND');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_warehouse_logs_group`
--

CREATE TABLE `nv4_shops_warehouse_logs_group` (
  `id` int(11) UNSIGNED NOT NULL,
  `logid` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `listgroup` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `price` float NOT NULL DEFAULT '0',
  `money_unit` char(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_weight_vi`
--

CREATE TABLE `nv4_shops_weight_vi` (
  `id` tinyint(2) UNSIGNED NOT NULL,
  `code` char(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `exchange` float NOT NULL DEFAULT '0',
  `round` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_weight_vi`
--

INSERT INTO `nv4_shops_weight_vi` (`id`, `code`, `title`, `exchange`, `round`) VALUES
(1, 'g', 'Gram', 1, '0.1'),
(2, 'kg', 'Kilogam', 1000, '0.1');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_shops_wishlist`
--

CREATE TABLE `nv4_shops_wishlist` (
  `wid` smallint(6) NOT NULL,
  `user_id` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `listid` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_shops_wishlist`
--

INSERT INTO `nv4_shops_wishlist` (`wid`, `user_id`, `listid`) VALUES
(1, 1, '10');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_dir`
--

CREATE TABLE `nv4_upload_dir` (
  `did` mediumint(8) NOT NULL,
  `dirname` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` int(11) NOT NULL DEFAULT '0',
  `thumb_type` tinyint(4) NOT NULL DEFAULT '0',
  `thumb_width` smallint(6) NOT NULL DEFAULT '0',
  `thumb_height` smallint(6) NOT NULL DEFAULT '0',
  `thumb_quality` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_dir`
--

INSERT INTO `nv4_upload_dir` (`did`, `dirname`, `time`, `thumb_type`, `thumb_width`, `thumb_height`, `thumb_quality`) VALUES
(0, '', 0, 3, 150, 180, 99),
(1, 'uploads', 1467127158, 0, 0, 0, 0),
(2, 'uploads/about', 0, 0, 0, 0, 0),
(3, 'uploads/banners', 1467387470, 0, 0, 0, 0),
(4, 'uploads/contact', 0, 0, 0, 0, 0),
(5, 'uploads/freecontent', 0, 0, 0, 0, 0),
(6, 'uploads/menu', 0, 0, 0, 0, 0),
(7, 'uploads/news', 0, 3, 480, 640, 99),
(8, 'uploads/news/2016_01', 0, 0, 0, 0, 0),
(9, 'uploads/news/source', 0, 0, 0, 0, 0),
(10, 'uploads/news/temp_pic', 0, 0, 0, 0, 0),
(11, 'uploads/news/topics', 0, 0, 0, 0, 0),
(12, 'uploads/page', 0, 0, 0, 0, 0),
(36, 'uploads/shops', 0, 3, 480, 640, 99),
(15, 'uploads/siteterms', 0, 0, 0, 0, 0),
(16, 'uploads/users', 1467387475, 0, 0, 0, 0),
(17, 'uploads/users/groups', 0, 0, 0, 0, 0),
(38, 'uploads/shops/2016_06', 1467213913, 0, 0, 0, 0),
(39, 'uploads/shops/files', 0, 0, 0, 0, 0),
(43, 'uploads/slider/temp', 0, 0, 0, 0, 0),
(42, 'uploads/slider/thumbs', 0, 0, 0, 0, 0),
(40, 'uploads/slider', 0, 0, 0, 0, 0),
(41, 'uploads/slider/images', 1467193632, 0, 0, 0, 0),
(37, 'uploads/shops/temp_pic', 0, 0, 0, 0, 0),
(44, 'uploads/news/2016_06', 1467209062, 0, 0, 0, 0),
(45, 'uploads/videos', 0, 0, 0, 0, 0),
(46, 'uploads/videos/img', 0, 0, 0, 0, 0),
(47, 'uploads/videos/vid', 0, 0, 0, 0, 0),
(48, 'uploads/videos/img/playlists', 0, 0, 0, 0, 0),
(49, 'uploads/videos/img/groups', 0, 0, 0, 0, 0),
(50, 'uploads/videos/thumbs', 0, 0, 0, 0, 0),
(51, 'uploads/videos/img/2016_07', 1467385307, 0, 0, 0, 0),
(52, 'uploads/videos/vid/2016_07', 0, 0, 0, 0, 0),
(53, 'uploads/shops/2016_07', 1467448240, 0, 0, 0, 0),
(54, 'uploads/support', 1467535202, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_upload_file`
--

CREATE TABLE `nv4_upload_file` (
  `name` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ext` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(5) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `filesize` int(11) NOT NULL DEFAULT '0',
  `src` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `srcwidth` int(11) NOT NULL DEFAULT '0',
  `srcheight` int(11) NOT NULL DEFAULT '0',
  `sizes` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `mtime` int(11) NOT NULL DEFAULT '0',
  `did` int(11) NOT NULL DEFAULT '0',
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_upload_file`
--

INSERT INTO `nv4_upload_file` (`name`, `ext`, `type`, `filesize`, `src`, `srcwidth`, `srcheight`, `sizes`, `userid`, `mtime`, `did`, `title`, `alt`) VALUES
('a-5.png', 'png', 'image', 10987, 'assets/slider/images/a-5.png', 80, 26, '200|63', 1, 1467193952, 41, 'a-5.png', 'a &#40;5&#41;'),
('a-4.png', 'png', 'image', 12267, 'assets/slider/images/a-4.png', 80, 26, '200|63', 1, 1467193952, 41, 'a-4.png', 'a &#40;4&#41;'),
('a-3.png', 'png', 'image', 12238, 'assets/slider/images/a-3.png', 80, 26, '200|63', 1, 1467193952, 41, 'a-3.png', 'a &#40;3&#41;'),
('a-2.png', 'png', 'image', 14177, 'assets/slider/images/a-2.png', 80, 26, '200|63', 1, 1467193952, 41, 'a-2.png', 'a &#40;2&#41;'),
('a-1.png', 'png', 'image', 30381, 'assets/slider/images/a-1.png', 80, 19, '200|48', 1, 1467193952, 41, 'a-1.png', 'a &#40;1&#41;'),
('a-1.jpg', 'jpg', 'image', 28738, 'assets/slider/images/a-1.jpg', 80, 15, '215|39', 1, 1467193951, 41, 'a-1.jpg', 'a &#40;1&#41;'),
('03.jpg', 'jpg', 'image', 50155, 'assets/slider/images/03.jpg', 80, 29, '820|300', 1, 1467193641, 41, '03.jpg', '03'),
('02.jpg', 'jpg', 'image', 91345, 'assets/slider/images/02.jpg', 80, 32, '748|297', 1, 1467193640, 41, '02.jpg', '02'),
('01.jpg', 'jpg', 'image', 44773, 'assets/slider/images/01.jpg', 80, 29, '820|300', 1, 1467193640, 41, '01.jpg', '01'),
('logo.png', 'png', 'image', 16915, 'assets/logo.png', 80, 22, '278|76', 1, 1467127489, 1, 'logo.png', 'logo'),
('01.png', 'png', 'image', 124851, 'assets/01.png', 80, 58, '389|282', 1, 1467128559, 1, '01.png', '01'),
('02.jpg', 'jpg', 'image', 163149, 'assets/02.jpg', 80, 60, '900|675', 1, 1467128560, 1, '02.jpg', '02'),
('03.jpg', 'jpg', 'image', 122667, 'assets/03.jpg', 80, 60, '960|720', 1, 1467128560, 1, '03.jpg', '03'),
('02.jpg', 'jpg', 'image', 163149, 'assets/shops/2016_06/02.jpg', 80, 60, '900|675', 1, 1467213923, 38, '02.jpg', '02'),
('03.jpg', 'jpg', 'image', 122667, 'assets/shops/2016_06/03.jpg', 80, 60, '960|720', 1, 1467213924, 38, '03.jpg', '03'),
('04.png', 'png', 'image', 125363, 'assets/shops/2016_06/04.png', 80, 58, '389|282', 1, 1467213924, 38, '04.png', '04'),
('05.png', 'png', 'image', 234753, 'assets/shops/2016_06/05.png', 80, 53, '640|420', 1, 1467213924, 38, '05.png', '05'),
('01.png', 'png', 'image', 124851, 'assets/shops/2016_06/01.png', 80, 58, '389|282', 1, 1467213923, 38, '01.png', '01'),
('4.jpg', 'jpg', 'image', 101732, 'assets/shops/2016_06/4.jpg', 80, 54, '1200|805', 1, 1467250438, 38, '4.jpg', '4'),
('5.png', 'png', 'image', 148459, 'assets/shops/2016_06/5.png', 80, 53, '640|420', 1, 1467250439, 38, '5.png', '5'),
('6.png', 'png', 'image', 293725, 'assets/shops/2016_06/6.png', 80, 54, '820|550', 1, 1467250440, 38, '6.png', '6'),
('xe-dien-vi...jpg', 'jpg', 'image', 40532, 'assets/xe-dien-viet-thanh.jpg', 80, 21, '560|147', 1, 1467192118, 1, 'xe-dien-viet-thanh.jpg', 'xe dien viet thanh'),
('xe-die-tra...png', 'png', 'image', 32341, 'assets/xe-die-tra-gop.png', 80, 21, '560|147', 1, 1467192119, 1, 'xe-die-tra-gop.png', 'xe die tra gop'),
('a-6.png', 'png', 'image', 9320, 'assets/slider/images/a-6.png', 80, 26, '200|63', 1, 1467193952, 41, 'a-6.png', 'a &#40;6&#41;'),
('0044.jpg', 'jpg', 'image', 503491, 'assets/videos/img/2016_07/0044.jpg', 80, 45, '1500|844', 1, 1467385315, 51, '0044.jpg', '0044'),
('123host_nu...jpg', 'jpg', 'image', 77788, 'assets/banners/123host_nukeviet.jpg', 80, 80, '250|250', 1, 1463601738, 3, '123host_nukeviet.jpg', '123host nukeviet'),
('vinades.jpg', 'jpg', 'image', 104940, 'assets/banners/vinades.jpg', 43, 80, '212|400', 1, 1463601738, 3, 'vinades.jpg', 'vinades'),
('webnhanh.jpg', 'jpg', 'image', 74347, 'assets/banners/webnhanh.jpg', 80, 10, '572|72', 1, 1463601738, 3, 'webnhanh.jpg', 'webnhanh'),
('logo.png', 'png', 'image', 16915, 'assets/users/logo.png', 80, 22, '278|76', 1, 1467387511, 16, 'logo.png', 'logo'),
('05.png', 'png', 'image', 234753, 'assets/shops/2016_07/05.png', 80, 53, '640|420', 1, 1467448236, 53, '05.png', '05'),
('2.png', 'png', 'image', 124851, 'assets/shops/2016_07/2.png', 80, 58, '389|282', 1, 1467448235, 53, '2.png', '2'),
('3.jpg', 'jpg', 'image', 122667, 'assets/shops/2016_07/3.jpg', 80, 60, '960|720', 1, 1467448235, 53, '3.jpg', '3'),
('4.png', 'png', 'image', 125363, 'assets/shops/2016_07/4.png', 80, 58, '389|282', 1, 1467448392, 53, '4.png', '4'),
('5.png', 'png', 'image', 234753, 'assets/shops/2016_07/5.png', 80, 53, '640|420', 1, 1467448393, 53, '5.png', '5'),
('6.jpg', 'jpg', 'image', 122667, 'assets/shops/2016_07/6.jpg', 80, 60, '960|720', 1, 1467448393, 53, '6.jpg', '6'),
('7.png', 'png', 'image', 293725, 'assets/shops/2016_07/7.png', 80, 54, '820|550', 1, 1467448486, 53, '7.png', '7'),
('8.jpg', 'jpg', 'image', 122667, 'assets/shops/2016_07/8.jpg', 80, 60, '960|720', 1, 1467448487, 53, '8.jpg', '8'),
('9.jpg', 'jpg', 'image', 101732, 'assets/shops/2016_07/9.jpg', 80, 54, '1200|805', 1, 1467448592, 53, '9.jpg', '9'),
('10.png', 'png', 'image', 148459, 'assets/shops/2016_07/10.png', 80, 53, '640|420', 1, 1467448592, 53, '10.png', '10'),
('111.png', 'png', 'image', 293725, 'assets/shops/2016_07/111.png', 80, 54, '820|550', 1, 1467448593, 53, '111.png', '111'),
('01_1.jpg', 'jpg', 'image', 71922, 'assets/slider/images/01_1.jpg', 80, 29, '820|300', 1, 1467532067, 41, '01_1.jpg', '01'),
('03_1.jpg', 'jpg', 'image', 84399, 'assets/slider/images/03_1.jpg', 80, 29, '820|300', 1, 1467532067, 41, '03_1.jpg', '03'),
('04.jpg', 'jpg', 'image', 4241, 'assets/support/04.jpg', 80, 67, '245|206', 1, 1467535342, 54, '04.jpg', '04');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users`
--

CREATE TABLE `nv4_users` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` int(11) NOT NULL,
  `sig` text COLLATE utf8mb4_unicode_ci,
  `regdate` int(11) NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `passlostkey` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `remember` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `in_groups` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `checknum` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_login` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `last_ip` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_agent` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_openid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `idsite` int(11) NOT NULL DEFAULT '0',
  `safemode` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `safekey` varchar(40) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users`
--

INSERT INTO `nv4_users` (`userid`, `group_id`, `username`, `md5username`, `password`, `email`, `first_name`, `last_name`, `gender`, `photo`, `birthday`, `sig`, `regdate`, `question`, `answer`, `passlostkey`, `view_mail`, `remember`, `in_groups`, `active`, `checknum`, `last_login`, `last_ip`, `last_agent`, `last_openid`, `idsite`, `safemode`, `safekey`) VALUES
(1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '{SSHA}+XS0vsfup3u26N7ihW/JA+zqP+JUTzRR', 'thangviades@gmail.com', 'Thắng', 'Tất', 'M', 'uploads/users/anh_l2ml8uym_1.jpg', 0, '', 1467124188, 'món ăn', 'gà', '', 1, 1, '1', 1, '', 1467124188, '', '', '', 0, 0, ''),
(2, 4, 'ngoclan', '9495cb222b9f17266e3689d1783399cd', '{SSHA}BYleqTDREyK79AhHgFhBk8vyCIRla1ZF', 'qtcshop@gmail.com', 'Lan', 'Lê ngọc', '', '', 0, NULL, 1467449493, 'món ăn', 'gà chỉ', '', 0, 1, '4', 1, '6cac8cb17fd8dfb5f8d0683b4c46d124', 1467449493, '::1', 'Mozilla/5.0 (Windows NT 6.2) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/51.0.2704.103 Safari/537.36', '', 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_config`
--

CREATE TABLE `nv4_users_config` (
  `config` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci,
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_config`
--

INSERT INTO `nv4_users_config` (`config`, `content`, `edit_time`) VALUES
('access_admin', 'a:6:{s:12:"access_addus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:14:"access_waiting";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_editus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:12:"access_delus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_passus";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}s:13:"access_groups";a:3:{i:1;b:1;i:2;b:1;i:3;b:1;}}', 1352873462),
('password_simple', '000000|1234|2000|12345|111111|123123|123456|11223344|654321|696969|1234567|12345678|87654321|123456789|23456789|1234567890|66666666|68686868|66668888|88888888|99999999|999999999|1234569|12345679|aaaaaa|abc123|abc123@|abc@123|admin123|admin123@|admin@123|nuke123|nuke123@|nuke@123|adobe1|adobe123|azerty|baseball|dragon|football|harley|iloveyou|jennifer|jordan|letmein|macromedia|master|michael|monkey|mustang|password|photoshop|pussy|qwerty|shadow|superman|hoilamgi|khongbiet|khongco|khongcopass', 1467124147),
('deny_email', 'yoursite.com|mysite.com|localhost|xxx', 1467124147),
('deny_name', 'anonimo|anonymous|god|linux|nobody|operator|root', 1467124147),
('avatar_width', '80', 1467124147),
('avatar_height', '80', 1467124147),
('active_group_newusers', '0', 1467124147),
('siteterms_vi', '<p> Để trở thành thành viên, bạn phải cam kết đồng ý với các điều khoản dưới đây. Chúng tôi có thể thay đổi lại những điều khoản này vào bất cứ lúc nào và chúng tôi sẽ cố gắng thông báo đến bạn kịp thời.<br /> <br /> Bạn cam kết không gửi bất cứ bài viết có nội dung lừa đảo, thô tục, thiếu văn hoá; vu khống, khiêu khích, đe doạ người khác; liên quan đến các vấn đề tình dục hay bất cứ nội dung nào vi phạm luật pháp của quốc gia mà bạn đang sống, luật pháp của quốc gia nơi đặt máy chủ của website này hay luật pháp quốc tế. Nếu vẫn cố tình vi phạm, ngay lập tức bạn sẽ bị cấm tham gia vào website. Địa chỉ IP của tất cả các bài viết đều được ghi nhận lại để bảo vệ các điều khoản cam kết này trong trường hợp bạn không tuân thủ.<br /> <br /> Bạn đồng ý rằng website có quyền gỡ bỏ, sửa, di chuyển hoặc khoá bất kỳ bài viết nào trong website vào bất cứ lúc nào tuỳ theo nhu cầu công việc.<br /> <br /> Đăng ký làm thành viên của chúng tôi, bạn cũng phải đồng ý rằng, bất kỳ thông tin cá nhân nào mà bạn cung cấp đều được lưu trữ trong cơ sở dữ liệu của hệ thống. Mặc dù những thông tin này sẽ không được cung cấp cho bất kỳ người thứ ba nào khác mà không được sự đồng ý của bạn, chúng tôi không chịu trách nhiệm về việc những thông tin cá nhân này của bạn bị lộ ra bên ngoài từ những kẻ phá hoại có ý đồ xấu tấn công vào cơ sở dữ liệu của hệ thống.</p>', 1274757129);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_field`
--

CREATE TABLE `nv4_users_field` (
  `fid` mediumint(8) NOT NULL,
  `field` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `field_type` enum('number','date','textbox','textarea','editor','select','radio','checkbox','multiselect') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'textbox',
  `field_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sql_choices` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `match_type` enum('none','alphanumeric','email','url','regex','callback') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'none',
  `match_regex` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_callback` varchar(75) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `min_length` int(11) NOT NULL DEFAULT '0',
  `max_length` bigint(20) UNSIGNED NOT NULL DEFAULT '0',
  `required` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_register` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `user_editable` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `show_profile` tinyint(4) NOT NULL DEFAULT '1',
  `class` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `language` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `default_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups`
--

CREATE TABLE `nv4_users_groups` (
  `group_id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `content` text COLLATE utf8mb4_unicode_ci,
  `group_type` tinyint(4) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0:Sys, 1:approval, 2:public',
  `group_color` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `group_avatar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL,
  `exp_time` int(11) NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL,
  `idsite` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `numbers` mediumint(9) UNSIGNED NOT NULL DEFAULT '0',
  `siteus` tinyint(4) UNSIGNED NOT NULL DEFAULT '0',
  `config` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups`
--

INSERT INTO `nv4_users_groups` (`group_id`, `title`, `email`, `description`, `content`, `group_type`, `group_color`, `group_avatar`, `is_default`, `add_time`, `exp_time`, `weight`, `act`, `idsite`, `numbers`, `siteus`, `config`) VALUES
(1, 'Super admin', '', 'Super Admin', '', 0, '', '', 0, 1467124147, 0, 1, 1, 0, 1, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(2, 'General admin', '', 'General Admin', '', 0, '', '', 0, 1467124147, 0, 2, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(3, 'Module admin', '', 'Module Admin', '', 0, '', '', 0, 1467124147, 0, 3, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(4, 'Users', '', 'Users', '', 0, '', '', 0, 1467124147, 0, 4, 1, 0, 2, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(7, 'New Users', '', 'New Users', '', 0, '', '', 0, 1467124147, 0, 5, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(5, 'Guest', '', 'Guest', '', 0, '', '', 0, 1467124147, 0, 6, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(6, 'All', '', 'All', '', 0, '', '', 0, 1467124147, 0, 7, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(10, 'NukeViet-Fans', '', 'Nhóm những người hâm mộ hệ thống NukeViet', '', 2, '', '', 1, 1467124147, 0, 8, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(11, 'NukeViet-Admins', '', 'Nhóm những người quản lý website xây dựng bằng hệ thống NukeViet', '', 2, '', '', 0, 1467124147, 0, 9, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}'),
(12, 'NukeViet-Programmers', '', 'Nhóm Lập trình viên hệ thống NukeViet', '', 1, '', '', 0, 1467124147, 0, 10, 1, 0, 0, 0, 'a:7:{s:17:"access_groups_add";i:1;s:17:"access_groups_del";i:1;s:12:"access_addus";i:0;s:14:"access_waiting";i:0;s:13:"access_editus";i:0;s:12:"access_delus";i:0;s:13:"access_passus";i:0;}');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_groups_users`
--

CREATE TABLE `nv4_users_groups_users` (
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `is_leader` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `approved` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_groups_users`
--

INSERT INTO `nv4_users_groups_users` (`group_id`, `userid`, `is_leader`, `approved`, `data`) VALUES
(1, 1, 1, 1, '0');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_info`
--

CREATE TABLE `nv4_users_info` (
  `userid` mediumint(8) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_info`
--

INSERT INTO `nv4_users_info` (`userid`) VALUES
(1),
(2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_openid`
--

CREATE TABLE `nv4_users_openid` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `openid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `opid` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_question`
--

CREATE TABLE `nv4_users_question` (
  `qid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(240) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` char(2) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_users_question`
--

INSERT INTO `nv4_users_question` (`qid`, `title`, `lang`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Bạn thích môn thể thao nào nhất', 'vi', 1, 1274840238, 1274840238),
(2, 'Món ăn mà bạn yêu thích', 'vi', 2, 1274840250, 1274840250),
(3, 'Thần tượng điện ảnh của bạn', 'vi', 3, 1274840257, 1274840257),
(4, 'Bạn thích nhạc sỹ nào nhất', 'vi', 4, 1274840264, 1274840264),
(5, 'Quê ngoại của bạn ở đâu', 'vi', 5, 1274840270, 1274840270),
(6, 'Tên cuốn sách &quot;gối đầu giường&quot;', 'vi', 6, 1274840278, 1274840278),
(7, 'Ngày lễ mà bạn luôn mong đợi', 'vi', 7, 1274840285, 1274840285);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_users_reg`
--

CREATE TABLE `nv4_users_reg` (
  `userid` mediumint(8) UNSIGNED NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `password` varchar(80) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `regdate` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `checknum` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `users_info` text COLLATE utf8mb4_unicode_ci,
  `openid_info` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about`
--

CREATE TABLE `nv4_vi_about` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about`
--

INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Giới thiệu về NukeViet', 'gioi-thieu-ve-nukeviet', '', '', 0, '', '<h2><span style="font-size:20px;"><strong>Giới thiệu khái quát</strong></span></h2>  <p>NukeViet là một ứng dụng trên nền web có thể sử dụng vào nhiều mục đích khác nhau. Phiên bản đang được phát hành theo giấy phép phần mềm tự do nguồn mở có tên gọi đầy đủ là <a href="/about/Gioi-thieu-ve-NukeViet-CMS.html"><b>NukeViet CMS</b></a> gồm 2 phần chính là phần nhân (core) của hệ thống NukeViet và nhóm chức năng quản trị nội dung của CMS thường được sử dụng để xây dựng các website tin tức do đó người dùng thường nghĩ rằng NukeViet mạnh về hệ thống tin tức. Tuy nhiên, đội ngũ phát triển NukeViet đã phát triển nhiều hệ thống khác nhau cho NukeViet, nổi bật nhất là:</p>  <ul> 	<li>NukeViet Portal: Cổng thông tin hai chiều dùng cho doanh nghiệp.</li> 	<li><a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>: Cổng thông tin tích hợp nhiều website, sử dụng cho phòng giáo dục, sở giáo dục.</li> 	<li><a href="http://toasoandientu.vn" target="_blank">NukeViet Tòa Soạn Điện Tử</a>: Sử dụng cho các tòa soạn báo điện tử, trang tin điện tử.</li> </ul> Theo định hướng phát triển của NukeViet, ngoài NukeViet CMS đã được phát hành theo giấy phép tự do nguồn mở trong nhiều năm qua, NukeViet sẽ có thêm 2 nhóm ứng dụng nữa là:  <ul> 	<li>NukeViet Blog: Dành cho các website và người dùng tạo các trang nhật ký cá nhân.</li> 	<li>NukeViet Shop: dành cho các website thương mại điện tử với hoạt động chính là bán hàng trực tuyến, hiện đã có thể sử dụng bằng cách cài bổ sung <a href="https://github.com/nukeviet/module-shops" target="_blank">module Shop</a> lên NukeViet CMS.</li> </ul> &nbsp;  <h2><span style="font-size:20px;"><strong>Video giới thiệu</strong></span></h2> <span style="font-size:14px;">Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot; trong bản tin Tiêu điểm của chương trình Xã hội thông tin<br  /> (Đài truyền hình kỹ thuật số VTC) phát sóng lúc 20h chủ nhật, ngày 05-09-2010 trên VTC1</span>  <div style="text-align: center;"> <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" frameborder="0" height="480" src="//www.youtube.com/embed/Cxp1kCyVhqY?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><em>Video clip &quot;Giới thiệu mã nguồn mở NukeViet&quot;</em></span></div> </div>  <h2><br  /> <span style="font-size:20px;"><strong><span class="mw-headline" id=".E1.BB.A8ng_d.E1.BB.A5ng">Lịch sử phát triển</span></strong></span></h2> NukeViet ra đời từ năm 2004, bắt đầu từ việc sử dụng sản phẩm PHP-Nuke để làm cho website cá nhân, anh Nguyễn Anh Tú - một lưu học sinh người Việt tại Nga - đã cùng cộng đồng Việt hóa, cải tiến theo nhu cầu sử dụng của người Việt. Được sự đón nhận của đông đảo người sử dụng, NukeViet đã liên tục được phát triển và trở thành một ứng dụng thuần Việt. Cho đến phiên bản 3.0, NukeViet đã được phát triển thành một ứng dụng khác biệt hoàn toàn, và không chỉ là một CMS, NukeViet được định hướng để trở thành phần mềm đa chức năng trên nền web.<br  /> <br  /> Kể từ năm 2010, NukeViet đã phát triển theo mô hình chuyên nghiệp, đội ngũ quản trị đã thành lập doanh nghiệp chuyên quản và đạt được những tiến bộ vượt bậc. NukeViet đã trở thành hệ quản trị nội dung nguồn mở duy nhất của Việt Nam được Bộ GD&amp;ĐT khuyến khích sử dụng trong giáo dục (thông tư 08/2010/TT-BGDĐT). Tiếp đó, NukeViet CMS đã được trao giải Nhân Tài Đất Việt 2011 và trở thành phần mềm nguồn mở đầu tiên đạt giải thưởng cao quý này. <h2><br  /> <span style="font-size:20px;"><strong><span class="mw-headline" id="Di.E1.BB.85n_.C4.91.C3.A0n_NukeViet.vn">Diễn đàn NukeViet.vn</span></strong></span></h2>  <p>Diễn đàn NukeViet hoạt động trên website: <a href="http://nukeviet.vn">http://nukeviet.vn</a>, đây là kênh chính thức và hữu hiệu cho các bạn đam mê về NukeViet có thể chia sẻ các kiến thức về NukeViet với nhau. Tính đến tháng 12 năm 2015 diễn đàn đã có trên 34.500 thành viên tham gia, bao gồm học sinh, sinh viên &amp; nhiều thành phần khác thuộc giới trí thức ở trong và ngoài nước.</p>  <p>Là một diễn đàn của các nhà quản lý website, rất nhiều thành viên trong diễn đàn NukeViet là cán bộ, lãnh đạo từ đủ mọi lĩnh vực: công nghệ thông tin, xây dựng, văn hóa - xã hội, thể thao, dịch vụ - du lịch... từ cử nhân, bác sĩ, kỹ sư cho đến bộ đội, công an..</p>  <h2><br  /> <span style="font-size:20px;"><span class="mw-headline" id="Th.C3.A0nh_t.C3.ADch_.26_gi.E1.BA.A3i_th.C6.B0.E1.BB.9Fng"><strong>Thành tích &amp; giải thưởng</strong></span></span></h2>  <h3><span style="font-size:14px;"><em><strong><span class="mw-headline" id="Khen_th.C6.B0.E1.BB.9Fng_.26_Th.C3.A0nh_t.C3.ADch">Khen thưởng &amp; Thành tích</span></strong></em></span></h3>  <ul> 	<li>Giải Ba Nhân tài Đất Việt 2011 ở Lĩnh vực Công nghệ thông tin/Sản phẩm đã ứng dụng rộng rãi (không có giải nhất, nhì).</li> 	<li>Bằng khen của Hội Tin học Việt Nam vì những đóng góp xuất sắc cho sự phát triển của cộng đồng nguồn mở tại Việt Nam.</li> </ul> <span style="font-size:14px;"><em><strong><span class="mw-headline" id=".C4.90.C6.B0.E1.BB.A3c_B.E1.BB.99_gi.C3.A1o_d.E1.BB.A5c_.26_.C4.90.C3.A0o_t.E1.BA.A1o_.E1.BB.A7ng_h.E1.BB.99">Được Bộ giáo dục &amp; Đào tạo ủng hộ</span></strong></em></span>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở duy nhất của Việt Nam nằm trong danh mục các sản phẩm phần mềm nguồn mở được khuyến khích sử dụng trong thông tư số 08/2010/TT-BGDĐT do Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục). Trong bài thuyết trình &quot;Hiện trạng triển khai nội dung thông tư 08/2010/TT-BGDĐT về sử dụng PMNM trong các cơ sở giáo dục và định hướng cho thời gian tới&quot;<sup> </sup>tại Hội thảo phần mềm nguồn mở trong các cơ quan, tổ chức nhà nước năm 2012, Cục trưởng cục CNTT Quách Tuấn Ngọc cho biết: &quot;NukeViet có thể thay thế SharePoint server&quot;, &quot;NukeViet được nhiều cơ sở giáo dục thích dùng&quot;<sup> </sup>NukeViet được Bộ GD&amp;ĐT đưa vào văn bản hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016. Trong văn bản số 4983/BGDĐT-CNTT của Bộ Giáo dục và Đào tạo (Bộ GDĐT) hướng dẫn việc triển khai nhiệm vụ công nghệ thông tin (CNTT) cho năm học 2015 - 2016 có những nội dung như sau liên quan đến NukeViet:</p>  <ul> 	<li>Nhiệm vụ số &quot;5. Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục&quot;, mục &quot;5.1 Một số nội dung cần bồi dưỡng&quot; có ghi &quot;Tập huấn sử dụng phần mềm nguồn mở NukeViet.&quot;</li> 	<li>Nhiệm vụ số &quot; 10. Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở&quot; có ghi: &quot;Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</li> 	<li>Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</li> </ul>  <h3><span style="font-size:14px;"><em><strong><span class="mw-headline" id=".C4.90.C6.B0.E1.BB.A3c_.C6.B0u_ti.C3.AAn_mua_s.E1.BA.AFm_s.E1.BB.AD_d.E1.BB.A5ng_trong_ch.C3.ADnh_ph.E1.BB.A7">Được ưu tiên mua sắm sử dụng trong chính phủ</span></strong></em></span></h3>  <p>NukeViet CMS là hệ quản trị nội dung nguồn mở được quy định ưu tiên mua sắm, sử dụng trong các cơ quan, tổ chức nhà nước Việt Nam theo thông tư 20/2014/TT-BTTTT ký ngày 05/12/2014 và có hiệu lực từ ngày 20/1/2015 quy định về các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước</p>  <h2><br  /> <span style="font-size:20px;"><span class="mw-headline" id="T.C3.ADnh_n.C4.83ng"><strong>Tính năng</strong></span></span></h2>  <h3><span style="font-size:14px;"><strong>NukeViet CMS 3.0 bản gốc có các module cơ bản là:</strong></span></h3>  <ul> 	<li>Quản lý Tin tức (<i>News</i>: Tạo bản tin chủ đề đa cấp, phân quyền theo chủ đề, hẹn giờ đăng tin, tạo bản in, bản tải về, thảo luận bản tin),</li> 	<li>Giới thiệu (<i>About</i>),</li> 	<li>Quản lý quảng cáo thương mại (banners),</li> 	<li>Quản lý người dùng (<i>users</i>),</li> 	<li>Liên hệ qua site (<i>Contact</i>),</li> 	<li>Cấp tin RSS (<i>RSS feeds</i>) và thu thập tin RSS (&quot;RSS reader&quot;),</li> 	<li>Bình chọn (thăm dò ý kiến - <i>Voting</i>),</li> 	<li>Thư viện file (<i>Download</i>),</li> 	<li>Thư viện Web (<i>Weblinks</i>),</li> 	<li>Hỏi nhanh đáp gọn(<i>Faq</i>),</li> 	<li>Thống kê truy cập (<i>statistics</i>),</li> 	<li>Tìm kiếm trong site (<i>Search</i>),</li> 	<li>Bán hàng trực tuyến (<i>Shop</i>) (có từ NukeViet 3.1)...</li> </ul>  <h3><span style="font-size:14px;"><strong>Tính năng hệ thống:</strong></span></h3>  <ul> 	<li>Cài đặt, nâng cấp và đóng gói tự động.</li> 	<li>Hỗ trợ đa ngôn ngữ giao diện và đa ngôn ngữ Cơ sở dữ liệu 100%, cho phép người sử dụng tự xây dựng ngôn ngữ mới.</li> 	<li>Thay đổi &amp; tùy biến giao diện nhiều cấp độ, cho phép người sử dụng có thể cài thêm giao diện mới hoặc tùy biến giao diện trên site theo ý thích. Người sử dụng có thể tùy biến bố cục giao diện theo layout, theo block ở các khu vực khác nhau của website.</li> 	<li>Quản lý module với khả năng xử lý đa nhân module (ảo hóa module).</li> 	<li>Cho phép phân nhóm thành viên và phân quyền người quản trị theo nhiều cấp độ khác nhau.</li> 	<li>Hỗ trợ tối ưu hóa cho các công cụ tìm kiếm (SEO): Rewrite, tạo Sitemap, Ping sitemap, chẩn đoán site, phân tích từ khóa, tạo keyword, quản lý máy chủ tìm kiếm (Bot)...</li> 	<li>Quản lý và sao lưu cơ sở dữ liệu.</li> 	<li>Cấu hình tùy biến, tường lửa đa cấp, xử lý tiến trình tự động...</li> 	<li>Hỗ trợ thiết bị di động (mobile), cho phép thay đổi giao diện tương thích (từ phiên bản 3.3)</li> 	<li>...</li> </ul>  <h2><span style="font-size:20px;"><strong><span class="mw-headline" id=".E1.BB.A8ng_d.E1.BB.A5ng">Ứng dụng</span></strong></span></h2>  <p>NukeViet được sử dụng ở nhiều website, từ những website cá nhân cho tới những hệ thống website doanh nghiệp, nó cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng bằng cách cài thêm các module, block... Trước đây, NukeViet chủ yếu được sử dụng làm trang tin tức nhờ module News tích hợp sẵn trong NukeViet được viết rất công phu, nó lại đặc biệt phù hợp với yêu cầu và đặc điểm sử dụng cho hệ thống tin tức. Kể từ phiên bản NukeViet 3, đội ngũ phát triển NukeViet đã định nghĩa lại NukeViet, theo đó, NukeViet được coi như phần mềm trực tuyến mà chức năng CMS chỉ là một module của NukeViet. NukeViet có thể dễ dàng cài đặt, dễ dàng quản lý kể cả với những người mới sử dụng do đó thường được những đối tượng người dùng không chuyên ưa thích.<br  /> <br  /> NukeViet có mã nguồn mở do đó việc sử dụng NukeViet là hoàn toàn miễn phí cho tất cả mọi người trên thế giới. Từ bản 2.0 trở về trước, đối tượng người dùng chủ yếu của NukeViet là người Việt vì những đặc điểm của bản thân mã nguồn (có nguồn gốc từ PHP-Nuke) và vì chính sách của nhóm phát triển là: &quot;hệ thống Portal dành cho người Việt&quot;. Kể từ phiên bản 3.0, đội ngũ phát triển NukeViet định hướng đưa NukeViet ra cộng đồng quốc tế.</p>  <ul> 	<li>Các cổng thông tin điện tử</li> 	<li>Các tập đoàn kinh tế</li> 	<li>Giải trí trực tuyến, văn hóa, nghệ thuật.</li> 	<li>Báo điện tử, tạp chí điện tử</li> 	<li>Website của các doanh nghiệp vừa và nhỏ</li> 	<li>Website của các cơ quan, tổ chức chính phủ</li> 	<li>Website giáo dục, trường học</li> 	<li>Website của gia đình, cá nhân, nhóm sở thích...</li> </ul>  <p><br  /> Ngoài các ứng dụng website ở trên, thực tế NukeViet đã được ứng dụng làm rất nhiều phần mềm khác như: Phần mềm quản lý kho hàng, phần mềm bán hàng, phần mềm quản lý quán BI-A trợ giúp bật tắt điện đèn bàn bóng, phần mềm tòa soạn điện tử, phần mềm quản lý hồ sơ, quản lý nhân sự trực tuyến, phần mềm tra cứu điểm thi hỗ trợ SMS...</p>', '', 0, '4', '', 0, 1, 1, 1467124147, 1467124147, 1),
(2, 'Giới thiệu về NukeViet CMS', 'gioi-thieu-ve-nukeviet-cms', '', '', 0, '', '<p style="text-align: justify;">CMS là gì?<br  /> CMS là từ viết tắt từ Content Management System. Theo wikipedia</p>  <blockquote> <p><strong>Định nghĩa.</strong><br  /> Hệ quản trị nội dung, cũng được gọi là hệ thống quản lý nội dung hay CMS (từ Content Management System của tiếng Anh) là phần mềm để tổ chức và tạo môi trường cộng tác thuận lợi nhằm mục đích xây dựng một hệ thống tài liệu và các loại nội dung khác một cách thống nhất. Mới đây thuật ngữ này liên kết với chương trình quản lý nội dung của website. Quản lý nội dung web (web content management) cũng đồng nghĩa như vậy.<br  /> <br  /> <span class="mw-headline" id="Ch.E1.BB.A9c_n.C4.83ng"><strong>Chức năng</strong>.</span><br  /> Quản trị những nội dung tài liệu điện tử (bao gồm những tài liệu, văn bản số và đã được số hoá) của tổ chức. Những chức năng bao gồm:</p>  <ul> 	<li>Tạo lập nội dung;</li> 	<li>Lưu trữ nội dung;</li> 	<li>Chỉnh sửa nội dung;</li> 	<li>Chuyển tải nội dung;</li> 	<li>Chia sẻ nội dung;</li> 	<li>Tìm kiếm nội dung;</li> 	<li>Phân quyền người dùng và nội dung...</li> </ul>  <p><strong>Đặc điểm.</strong><br  /> Các đặc điểm cơ bản của CMS bao gồm:</p>  <ul> 	<li>Phê chuẩn việc tạo hoặc thay đổi nội dung trực tuyến</li> 	<li>Chế độ Soạn thảo &quot;Nhìn là biết&quot; WYSIWYG</li> 	<li>Quản lý người dùng</li> 	<li>Tìm kiếm và lập chỉ mục</li> 	<li>Lưu trữ</li> 	<li>Tùy biến giao diện</li> 	<li>Quản lý ảnh và các liên kết (URL)</li> </ul> </blockquote>  <p style="text-align: justify;"><br  /> NukeViet CMS là một <strong>hệ quản trị nội dung</strong> (<em>Content Management System - CMS</em>) cho phép bạn quản lý các cổng thông tin điện tử trên Internet. Nói đơn giản, NukeViet giống như một phần mềm giúp bạn<strong> xây dựng</strong> và <strong>vận hành</strong> các trang web của mình một cách dễ dàng nhất.</p>  <p style="text-align: justify;">NukeViet CMS là một phần mềm <strong>mã nguồn mở</strong>, do đó việc sử dụng <strong>hoàn toàn miễn phí</strong>, bạn có thể tải NukeViet CMS về bất cứ lúc nào tại website chính thức của NukeViet là <strong><a href="http://nukeviet.vn">nukeviet.vn</a></strong>. Bạn có thể cài NukeViet lên hosting để sử dụng hoặc cũng có thể thử nghiệm bằng cách cài ngay lên máy tính cá nhân.</p>  <p style="text-align: justify;">NukeViet cho phép xây dựng một website động, đa chức năng, hiện đại một cách nhanh chóng mà người vận hành nó thậm chí <strong>không cần phải biết một tí gì về lập trình</strong> bởi tất cả các tác vụ quản lý phức tạp đều được tự động hóa ở mức cao. NukeViet đặc biệt dễ dàng sử dụng vì hoàn toàn bằng tiếng Việt và được thiết kế phù hợp nhất với thói quen sử dụng mạng của <strong>người Việt Nam</strong>.</p>  <p style="text-align: justify;">Bằng việc sử dụng các công nghệ web mới nhất hiện nay, thiết kế hệ thống uyển chuyển và sở hữu những tính năng độc đáo, NukeViet sẽ giúp bạn triển khai các ứng dụng web từ nhỏ đến lớn một cách nhanh chóng và tiết kiệm: từ các website cá nhân cho tới các cổng thông tin điện tử; từ các gian hàng trực tuyến cho tới các mạng xã hội...</p> NukeViet là CMS <strong>mã nguồn mở đầu tiên của Việt Nam</strong> có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là <a href="http://vinades.vn" target="_blank">VINADES.,JSC</a> - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.', '', 0, '4', '', 0, 2, 1, 1467124147, 1467124147, 1),
(3, 'Logo và tên gọi NukeViet', 'logo-va-ten-goi-nukeviet', '', '', 0, '', '<p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Tên gọi:</strong></span></span><br  /> <strong>NukeViet </strong>phát âm là <strong>&#91;Nu-Ke-Việt</strong>&#93;, đây là cách đọc riêng, không phải là cách phát âm chuẩn của tiếng Anh.<br  /> <br  /> <strong>Ý nghĩa:</strong><br  /> NukeViet là từ ghép từ chữ <strong>Nuke </strong>và <strong>Việt Nam</strong>.<br  /> <br  /> Sở dĩ có tên gọi này là vì phiên bản 1.0 và 2.0 của NukeViet được phát triển từ mã nguồn mở<strong> PHP-Nuke</strong>.</p>  <p style="text-align: justify;">Mặc dù từ phiên bản 3.0, NukeViet được viết mới hoàn toàn và trong quá trình phát triển của mình, nhiều cái tên đã được đưa ra để thay thế nhưng cuối cùng cái tên NukeViet đã được giữ lại để nhớ rằng <strong>NukeViet </strong>được khởi đầu từ <strong>PHP-Nuke</strong> và để cảm ơn <strong>Franscisco Burzi</strong> - Tác giả PHP-Nuke - vì chính ông là nhân tố để có một cộng đồng mã nguồn mở NukeViet với hàng chục ngàn người dùng như hiện nay.</p>  <p style="text-align: justify;"><strong>Nuke</strong> trong tiếng Anh (từ lóng) có nghĩa là &quot;<strong>vũ khí hạt nhân</strong>&quot; (nuclear weapons). Xem: <a href="http://vi.wiktionary.org/wiki/nuke" target="_blank">http://vi.wiktionary.org/wiki/nuke</a></p>  <p style="text-align: justify;">Đội ngũ phát triển cũng hy vọng rằng <strong>NukeViet </strong>sẽ phát triển bùng nổ như đúng tên gọi của nó.</p>  <p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Logo NukeViet 3.0:</strong></span></span><br  /> Sau thời gian dài lựa chọn từ hàng chục mẫu thiết kế của thành viên diễn đàn NukeViet.VN và các nhà thiết kế đồ họa chuyên nghiệp... logo chính thức của NukeViet 3.0 đã được Ban Quản Trị chọn lựa đúng trước ngày Offline phát hành bản NukeViet 3.0 một ngày.<br  /> <br  /> Logo NukeViet 3.0 được lấy hình tượng từ Biển, Đêm, và Ánh Trăng trong khung hình giọt nước:</p>  <p style="text-align:center"><img alt="w" height="143" src="/xedap/uploads/about/w.png" style="width: 288px; height: 143px; border-width: 0px; border-style: solid;" width="288" /></p>  <p style="text-align: justify;">Dưới nền trắng, cả logo nhìn như cảnh biển đêm huyền ảo, tĩnh mịch với mặt nước biển, bầu trời, thuyền buồm và ánh trăng. Đây là những hình ảnh biểu tượng cho sự thanh bình mà bất cứ ai cũng mong ước được thấy khi ngắm biển về đêm.<br  /> <br  /> Màu xanh thẫm là màu hòa quyện của của mặt biển, bầu trời về đêm, màu này cũng gần với màu xanh tượng trưng cho hòa bình.<br  /> Hai vệt khuyết chính là ánh trăng sáng màu bạc phản chiếu lên giọt nước.<br  /> <br  /> Giọt nước còn là biểu tượng cho sự sống, cho khát khao bất diệt của vạn vật trên trái đất này.<br  /> <br  /> <strong>Thông số chuẩn của màu logo:</strong><br  /> -&nbsp;&nbsp;&nbsp; Màu xanh: C80, M60, Y0, K0<br  /> <br  /> <strong>Tác giả mẫu thiết kế:</strong> Lê Thanh Xuân, chuyên viên thiết kế đồ họa của VINADES.,JSC</p>  <p style="text-align: justify;"><span style="color: rgb(255, 0, 0);"><span style="font-size: 14px;"><strong>Slogan NukeViet 3.0:</strong></span></span> “Chia sẻ thành công, kết nối đam mê”, Tiếng Anh: “Sharing success, connect passions”</p>  <p style="text-align: justify;">Slogan này của tác giả HoaiNamDr, đây là slogan đã đoạt giải trong cuộc thi sáng tác slogan trên diễn đàn NukeViet.VN</p>  <div style="text-align:center"><img alt="nukevietcms 180x84" height="84" src="/xedap/uploads/about/nukevietcms-180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/xedap/uploads/about/nukevietcms.png">logo-nukeviet-cms.png</a> (1500x700px)</p>  <div style="text-align:center"><img alt="nukevietcms mu noel 180x84" height="84" src="/xedap/uploads/about/nukevietcms_mu_noel_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc mũ ông già Noel (184x84px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="logo nukeviet3 flag 180x75" height="75" src="/xedap/uploads/about/logo-nukeviet3-flag-180x75.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS cắm cờ Việt Nam (180x75px)<br  /> &nbsp;</p>  <div style="text-align:center"><img alt="nukevietcms laco 180x57" height="57" src="/xedap/uploads/about/nukevietcms_laco_180x57.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet CMS với chiếc ruy băng cờ Việt Nam (180x57px)</p>  <div style="text-align:center"><img alt="nukevietvn 180x84" height="84" src="/xedap/uploads/about/nukevietvn_180x84.png" width="180" /></div>  <p style="text-align: center;">Mẫu phối Logo, slogan và tên NukeViet.VN (180x84px)<br  /> Tải về mẫu kích thước lớn <a href="/xedap/uploads/about/nukevietvn.png">logo-nukeviet-big.png</a> (1500x700px)</p>  <p><br  /> <strong>Tải về file đồ họa gốc:</strong><br  /> - <a href="http://nukeviet.vn/vi/download/Tai-lieu/NukeViet-logo/">NukeViet logo</a> - hình ảnh gốc có độ phân giải cao, bao gồm cả font chữ, có thể sử dụng cho in ấn sticker, in logo lên áo hoặc in Backdrop, Standy khổ lớn.</p>', '', 0, '4', '', 0, 3, 1, 1467124147, 1467124147, 1),
(4, 'Giấy phép sử dụng NukeViet', 'giay-phep-su-dung-nukeviet', '', '', 0, 'Giấy phép công cộng GNU (tiếng Anh: GNU General Public License, viết tắt GNU GPL hay chỉ GPL) là giấy phép phần mềm tự do được sử dụng để phân phối mã nguồn mở NukeViet.', '<p><strong>Bản dịch tiếng Việt của Giấy phép Công cộng GNU</strong></p>\r\n\r\n<p>Người dịch&nbsp;<a href="mailto:dangtuan@vietkey.net">Đặng Minh Tuấn &lt;dangtuan@vietkey.net&gt;</a></p>\r\n\r\n<p>Đây là bản dịch tiếng Việt không chính thức của Giấy phép Công cộng GNU. Bản dịch này không phải do Tổ chức Phần mềm Tự do ấn hành, và nó không quy định về mặt pháp lý các điều khoản cho các phần mềm sử dụng giấy phép GNU GPL -- chỉ có bản tiếng Anh gốc của GNU GPL mới có tính pháp lý. Tuy nhiên, chúng tôi hy vọng rằng bản dịch này sẽ giúp cho những người nói tiếng Việt hiểu rõ hơn về GNU GPL.</p>\r\n\r\n<p>This is an unofficial translation of the GNU General Public License into Vietnamese. It was not published by the Free Software Foundation, and does not legally state the distribution terms for software that uses the GNU GPL--only the original English text of the GNU GPL does that. However, we hope that this translation will help Vietnamese speakers understand the GNU GPL better.</p>\r\n\r\n<hr  />\r\n<h3>GIẤY PHÉP CÔNG CỘNG GNU (GPL)</h3>\r\nGiấy phép công cộng GNU<br />\r\nPhiên bản 2, tháng 6/1991<br />\r\nCopyright (C) 1989, 1991 Free Software Foundation, Inc. &nbsp;<br />\r\n59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA\r\n<p>Mọi người đều được phép sao chép và lưu hành bản sao nguyên bản nhưng không được phép thay đổi nội dung của giấy phép này.<br />\r\n<br />\r\n<strong>Lời nói đầu</strong><br />\r\n<br />\r\nGiấy phép sử dụng của hầu hết các phần mềm đều được đưa ra nhằm hạn chế bạn tự do chia sẻ và thay đổi nó. Ngược lại, Giấy phép Công cộng của GNU có mục đích đảm bảo cho bạn có thể tự do chia sẻ và thay đổi phần mềm tự do - tức là đảm bảo rằng phần mềm đó là tự do đối với mọi người sử dụng. Giấy phép Công cộng này áp dụng cho hầu hết các phần mềm của Tổ chức Phần mềm Tự do và cho tất cả các chương trình khác mà tác giả cho phép sử dụng. (Đối với một số phần mềm khác của Tổ chức Phần Mềm Tự do, áp dụng Giấy phép Công cộng Hạn chế của GNU thay cho giấy phép công cộng). Bạn cũng có thể áp dụng nó cho các chương trình của mình.<br />\r\n<br />\r\nKhi nói đến phần mềm tự do, chúng ta nói đến sự tự do sử dụng chứ không quan tâm về giá cả. Giấy phép Công cộng của chúng tôi được thiết kế để đảm bảo rằng bạn hoàn toàn tự do cung cấp các bản sao của phần mềm tự do (cũng như kinh doanh dịch vụ này nếu bạn muốn), rằng bạn có thể nhận được mã nguồn nếu bạn có yêu cầu, rằng bạn có thể thay đổi phần mềm hoặc sử dụng các thành phần của phần mềm đó cho những chương trình tự do mới; và rằng bạn biết chắc là bạn có thể làm được những điều này.<br />\r\n<br />\r\nĐể bảo vệ bản quyền của bạn, chúng tôi cần đưa ra những hạn chế để ngăn chặn những ai chối bỏ quyền của bạn, hoặc yêu cầu bạn chối bỏ quyền của mình. Những hạn chế này cũng có nghĩa là những trách nhiệm nhất định của bạn khi cung cấp các bản sao phần mềm hoặc khi chỉnh sửa phần mềm đó.<br />\r\n<br />\r\nVí dụ, nếu bạn cung cấp các bản sao của một chương trình, dù miễn phí hay không, bạn phải cho người nhận tất cả các quyền mà bạn có. Bạn cũng phải đảm bảo rằng họ cũng nhận được hoặc tiếp cận được mã nguồn. Và bạn phải thông báo những điều khoản này cho họ để họ biết rõ về quyền của mình.<br />\r\n<br />\r\nChúng tôi bảo vệ quyền của bạn với hai bước: (1) bảo vệ bản quyền phần mềm, và (2) cung cấp giấy phép này để bạn có thể sao chép, lưu hành và/hoặc chỉnh sửa phần mềm một cách hợp pháp.<br />\r\n<br />\r\nNgoài ra, để bảo vệ các tác giả cũng như để bảo vệ chính mình, chúng tôi muốn chắc chắn rằng tất cả mọi người đều hiểu rõ rằng không hề có bảo hành đối với phần mềm tự do này. Nếu phần mềm được chỉnh sửa thay đổi bởi một người khác và sau đó lưu hành, thì chúng tôi muốn những người sử dụng biết rằng phiên bản họ đang có không phải là bản gốc, do đó tất cả những trục trặc do những người khác gây ra hoàn toàn không ảnh hưởng tới uy tín của tác giả ban đầu.<br />\r\n<br />\r\nCuối cùng, bất kỳ một chương trình tự do nào cũng đều thường xuyên có nguy cơ bị đe doạ về giấy phép bản quyền. Chúng tôi muốn tránh nguy cơ khi những người cung cấp lại một chương trình tự do có thể có được giấy phép bản quyền cho bản thân họ, từ đó trở thành độc quyền đối với chương trình đó. Để ngăn ngừa trường hợp này, chúng tôi đã nêu rõ rằng mỗi giấy phép bản quyền hoặc phải được cấp cho tất cả mọi người sử dụng một cách tự do hoặc hoàn toàn không cấp phép.<br />\r\n<br />\r\nDưới đây là những điều khoản và điều kiện rõ ràng đối với việc sao chép, lưu hành và chỉnh sửa.<br />\r\n<br />\r\n<strong>Những điều khoản và điều kiện đối với việc sao chép, lưu hành và chỉnh sửa</strong><br />\r\n<br />\r\n<strong>0.</strong>&nbsp;Giấy phép này áp dụng cho bất kỳ một chương trình hay sản phẩm nào mà người giữ bản quyền công bố rằng nó có thể được cung cấp trong khuôn khổ những điều khoản của Giấy phép Công cộng này. Từ “Chương trình” dưới đây có nghĩa là tất cả các chương trình hay sản phẩm như vậy, và “sản phẩm dựa trên Chương trình” có nghĩa là Chương trình hoặc bất kỳ một sản phẩm nào bắt nguồn từ chương trình đó tuân theo luật bản quyền, nghĩa là một sản phẩm dựa trên Chương trình hoặc một phần của nó, đúng nguyên bản hoặc có một số chỉnh sửa và/hoặc được dịch ra một ngôn ngữ khác. (Dưới đây, việc dịch cũng được hiểu trong khái niệm “chỉnh sửa”). Mỗi người được cấp phép được gọi là “bạn”.<br />\r\n<br />\r\nTrong Giấy phép này không đề cập tới các hoạt động khác ngoài việc sao chép, lưu hành và chỉnh sửa; chúng nằm ngoài phạm vi của giấy phép này. Hành động chạy chương trình không bị hạn chế, và những kết quả từ việc chạy chương trình chỉ được đề cập tới nếu nội dung của nó tạo thành một sản phẩm dựa trên chương trình (độc lập với việc chạy chương trình). Điều này đúng hay không là phụ thuộc vào Chương trình.<br />\r\n<br />\r\n<strong>1.</strong>&nbsp;Bạn có thể sao chép và lưu hành những phiên bản nguyên bản của mã nguồn Chương trình đúng như khi bạn nhận được, qua bất kỳ phương tiện phân phối nào, với điều kiện trên mỗi bản sao bạn đều kèm theo một ghi chú bản quyền rõ ràng và từ chối bảo hành; giữ nguyên tất cả các ghi chú về Giấy phép và về việc không có bất kỳ một sự bảo hành nào; và cùng với Chương trình bạn cung cấp cho người sử dụng một bản sao của Giấy phép này.<br />\r\n<br />\r\nBạn có thể tính phí cho việc chuyển giao bản sao, và tuỳ theo quyết định của mình bạn có thể cung cấp bảo hành để đổi lại với chi phí mà bạn đã tính.<br />\r\n<br />\r\n<strong>2.</strong>&nbsp;Bạn có thể chỉnh sửa bản sao của bạn hoặc các bản sao của Chương trình hoặc của bất kỳ phần nào của nó, từ đó hình thành một sản phẩm dựa trên Chương trình, và sao chép cũng như lưu hành sản phẩm đó hoặc những chỉnh sửa đó theo điều khoản trong Mục 1 ở trên, với điều kiện bạn đáp ứng được những điều kiện dưới đây:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Bạn phải có ghi chú rõ ràng trong những tập tin đã chỉnh sửa là bạn đã chỉnh sửa nó, và ngày tháng của bất kỳ một thay đổi nào.<br />\r\n•&nbsp;&nbsp; &nbsp;b) Bạn phải cấp phép miễn phí cho tất cả các bên thứ ba đối với các sản phẩm bạn cung cấp hoặc phát hành, bao gồm Chương trình nguyên bản, từng phần của nó hay các sản phẩm dựa trên Chương trình hay dựa trên từng phần của Chương trình, theo những điều khoản của Giấy phép này.<br />\r\n•&nbsp;&nbsp; &nbsp;c) Nếu chương trình đã chỉnh sửa thường đọc lệnh tương tác trong khi chạy, bạn phải thực hiện sao cho khi bắt đầu chạy để sử dụng tương tác theo cách thông thường nhất phải có một thông báo bao gồm bản quyền và thông báo về việc không có bảo hành (hoặc thông báo bạn là người cung cấp bảo hành), và rằng người sử dụng có thể cung cấp lại Chương trình theo những điều kiện này, và thông báo để người sử dụng có thể xem bản sao của Giấy phép này. (Ngoại lệ: nếu bản thân Chương trình là tương tác nhưng không có một thông báo nào như trên, thì sản phẩm của bạn dựa trên Chương trình đó cũng không bắt buộc phải có thông báo như vậy).<br />\r\n<br />\r\nNhững yêu cầu trên áp dụng cho toàn bộ các sản phẩm chỉnh sửa. Nếu có những phần của sản phẩm rõ ràng không bắt nguồn từ Chương trình, và có thể được xem là độc lập và riêng biệt, thì Giấy phép này và các điều khoản của nó sẽ không áp dụng cho những phần đó khi bạn cung cấp chúng như những sản phẩm riêng biệt. Nhưng khi bạn cung cấp những phần đó như những phần nhỏ trong cả một sản phẩm dựa trên Chương trình, thì việc cung cấp này phải tuân theo những điều khoản của Giấy phép này, cho phép những người được cấp phép có quyền đối với toàn bộ sản phẩm, cũng như đối với từng phần trong đó, bất kể ai đã viết nó.<br />\r\n<br />\r\nNhư vậy, điều khoản này không nhằm mục đích xác nhận quyền hoặc tranh giành quyền của bạn đối với những sản phẩm hoàn toàn do bạn viết; mà mục đích của nó là nhằm thi hành quyền kiểm soát đối với việc cung cấp những sản phẩm bắt nguồn hoặc tổng hợp dựa trên Chương trình.<br />\r\n<br />\r\nNgoài ra, việc kết hợp thuần tuý Chương trình (hoặc một sản phẩm dựa trên Chương trình) với một sản phẩm không dựa trên Chương trình với mục đích lưu trữ hoặc quảng bá không đưa sản phẩm đó vào trong phạm vi áp dụng của Giấy phép này.<br />\r\n<br />\r\n<strong>3.</strong>&nbsp;Bạn có thể sao chép và cung cấp Chương trình (hoặc một sản phẩm dựa trên Chương trình, nêu trong Mục 2) dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được trong khuôn khổ các điều khoản nêu trong Mục 1 và 2 ở trên, nếu như bạn:<br />\r\n•&nbsp;&nbsp; &nbsp;a) Kèm theo đó một bản mã nguồn dạng đầy đủ có thể biên dịch được theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc,<br />\r\n•&nbsp;&nbsp; &nbsp;b) Kèm theo đó một đề nghị có hạn trong ít nhất 3 năm, theo đó cung cấp cho bất kỳ một bên thứ ba nào một bản sao đầy đủ của mã nguồn tương ứng, và phải được cung cấp với giá chi phí không cao hơn giá chi phí vật lý của việc cung cấp theo các điều khoản trong Mục 1 và 2 nêu trên trong một môi trường trao đổi phần mềm thông thường; hoặc<br />\r\n•&nbsp;&nbsp; &nbsp;c) Kèm theo đó thông tin bạn đã nhận được để đề nghị cung cấp mã nguồn tương ứng. (Phương án này chỉ được phép đối với việc cung cấp phi thương mại và chỉ với điều kiện nếu bạn nhận được Chương trình dưới hình thức mã đã biên dịch hoặc dạng có thể thực thi được cùng với lời đề nghị như vậy, theo phần b trong điều khoản nêu trên).<br />\r\n<br />\r\nMã nguồn của một sản phẩm là một dạng ưu tiên của sản phẩm dành cho việc chỉnh sửa nó. Với một sản phẩm có thể thi hành, mã nguồn hoàn chỉnh có nghĩa là tất cả các mã nguồn cho các môđun trong sản phẩm đó, cộng với tất cả các tệp tin định nghĩa giao diện đi kèm với nó, cộng với các hướng dẫn dùng để kiểm soát việc biên dịch và cài đặt các tệp thi hành. Tuy nhiên, một ngoại lệ đặc biệt là mã nguồn không cần chứa bất kỳ một thứ gì mà bình thường được cung cấp (từ nguồn khác hoặc hình thức nhị phân) cùng với những thành phần chính (chương trình biên dịch, nhân, và những phần tương tự) của hệ điều hành mà các chương trình chạy trong đó, trừ khi bản thân thành phần đó lại đi kèm với một tệp thi hành.<br />\r\n<br />\r\nNếu việc cung cấp lưu hành mã đã biên dịch hoặc tập tin thi hành được thực hiện qua việc cho phép tiếp cận và sao chép từ một địa điểm được chỉ định, thì việc cho phép tiếp cận tương đương tới việc sao chép mã nguồn từ cùng địa điểm cũng được tính như việc cung cấp mã nguồn, mặc dù thậm chí các bên thứ ba không bị buộc phải sao chép mã nguồn cùng với mã đã biên dịch.<br />\r\n<br />\r\n<strong>4.</strong>&nbsp;Bạn không được phép sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình trừ phi phải tuân thủ một cách chính xác các điều khoản trong Giấy phép. Bất kỳ ý định sao chép, chỉnh sửa, cấp phép hoặc cung cấp Chương trình theo cách khác đều làm mất hiệu lực và tự động huỷ bỏ quyền của bạn trong khuôn khổ Giấy phép này. Tuy nhiên, các bên đã nhận được bản sao hoặc quyền từ bạn với Giấy phép này sẽ không bị huỷ bỏ giấy phép nếu các bên đó vẫn tuân thủ đầy đủ các điều khoản của giấy phép.<br />\r\n<br />\r\n<strong>5.</strong>&nbsp;Bạn không bắt buộc phải chấp nhận Giấy phép này khi bạn chưa ký vào đó. Tuy nhiên, không có gì khác đảm bảo cho bạn được phép chỉnh sửa hoặc cung cấp Chương trình hoặc các sản phẩm bắt nguồn từ Chương trình. Những hành động này bị luật pháp nghiêm cấm nếu bạn không chấp nhận Giấy phép này. Do vậy, bằng việc chỉnh sửa hoặc cung cấp Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), bạn đã thể hiện sự chấp thuận đối với Giấy phép này, cùng với tất cả các điều khoản và điều kiện đối với việc sao chép, cung cấp hoặc chỉnh sửa Chương trình hoặc các sản phẩm dựa trên nó.<br />\r\n<br />\r\n<strong>6.</strong> Mỗi khi bạn cung cấp lại Chương trình (hoặc bất kỳ một sản phẩm nào dựa trên Chương trình), người nhận sẽ tự động nhận được giấy phép từ người cấp phép đầu tiên cho phép sao chép, cung cấp và chỉnh sửa Chương trình theo các điều khoản và điều kiện này. Bạn không thể áp đặt bất cứ hạn chế nào khác đối với việc thực hiện quyền của người nhận đã được cấp phép từ thời điểm đó. Bạn cũng không phải chịu trách nhiệm bắt buộc các bên thứ ba tuân thủ theo Giấy phép này.<br />\r\n<br />\r\n<strong>7.</strong>&nbsp;Nếu như, theo quyết định của toà án hoặc với những bằng chứng về việc vi phạm bản quyền hoặc vì bất kỳ lý do nào khác (không giới hạn trong các vấn đề về bản quyền), mà bạn phải tuân theo các điều kiện (nêu ra trong lệnh của toà án, biên bản thoả thuận hoặc ở nơi khác) trái với các điều kiện của Giấy phép này, thì chúng cũng không thể miễn cho bạn khỏi những điều kiện của Giấy phép này. Nếu bạn không thể đồng thời thực hiện các nghĩa vụ của mình trong khuôn khổ Giấy phép này và các nghĩa vụ thích đáng khác, thì hậu quả là bạn hoàn toàn không được cung cấp Chương trình. Ví dụ, nếu trong giấy phép bản quyền không cho phép những người nhận được bản sao trực tiếp hoặc gián tiếp qua bạn có thể cung cấp lại Chương trình thì trong trường hợp này cách duy nhất bạn có thể thoả mãn cả hai điều kiện là hoàn toàn không cung cấp Chương trình.<br />\r\n<br />\r\nNếu bất kỳ một phần nào trong điều khoản này không có hiệu lực hoặc không thể thi hành trong một hoàn cảnh cụ thể, thì sẽ cân đối áp dụng các điều khoản, và toàn bộ điều khoản sẽ được áp dụng trong những hoàn cảnh khác.<br />\r\n<br />\r\nMục đích của điều khoản này không nhằm buộc bạn phải vi phạm bất kỳ một bản quyền nào hoặc các quyền sở hữu khác hoặc tranh luận về giá trị hiệu lực của bất kỳ quyền hạn nào như vậy; mục đích duy nhất của điều khoản này là nhằm bảo vệ sự toàn vẹn của hệ thống cung cấp phần mềm tự do đang được thực hiện với giấy phép công cộng. Nhiều người đã đóng góp rất nhiều vào sự đa dạng của các phần mềm tự do được cung cấp thông qua hệ thống này với sự tin tưởng rằng hệ thống được sử dụng một cách thống nhất; tác giả/người cung cấp có quyền quyết định rằng họ có mong muốn cung cấp phần mềm thông qua hệ thống nào khác hay không, và người được cấp phép không thể có ảnh hưởng tới sự lựa chọn này.<br />\r\n<br />\r\nĐiều khoản này nhằm làm rõ những hệ quả của các phần còn lại của Giấy phép này.<br />\r\n<br />\r\n<strong>8.</strong>&nbsp;Nếu việc cung cấp và/hoặc sử dụng Chương trình bị cấm ở một số nước nhất định bởi quy định về bản quyền, người giữ bản quyền gốc đã đưa Chương trình vào dưới Giấy phép này có thể bổ sung một điều khoản hạn chế việc cung cấp ở những nước đó, nghĩa là việc cung cấp chỉ được phép ở các nước không bị liệt kê trong danh sách hạn chế. Trong trường hợp này, Giấy phép đưa vào những hạn chế được ghi trong nội dung của nó.<br />\r\n<br />\r\n<strong>9.&nbsp;</strong>Tổ chức Phần mềm Tự do có thể theo thời gian công bố những phiên bản chỉnh sửa và/hoặc phiên bản mới của Giấy phép Công cộng. Những phiên bản đó sẽ đồng nhất với tinh thần của phiên bản hiện này, nhưng có thể khác ở một số chi tiết nhằm giải quyết những vấn đề hay những lo ngại mới.<br />\r\n<br />\r\nMỗi phiên bản sẽ có một mã số phiên bản riêng. Nếu Chương trình và &quot;bất kỳ một phiên bản nào sau đó&quot; có áp dụng một phiên bản Giấy phép cụ thể, bạn có quyền lựa chọn tuân theo những điều khoản và điều kiện của phiên bản giấy phép đó hoặc của bất kỳ một phiên bản nào sau đó do Tổ chức Phần mềm Tự do công bố. Nếu Chương trình không nêu cụ thể mã số phiên bản giấy phép, bạn có thể lựa chọn bất kỳ một phiên bản nào đã từng được công bố bởi Tổ chức Phần mềm Tự do.<br />\r\n<br />\r\n<strong>10.</strong>&nbsp;Nếu bạn muốn kết hợp các phần của Chương trình vào các chương trình tự do khác mà điều kiện cung cấp khác với chương trình này, hãy viết cho tác giả để được phép. Đối với các phần mềm được cấp bản quyền bởi Tổ chức Phầm mềm Tự do, hãy đề xuất với tổ chức này; đôi khi chúng tôi cũng có những ngoại lệ. Quyết định của chúng tôi sẽ dựa trên hai mục tiêu là bảo hộ tình trạng tự do của tất cả các sản phẩm bắt nguồn từ phần mềm tự do của chúng tôi, và thúc đẩy việc chia sẻ và tái sử dụng phần mềm nói chung.<br />\r\n<br />\r\n<strong>KHÔNG BẢO HÀNH</strong><br />\r\nDO CHƯƠNG TRÌNH ĐƯỢC CẤP PHÉP MIỄN PHÍ NÊN KHÔNG CÓ MỘT CHẾ ĐỘ BẢO HÀNH NÀO TRONG MỨC ĐỘ CHO PHÉP CỦA LUẬT PHÁP. TRỪ KHI ĐƯỢC CÔNG BỐ KHÁC ĐI BẰNG VĂN BẢN, NHỮNG NGƯỜI GIỮ BẢN QUYỀN VÀ/HOẶC CÁC BÊN CUNG CẤP CHƯƠNG TRÌNH NGUYÊN BẢN SẼ KHÔNG BẢO HÀNH DƯỚI BẤT KỲ HÌNH THỨC NÀO, BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG CÁC HÌNH THỨC BẢO HÀNH ĐỐI VỚI TÍNH THƯƠNG MẠI CŨNG NHƯ TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. BẠN LÀ NGƯỜI CHỊU TOÀN BỘ RỦI RO VỀ CHẤT LƯỢNG CŨNG NHƯ VIỆC VẬN HÀNH CHƯƠNG TRÌNH. TRONG TRƯỜNG HỢP CHƯƠNG TRÌNH CÓ KHIẾM KHUYẾT, BẠN PHẢI CHỊU TOÀN BỘ CHI PHÍ CHO NHỮNG DỊCH VỤ SỬA CHỮA CẦN THIẾT.<br />\r\n<br />\r\nTRONG TẤT CẢ CÁC TRƯỜNG HỢP TRỪ KHI CÓ YÊU CẦU CỦA LUẬT PHÁP HOẶC CÓ THOẢ THUẬN BẰNG VĂN BẢN, NHỮNG NGƯỜI CÓ BẢN QUYỀN HOẶC BẤT KỲ MỘT BÊN NÀO CHỈNH SỬA VÀ/HOẶC CUNG CẤP LẠI CHƯƠNG TRÌNH TRONG CÁC ĐIỀU KIỆN NHƯ ĐÃ NÊU TRÊN ĐỀU KHÔNG CÓ TRÁCH NHIỆM VỚI BẠN VỀ CÁC LỖI HỎNG HÓC, BAO GỒM CÁC LỖI CHUNG HAY ĐẶC BIỆT, NGẪU NHIÊN HAY TẤT YẾU NẢY SINH DO VIỆC SỬ DỤNG HOẶC KHÔNG SỬ DỤNG ĐƯỢC CHƯƠNG TRÌNH (BAO GỒM NHƯNG KHÔNG GIỚI HẠN TRONG VIỆC MẤT DỮ LIỆU, DỮ LIỆU THIẾU CHÍNH XÁC HOẶC CHƯƠNG TRÌNH KHÔNG VẬN HÀNH ĐƯỢC VỚI CÁC CHƯƠNG TRÌNH KHÁC), THẬM CHÍ CẢ KHI NGƯỜI CÓ BẢN QUYỀN VÀ CÁC BÊN KHÁC ĐÃ ĐƯỢC THÔNG BÁO VỀ KHẢ NĂNG XẢY RA NHỮNG THIỆT HẠI ĐÓ.<br />\r\n<br />\r\n<strong>KẾT THÚC CÁC ĐIỀU KIỆN VÀ ĐIỀU KHOẢN.</strong></p>\r\n\r\n<p><strong>Áp dụng những điều khoản trên như thế nào đối với chương trình của bạn</strong><br />\r\n<br />\r\nNếu bạn xây dựng một chương trình mới, và bạn muốn cung cấp một cách tối đa cho công chúng sử dụng, thì biện pháp tốt nhất để đạt được điều này là phát triển chương trình đó thành phần mềm tự do để ai cũng có thể cung cấp lại và thay đổi theo những điều khoản như trên.<br />\r\n<br />\r\nĐể làm được việc này, hãy đính kèm những thông báo như sau cùng với chương trình của mình. An toàn nhất là đính kèm chúng trong phần đầu của tập tin mã nguồn để thông báo một cách hiệu quả nhất về việc không có bảo hành; và mỗi tệp tin đều phải có ít nhất một dòng về “bản quyền” và trỏ đến toàn bộ thông báo.</p>\r\n\r\n<blockquote>\r\n<p>&nbsp; &nbsp; &nbsp; &nbsp; <strong>Một dòng đề tên chương trình và nội dung của nó.<br />\r\n&nbsp; &nbsp; &nbsp; &nbsp; Bản quyền (C) năm,&nbsp; tên tác giả.</strong><br />\r\n<br />\r\nChương trình này là phần mềm tự do, bạn có thể cung cấp lại và/hoặc chỉnh sửa nó theo những điều khoản của Giấy phép Công cộng của GNU do Tổ chức Phần mềm Tự do công bố; phiên bản 2 của Giấy phép, hoặc bất kỳ một phiên bản sau đó (tuỳ sự lựa chọn của bạn).<br />\r\n<br />\r\nChương trình này được cung cấp với hy vọng nó sẽ hữu ích, tuy nhiên KHÔNG CÓ BẤT KỲ MỘT BẢO HÀNH NÀO; thậm chí kể cả bảo hành về KHẢ NĂNG THƯƠNG MẠI hoặc TÍNH THÍCH HỢP CHO MỘT MỤC ĐÍCH CỤ THỂ. Xin xem Giấy phép Công cộng của GNU để biết thêm chi tiết.<br />\r\n<br />\r\nBạn phải nhận được một bản sao của Giấy phép Công cộng của GNU kèm theo chương trình này; nếu bạn chưa nhận được, xin gửi thư về Tổ chức Phần mềm Tự do, 59 Temple Place - Suite 330, Boston, MA&nbsp; 02111-1307, USA.<br />\r\n<br />\r\nXin hãy bổ sung thông tin về địa chỉ liên lạc của bạn (thư điện tử và bưu điện).</p>\r\n</blockquote>\r\n\r\n<p>Nếu chương trình chạy tương tác, hãy đưa một thông báo ngắn khi bắt đầu chạy chương trình như sau:</p>\r\n\r\n<blockquote>\r\n<p>Gnomovision phiên bản 69, Copyright (C) năm, tên tác giả.<br />\r\n<br />\r\nGnomovision HOÀN TOÀN KHÔNG CÓ BẢO HÀNH; để xem chi tiết hãy gõ `show w&#039;.&nbsp; Đây là một phần mềm miễn phí, bạn có thể cung cấp lại với những điều kiện nhất định, gõ ‘show c’ để xem chi tiết.<br />\r\nGiả thiết lệnh `show w&#039; và `show c&#039; cho xem những phần tương ứng trong Giấy phép Công cộng. Tất nhiên những lệnh mà bạn dùng có thể khác với ‘show w&#039; và `show c&#039;; những lệnh này có thể là nhấn chuột hoặc lệnh trong thanh công cụ - tuỳ theo chương trình của bạn.</p>\r\n</blockquote>\r\n\r\n<p>Bạn cũng cần phải lấy chữ ký của người phụ trách (nếu bạn là người lập trình) hoặc của trường học (nếu có) xác nhận từ chối bản quyền đối với chương trình. Sau đây là ví dụ:</p>\r\n\r\n<blockquote>\r\n<p>Yoyodyne, Inc., tại đây từ chối tất cả các quyền lợi bản quyền đối với chương trình `Gnomovision&#039; viết bởi James Hacker.<br />\r\n<br />\r\nchữ ký của Ty Coon, 1 April 1989<br />\r\nTy Coon, Phó Tổng Giám đốc.</p>\r\n</blockquote>\r\n\r\n<p>Giấy phép Công cộng này không cho phép đưa chương trình của bạn vào trong các chương trình độc quyền. Nếu chương trình của bạn là một thư viện thủ tục phụ, bạn có thể thấy nó hữu ích hơn nếu cho thư viện liên kết với các ứng dụng độc quyền. Nếu đây là việc bạn muốn làm, hãy sử dụng Giấy phép Công cộng Hạn chế của GNU thay cho Giấy phép này.</p>\r\n\r\n<hr  />\r\n<p><strong>Bản gốc của giấy phép bằng tiếng Anh có tại các địa chỉ sau:</strong></p>\r\n\r\n<ol>\r\n	<li>GNU General Public License, version 1, February 1989:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-1.0.txt</a></li>\r\n	<li>GNU General Public License, version 2, June 1991:&nbsp;<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">http://www.gnu.org/licenses/old-licenses/gpl-2.0.html</a></li>\r\n	<li>GNU General Public License, version 3, 29 June 2007:&nbsp;<a href="http://www.gnu.org/licenses/gpl-3.0.txt" target="_blank">http://www.gnu.org/licenses/gpl-3.0.txt</a></li>\r\n</ol>\r\n\r\n<p><strong>Tài liệu tham khảo:</strong></p>\r\n\r\n<ol>\r\n	<li>Bản dịch tiếng Việt của Giấy phép Công cộng GNU tại OpenOffice.org:&nbsp;<br />\r\n	<a href="http://vi.openoffice.org/gplv.html" target="_blank">http://vi.openoffice.org/gplv.html</a></li>\r\n	<li>GPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/GPL" target="_blank">http://vi.wikisource.org/wiki/GPL</a></li>\r\n</ol>\r\n\r\n<p><strong>Xem thêm:</strong></p>\r\n\r\n<ol>\r\n	<li>LGPL tại&nbsp;Văn thư lưu trữ mở Wikisource:&nbsp;<a href="http://vi.wikisource.org/wiki/LGPL" target="_blank">http://vi.wikisource.org/wiki/LGPL</a></li>\r\n	<li>Giấy phép Công cộng GNU - WikiPedia:&nbsp;<br />\r\n	<a href="http://vi.wikipedia.org/wiki/Gi%E1%BA%A5y_ph%C3%A9p_C%C3%B4ng_c%E1%BB%99ng_GNU" target="_blank">http://vi.wikipedia.org/wiki/Giấy_phép_Công_cộng_GNU</a></li>\r\n	<li>Thảo luận giấy phép GNU GPL - HVA:<br />\r\n	&nbsp;<a href="http://www.hvaonline.net/hvaonline/posts/list/7120.hva" target="_blank">http://www.hvaonline.net/hvaonline/posts/list/7120.hva</a></li>\r\n	<li>Thảo luận tại diễn đàn:&nbsp;<a href="http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591" target="_blank">http://nukeviet.vn/phpbb/viewtopic.php?f=83&amp;t=1591</a></li>\r\n</ol>', 'giấy phép,công cộng,tiếng anh,gnu general,public license,gnu gpl,phần mềm,là tự,sử dụng,mã nguồn,bản dịch,tiếng việt,của gnu,đây là,này không,do tổ,chức tự,hành và,các điều,cho các,có bản,tuy nhiên,chúng tôi,cho những,phiên bản,mọi người,được phép,sao chép,lưu hành,bản sao,nguyên bản,nhưng không,và thay,nội dung,của này,hạn chế,tự do,chia sẻ,nukeviet,portal,mysql,php,cms,mã nguồn mở,thiết kế website', 0, '4', '', 0, 4, 1, 1467124147, 1467124147, 1);
INSERT INTO `nv4_vi_about` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(5, 'Những tính năng của NukeViet CMS 4.0', 'nhung-tinh-nang-cua-nukeviet-cms-4-0', '', '', 0, '', '<p style="text-align: justify;"><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Giới thiệu chung</span></span><br  /> <span style="font-weight: bold;">Mã nguồn mở NukeViet là sản phẩm của sự làm việc chuyên nghiệp: </span><br  /> Để xây dựng lên NukeViet 4, đội ngũ phát triển đã thành lập công ty VINADES.,JSC. Trong quá trình phát triển NukeViet 4, VINADES.,JSC đã hợp tác với nhiều đơn vị cung cấp hosting trong và ngoài nước để thử nghiệm host, đảm bảo tương thích với đa số các hosting chuyên nghiệp.<br  /> NukeViet 4 cũng được vận hành thử nghiệm, góp ý bởi nhiều webmaster có kinh nghiệm quản trị ở nhiều hệ thống khác nhau nhằm tối ưu các tính năng hệ thống cho người sử dụng.<br  /> NukeViet 4 được lập trình bởi các lập trình viên mà kinh nghiệm và tên tuổi của họ đã được xác lập cùng với tên tuổi của bộ mã nguồn mở tạo web đầu tiên của Việt Nam.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 là một hệ thống mạnh:</span><br  /> Rút kinh nghiệm từ chính NukeViet 2, NukeViet 3, NukeViet 4 được viết mới hoàn toàn trên nền tảng kỹ thuật tiên tiến nhất hiện nay cho phép xây dựng các nền tảng ứng dụng trực tuyến lớn như Các cổng thông tin điện tử, các tòa soạn báo điện tử, các mạng xã hội và các hệ thống thương mại trực tuyến.<br  /> NukeViet 4 đã được thử nghiệm vận hành với dữ liệu lớn lên tới hàng triệu bản tin. Trên thực tế, NukeViet 4 cũng đã triển khai thành công cho các hiệp hội, doanh nghiệp có lượng truy cập rất lớn.<br  /> <br  /> <span style="font-weight: bold;">NukeViet 4 thích hợp cho mọi đối tượng:</span><br  /> NukeViet lấy người sử dụng làm trọng tâm, những tính năng của NukeViet tạo nên chuẩn mực trong việc sử dụng và quản trị. Vì thế, NukeViet 4 tốt cho cả người sử dụng lẫn người phát triển.<br  /> Với người sử dụng, NukeViet 4 cho phép tùy biến dễ dàng và sử dụng ngay mà không cần can thiệp vào hệ thống.<br  /> Với người phát triển, sử dụng NukeViet cho phép nhanh chóng xây dựng các nền tảng khác nhau nhờ việc viết thêm các module cho hệ thống thay vì phải tự mình viết cả một hệ thống.</p>  <p style="text-align: justify;"><span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các tính năng của NukeViet 4</span></span></p> <span style="font-weight: bold;">Nền tảng công nghệ</span>  <ul> 	<li style="text-align: justify;"><span id="cke_bm_178S" style="display: none;">&nbsp;</span>NukeViet CMS 4 lập trình trên PHP 5.4 và MySQL 5, Sử dụng PDO để kết nối với MySQL (Sẵn sàng kết nối với các CSDL khác) cho phép vận dụng tối đa sức mạnh của công nghệ mới.</li> 	<li style="text-align: justify;">Sử dụng Composer để quản lý các thư viện PHP được cài vào hệ thống.</li> 	<li style="text-align: justify;">Từng bước áp dụng các tiêu chuẩn viết code PHP theo khuyến nghị của http://www.php-fig.org/psr/</li> 	<li style="text-align: justify;">Ứng dụng Xtemplate và jQuery cho phép vận dụng Ajax uyển chuyển từ trong nhân hệ thống.</li> 	<li style="text-align: justify;">Giai diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn, Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</li> 	<li style="text-align: justify;">Tận dụng các thành tựu mã nguồn mở có sẵn nhưng NukeViet 4 vẫn đảm bảo rằng từng dòng code là được code tay. Điều này có nghĩa là NukeViet 4 hoàn toàn không lệ thuộc vào bất cứ framework nào trong quá trình phát triển của mình; Bạn hoàn toàn có thể đọc hiểu để tự lập trình trên NukeViet 4 nếu bạn biết PHP và MySQL (đồng nghĩa với việc NukeViet 4 hoàn toàn mở và dễ nghiên cứu cho bất cứ ai muốn tìm hiểu về code của NukeViet).<span id="cke_bm_178E" style="display: none;">&nbsp;</span></li> </ul>  <ul id="docs-internal-guid-7ec786f5-1ade-f016-4c9b-c9a8e36cc922"> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Kiến trúc Module</span></p>  <ul> 	<li style="text-align: justify;">NukeViet CMS 4 tái cấu trúc lại module, theo đó, toàn bộ tệp tin của mỗi module được gói gọn trong một thư mục riêng nhằm đơn giản trong việc quản lý và đóng gói ứng dụng. Kiến trúc module này tạo ra khái niệm block của module và theme của module giúp đa dạng hóa việc trình bày module.</li> 	<li style="text-align: justify;">Hệ thống NukeViet 4 hỗ trợ công nghệ đa nhân module. Chúng tôi gọi đó là công nghệ ảo hóa module. Công nghệ này cho phép người sử dụng có thể khởi tạo hàng ngàn module một cách tự động mà không cần động đến một dòng code. Các module được sinh ra từ công nghệ này gọi là module ảo. Module ảo là module được nhân bản từ một module bất kỳ của hệ thống nukeviet nếu module đó cho phép tạo module ảo.</li> 	<li style="text-align: justify;">NukeViet 4 cũng hỗ trợ việc cài đặt từ động 100% các module kèm theo block, theme từ Admin Control Panel, người sử dụng có thể cài module mà không cần làm bất cứ thao tác phức tạp nào. NukeViet 4 còn cho phép bạn đóng gói module để chia sẻ cho người khác.</li> 	<li style="text-align: justify;">Hệ thống cho phép quản lý module từ trong Admin Control Panel, quản trị cấp cao có thể phân quyền truy cập cũng như tạm ngưng hoạt động hay thậm chí cài lại hoặc xóa module tùy theo nhu cầu sử dụng.</li> </ul>  <p style="text-align: justify;"><br  /> <span style="font-weight: bold;">Đa ngôn ngữ</span></p>  <ul> 	<li>NukeViet 4 đa ngôn ngữ 100% với 2 loại: đa ngôn ngữ giao diện và đa ngôn ngữ xử lý dữ liệu (database).</li> 	<li>NukeViet 4 có tính năng cho phép người quản trị tự xây dựng ngôn ngữ mới cho site. Cho phép đóng gói file ngôn ngữ để chia sẻ cho cộng đồng...</li> 	<li>NukeViet cũng có trung tâm dịch thuật riêng dành cho việc chung tay góp sức xây dựng những ngôn ngữ mới tại địa chỉ: <a href="http://translate.nukeviet.vn" target="_blank">http://translate.nukeviet.vn</a></li> 	<li>NukeViet 4 tách bạch ngôn ngữ quản trị và ngôn ngữ người dùng, ngôn ngữ giao diện và ngôn ngữ database giúp dễ dàng xây dựng và quản lý các hệ thống đa ngôn ngữ.</li> 	<li>NukeViet 4 còn có khả năng tự động nhận diện và chuyển ngôn ngữ phù hợp cho người sử dụng.</li> 	<li>NukeViet 4 còn có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Phân quyền</span><strong> cấp độ hệ thống</strong><br  /> NukeViet 4 tách biệt 2 khu vực: Khu vực quản trị và Khu vực người dùng. Toàn bộ các tính năng quản lý nằm trong khu vực quản trị nhằm đảm bảo việc phân quyền được thực hiện chính xác và an toàn nhất.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền Quản trị</span><br  /> NukeViet 4 phân quyền theo module và theo ngôn ngữ, do đó dễ dàng xác lập quyền quản trị cho các hệ thống lớn, nhiều người quản trị cùng làm việc.<br  /> <br  /> <span style="font-weight: bold;">Phân quyền thành viên</span><br  /> NukeViet 4 cho phép quản lý và phân nhóm người sử dụng thành các nhóm khác nhau để dễ dàng phân quyền người sử dụng theo từng module cụ thể.<br  /> <br  /> <strong>Phân quyền cấp độ module</strong><br  /> Ở cấp module, tùy chức năng module được thiết kế mà nó có thể được phân quyền theo các cơ chế khác nhau, việc này đặc biệt linh hoạt khi xây dựng các hệ thống lớn. Với module News tích hợp trong hệ thống được trang bị việc phân quyền tới từng chuyên mục.<br  /> <br  /> <span style="font-weight: bold;">Đa giao diện</span></p>  <ul> 	<li style="text-align: justify;">Cài đặt: NukeViet 4 hỗ trợ cài đặt và gỡ bỏ giao diện hoàn toàn tự động. Hơn thế nữa, bạn có thể đóng gói giao diện để chia sẻ cho website khác một cách dễ dàng.</li> 	<li style="text-align: justify;">NukeViet hỗ trợ giao diện theo ngôn ngữ, giao diện theo module, định nghĩa giao diện mobile (NukeViet 4) và giao diện PC tùy theo ý người quản trị.</li> 	<li style="text-align: justify;">NukeViet hỗ trợ hệ thống đa giao diện cực kỳ uyển chuyển cho cả người sử dụng lẫn người lập trình. Với NukeViet 4, người sử dụng có thể tùy biến một cách dễ dàng: gán giao diện theo module, thiết lập bố cục giao diện cho từng tính năng của module.</li> 	<li style="text-align: justify;">Với người thiết kế giao diện: có thể tùy ý thiết kế không giới hạn bố cục giao diện. Giao diện đã được tách bạch phần HTML và CSS khỏi PHP vì vậy người thiết kế tùy trình độ mà có thể can thiệp vào các lớp giao diện để chỉnh sửa hoặc thiết kế giao diện mới một cách dễ dàng.</li> </ul>  <p style="text-align: justify;"><strong>Hỗ trợ truy cập từ điện thoại, máy tính bảng.</strong><br  /> Từ bản NukeViet 4, NukeViet có thể tự động nhận diện thiết bị di động để chuyển giao diện và chế độ tương tác phù hợp. Ngoài ra NukeViet 4 còn có giao diện tùy biến, để có thể hiển thị tốt trên các màn hình khác nhau.<br  /> <br  /> <span style="font-weight: bold;">Tùy biến site bằng Block</span><br  /> NukeViet cho phép đa dạng hóa bố cục và chức năng cho website nhờ các khối (block) khác nhau trên website. Các khối này có thể là các ứng dụng, các khối quảng cáo hoặc dữ liệu bất kỳ nào được người sử dụng định nghĩa. Block của NukeViet 4 cũng phân theo 2 cấp: Block của hệ thống và block cho từng module.<br  /> Người sử dụng có thể tùy ý bố trí vị trí block ở các vị trí khác nhau: toàn bộ website, theo từng module và thậm chí là từng tính năng của module. Block có thể có các giao diện khác nhau theo theme. Có thể hẹn giờ bật/tắt cũng như phân quyền cho từng đối tượng người truy cập.<br  /> Việc bố trí block có thể thực hiện trong Admin Control Panel hoặc kéo thả trực quan ngay tại giao diện người dùng.<br  /> <br  /> <span style="font-weight: bold;">An ninh, bảo mật</span><br  /> NukeViet 4 được thiết kế để nhận biết và chống các truy cập bất hợp pháp vào hệ thống cũng như gửi các dữ liệu có hại lên hệ thống.</p>  <ul> 	<li style="text-align: justify;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</li> 	<li style="text-align: justify;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.<br  /> 	Tường lửa Admin bảo vệ khu vực bằng mật khẩu và IP.</li> 	<li style="text-align: justify;">Bộ lọc IP cấm và bộ lọc file cấm giúp ngăn ngừa các nguy cơ biết trước.</li> 	<li style="text-align: justify;">Dữ liệu gửi qua hệ thống được kiểm duyệt bằng bộ lọc an ninh kép nhằm ngăn chặn các dữ liệu có khả năng tấn công vào hệ thống.</li> 	<li style="text-align: justify;">NukeViet có khả năng ngăn chặn, theo dõi và kiểm soát truy cập vào hệ thống của tất cả các máy chủ tìm kiếm như yahoo và google hay bất cứ máy chủ tìm kiếm nào khác.</li> 	<li style="text-align: justify;">Hệ thống có khả năng chống Spam bằng Captcha, chống lụt dữ liệu bằng nhiều hình thức như giới hạn thời gian gửi dữ liệu (sử dụng các công thức kép)...</li> 	<li style="text-align: justify;">Hệ thống cho phép theo dõi, ghi nhận các thông số của máy tính truy cập đến site như: Hệ điều hành, Trình duyệt, quốc gia, các liên kết đến site (referer) để từ đó có thể kịp thời ngăn ngừa các nguy cơ tấn công bằng các hình thức như: kiểm tra và chặn các máy tình dùng proxy, chặn IP truy cập...</li> 	<li style="text-align: justify;">hật ký hệ thống sẽ ghi nhận truy cập và thao tác tới cơ sở dữ liệu &amp; tệp tin, giúp người quản trị cũng như các thành viên dễ dàng phát hiện ra những đăng nhập bất hợp pháp từ lần đăng nhập trước đó.</li> 	<li style="text-align: justify;">Hệ thống có thể phát hiện các bản nâng cấp mới của phần mềm để nhắc nhở người sử dụng nâng cấp và sửa chữa các lỗi (nếu có)</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý CSDL</span></p>  <ul> 	<li style="text-align: justify;">NukeViet 4 cho phép quản lý CSDL, người sử dụng có thể tối ưu, sao lưu trên máy chủ và tải dữ liệu về để phục vụ cho công tác phục hồi nếu xảy ra sự cố.</li> 	<li style="text-align: justify;">Hỗ trợ mô hình CSDL theo mô hình master/slave để phân tải CSDL.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Kiểm soát lỗi tự động và báo lỗi thông minh</span></p>  <ul> 	<li style="text-align: justify;">NukeViet 4 có hệ thống kiểm soát lỗi tự động và báo lỗi cho người dùng.</li> 	<li style="text-align: justify;">Các lỗi (nếu có) sẽ được hệ thống kiểm soát có chủ đích, nó chỉ hiển thị lên màn hình người sử dụng ở lần đầu nó xuất hiện, sau đó hệ thống ghi nhận và báo về cho người quản trị qua email.</li> 	<li style="text-align: justify;">Quản trị có thể cấu hình việc bật tắt việc có ghi nhận lỗi hay không.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Tối ưu hóa cho công cụ tìm kiếm (SEO)</span></p>  <ul> 	<li style="text-align: justify;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ.</li> 	<li style="text-align: justify;">Cho phép đổi đường dẫn module</li> 	<li style="text-align: justify;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</li> 	<li style="text-align: justify;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</li> 	<li style="text-align: justify;">Hỗ trợ Meta OG của facebook</li> 	<li style="text-align: justify;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags<br  /> 	Hỗ trợ SEO link.</li> 	<li style="text-align: justify;">Quản lý và tùy biến tiêu đề site, description</li> 	<li style="text-align: justify;">Hỗ trợ quản lý các thẻ meta như: keywords, description</li> 	<li style="text-align: justify;">Hỗ trợ sử dụng keywords để phát sinh trang thống kê một cách tự động nhờ công cụ tìm kiếm.</li> 	<li style="text-align: justify;">Hỗ trợ quản lý máy chủ tìm kiếm.</li> 	<li style="text-align: justify;">Hỗ trợ quản lý cấu hình robots.txt</li> 	<li style="text-align: justify;">Hỗ trợ chuẩn đoán site (site Diagnostic).</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Sẵn sàng cho việc tích hợp các ứng dụng của bên thứ 3</span><br  /> NukeViet 3.4 sử dụng Cơ sở dữ liệu thành viên độc lập và xây dựng sẵn các phương thức kết nối với các ứng dụng Forum. Cơ sở dữ liệu thành viên độc lập giúp việc quản lý thành viên được chủ động, khi có nhu cầu kết nối hoặc trao quyền quản lý cho các ứng dụng từ bên thứ 3, NukeViet 3.4 vẫn hoàn toàn chủ động với dữ liệu thành viên của mình. Với NukeViet 3.4, các kết nối trực tiếp dành cho Forum như PHPBB hay VBB đều sẵn sàng.<br  /> <br  /> <span style="font-weight: bold;">Hỗ trợ Đăng nhập phân tán</span><br  /> NukeViet hỗ trợ thư viện OAuth , cho phép người truy cập có thể đăng nhập phân tán từ các hệ thống như FaceBook và Google hay các hệ thống OpenID khác giúp các website mới xây dựng có cơ hội thu hút lượng người sử dụng khổng lồ từ các hệ thống lớn.<br  /> Trong mọi trường hợp, hệ thống cho phép admin kiểm duyệt việc login OAuth. Tùy nhu cầu sử dụng mà có thể thiết đặt mức độ login cao nhất (tự động) tới mức độ vẫn phải đăng ký thành viên (bớt bước kích hoạt qua email). Người sử dụng cũng có thể quản lý nhiều tài khoản OAuth để từ đó có thể đăng nhập bằng tài khoản bất kỳ (nếu hệ thống cho phép).</p>  <p style="text-align: justify;"><strong>Trình soạn thảo tích hợp sẵn:</strong></p>  <p style="text-align: justify;">Tại những vị trí phù hợp, NukeViet tích hợp sẵn trình soạn thảo CKeditor giúp người sử dụng dễ dàng biên tập nội dung trên giao diện trực quan và thân thiện như làm việc với phần mềm Microsoft Word hay OpenOffice. Hiện tại NukeViet 4 cũng đã mở sẵn để tích hợp các trình soạn thảo khác.</p>  <p style="text-align: justify;"><span style="font-weight: bold;">Các tiện ích khác</span><br  /> Hệ thống cho phép gửi mail bằng các phương thức: SMTP, Linux Mail, PHPmail.<br  /> Cho phép sử dụng phương thức FTP để ghi file nếu máy chủ không cho phép làm điều đó bằng PHP<br  /> Cho phép xây dựng và quản lý các tác vụ xử lý tự động như tự động sao lưu CSDL, tự động xóa các dữ liệu cũ hoặc gửi báo lỗi tới người quản trị...<br  /> Cung cấp đầy đủ các thông tin về hệ thống giúp nhà phát triển dễ dàng sử dụng các thông tin này phục vụ cho việc lập trình, kiểm tra và báo lỗi hệ thống.<br  /> <br  /> <span style="font-size: 150%; line-height: 116%;"><span style="font-weight: bold;">Các module tích hợp sẵn trong NukeViet CMS 4:</span></span><br  /> <span style="font-weight: bold;">Quản lý Upload</span></p>  <ul> 	<li style="text-align: justify;">Upload hình (ảnh, flash) từ máy tính hoặc một địa chỉ bất kỳ trên mạng.</li> 	<li style="text-align: justify;">Quản lý: Di chuyển, đổi tên, sửa, xóa, tạo hình thu nhỏ...</li> 	<li style="text-align: justify;">Hỗ trợ tìm kiểm các file và mô tả các file được upload lên trong khu vực quản trị.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản trị và xuất bản Tin tức:</span> (cho phép tạo module ảo)<br  /> Hệ thống tin tức của NukeViet là hệ thống quản trị tin tức chuyên nghiệp đặc biệt phù hợp với các website tin tức. Nó cho phép xử lý nhiều tác vụ nền thông minh mà không cần người sử dụng can thiệp nhằm tối ưu cho hệ thống tin tức, Ví dụ: tạo hình thu nhỏ, tự động chia thư mục và sắp xếp hình vào các thư mục theo thời gian...</p>  <ul> 	<li style="text-align: justify;">Quản lý chủ đề đa cấp trong đó bản tin có thể nằm ở 1 hoặc nhiều chủ đề không phụ thuộc quan hệ cha con giữa các chủ đề.</li> 	<li style="text-align: justify;">Phân quyền cho người quản lý module, đến từng chủ đề</li> 	<li style="text-align: justify;">Quản lý nhóm tin liên quan (phân luồn tin theo dòng đơn)</li> 	<li style="text-align: justify;">Quản lý block tin (nhóm tin đa luồng)</li> 	<li style="text-align: justify;">Quản lý Tags</li> 	<li style="text-align: justify;">Quản lý nguồn tin</li> 	<li style="text-align: justify;">Tùy chỉnh bố cục trang tin.</li> 	<li style="text-align: justify;">Gửi bài viết, hẹn giờ đăng và nhiều tùy chỉnh khác: cho phép gửi bản tin, in, lưu bản tin.</li> 	<li style="text-align: justify;">Cấp tin RSS</li> 	<li style="text-align: justify;">Công cụ tương tác với mạng xã&nbsp; hội.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Module Page:</span></p>  <ul> 	<li style="text-align: justify;">Module này thích hợp làm các bài viết không cần quản lý chủ đề, như các module ảo: giới thiệu, nội quy site ...</li> 	<li style="text-align: justify;">Hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</li> 	<li style="text-align: justify;">Hỗ trợ RSS</li> 	<li style="text-align: justify;">Cấu hình phương án hiển thị các bài viết trên trang chính.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý thành viên:</span></p>  <ul> 	<li style="text-align: justify;">Quản lý việc đăng nhập, đăng ký.</li> 	<li style="text-align: justify;">Quản lý phương thức đăng nhập: Qua openid hoặc đăng nhập trực tiếp.</li> 	<li style="text-align: justify;">Quản lý câu hỏi bảo mật.</li> 	<li style="text-align: justify;">Quản lý nội quy.</li> 	<li style="text-align: justify;">Quản lý thông tin thành viên.</li> 	<li style="text-align: justify;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha thông qua CAS.</li> 	<li style="text-align: justify;">Chức năng tùy biến trường dữ liệu thành viên</li> 	<li style="text-align: justify;">Chức năng phân quyền sử dụng module users</li> 	<li style="text-align: justify;">Cấu hình Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</li> 	<li style="text-align: justify;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý liên hệ gửi đến website</span></p>  <ul> 	<li style="text-align: justify;">Quản lý thông tin liên hệ trên site.</li> 	<li style="text-align: justify;">Quản lý các bộ phận tiếp nhận liên hệ.</li> 	<li style="text-align: justify;">Quản lý và trả lời các thư gửi tới. Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</li> 	<li style="text-align: justify;">Hệ thống nhận thông báo: đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó. Ví dụ: Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý thăm dò ý kiến:</span></p>  <ul> 	<li style="text-align: justify;">Tạo các thăm dò ý kiến</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Quản lý quảng cáo chuyên nghiệp:</span></p>  <ul> 	<li style="text-align: justify;">Quản lý khách hàng.</li> 	<li style="text-align: justify;">Quản lý các khu vực quảng cáo</li> 	<li style="text-align: justify;">Quản lý các nội dung quảng cáo.</li> 	<li style="text-align: justify;">Kết hợp với việc quản lý block. Các quản cáo có thể đặt vào các khu vực khác nhau, dễ dàng thay đổi theo nhu cầu của người dùng.</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Thống kê:</span> Thống kê theo năm, tháng, ngày, tuần, giờ.</p>  <ul> 	<li style="text-align: justify;">Theo liên kết đến site</li> 	<li style="text-align: justify;">Theo quốc gia</li> 	<li style="text-align: justify;">Theo trình duyệt</li> 	<li style="text-align: justify;">Theo hệ điều hành</li> 	<li style="text-align: justify;">Máy chủ tìm kiếm</li> </ul>  <p style="text-align: justify;"><span style="font-weight: bold;">Tìm kiếm</span></p>  <ul> 	<li style="text-align: justify;">Tìm kiếm chung toàn hệ thống</li> 	<li style="text-align: justify;">Tìm kiếm nâng cao từng khu vực</li> </ul>  <div style="text-align: justify;"><strong>Module menu:</strong></div>  <ul> 	<li style="text-align: justify;">Module này cung cấp để quản lý các menu tùy biên, có thể lấy liên kết từ nhiều mục khác nhau.</li> 	<li style="text-align: justify;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin.</li> 	<li style="text-align: justify;">Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</li> 	<li style="text-align: justify;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</li> </ul>  <p style="text-align: justify;"><strong>Quản lý Bình luận</strong></p>  <ul> 	<li style="text-align: justify;">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình, phân quyền.</li> 	<li style="text-align: justify;">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li> </ul>  <p style="text-align: justify;"><br  /> Trên đây là các tính năng chính của bộ nhân hệ thống NukeViet 4, để xem đầy đủ hơn các tính năng <strong><a href="http://wiki.nukeviet.vn/nukeviet4:feature">click vào đây</a></strong>. Với NukeViet, việc mở rộng thêm các tính năng là không hạn chế, đơn giản là cài thêm các module tương ứng hoặc xây dựng thêm các module đó cho NukeViet.</p>', '', 0, '4', '', 0, 5, 1, 1467124147, 1467124147, 1),
(6, 'Yêu cầu sử dụng NukeViet 4', 'Yeu-cau-su-dung-NukeViet-4', '', '', 0, '', '<h2 class="sectionedit2" id="moi_truong_may_chủ">1. Môi trường máy chủ</h2>  <div class="level2"> <p><strong>Yêu cầu bắt buộc</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Hệ điều hành: Unix (Linux, Ubuntu, Fedora …) hoặc Windows</div> 	</li> 	<li class="level1"> 	<div class="li">PHP: PHP 5.4 hoặc phiên bản mới nhất.</div> 	</li> 	<li class="level1"> 	<div class="li">MySQL: MySQL 5.5 hoặc phiên bản mới nhất</div> 	</li> </ul>  <p><strong>Tùy chọn bổ sung</strong></p>  <ul> 	<li class="level1"> 	<div class="li">Máy chủ Apache cần hỗ trợ mod mod_rewrite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ Nginx cấu hình các thông số rewite.</div> 	</li> 	<li class="level1"> 	<div class="li">Máy chủ IIS 7.0 hoặc IIS 7.5 cần cài thêm module rewrite</div> 	</li> 	<li class="level1"> 	<div class="li">Môi trường PHP mở rộng: Các thư viện PHP cần có: file_uploads, session, mbstring, curl, gd2, zlib, soap, php_zip.</div> 	</li> </ul>  <p><em class="u"><strong>Ghi chú:</strong></em></p>  <ul> 	<li class="level1"> 	<div class="li">Những yêu cầu trên không có nghĩa là NukeViet 4 không làm việc trên các hệ thống khác, điều quan trọng là cần thiết lập môi trường làm việc phù hợp.</div> 	</li> 	<li class="level1"> 	<div class="li">Với những website sử dụng hosting, NukeViet 4 làm việc tốt nhất trên các hosting Linux cài sẵn Apache 2.2, PHP 5, MySQL 5, DirectAdmin hoặc Cpanel.</div> 	</li> 	<li class="level1"> 	<div class="li">Với các website cần chịu tải cao, nên sử dụng Nginx, PHP7 (php-fpm). Tham khảo thêm mô hình <a class="urlextern" href="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao" rel="nofollow" target="_blank" title="http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao">http://wiki.nukeviet.vn/web_server:cai-dat-server-chi-tai-cao</a></div> 	</li> </ul> </div>  <div class="secedit editbutton_section editbutton_2">  <div class="no">&nbsp;</div>  </div>  <h2 class="sectionedit3" id="may_tinh_nguời_truy_cập">2. Máy tính người truy cập</h2>  <div class="level2"> <p>NukeViet 4 cho kết quả là chuẩn HTML5 và CSS 3, đây là định dạng chuẩn mà hầu hết các trình duyệt hiện nay đang hỗ trợ. Chính vì vậy các website làm trên nền NukeViet 4 có thể truy cập tốt trên các phiên bản mới nhất của trình duyệt FireFox, Internet Explorer 9, Google Chrome … Máy tính người truy cập chỉ cần cài một trong các trình duyệt này là có thể tương tác với NukeViet thông qua internet hoặc intranet.</p> </div>', '', 0, '4', '', 0, 6, 1, 1467124147, 1467124147, 1),
(7, 'Giới thiệu về Công ty cổ phần phát triển nguồn mở Việt Nam', 'gioi-thieu-ve-cong-ty-co-phan-phat-trien-nguon-mo-viet-nam', '', '', 0, '', '<p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam</strong> (VINADES.,JSC) là công ty mã nguồn mở đầu tiên của Việt Nam sở hữu riêng một mã nguồn mở nổi tiếng và đang được sử dụng ở hàng ngàn website lớn nhỏ trong mọi lĩnh vực. Wbsite đang hoạt động chính thức: <a href="http://vinades.vn/">http://vinades.vn/</a><br  /> <br  /> Ra đời từ hoạt động của tổ chức nguồn mở NukeViet (từ năm 2004) và chính thức được thành lập đầu 2010 tại Hà Nội, khi đó báo chí đã gọi VINADES.,JSC là <em><strong>&quot;Công ty mã nguồn mở đầu tiên tại Việt Nam&quot;</strong></em>.<br  /> <br  /> Ngay sau khi thành lập, VINADES.,JSC đã thành công trong việc xây dựng <strong><a href="http://nukeviet.vn/" target="_blank">NukeViet</a></strong> thành một <a href="http://nukeviet.vn/" target="_blank">mã nguồn mở</a> thuần Việt. Với khả năng mạnh mẽ, cùng các ưu điểm vượt trội về công nghệ, độ an toàn và bảo mật, NukeViet đã được hàng ngàn website lựa chọn sử dụng trong năm qua. Ngay khi ra mắt phiên bản mới năm 2010, NukeViet đã tạo nên hiệu ứng truyền thông chưa từng có trong lịch sử mã nguồn mở Việt Nam. Tiếp đó, năm 2011 Mã nguồn mở NukeViet đã giành giải thưởng Nhân tài đất Việt cho sản phẩm Công nghệ thông tin đã được ứng dụng rộng rãi.</p>  <div style="text-align: center;"> <div class="youtube-embed-wrapper" style="position:relative;padding-bottom:56.25%;padding-top:30px;height:0;overflow:hidden;"><iframe allowfullscreen="" frameborder="0" height="480" src="//www.youtube.com/embed/ZOhu2bLE-eA?rel=0&amp;autoplay=1" style="position: absolute;top: 0;left: 0;width: 100%;height: 100%;" width="640"></iframe></div> <br  /> <span style="font-size:12px;"><strong>Video clip trao giải Nhân tài đất Việt 2011.</strong><br  /> Sản phẩm &quot;Mã nguồn mở NukeViet&quot; đã nhận giải cao nhất (Giải ba, không có giải nhất, giải nhì) của Giải thưởng Nhân Tài Đất Việt 2011 ở lĩnh vực Công nghệ thông tin - Sản phẩm đã có ứng dụng rộng rãi.</span></div>  <p style="text-align: justify;"><br  /> Tự chuyên nghiệp hóa mình, thoát khỏi mô hình phát triển tự phát, công ty đã nỗ lực vươn mình ra thế giới và đang phấn đấu trở thành một trong những hiện tượng của thời &quot;dotcom&quot; ở Việt Nam.<br  /> <br  /> Để phục vụ hoạt động của công ty, công ty liên tục mở rộng và tuyển thêm nhân sự ở các vị trí: Lập trình viên, chuyên viên đồ họa, nhân viên kinh doanh... Hãy liên hệ ngay để gia nhập VINADES.,JSC và cùng chúng tôi trở thành một công ty phát triển nguồn mở thành công nhất Việt Nam.</p>  <p>Nếu bạn có nhu cầu triển khai các hệ thống <strong><a href="http://toasoandientu.vn" target="_blank">Tòa Soạn Điện Tử</a></strong>, <strong><a href="http://webnhanh.vn" target="_blank">phần mềm trực tuyến</a></strong>, <strong><a href="http://vinades.vn" target="_blank">thiết kế website</a></strong> theo yêu cầu hoặc dịch vụ có liên quan, hãy liên hệ công ty chuyên quản NukeViet theo thông tin dưới đây:</p>  <p><strong><span style="font-family: Tahoma; color: rgb(255, 69, 0); font-size: 14px;">CÔNG TY CỔ PHẦN PHÁT TRIỂN NGUỒN MỞ VIỆT NAM</span></strong><br  /> <strong>VIET NAM OPEN SOURCE DEVELOPMENT JOINT STOCK COMPANY</strong> (<strong>VINADES.,JSC</strong>)<br  /> Website: <a href="http://vinades.vn/">http://vinades.vn</a> | <a href="http://nukeviet.vn/">http://nukeviet.vn</a> | <a href="http://webnhanh.vn/">http://webnhanh.vn</a><br  /> Trụ sở: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /> - Tel: +84-4-85872007<br  /> - Fax: +84-4-35500914<br  /> - Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a></p>', 'giới thiệu,công ty,cổ phần,phát triển', 0, '4', '', 0, 7, 1, 1467124147, 1467124147, 1),
(8, 'Ủng hộ, hỗ trợ và tham gia phát triển NukeViet', 'ung-ho-ho-tro-va-tham-gia-phat-trien-nukeviet', '', '', 0, 'Nếu bạn yêu thích NukeViet, bạn có thể ủng hộ và hỗ trợ NukeViet bằng nhiều cách', '<h2>1. Ủng hộ bằng tiền mặt vào Quỹ tài trợ NukeViet</h2>\r\nQua tài khoản Paypal:\r\n\r\n<p style="text-align:center"><a href="https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&amp;hosted_button_id=5LUSNE2SV5RR2" target="_blank"><img alt="" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" /></a></p>\r\nChuyển khoản ngân hàng trực tiếp:\r\n\r\n<ul>\r\n	<li>Người đứng tên tài khoản:&nbsp;NGUYEN THE HUNG</li>\r\n	<li>Số tài khoản:&nbsp;0031000792053</li>\r\n	<li>Loại tài khoản: VND (Việt Nam Đồng)</li>\r\n	<li>Ngân hàng Vietcombank chi nhánh Hải Phòng.</li>\r\n	<li>Website:&nbsp;<a href="http://www.vietcombank.com.vn/">http://www.vietcombank.com.vn</a></li>\r\n</ul>\r\n\r\n<div class="alert alert-info">Lưu ý: Đây là tài khoản hợp lệ duy nhất mà NukeViet.VN sử dụng cho&nbsp;Quỹ tài trợ NukeViet.</div>\r\nThảo luận tại đây:&nbsp;<a href="http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592" target="_blank">http://forum.nukeviet.vn/viewtopic.php?f=3&amp;t=3592</a>\r\n\r\n<h2>2. Ủng hộ bằng cách sử dụng và phổ biến NukeViet đến nhiều người hơn</h2>\r\nCách đơn giản nhất để ủng hộ NukeViet phát triển là sử dụng NukeViet và giúp NukeViet phổ biến đến nhiều người hơn (ví dụ như giữ lại dòng chữ &quot;Powered by&nbsp;<a href="http://nukeviet.vn/" target="_blank">NukeViet</a>&quot; hoặc &quot;Sử dụng&nbsp;<a href="http://nukeviet.vn/" target="_blank">NukeViet</a>&quot; trên website của bạn, viết bài giới thiệu NukeViet đến mọi người).<br />\r\nNếu bạn có thời gian, bạn có thể tham gia&nbsp;<a href="http://forum.nukeviet.vn/" target="_blank">diễn đàn NukeViet</a>&nbsp;thường xuyên và giúp đỡ những người mới sử dụng NukeViet.\r\n\r\n<h2>3. Ủng hộ bằng cách tham gia phát triển NukeViet</h2>\r\n\r\n<h3>3.1. Phát triển module, giao diện cho NukeViet</h3>\r\nNếu bạn biết code, hãy tham gia viết module, block, theme cho NukeViet và đưa lên&nbsp;<a href="http://nukeviet.vn/vi/store/" target="_blank">NukeViet Store</a>&nbsp;để cung cấp cho cộng đồng. Bạn cũng có thể tham gia đội ngũ phát triển NukeViet.\r\n\r\n<h3>3.2. Tham gia phát triển nhân hệ thống</h3>\r\nToàn bộ code nhân hệ thống NukeViet đã được đưa lên GitHub.com (truy cập tắt:&nbsp;<a href="http://code.nukeviet.vn/" target="_blank">http://code.nukeviet.vn</a>), dù bạn là ai, cá nhân hay doanh nghiệp chỉ cần có một tài khoản tại GitHub và học cách sử dụng&nbsp;<a href="#git">git&nbsp;(1)</a>&nbsp;là bạn có thể tham gia phát triển code NukeViet. Tìm hiểu thêm về việc tham gia phát triển code nhân hệ thống NukeViet tại đây:&nbsp;<a href="http://wiki.nukeviet.vn/programming:github_rule" target="_blank">http://wiki.nukeviet.vn/programming:github_rule</a>\r\n\r\n<h3>3.3. Tham gia dịch thuật</h3>\r\nNếu bạn biết ngoại ngữ, hãy đăng ký tham gia đội ngũ dịch thuật tình nguyện tại&nbsp;<a href="http://translate.nukeviet.vn/" target="_blank">NukeViet Stranslate System</a>&nbsp;để dịch thuật NukeViet sang các ngôn ngữ khác, quảng bá NukeViet ra với thế giới.\r\n\r\n<h3>3.4. Tham gia viết tài liệu hướng dẫn sử dụng</h3>\r\nNếu bạn không biết code, không biết ngoại ngữ, bạn vẫn có thể tham gia đóng góp cho NukeViet bằng cách biên soạn tài liệu hướng dẫn người dùng NukeViet tại thư viện tài liệu mở của NukeViet ở địa chỉ&nbsp;<a href="http://wiki.nukeviet.vn/" target="_blank">http://wiki.nukeviet.vn</a>\r\n\r\n<hr  /> <a id="git" name="git">(1)</a>: Tìm hiểu về git:&nbsp;<a href="http://wiki.nukeviet.vn/programming:vcs:git" target="_blank">http://wiki.nukeviet.vn/programming:vcs:git</a>', 'ủng hộ,hỗ trợ,tham gia,phát triển', 0, '4', '', 0, 8, 1, 1467124147, 1467124147, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_about_config`
--

CREATE TABLE `nv4_vi_about_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_about_config`
--

INSERT INTO `nv4_vi_about_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_groups`
--

CREATE TABLE `nv4_vi_blocks_groups` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `theme` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` varchar(55) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `exp_time` int(11) DEFAULT '0',
  `active` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '1',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `all_func` tinyint(4) NOT NULL DEFAULT '0',
  `weight` int(11) NOT NULL DEFAULT '0',
  `config` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_groups`
--

INSERT INTO `nv4_vi_blocks_groups` (`bid`, `theme`, `module`, `file_name`, `title`, `link`, `template`, `position`, `exp_time`, `active`, `act`, `groups_view`, `all_func`, `weight`, `config`) VALUES
(1, 'default', 'news', 'module.block_newscenter.php', 'Tin mới nhất', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 1, 'a:10:{s:6:"numrow";i:6;s:11:"showtooltip";i:0;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:12:"length_title";i:0;s:15:"length_hometext";i:0;s:17:"length_othertitle";i:60;s:5:"width";i:500;s:6:"height";i:0;s:7:"nocatid";a:0:{}}'),
(3, 'default', 'news', 'global.block_category.php', 'Chủ đề', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 1, 'a:2:{s:5:"catid";i:0;s:12:"title_length";i:25;}'),
(4, 'default', 'theme', 'global.module_menu.php', 'Module Menu', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 0, 2, ''),
(5, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột trái', '', 'no_title', '[LEFT]', 0, '1', 1, '6', 1, 3, 'a:1:{s:12:"idplanbanner";i:2;}'),
(7, 'default', 'about', 'global.about.php', 'Giới thiệu', '', 'border', '[RIGHT]', 0, '1', 1, '6', 1, 1, ''),
(8, 'default', 'banners', 'global.banners.php', 'Quảng cáo cột phải', '', 'no_title', '[RIGHT]', 0, '1', 1, '6', 1, 2, 'a:1:{s:12:"idplanbanner";i:3;}'),
(9, 'default', 'voting', 'global.voting_random.php', 'Thăm dò ý kiến', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 3, ''),
(10, 'default', 'news', 'global.block_tophits.php', 'Tin xem nhiều', '', 'primary', '[RIGHT]', 0, '1', 1, '6', 1, 4, 'a:6:{s:10:"number_day";i:3650;s:6:"numrow";i:10;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";s:7:"nocatid";a:2:{i:0;i:10;i:1;i:11;}}'),
(12, 'default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, ''),
(15, 'default', 'users', 'global.user_button.php', 'Đăng nhập thành viên', '', 'no_title', '[PERSONALAREA]', 0, '1', 1, '6', 1, 1, ''),
(16, 'default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'no_title', '[FEATURED_PRODUCT]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.984515999999999;s:20:"company_mapcenterlng";d:105.795475;s:14:"company_maplat";d:20.984515999999999;s:14:"company_maplng";d:105.79547500000001;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:72:"+84-4-85872007&#91;+84485872007&#93;|+84-904762534&#91;+84904762534&#93;";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(17, 'default', 'menu', 'global.bootstrap.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(18, 'default', 'page', 'global.html.php', 'Contact Default', '', 'no_title', '[CONTACT_DEFAULT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:"htmlcontent";s:197:"<div><span style="color:rgb(255, 255, 255);"><span style="font-size:18px;"><span style="font-family:arial,helvetica,sans-serif;"><strong>HOTLINE - 09.14.41.65.67</strong></span></span></span></div>";}'),
(19, 'default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(20, 'default', 'page', 'global.html.php', 'global html', '', 'no_title', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:"htmlcontent";s:154:"<div style="text-align: center;"><div style="text-align:center"><img alt="logo" height="76" src="/xedap/uploads/users/logo.png" width="278" /></div></div>";}'),
(22, 'mobile_default', 'menu', 'global.metismenu.php', 'Menu Site', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 1, 'a:2:{s:6:"menuid";i:1;s:12:"title_length";i:0;}'),
(23, 'mobile_default', 'users', 'global.user_button.php', 'Sign In', '', 'no_title', '[MENU_SITE]', 0, '1', 1, '6', 1, 2, ''),
(24, 'mobile_default', 'contact', 'global.contact_default.php', 'Contact Default', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 1, ''),
(25, 'mobile_default', 'contact', 'global.contact_form.php', 'Feedback', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 2, ''),
(26, 'mobile_default', 'theme', 'global.social.php', 'Social icon', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 3, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(27, 'mobile_default', 'theme', 'global.QR_code.php', 'QR code', '', 'no_title', '[SOCIAL_ICONS]', 0, '1', 1, '6', 1, 4, 'a:3:{s:5:"level";s:1:"L";s:15:"pixel_per_point";i:4;s:11:"outer_frame";i:1;}'),
(28, 'mobile_default', 'theme', 'global.copyright.php', 'Copyright', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 1, 'a:5:{s:12:"copyright_by";s:0:"";s:13:"copyright_url";s:0:"";s:9:"design_by";s:12:"VINADES.,JSC";s:10:"design_url";s:18:"http://vinades.vn/";s:13:"siteterms_url";s:45:"/xedap/index.php?language=vi&amp;nv=siteterms";}'),
(29, 'mobile_default', 'theme', 'global.menu_footer.php', 'Các chuyên mục chính', '', 'primary', '[MENU_FOOTER]', 0, '1', 1, '6', 1, 1, 'a:1:{s:14:"module_in_menu";a:9:{i:0;s:5:"about";i:1;s:4:"news";i:2;s:5:"users";i:3;s:7:"contact";i:4;s:6:"voting";i:5;s:7:"banners";i:6;s:4:"seek";i:7;s:5:"feeds";i:8;s:9:"siteterms";}}'),
(30, 'mobile_default', 'theme', 'global.company_info.php', 'Công ty chủ quản', '', 'primary', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:17:{s:12:"company_name";s:58:"Công ty cổ phần phát triển nguồn mở Việt Nam";s:15:"company_address";s:72:"Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội";s:16:"company_sortname";s:12:"VINADES.,JSC";s:15:"company_regcode";s:0:"";s:16:"company_regplace";s:0:"";s:21:"company_licensenumber";s:0:"";s:22:"company_responsibility";s:0:"";s:15:"company_showmap";i:1;s:20:"company_mapcenterlat";d:20.984516000000013;s:20:"company_mapcenterlng";d:105.795475;s:14:"company_maplat";d:20.984515999999999;s:14:"company_maplng";d:105.79547500000001;s:15:"company_mapzoom";i:17;s:13:"company_phone";s:56:"+84-4-85872007[+84485872007]|+84-904762534[+84904762534]";s:11:"company_fax";s:14:"+84-4-35500914";s:13:"company_email";s:18:"contact@vinades.vn";s:15:"company_website";s:17:"http://vinades.vn";}'),
(48, 'default', 'slider', 'global.slider.php', 'global slider', '', 'no_title', '[SLIDE]', 0, '1', 1, '6', 0, 2, 'a:7:{s:8:"group_id";i:1;s:6:"numrow";i:5;s:8:"widthimg";i:600;s:9:"heightimg";i:200;s:11:"buttonstype";s:4:"none";s:8:"readmore";s:8:"readmore";s:8:"template";s:11:"nivo_slider";}'),
(46, 'default', 'page', 'global.html.php', 'global html', '', 'no_title', '[QC-LEFT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:"htmlcontent";s:177:"<div style="text-align: center;"><div style="text-align:center"><img alt="xe dien viet thanh" height="147" src="/xedap/uploads/xe-dien-viet-thanh.jpg" width="560" /></div></div>";}'),
(47, 'default', 'page', 'global.html.php', 'global html', '', 'no_title', '[QC-RIGHT]', 0, '1', 1, '6', 1, 1, 'a:1:{s:11:"htmlcontent";s:136:"<div style="text-align:center"><img alt="xe die tra gop" height="147" src="/xedap/uploads/xe-die-tra-gop.png" width="560" /></div>&nbsp;";}'),
(53, 'default', 'videos', 'global.block_news_cat.php', 'Video', '', 'video', '[VIDEO1]', 0, '1', 1, '6', 0, 1, 'a:5:{s:5:"catid";a:1:{i:0;s:1:"1";}s:6:"numrow";i:5;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(54, 'default', 'theme', 'global.social.php', 'global social', '', 'no_title', '[COMPANY_INFO]', 0, '1', 1, '6', 1, 1, 'a:4:{s:8:"facebook";s:32:"http://www.facebook.com/nukeviet";s:11:"google_plus";s:32:"https://www.google.com/+nukeviet";s:7:"youtube";s:37:"https://www.youtube.com/user/nukeviet";s:7:"twitter";s:28:"https://twitter.com/nukeviet";}'),
(56, 'default', 'shops', 'global.block_bxproduct_center.php', 'sản phẩm hot', '', 'no_title', '[TOP]', 0, '1', 1, '6', 0, 2, 'a:10:{s:7:"blockid";i:1;s:6:"numrow";i:5;s:6:"numget";i:30;s:4:"auto";i:1;s:4:"mode";s:10:"horizontal";s:5:"speed";i:500;s:5:"width";i:360;s:6:"margin";i:10;s:4:"move";i:1;s:5:"pager";i:1;}'),
(57, 'default', 'news', 'global.block_news_cat.php', 'tin mới', '', 'video', '[VIDEO2]', 0, '1', 1, '6', 0, 1, 'a:5:{s:5:"catid";a:1:{i:0;s:1:"1";}s:6:"numrow";i:4;s:11:"showtooltip";i:1;s:16:"tooltip_position";s:6:"bottom";s:14:"tooltip_length";s:3:"150";}'),
(58, 'default', 'news', 'global.block_new_comment.php', 'bình luận mới', '', 'video', '[VIDEO3]', 0, '1', 1, '6', 0, 1, 'a:2:{s:11:"titlelength";i:0;s:6:"numrow";i:15;}'),
(59, 'default', 'news', 'global.block_news_new.php', 'Thị trường xe đạp', '', 'video', '[KHACHHANG]', 0, '1', 1, '6', 0, 1, 'a:3:{s:6:"numrow";i:10;s:12:"title_length";i:50;s:15:"hometext_length";i:50;}'),
(60, 'default', 'statistics', 'global.counter.php', 'global counter', '', 'no_title', '[FOOTER_SITE]', 0, '1', 1, '6', 1, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_blocks_weight`
--

CREATE TABLE `nv4_vi_blocks_weight` (
  `bid` mediumint(8) NOT NULL DEFAULT '0',
  `func_id` mediumint(8) NOT NULL DEFAULT '0',
  `weight` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_blocks_weight`
--

INSERT INTO `nv4_vi_blocks_weight` (`bid`, `func_id`, `weight`) VALUES
(16, 1, 1),
(16, 37, 1),
(16, 38, 1),
(16, 39, 1),
(16, 40, 1),
(16, 46, 1),
(16, 47, 1),
(16, 48, 1),
(16, 49, 1),
(16, 56, 1),
(16, 59, 1),
(16, 4, 1),
(16, 5, 1),
(16, 6, 1),
(16, 7, 1),
(16, 8, 1),
(16, 9, 1),
(16, 10, 1),
(16, 11, 1),
(16, 12, 1),
(16, 50, 1),
(16, 58, 1),
(16, 53, 1),
(16, 54, 1),
(16, 30, 1),
(16, 31, 1),
(16, 32, 1),
(16, 33, 1),
(16, 34, 1),
(16, 35, 1),
(16, 36, 1),
(16, 18, 1),
(16, 19, 1),
(16, 20, 1),
(16, 21, 1),
(16, 22, 1),
(16, 23, 1),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(16, 27, 1),
(16, 28, 1),
(16, 57, 1),
(18, 1, 1),
(18, 37, 1),
(18, 38, 1),
(18, 39, 1),
(18, 40, 1),
(18, 46, 1),
(18, 47, 1),
(18, 48, 1),
(18, 49, 1),
(18, 56, 1),
(18, 59, 1),
(18, 4, 1),
(18, 5, 1),
(18, 6, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 10, 1),
(18, 11, 1),
(18, 12, 1),
(18, 50, 1),
(18, 58, 1),
(18, 53, 1),
(18, 54, 1),
(18, 30, 1),
(18, 31, 1),
(18, 32, 1),
(18, 33, 1),
(18, 34, 1),
(18, 35, 1),
(18, 36, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 26, 1),
(18, 27, 1),
(18, 28, 1),
(18, 57, 1),
(12, 1, 1),
(12, 37, 1),
(12, 38, 1),
(12, 39, 1),
(12, 40, 1),
(12, 46, 1),
(12, 47, 1),
(12, 48, 1),
(12, 49, 1),
(12, 56, 1),
(12, 59, 1),
(12, 4, 1),
(12, 5, 1),
(12, 6, 1),
(12, 7, 1),
(12, 8, 1),
(12, 9, 1),
(12, 10, 1),
(12, 11, 1),
(12, 12, 1),
(12, 50, 1),
(12, 58, 1),
(12, 53, 1),
(12, 54, 1),
(12, 30, 1),
(12, 31, 1),
(12, 32, 1),
(12, 33, 1),
(12, 34, 1),
(12, 35, 1),
(12, 36, 1),
(12, 18, 1),
(12, 19, 1),
(12, 20, 1),
(12, 21, 1),
(12, 22, 1),
(12, 23, 1),
(12, 24, 1),
(12, 25, 1),
(12, 26, 1),
(12, 27, 1),
(12, 28, 1),
(12, 57, 1),
(3, 4, 1),
(3, 5, 1),
(3, 6, 1),
(3, 7, 1),
(3, 8, 1),
(3, 9, 1),
(3, 10, 1),
(3, 11, 1),
(3, 12, 1),
(4, 18, 1),
(4, 19, 1),
(4, 20, 1),
(4, 21, 1),
(4, 22, 1),
(4, 23, 1),
(4, 24, 1),
(4, 25, 1),
(4, 26, 1),
(4, 27, 1),
(4, 30, 1),
(4, 31, 1),
(4, 32, 1),
(4, 33, 1),
(4, 34, 1),
(4, 35, 1),
(4, 36, 1),
(5, 1, 1),
(5, 37, 1),
(5, 38, 1),
(5, 39, 1),
(5, 40, 1),
(5, 46, 1),
(5, 47, 1),
(5, 48, 1),
(5, 49, 1),
(5, 56, 1),
(5, 59, 1),
(5, 4, 2),
(5, 5, 2),
(5, 6, 2),
(5, 7, 2),
(5, 8, 2),
(5, 9, 2),
(5, 10, 2),
(5, 11, 2),
(5, 12, 2),
(5, 50, 1),
(5, 58, 1),
(5, 53, 1),
(5, 54, 1),
(5, 30, 2),
(5, 31, 2),
(5, 32, 2),
(5, 33, 2),
(5, 34, 2),
(5, 35, 2),
(5, 36, 2),
(5, 18, 2),
(5, 19, 2),
(5, 20, 2),
(5, 21, 2),
(5, 22, 2),
(5, 23, 2),
(5, 24, 2),
(5, 25, 2),
(5, 26, 2),
(5, 27, 2),
(5, 28, 1),
(5, 57, 1),
(20, 1, 1),
(20, 37, 1),
(20, 38, 1),
(20, 39, 1),
(20, 40, 1),
(20, 46, 1),
(20, 47, 1),
(20, 48, 1),
(20, 49, 1),
(20, 56, 1),
(20, 59, 1),
(20, 4, 1),
(20, 5, 1),
(20, 6, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 10, 1),
(20, 11, 1),
(20, 12, 1),
(20, 50, 1),
(20, 58, 1),
(20, 53, 1),
(20, 54, 1),
(20, 30, 1),
(20, 31, 1),
(20, 32, 1),
(20, 33, 1),
(20, 34, 1),
(20, 35, 1),
(20, 36, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 26, 1),
(20, 27, 1),
(20, 28, 1),
(20, 57, 1),
(17, 1, 1),
(17, 37, 1),
(17, 38, 1),
(17, 39, 1),
(17, 40, 1),
(17, 46, 1),
(17, 47, 1),
(17, 48, 1),
(17, 49, 1),
(17, 56, 1),
(17, 59, 1),
(17, 4, 1),
(17, 5, 1),
(17, 6, 1),
(17, 7, 1),
(17, 8, 1),
(17, 9, 1),
(17, 10, 1),
(17, 11, 1),
(17, 12, 1),
(17, 50, 1),
(17, 58, 1),
(17, 53, 1),
(17, 54, 1),
(17, 30, 1),
(17, 31, 1),
(17, 32, 1),
(17, 33, 1),
(17, 34, 1),
(17, 35, 1),
(17, 36, 1),
(17, 18, 1),
(17, 19, 1),
(17, 20, 1),
(17, 21, 1),
(17, 22, 1),
(17, 23, 1),
(17, 24, 1),
(17, 25, 1),
(17, 26, 1),
(17, 27, 1),
(17, 28, 1),
(17, 57, 1),
(15, 1, 1),
(15, 37, 1),
(15, 38, 1),
(15, 39, 1),
(15, 40, 1),
(15, 46, 1),
(15, 47, 1),
(15, 48, 1),
(15, 49, 1),
(15, 56, 1),
(15, 59, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 10, 1),
(15, 11, 1),
(15, 12, 1),
(15, 50, 1),
(15, 58, 1),
(15, 53, 1),
(15, 54, 1),
(15, 30, 1),
(15, 31, 1),
(15, 32, 1),
(15, 33, 1),
(15, 34, 1),
(15, 35, 1),
(15, 36, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(15, 27, 1),
(15, 28, 1),
(15, 57, 1),
(7, 1, 1),
(7, 37, 1),
(7, 38, 1),
(7, 39, 1),
(7, 40, 1),
(7, 46, 1),
(7, 47, 1),
(7, 48, 1),
(7, 49, 1),
(7, 56, 1),
(7, 59, 1),
(7, 4, 1),
(7, 5, 1),
(7, 6, 1),
(7, 7, 1),
(7, 8, 1),
(7, 9, 1),
(7, 10, 1),
(7, 11, 1),
(7, 12, 1),
(7, 50, 1),
(7, 58, 1),
(7, 53, 1),
(7, 54, 1),
(7, 30, 1),
(7, 31, 1),
(7, 32, 1),
(7, 33, 1),
(7, 34, 1),
(7, 35, 1),
(7, 36, 1),
(7, 18, 1),
(7, 19, 1),
(7, 20, 1),
(7, 21, 1),
(7, 22, 1),
(7, 23, 1),
(7, 24, 1),
(7, 25, 1),
(7, 26, 1),
(7, 27, 1),
(7, 28, 1),
(7, 57, 1),
(8, 1, 2),
(8, 37, 2),
(8, 38, 2),
(8, 39, 2),
(8, 40, 2),
(8, 46, 2),
(8, 47, 2),
(8, 48, 2),
(8, 49, 2),
(8, 56, 2),
(8, 59, 2),
(8, 4, 2),
(8, 5, 2),
(8, 6, 2),
(8, 7, 2),
(8, 8, 2),
(8, 9, 2),
(8, 10, 2),
(8, 11, 2),
(8, 12, 2),
(8, 50, 2),
(8, 58, 2),
(8, 53, 2),
(8, 54, 2),
(8, 30, 2),
(8, 31, 2),
(8, 32, 2),
(8, 33, 2),
(8, 34, 2),
(8, 35, 2),
(8, 36, 2),
(8, 18, 2),
(8, 19, 2),
(8, 20, 2),
(8, 21, 2),
(8, 22, 2),
(8, 23, 2),
(8, 24, 2),
(8, 25, 2),
(8, 26, 2),
(8, 27, 2),
(8, 28, 2),
(8, 57, 2),
(9, 1, 3),
(9, 37, 3),
(9, 38, 3),
(9, 39, 3),
(9, 40, 3),
(9, 46, 3),
(9, 47, 3),
(9, 48, 3),
(9, 49, 3),
(9, 56, 3),
(9, 59, 3),
(9, 4, 3),
(9, 5, 3),
(9, 6, 3),
(9, 7, 3),
(9, 8, 3),
(9, 9, 3),
(9, 10, 3),
(9, 11, 3),
(9, 12, 3),
(9, 50, 3),
(9, 58, 3),
(9, 53, 3),
(9, 54, 3),
(9, 30, 3),
(9, 31, 3),
(9, 32, 3),
(9, 33, 3),
(9, 34, 3),
(9, 35, 3),
(9, 36, 3),
(9, 18, 3),
(9, 19, 3),
(9, 20, 3),
(9, 21, 3),
(9, 22, 3),
(9, 23, 3),
(9, 24, 3),
(9, 25, 3),
(9, 26, 3),
(9, 27, 3),
(9, 28, 3),
(9, 57, 3),
(10, 1, 4),
(10, 37, 4),
(10, 38, 4),
(10, 39, 4),
(10, 40, 4),
(10, 46, 4),
(10, 47, 4),
(10, 48, 4),
(10, 49, 4),
(10, 56, 4),
(10, 59, 4),
(10, 4, 4),
(10, 5, 4),
(10, 6, 4),
(10, 7, 4),
(10, 8, 4),
(10, 9, 4),
(10, 10, 4),
(10, 11, 4),
(10, 12, 4),
(10, 50, 4),
(10, 58, 4),
(10, 53, 4),
(10, 54, 4),
(10, 30, 4),
(10, 31, 4),
(10, 32, 4),
(10, 33, 4),
(10, 34, 4),
(10, 35, 4),
(10, 36, 4),
(10, 18, 4),
(10, 19, 4),
(10, 20, 4),
(10, 21, 4),
(10, 22, 4),
(10, 23, 4),
(10, 24, 4),
(10, 25, 4),
(10, 26, 4),
(10, 27, 4),
(10, 28, 4),
(10, 57, 4),
(19, 1, 1),
(19, 37, 1),
(19, 38, 1),
(19, 39, 1),
(19, 40, 1),
(19, 46, 1),
(19, 47, 1),
(19, 48, 1),
(19, 49, 1),
(19, 56, 1),
(19, 59, 1),
(19, 4, 1),
(19, 5, 1),
(19, 6, 1),
(19, 7, 1),
(19, 8, 1),
(19, 9, 1),
(19, 10, 1),
(19, 11, 1),
(19, 12, 1),
(19, 50, 1),
(19, 58, 1),
(19, 53, 1),
(19, 54, 1),
(19, 30, 1),
(19, 31, 1),
(19, 32, 1),
(19, 33, 1),
(19, 34, 1),
(19, 35, 1),
(19, 36, 1),
(19, 18, 1),
(19, 19, 1),
(19, 20, 1),
(19, 21, 1),
(19, 22, 1),
(19, 23, 1),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(19, 27, 1),
(19, 28, 1),
(19, 57, 1),
(1, 4, 1),
(30, 1, 1),
(30, 37, 1),
(30, 38, 1),
(30, 39, 1),
(30, 40, 1),
(30, 46, 1),
(30, 47, 1),
(30, 48, 1),
(30, 49, 1),
(30, 56, 1),
(30, 59, 1),
(30, 4, 1),
(30, 5, 1),
(30, 6, 1),
(30, 7, 1),
(30, 8, 1),
(30, 9, 1),
(30, 10, 1),
(30, 11, 1),
(30, 12, 1),
(30, 50, 1),
(30, 58, 1),
(30, 53, 1),
(30, 54, 1),
(30, 30, 1),
(30, 31, 1),
(30, 32, 1),
(30, 33, 1),
(30, 34, 1),
(30, 35, 1),
(30, 36, 1),
(30, 18, 1),
(30, 19, 1),
(30, 20, 1),
(30, 21, 1),
(30, 22, 1),
(30, 23, 1),
(30, 24, 1),
(30, 25, 1),
(30, 26, 1),
(30, 27, 1),
(30, 28, 1),
(30, 57, 1),
(28, 1, 1),
(28, 37, 1),
(28, 38, 1),
(28, 39, 1),
(28, 40, 1),
(28, 46, 1),
(28, 47, 1),
(28, 48, 1),
(28, 49, 1),
(28, 56, 1),
(28, 59, 1),
(28, 4, 1),
(28, 5, 1),
(28, 6, 1),
(28, 7, 1),
(28, 8, 1),
(28, 9, 1),
(28, 10, 1),
(28, 11, 1),
(28, 12, 1),
(28, 50, 1),
(28, 58, 1),
(28, 53, 1),
(28, 54, 1),
(28, 30, 1),
(28, 31, 1),
(28, 32, 1),
(28, 33, 1),
(28, 34, 1),
(28, 35, 1),
(28, 36, 1),
(28, 18, 1),
(28, 19, 1),
(28, 20, 1),
(28, 21, 1),
(28, 22, 1),
(28, 23, 1),
(28, 24, 1),
(28, 25, 1),
(28, 26, 1),
(28, 27, 1),
(28, 28, 1),
(28, 57, 1),
(29, 1, 1),
(29, 37, 1),
(29, 38, 1),
(29, 39, 1),
(29, 40, 1),
(29, 46, 1),
(29, 47, 1),
(29, 48, 1),
(29, 49, 1),
(29, 56, 1),
(29, 59, 1),
(29, 4, 1),
(29, 5, 1),
(29, 6, 1),
(29, 7, 1),
(29, 8, 1),
(29, 9, 1),
(29, 10, 1),
(29, 11, 1),
(29, 12, 1),
(29, 50, 1),
(29, 58, 1),
(29, 53, 1),
(29, 54, 1),
(29, 30, 1),
(29, 31, 1),
(29, 32, 1),
(29, 33, 1),
(29, 34, 1),
(29, 35, 1),
(29, 36, 1),
(29, 18, 1),
(29, 19, 1),
(29, 20, 1),
(29, 21, 1),
(29, 22, 1),
(29, 23, 1),
(29, 24, 1),
(29, 25, 1),
(29, 26, 1),
(29, 27, 1),
(29, 28, 1),
(29, 57, 1),
(22, 1, 1),
(22, 37, 1),
(22, 38, 1),
(22, 39, 1),
(22, 40, 1),
(22, 46, 1),
(22, 47, 1),
(22, 48, 1),
(22, 49, 1),
(22, 56, 1),
(22, 59, 1),
(22, 4, 1),
(22, 5, 1),
(22, 6, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 10, 1),
(22, 11, 1),
(22, 12, 1),
(22, 50, 1),
(22, 58, 1),
(22, 53, 1),
(22, 54, 1),
(22, 30, 1),
(22, 31, 1),
(22, 32, 1),
(22, 33, 1),
(22, 34, 1),
(22, 35, 1),
(22, 36, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 26, 1),
(22, 27, 1),
(22, 28, 1),
(22, 57, 1),
(23, 1, 2),
(23, 37, 2),
(23, 38, 2),
(23, 39, 2),
(23, 40, 2),
(23, 46, 2),
(23, 47, 2),
(23, 48, 2),
(23, 49, 2),
(23, 56, 2),
(23, 59, 2),
(23, 4, 2),
(23, 5, 2),
(23, 6, 2),
(23, 7, 2),
(23, 8, 2),
(23, 9, 2),
(23, 10, 2),
(23, 11, 2),
(23, 12, 2),
(23, 50, 2),
(23, 58, 2),
(23, 53, 2),
(23, 54, 2),
(23, 30, 2),
(23, 31, 2),
(23, 32, 2),
(23, 33, 2),
(23, 34, 2),
(23, 35, 2),
(23, 36, 2),
(23, 18, 2),
(23, 19, 2),
(23, 20, 2),
(23, 21, 2),
(23, 22, 2),
(23, 23, 2),
(23, 24, 2),
(23, 25, 2),
(23, 26, 2),
(23, 27, 2),
(23, 28, 2),
(23, 57, 2),
(24, 1, 1),
(24, 37, 1),
(24, 38, 1),
(24, 39, 1),
(24, 40, 1),
(24, 46, 1),
(24, 47, 1),
(24, 48, 1),
(24, 49, 1),
(24, 56, 1),
(24, 59, 1),
(24, 4, 1),
(24, 5, 1),
(24, 6, 1),
(24, 7, 1),
(24, 8, 1),
(24, 9, 1),
(24, 10, 1),
(24, 11, 1),
(24, 12, 1),
(24, 50, 1),
(24, 58, 1),
(24, 53, 1),
(24, 54, 1),
(24, 30, 1),
(24, 31, 1),
(24, 32, 1),
(24, 33, 1),
(24, 34, 1),
(24, 35, 1),
(24, 36, 1),
(24, 18, 1),
(24, 19, 1),
(24, 20, 1),
(24, 21, 1),
(24, 22, 1),
(24, 23, 1),
(24, 24, 1),
(24, 25, 1),
(24, 26, 1),
(24, 27, 1),
(24, 28, 1),
(24, 57, 1),
(25, 1, 2),
(25, 37, 2),
(25, 38, 2),
(25, 39, 2),
(25, 40, 2),
(25, 46, 2),
(25, 47, 2),
(25, 48, 2),
(25, 49, 2),
(25, 56, 2),
(25, 59, 2),
(25, 4, 2),
(25, 5, 2),
(25, 6, 2),
(25, 7, 2),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 2),
(25, 12, 2),
(25, 50, 2),
(25, 58, 2),
(25, 53, 2),
(25, 54, 2),
(25, 30, 2),
(25, 31, 2),
(25, 32, 2),
(25, 33, 2),
(25, 34, 2),
(25, 35, 2),
(25, 36, 2),
(25, 18, 2),
(25, 19, 2),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 2),
(25, 24, 2),
(25, 25, 2),
(25, 26, 2),
(25, 27, 2),
(25, 28, 2),
(25, 57, 2),
(26, 1, 3),
(26, 37, 3),
(26, 38, 3),
(26, 39, 3),
(26, 40, 3),
(26, 46, 3),
(26, 47, 3),
(26, 48, 3),
(26, 49, 3),
(26, 56, 3),
(26, 59, 3),
(26, 4, 3),
(26, 5, 3),
(26, 6, 3),
(26, 7, 3),
(26, 8, 3),
(26, 9, 3),
(26, 10, 3),
(26, 11, 3),
(26, 12, 3),
(26, 50, 3),
(26, 58, 3),
(26, 53, 3),
(26, 54, 3),
(26, 30, 3),
(26, 31, 3),
(26, 32, 3),
(26, 33, 3),
(26, 34, 3),
(26, 35, 3),
(26, 36, 3),
(26, 18, 3),
(26, 19, 3),
(26, 20, 3),
(26, 21, 3),
(26, 22, 3),
(26, 23, 3),
(26, 24, 3),
(26, 25, 3),
(26, 26, 3),
(26, 27, 3),
(26, 28, 3),
(26, 57, 3),
(27, 1, 4),
(27, 37, 4),
(27, 38, 4),
(27, 39, 4),
(27, 40, 4),
(27, 46, 4),
(27, 47, 4),
(27, 48, 4),
(27, 49, 4),
(27, 56, 4),
(27, 59, 4),
(27, 4, 4),
(27, 5, 4),
(27, 6, 4),
(27, 7, 4),
(27, 8, 4),
(27, 9, 4),
(27, 10, 4),
(27, 11, 4),
(27, 12, 4),
(27, 50, 4),
(27, 58, 4),
(27, 53, 4),
(27, 54, 4),
(27, 30, 4),
(27, 31, 4),
(27, 32, 4),
(27, 33, 4),
(27, 34, 4),
(27, 35, 4),
(27, 36, 4),
(27, 18, 4),
(27, 19, 4),
(27, 20, 4),
(27, 21, 4),
(27, 22, 4),
(27, 23, 4),
(27, 24, 4),
(27, 25, 4),
(27, 26, 4),
(27, 27, 4),
(27, 28, 4),
(27, 57, 4),
(18, 71, 1),
(18, 87, 1),
(18, 66, 1),
(18, 80, 1),
(18, 61, 1),
(18, 72, 1),
(18, 73, 1),
(18, 64, 1),
(18, 69, 1),
(18, 68, 1),
(18, 81, 1),
(18, 63, 1),
(18, 88, 1),
(18, 86, 1),
(18, 74, 1),
(18, 84, 1),
(18, 67, 1),
(18, 60, 1),
(12, 71, 1),
(12, 87, 1),
(12, 66, 1),
(12, 80, 1),
(12, 61, 1),
(12, 72, 1),
(12, 73, 1),
(12, 64, 1),
(12, 69, 1),
(12, 68, 1),
(12, 81, 1),
(12, 63, 1),
(12, 88, 1),
(12, 86, 1),
(12, 74, 1),
(12, 84, 1),
(12, 67, 1),
(12, 60, 1),
(5, 71, 1),
(5, 87, 1),
(5, 66, 1),
(5, 80, 1),
(5, 61, 1),
(5, 72, 1),
(5, 73, 1),
(5, 64, 1),
(5, 69, 1),
(5, 68, 1),
(5, 81, 1),
(5, 63, 1),
(5, 88, 1),
(5, 86, 1),
(5, 74, 1),
(5, 84, 1),
(5, 67, 1),
(5, 60, 1),
(17, 71, 1),
(17, 87, 1),
(17, 66, 1),
(17, 80, 1),
(17, 61, 1),
(17, 72, 1),
(17, 73, 1),
(17, 64, 1),
(17, 69, 1),
(17, 68, 1),
(17, 81, 1),
(17, 63, 1),
(17, 88, 1),
(17, 86, 1),
(17, 74, 1),
(17, 84, 1),
(17, 67, 1),
(17, 60, 1),
(15, 71, 1),
(15, 87, 1),
(15, 66, 1),
(15, 80, 1),
(15, 61, 1),
(15, 72, 1),
(15, 73, 1),
(15, 64, 1),
(15, 69, 1),
(15, 68, 1),
(15, 81, 1),
(15, 63, 1),
(15, 88, 1),
(15, 86, 1),
(15, 74, 1),
(15, 84, 1),
(15, 67, 1),
(15, 60, 1),
(7, 71, 1),
(7, 87, 1),
(7, 66, 1),
(7, 80, 1),
(7, 61, 1),
(7, 72, 1),
(7, 73, 1),
(7, 64, 1),
(7, 69, 1),
(7, 68, 1),
(7, 81, 1),
(7, 63, 1),
(7, 88, 1),
(7, 86, 1),
(7, 74, 1),
(7, 84, 1),
(7, 67, 1),
(7, 60, 1),
(8, 71, 2),
(8, 87, 2),
(8, 66, 2),
(8, 80, 2),
(8, 61, 2),
(8, 72, 2),
(8, 73, 2),
(8, 64, 2),
(8, 69, 2),
(8, 68, 2),
(8, 81, 2),
(8, 63, 2),
(8, 88, 2),
(8, 86, 2),
(8, 74, 2),
(8, 84, 2),
(8, 67, 2),
(8, 60, 2),
(9, 71, 3),
(9, 87, 3),
(9, 66, 3),
(9, 80, 3),
(9, 61, 3),
(9, 72, 3),
(9, 73, 3),
(9, 64, 3),
(9, 69, 3),
(9, 68, 3),
(9, 81, 3),
(9, 63, 3),
(9, 88, 3),
(9, 86, 3),
(9, 74, 3),
(9, 84, 3),
(9, 67, 3),
(9, 60, 3),
(10, 71, 4),
(10, 87, 4),
(10, 66, 4),
(10, 80, 4),
(10, 61, 4),
(10, 72, 4),
(10, 73, 4),
(10, 64, 4),
(10, 69, 4),
(10, 68, 4),
(10, 81, 4),
(10, 63, 4),
(10, 88, 4),
(10, 86, 4),
(10, 74, 4),
(10, 84, 4),
(10, 67, 4),
(10, 60, 4),
(19, 71, 1),
(19, 87, 1),
(19, 66, 1),
(19, 80, 1),
(19, 61, 1),
(19, 72, 1),
(19, 73, 1),
(19, 64, 1),
(19, 69, 1),
(19, 68, 1),
(19, 81, 1),
(19, 63, 1),
(19, 88, 1),
(19, 86, 1),
(19, 74, 1),
(19, 84, 1),
(19, 67, 1),
(19, 60, 1),
(30, 71, 1),
(30, 87, 1),
(30, 66, 1),
(30, 80, 1),
(30, 61, 1),
(30, 72, 1),
(30, 73, 1),
(30, 64, 1),
(30, 69, 1),
(30, 68, 1),
(30, 81, 1),
(30, 63, 1),
(30, 88, 1),
(30, 86, 1),
(30, 74, 1),
(30, 84, 1),
(30, 67, 1),
(30, 60, 1),
(28, 71, 1),
(28, 87, 1),
(28, 66, 1),
(28, 80, 1),
(28, 61, 1),
(28, 72, 1),
(28, 73, 1),
(28, 64, 1),
(28, 69, 1),
(28, 68, 1),
(28, 81, 1),
(28, 63, 1),
(28, 88, 1),
(28, 86, 1),
(28, 74, 1),
(28, 84, 1),
(28, 67, 1),
(28, 60, 1),
(29, 71, 1),
(29, 87, 1),
(29, 66, 1),
(29, 80, 1),
(29, 61, 1),
(29, 72, 1),
(29, 73, 1),
(29, 64, 1),
(29, 69, 1),
(29, 68, 1),
(29, 81, 1),
(29, 63, 1),
(29, 88, 1),
(29, 86, 1),
(29, 74, 1),
(29, 84, 1),
(29, 67, 1),
(29, 60, 1),
(22, 71, 1),
(22, 87, 1),
(22, 66, 1),
(22, 80, 1),
(22, 61, 1),
(22, 72, 1),
(22, 73, 1),
(22, 64, 1),
(22, 69, 1),
(22, 68, 1),
(22, 81, 1),
(22, 63, 1),
(22, 88, 1),
(22, 86, 1),
(22, 74, 1),
(22, 84, 1),
(22, 67, 1),
(22, 60, 1),
(23, 71, 2),
(23, 87, 2),
(23, 66, 2),
(23, 80, 2),
(23, 61, 2),
(23, 72, 2),
(23, 73, 2),
(23, 64, 2),
(23, 69, 2),
(23, 68, 2),
(23, 81, 2),
(23, 63, 2),
(23, 88, 2),
(23, 86, 2),
(23, 74, 2),
(23, 84, 2),
(23, 67, 2),
(23, 60, 2),
(24, 71, 1),
(24, 87, 1),
(24, 66, 1),
(24, 80, 1),
(24, 61, 1),
(24, 72, 1),
(24, 73, 1),
(24, 64, 1),
(24, 69, 1),
(24, 68, 1),
(24, 81, 1),
(24, 63, 1),
(24, 88, 1),
(24, 86, 1),
(24, 74, 1),
(24, 84, 1),
(24, 67, 1),
(24, 60, 1),
(25, 71, 2),
(25, 87, 2),
(25, 66, 2),
(25, 80, 2),
(25, 61, 2),
(25, 72, 2),
(25, 73, 2),
(25, 64, 2),
(25, 69, 2),
(25, 68, 2),
(25, 81, 2),
(25, 63, 2),
(25, 88, 2),
(25, 86, 2),
(25, 74, 2),
(25, 84, 2),
(25, 67, 2),
(25, 60, 2),
(26, 71, 3),
(26, 87, 3),
(26, 66, 3),
(26, 80, 3),
(26, 61, 3),
(26, 72, 3),
(26, 73, 3),
(26, 64, 3),
(26, 69, 3),
(26, 68, 3),
(26, 81, 3),
(26, 63, 3),
(26, 88, 3),
(26, 86, 3),
(26, 74, 3),
(26, 84, 3),
(26, 67, 3),
(26, 60, 3),
(27, 71, 4),
(27, 87, 4),
(27, 66, 4),
(27, 80, 4),
(27, 61, 4),
(27, 72, 4),
(27, 73, 4),
(27, 64, 4),
(27, 69, 4),
(27, 68, 4),
(27, 81, 4),
(27, 63, 4),
(27, 88, 4),
(27, 86, 4),
(27, 74, 4),
(27, 84, 4),
(27, 67, 4),
(27, 60, 4),
(18, 90, 1),
(12, 90, 1),
(5, 90, 1),
(17, 90, 1),
(15, 90, 1),
(7, 90, 1),
(8, 90, 2),
(9, 90, 3),
(10, 90, 4),
(19, 90, 1),
(30, 90, 1),
(28, 90, 1),
(29, 90, 1),
(22, 90, 1),
(23, 90, 2),
(24, 90, 1),
(25, 90, 2),
(26, 90, 3),
(27, 90, 4),
(18, 102, 1),
(18, 118, 1),
(18, 97, 1),
(18, 111, 1),
(18, 92, 1),
(18, 103, 1),
(18, 104, 1),
(18, 95, 1),
(18, 100, 1),
(18, 99, 1),
(18, 112, 1),
(18, 94, 1),
(18, 119, 1),
(18, 117, 1),
(18, 105, 1),
(18, 115, 1),
(18, 98, 1),
(18, 91, 1),
(12, 102, 1),
(12, 118, 1),
(12, 97, 1),
(12, 111, 1),
(12, 92, 1),
(12, 103, 1),
(12, 104, 1),
(12, 95, 1),
(12, 100, 1),
(12, 99, 1),
(12, 112, 1),
(12, 94, 1),
(12, 119, 1),
(12, 117, 1),
(12, 105, 1),
(12, 115, 1),
(12, 98, 1),
(12, 91, 1),
(5, 102, 1),
(5, 118, 1),
(5, 97, 1),
(5, 111, 1),
(5, 92, 1),
(5, 103, 1),
(5, 104, 1),
(5, 95, 1),
(5, 100, 1),
(5, 99, 1),
(5, 112, 1),
(5, 94, 1),
(5, 119, 1),
(5, 117, 1),
(5, 105, 1),
(5, 115, 1),
(5, 98, 1),
(5, 91, 1),
(17, 102, 1),
(17, 118, 1),
(17, 97, 1),
(17, 111, 1),
(17, 92, 1),
(17, 103, 1),
(17, 104, 1),
(17, 95, 1),
(17, 100, 1),
(17, 99, 1),
(17, 112, 1),
(17, 94, 1),
(17, 119, 1),
(17, 117, 1),
(17, 105, 1),
(17, 115, 1),
(17, 98, 1),
(17, 91, 1),
(15, 102, 1),
(15, 118, 1),
(15, 97, 1),
(15, 111, 1),
(15, 92, 1),
(15, 103, 1),
(15, 104, 1),
(15, 95, 1),
(15, 100, 1),
(15, 99, 1),
(15, 112, 1),
(15, 94, 1),
(15, 119, 1),
(15, 117, 1),
(15, 105, 1),
(15, 115, 1),
(15, 98, 1),
(15, 91, 1),
(7, 102, 1),
(7, 118, 1),
(7, 97, 1),
(7, 111, 1),
(7, 92, 1),
(7, 103, 1),
(7, 104, 1),
(7, 95, 1),
(7, 100, 1),
(7, 99, 1),
(7, 112, 1),
(7, 94, 1),
(7, 119, 1),
(7, 117, 1),
(7, 105, 1),
(7, 115, 1),
(7, 98, 1),
(7, 91, 1),
(8, 102, 2),
(8, 118, 2),
(8, 97, 2),
(8, 111, 2),
(8, 92, 2),
(8, 103, 2),
(8, 104, 2),
(8, 95, 2),
(8, 100, 2),
(8, 99, 2),
(8, 112, 2),
(8, 94, 2),
(8, 119, 2),
(8, 117, 2),
(8, 105, 2),
(8, 115, 2),
(8, 98, 2),
(8, 91, 2),
(9, 102, 3),
(9, 118, 3),
(9, 97, 3),
(9, 111, 3),
(9, 92, 3),
(9, 103, 3),
(9, 104, 3),
(9, 95, 3),
(9, 100, 3),
(9, 99, 3),
(9, 112, 3),
(9, 94, 3),
(9, 119, 3),
(9, 117, 3),
(9, 105, 3),
(9, 115, 3),
(9, 98, 3),
(9, 91, 3),
(10, 102, 4),
(10, 118, 4),
(10, 97, 4),
(10, 111, 4),
(10, 92, 4),
(10, 103, 4),
(10, 104, 4),
(10, 95, 4),
(10, 100, 4),
(10, 99, 4),
(10, 112, 4),
(10, 94, 4),
(10, 119, 4),
(10, 117, 4),
(10, 105, 4),
(10, 115, 4),
(10, 98, 4),
(10, 91, 4),
(19, 102, 1),
(19, 118, 1),
(19, 97, 1),
(19, 111, 1),
(19, 92, 1),
(19, 103, 1),
(19, 104, 1),
(19, 95, 1),
(19, 100, 1),
(19, 99, 1),
(19, 112, 1),
(19, 94, 1),
(19, 119, 1),
(19, 117, 1),
(19, 105, 1),
(19, 115, 1),
(19, 98, 1),
(19, 91, 1),
(30, 102, 1),
(30, 118, 1),
(30, 97, 1),
(30, 111, 1),
(30, 92, 1),
(30, 103, 1),
(30, 104, 1),
(30, 95, 1),
(30, 100, 1),
(30, 99, 1),
(30, 112, 1),
(30, 94, 1),
(30, 119, 1),
(30, 117, 1),
(30, 105, 1),
(30, 115, 1),
(30, 98, 1),
(30, 91, 1),
(28, 102, 1),
(28, 118, 1),
(28, 97, 1),
(28, 111, 1),
(28, 92, 1),
(28, 103, 1),
(28, 104, 1),
(28, 95, 1),
(28, 100, 1),
(28, 99, 1),
(28, 112, 1),
(28, 94, 1),
(28, 119, 1),
(28, 117, 1),
(28, 105, 1),
(28, 115, 1),
(28, 98, 1),
(28, 91, 1),
(29, 102, 1),
(29, 118, 1),
(29, 97, 1),
(29, 111, 1),
(29, 92, 1),
(29, 103, 1),
(29, 104, 1),
(29, 95, 1),
(29, 100, 1),
(29, 99, 1),
(29, 112, 1),
(29, 94, 1),
(29, 119, 1),
(29, 117, 1),
(29, 105, 1),
(29, 115, 1),
(29, 98, 1),
(29, 91, 1),
(22, 102, 1),
(22, 118, 1),
(22, 97, 1),
(22, 111, 1),
(22, 92, 1),
(22, 103, 1),
(22, 104, 1),
(22, 95, 1),
(22, 100, 1),
(22, 99, 1),
(22, 112, 1),
(22, 94, 1),
(22, 119, 1),
(22, 117, 1),
(22, 105, 1),
(22, 115, 1),
(22, 98, 1),
(22, 91, 1),
(23, 102, 2),
(23, 118, 2),
(23, 97, 2),
(23, 111, 2),
(23, 92, 2),
(23, 103, 2),
(23, 104, 2),
(23, 95, 2),
(23, 100, 2),
(23, 99, 2),
(23, 112, 2),
(23, 94, 2),
(23, 119, 2),
(23, 117, 2),
(23, 105, 2),
(23, 115, 2),
(23, 98, 2),
(23, 91, 2),
(24, 102, 1),
(24, 118, 1),
(24, 97, 1),
(24, 111, 1),
(24, 92, 1),
(24, 103, 1),
(24, 104, 1),
(24, 95, 1),
(24, 100, 1),
(24, 99, 1),
(24, 112, 1),
(24, 94, 1),
(24, 119, 1),
(24, 117, 1),
(24, 105, 1),
(24, 115, 1),
(24, 98, 1),
(24, 91, 1),
(25, 102, 2),
(25, 118, 2),
(25, 97, 2),
(25, 111, 2),
(25, 92, 2),
(25, 103, 2),
(25, 104, 2),
(25, 95, 2),
(25, 100, 2),
(25, 99, 2),
(25, 112, 2),
(25, 94, 2),
(25, 119, 2),
(25, 117, 2),
(25, 105, 2),
(25, 115, 2),
(25, 98, 2),
(25, 91, 2),
(26, 102, 3),
(26, 118, 3),
(26, 97, 3),
(26, 111, 3),
(26, 92, 3),
(26, 103, 3),
(26, 104, 3),
(26, 95, 3),
(26, 100, 3),
(26, 99, 3),
(26, 112, 3),
(26, 94, 3),
(26, 119, 3),
(26, 117, 3),
(26, 105, 3),
(26, 115, 3),
(26, 98, 3),
(26, 91, 3),
(27, 102, 4),
(27, 118, 4),
(27, 97, 4),
(27, 111, 4),
(27, 92, 4),
(27, 103, 4),
(27, 104, 4),
(27, 95, 4),
(27, 100, 4),
(27, 99, 4),
(27, 112, 4),
(27, 94, 4),
(27, 119, 4),
(27, 117, 4),
(27, 105, 4),
(27, 115, 4),
(27, 98, 4),
(27, 91, 4),
(48, 181, 2),
(48, 188, 2),
(48, 205, 2),
(48, 195, 2),
(48, 207, 2),
(48, 209, 2),
(48, 184, 2),
(48, 202, 2),
(48, 189, 2),
(48, 190, 2),
(18, 132, 1),
(18, 148, 1),
(18, 127, 1),
(18, 141, 1),
(18, 122, 1),
(18, 133, 1),
(18, 134, 1),
(18, 125, 1),
(18, 130, 1),
(18, 129, 1),
(18, 142, 1),
(18, 124, 1),
(18, 149, 1),
(18, 147, 1),
(18, 135, 1),
(18, 145, 1),
(18, 128, 1),
(18, 121, 1),
(12, 132, 1),
(12, 148, 1),
(12, 127, 1),
(12, 141, 1),
(12, 122, 1),
(12, 133, 1),
(12, 134, 1),
(12, 125, 1),
(12, 130, 1),
(12, 129, 1),
(12, 142, 1),
(12, 124, 1),
(12, 149, 1),
(12, 147, 1),
(12, 135, 1),
(12, 145, 1),
(12, 128, 1),
(12, 121, 1),
(5, 132, 1),
(5, 148, 1),
(5, 127, 1),
(5, 141, 1),
(5, 122, 1),
(5, 133, 1),
(5, 134, 1),
(5, 125, 1),
(5, 130, 1),
(5, 129, 1),
(5, 142, 1),
(5, 124, 1),
(5, 149, 1),
(5, 147, 1),
(5, 135, 1),
(5, 145, 1),
(5, 128, 1),
(5, 121, 1),
(17, 132, 1),
(17, 148, 1),
(17, 127, 1),
(17, 141, 1),
(17, 122, 1),
(17, 133, 1),
(17, 134, 1),
(17, 125, 1),
(17, 130, 1),
(17, 129, 1),
(17, 142, 1),
(17, 124, 1),
(17, 149, 1),
(17, 147, 1),
(17, 135, 1),
(17, 145, 1),
(17, 128, 1),
(17, 121, 1),
(15, 132, 1),
(15, 148, 1),
(15, 127, 1),
(15, 141, 1),
(15, 122, 1),
(15, 133, 1),
(15, 134, 1),
(15, 125, 1),
(15, 130, 1),
(15, 129, 1),
(15, 142, 1),
(15, 124, 1),
(15, 149, 1),
(15, 147, 1),
(15, 135, 1),
(15, 145, 1),
(15, 128, 1),
(15, 121, 1),
(7, 132, 1),
(7, 148, 1),
(7, 127, 1),
(7, 141, 1),
(7, 122, 1),
(7, 133, 1),
(7, 134, 1),
(7, 125, 1),
(7, 130, 1),
(7, 129, 1),
(7, 142, 1),
(7, 124, 1),
(7, 149, 1),
(7, 147, 1),
(7, 135, 1),
(7, 145, 1),
(7, 128, 1),
(7, 121, 1),
(8, 132, 2),
(8, 148, 2),
(8, 127, 2),
(8, 141, 2),
(8, 122, 2),
(8, 133, 2),
(8, 134, 2),
(8, 125, 2),
(8, 130, 2),
(8, 129, 2),
(8, 142, 2),
(8, 124, 2),
(8, 149, 2),
(8, 147, 2),
(8, 135, 2),
(8, 145, 2),
(8, 128, 2),
(8, 121, 2),
(9, 132, 3),
(9, 148, 3),
(9, 127, 3),
(9, 141, 3),
(9, 122, 3),
(9, 133, 3),
(9, 134, 3),
(9, 125, 3),
(9, 130, 3),
(9, 129, 3),
(9, 142, 3),
(9, 124, 3),
(9, 149, 3),
(9, 147, 3),
(9, 135, 3),
(9, 145, 3),
(9, 128, 3),
(9, 121, 3),
(10, 132, 4),
(10, 148, 4),
(10, 127, 4),
(10, 141, 4),
(10, 122, 4),
(10, 133, 4),
(10, 134, 4),
(10, 125, 4),
(10, 130, 4),
(10, 129, 4),
(10, 142, 4),
(10, 124, 4),
(10, 149, 4),
(10, 147, 4),
(10, 135, 4),
(10, 145, 4),
(10, 128, 4),
(10, 121, 4),
(19, 132, 1),
(19, 148, 1),
(19, 127, 1),
(19, 141, 1),
(19, 122, 1),
(19, 133, 1),
(19, 134, 1),
(19, 125, 1),
(19, 130, 1),
(19, 129, 1),
(19, 142, 1),
(19, 124, 1),
(19, 149, 1),
(19, 147, 1),
(19, 135, 1),
(19, 145, 1),
(19, 128, 1),
(19, 121, 1),
(30, 132, 1),
(30, 148, 1),
(30, 127, 1),
(30, 141, 1),
(30, 122, 1),
(30, 133, 1),
(30, 134, 1),
(30, 125, 1),
(30, 130, 1),
(30, 129, 1),
(30, 142, 1),
(30, 124, 1),
(30, 149, 1),
(30, 147, 1),
(30, 135, 1),
(30, 145, 1),
(30, 128, 1),
(30, 121, 1),
(28, 132, 1),
(28, 148, 1),
(28, 127, 1),
(28, 141, 1),
(28, 122, 1),
(28, 133, 1),
(28, 134, 1),
(28, 125, 1),
(28, 130, 1),
(28, 129, 1),
(28, 142, 1),
(28, 124, 1),
(28, 149, 1),
(28, 147, 1),
(28, 135, 1),
(28, 145, 1),
(28, 128, 1),
(28, 121, 1),
(29, 132, 1),
(29, 148, 1),
(29, 127, 1),
(29, 141, 1),
(29, 122, 1),
(29, 133, 1),
(29, 134, 1),
(29, 125, 1),
(29, 130, 1),
(29, 129, 1),
(29, 142, 1),
(29, 124, 1),
(29, 149, 1),
(29, 147, 1),
(29, 135, 1),
(29, 145, 1),
(29, 128, 1),
(29, 121, 1),
(22, 132, 1),
(22, 148, 1),
(22, 127, 1),
(22, 141, 1),
(22, 122, 1),
(22, 133, 1),
(22, 134, 1),
(22, 125, 1),
(22, 130, 1),
(22, 129, 1),
(22, 142, 1),
(22, 124, 1),
(22, 149, 1),
(22, 147, 1),
(22, 135, 1),
(22, 145, 1),
(22, 128, 1),
(22, 121, 1),
(23, 132, 2),
(23, 148, 2),
(23, 127, 2),
(23, 141, 2),
(23, 122, 2),
(23, 133, 2),
(23, 134, 2),
(23, 125, 2),
(23, 130, 2),
(23, 129, 2),
(23, 142, 2),
(23, 124, 2),
(23, 149, 2),
(23, 147, 2),
(23, 135, 2),
(23, 145, 2),
(23, 128, 2),
(23, 121, 2),
(24, 132, 1),
(24, 148, 1),
(24, 127, 1),
(24, 141, 1),
(24, 122, 1),
(24, 133, 1),
(24, 134, 1),
(24, 125, 1),
(24, 130, 1),
(24, 129, 1),
(24, 142, 1),
(24, 124, 1),
(24, 149, 1),
(24, 147, 1),
(24, 135, 1),
(24, 145, 1),
(24, 128, 1),
(24, 121, 1),
(25, 132, 2),
(25, 148, 2),
(25, 127, 2),
(25, 141, 2),
(25, 122, 2),
(25, 133, 2),
(25, 134, 2),
(25, 125, 2),
(25, 130, 2),
(25, 129, 2),
(25, 142, 2),
(25, 124, 2),
(25, 149, 2),
(25, 147, 2),
(25, 135, 2),
(25, 145, 2),
(25, 128, 2),
(25, 121, 2),
(26, 132, 3),
(26, 148, 3),
(26, 127, 3),
(26, 141, 3),
(26, 122, 3),
(26, 133, 3),
(26, 134, 3),
(26, 125, 3),
(26, 130, 3),
(26, 129, 3),
(26, 142, 3),
(26, 124, 3),
(26, 149, 3),
(26, 147, 3),
(26, 135, 3),
(26, 145, 3),
(26, 128, 3),
(26, 121, 3),
(27, 132, 4),
(27, 148, 4),
(27, 127, 4),
(27, 141, 4),
(27, 122, 4),
(27, 133, 4),
(27, 134, 4),
(27, 125, 4),
(27, 130, 4),
(27, 129, 4),
(27, 142, 4),
(27, 124, 4),
(27, 149, 4),
(27, 147, 4),
(27, 135, 4),
(27, 145, 4),
(27, 128, 4),
(27, 121, 4),
(48, 185, 2),
(48, 194, 2),
(48, 193, 2),
(48, 182, 2),
(48, 201, 2),
(48, 187, 2),
(48, 208, 2),
(48, 192, 1),
(27, 211, 4),
(26, 211, 3),
(25, 211, 2),
(24, 211, 1),
(23, 211, 2),
(22, 211, 1),
(29, 211, 1),
(28, 211, 1),
(30, 211, 1),
(19, 211, 1),
(18, 162, 1),
(18, 178, 1),
(18, 157, 1),
(18, 171, 1),
(18, 152, 1),
(18, 163, 1),
(18, 164, 1),
(18, 155, 1),
(18, 160, 1),
(18, 159, 1),
(18, 172, 1),
(18, 154, 1),
(18, 179, 1),
(18, 177, 1),
(18, 165, 1),
(18, 175, 1),
(18, 158, 1),
(18, 151, 1),
(12, 162, 1),
(12, 178, 1),
(12, 157, 1),
(12, 171, 1),
(12, 152, 1),
(12, 163, 1),
(12, 164, 1),
(12, 155, 1),
(12, 160, 1),
(12, 159, 1),
(12, 172, 1),
(12, 154, 1),
(12, 179, 1),
(12, 177, 1),
(12, 165, 1),
(12, 175, 1),
(12, 158, 1),
(12, 151, 1),
(5, 162, 1),
(5, 178, 1),
(5, 157, 1),
(5, 171, 1),
(5, 152, 1),
(5, 163, 1),
(5, 164, 1),
(5, 155, 1),
(5, 160, 1),
(5, 159, 1),
(5, 172, 1),
(5, 154, 1),
(5, 179, 1),
(5, 177, 1),
(5, 165, 1),
(5, 175, 1),
(5, 158, 1),
(5, 151, 1),
(17, 162, 1),
(17, 178, 1),
(17, 157, 1),
(17, 171, 1),
(17, 152, 1),
(17, 163, 1),
(17, 164, 1),
(17, 155, 1),
(17, 160, 1),
(17, 159, 1),
(17, 172, 1),
(17, 154, 1),
(17, 179, 1),
(17, 177, 1),
(17, 165, 1),
(17, 175, 1),
(17, 158, 1),
(17, 151, 1),
(15, 162, 1),
(15, 178, 1),
(15, 157, 1),
(15, 171, 1),
(15, 152, 1),
(15, 163, 1),
(15, 164, 1),
(15, 155, 1),
(15, 160, 1),
(15, 159, 1),
(15, 172, 1),
(15, 154, 1),
(15, 179, 1),
(15, 177, 1),
(15, 165, 1),
(15, 175, 1),
(15, 158, 1),
(15, 151, 1),
(7, 162, 1),
(7, 178, 1),
(7, 157, 1),
(7, 171, 1),
(7, 152, 1),
(7, 163, 1),
(7, 164, 1),
(7, 155, 1),
(7, 160, 1),
(7, 159, 1),
(7, 172, 1),
(7, 154, 1),
(7, 179, 1),
(7, 177, 1),
(7, 165, 1),
(7, 175, 1),
(7, 158, 1),
(7, 151, 1),
(8, 162, 2),
(8, 178, 2),
(8, 157, 2),
(8, 171, 2),
(8, 152, 2),
(8, 163, 2),
(8, 164, 2),
(8, 155, 2),
(8, 160, 2),
(8, 159, 2),
(8, 172, 2),
(8, 154, 2),
(8, 179, 2),
(8, 177, 2),
(8, 165, 2),
(8, 175, 2),
(8, 158, 2),
(8, 151, 2),
(9, 162, 3),
(9, 178, 3),
(9, 157, 3),
(9, 171, 3),
(9, 152, 3),
(9, 163, 3),
(9, 164, 3),
(9, 155, 3),
(9, 160, 3),
(9, 159, 3),
(9, 172, 3),
(9, 154, 3),
(9, 179, 3),
(9, 177, 3),
(9, 165, 3),
(9, 175, 3),
(9, 158, 3),
(9, 151, 3),
(10, 162, 4),
(10, 178, 4),
(10, 157, 4),
(10, 171, 4),
(10, 152, 4),
(10, 163, 4),
(10, 164, 4),
(10, 155, 4),
(10, 160, 4),
(10, 159, 4),
(10, 172, 4),
(10, 154, 4),
(10, 179, 4),
(10, 177, 4),
(10, 165, 4),
(10, 175, 4),
(10, 158, 4),
(10, 151, 4),
(19, 162, 1),
(19, 178, 1),
(19, 157, 1),
(19, 171, 1),
(19, 152, 1),
(19, 163, 1),
(19, 164, 1),
(19, 155, 1),
(19, 160, 1),
(19, 159, 1),
(19, 172, 1),
(19, 154, 1),
(19, 179, 1),
(19, 177, 1),
(19, 165, 1),
(19, 175, 1),
(19, 158, 1),
(19, 151, 1),
(30, 162, 1),
(30, 178, 1),
(30, 157, 1),
(30, 171, 1),
(30, 152, 1),
(30, 163, 1),
(30, 164, 1),
(30, 155, 1),
(30, 160, 1),
(30, 159, 1),
(30, 172, 1),
(30, 154, 1),
(30, 179, 1),
(30, 177, 1),
(30, 165, 1),
(30, 175, 1),
(30, 158, 1),
(30, 151, 1),
(28, 162, 1),
(28, 178, 1),
(28, 157, 1),
(28, 171, 1),
(28, 152, 1),
(28, 163, 1),
(28, 164, 1),
(28, 155, 1),
(28, 160, 1),
(28, 159, 1),
(28, 172, 1),
(28, 154, 1),
(28, 179, 1),
(28, 177, 1),
(28, 165, 1),
(28, 175, 1),
(28, 158, 1),
(28, 151, 1),
(29, 162, 1),
(29, 178, 1),
(29, 157, 1),
(29, 171, 1),
(29, 152, 1),
(29, 163, 1),
(29, 164, 1),
(29, 155, 1),
(29, 160, 1),
(29, 159, 1),
(29, 172, 1),
(29, 154, 1),
(29, 179, 1),
(29, 177, 1),
(29, 165, 1),
(29, 175, 1),
(29, 158, 1),
(29, 151, 1),
(22, 162, 1),
(22, 178, 1),
(22, 157, 1),
(22, 171, 1),
(22, 152, 1),
(22, 163, 1),
(22, 164, 1),
(22, 155, 1),
(22, 160, 1),
(22, 159, 1),
(22, 172, 1),
(22, 154, 1),
(22, 179, 1),
(22, 177, 1),
(22, 165, 1),
(22, 175, 1),
(22, 158, 1),
(22, 151, 1),
(23, 162, 2),
(23, 178, 2),
(23, 157, 2),
(23, 171, 2),
(23, 152, 2),
(23, 163, 2),
(23, 164, 2),
(23, 155, 2),
(23, 160, 2),
(23, 159, 2),
(23, 172, 2),
(23, 154, 2),
(23, 179, 2),
(23, 177, 2),
(23, 165, 2),
(23, 175, 2),
(23, 158, 2),
(23, 151, 2),
(24, 162, 1),
(24, 178, 1),
(24, 157, 1),
(24, 171, 1),
(24, 152, 1),
(24, 163, 1),
(24, 164, 1),
(24, 155, 1),
(24, 160, 1),
(24, 159, 1),
(24, 172, 1),
(24, 154, 1),
(24, 179, 1),
(24, 177, 1),
(24, 165, 1),
(24, 175, 1),
(24, 158, 1),
(24, 151, 1),
(25, 162, 2),
(25, 178, 2),
(25, 157, 2),
(25, 171, 2),
(25, 152, 2),
(25, 163, 2),
(25, 164, 2),
(25, 155, 2),
(25, 160, 2),
(25, 159, 2),
(25, 172, 2),
(25, 154, 2),
(25, 179, 2),
(25, 177, 2),
(25, 165, 2),
(25, 175, 2),
(25, 158, 2),
(25, 151, 2),
(26, 162, 3),
(26, 178, 3),
(26, 157, 3),
(26, 171, 3),
(26, 152, 3),
(26, 163, 3),
(26, 164, 3),
(26, 155, 3),
(26, 160, 3),
(26, 159, 3),
(26, 172, 3),
(26, 154, 3),
(26, 179, 3),
(26, 177, 3),
(26, 165, 3),
(26, 175, 3),
(26, 158, 3),
(26, 151, 3),
(27, 162, 4),
(27, 178, 4),
(27, 157, 4),
(27, 171, 4),
(27, 152, 4),
(27, 163, 4),
(27, 164, 4),
(27, 155, 4),
(27, 160, 4),
(27, 159, 4),
(27, 172, 4),
(27, 154, 4),
(27, 179, 4),
(27, 177, 4),
(27, 165, 4),
(27, 175, 4),
(27, 158, 4),
(27, 151, 4),
(16, 192, 1),
(16, 208, 1),
(16, 187, 1),
(16, 201, 1),
(16, 182, 1),
(16, 193, 1),
(16, 194, 1),
(16, 185, 1),
(16, 190, 1),
(16, 189, 1),
(16, 202, 1),
(16, 184, 1),
(16, 209, 1),
(16, 207, 1),
(16, 195, 1),
(16, 205, 1),
(16, 188, 1),
(16, 181, 1),
(18, 192, 1),
(18, 208, 1),
(18, 187, 1),
(18, 201, 1),
(18, 182, 1),
(18, 193, 1),
(18, 194, 1),
(18, 185, 1),
(18, 190, 1),
(18, 189, 1),
(18, 202, 1),
(18, 184, 1),
(18, 209, 1),
(18, 207, 1),
(18, 195, 1),
(18, 205, 1),
(18, 188, 1),
(18, 181, 1),
(12, 192, 1),
(12, 208, 1),
(12, 187, 1),
(12, 201, 1),
(12, 182, 1),
(12, 193, 1),
(12, 194, 1),
(12, 185, 1),
(12, 190, 1),
(12, 189, 1),
(12, 202, 1),
(12, 184, 1),
(12, 209, 1),
(12, 207, 1),
(12, 195, 1),
(12, 205, 1),
(12, 188, 1),
(12, 181, 1),
(5, 192, 1),
(5, 208, 1),
(5, 187, 1),
(5, 201, 1),
(5, 182, 1),
(5, 193, 1),
(5, 194, 1),
(5, 185, 1),
(5, 190, 1),
(5, 189, 1),
(5, 202, 1),
(5, 184, 1),
(5, 209, 1),
(5, 207, 1),
(5, 195, 1),
(5, 205, 1),
(5, 188, 1),
(5, 181, 1),
(20, 192, 1),
(20, 208, 1),
(20, 187, 1),
(20, 201, 1),
(20, 182, 1),
(20, 193, 1),
(20, 194, 1),
(20, 185, 1),
(20, 190, 1),
(20, 189, 1),
(20, 202, 1),
(20, 184, 1),
(20, 209, 1),
(20, 207, 1),
(20, 195, 1),
(20, 205, 1),
(20, 188, 1),
(20, 181, 1),
(17, 192, 1),
(17, 208, 1),
(17, 187, 1),
(17, 201, 1),
(17, 182, 1),
(17, 193, 1),
(17, 194, 1),
(17, 185, 1),
(17, 190, 1),
(17, 189, 1),
(17, 202, 1),
(17, 184, 1),
(17, 209, 1),
(17, 207, 1),
(17, 195, 1),
(17, 205, 1),
(17, 188, 1),
(17, 181, 1),
(15, 192, 1),
(15, 208, 1),
(15, 187, 1),
(15, 201, 1),
(15, 182, 1),
(15, 193, 1),
(15, 194, 1),
(15, 185, 1),
(15, 190, 1),
(15, 189, 1),
(15, 202, 1),
(15, 184, 1),
(15, 209, 1),
(15, 207, 1),
(15, 195, 1),
(15, 205, 1),
(15, 188, 1),
(15, 181, 1),
(7, 192, 1),
(7, 208, 1),
(7, 187, 1),
(7, 201, 1),
(7, 182, 1),
(7, 193, 1),
(7, 194, 1),
(7, 185, 1),
(7, 190, 1),
(7, 189, 1),
(7, 202, 1),
(7, 184, 1),
(7, 209, 1),
(7, 207, 1),
(7, 195, 1),
(7, 205, 1),
(7, 188, 1),
(7, 181, 1),
(8, 192, 2),
(8, 208, 2),
(8, 187, 2),
(8, 201, 2),
(8, 182, 2),
(8, 193, 2),
(8, 194, 2),
(8, 185, 2),
(8, 190, 2),
(8, 189, 2),
(8, 202, 2),
(8, 184, 2),
(8, 209, 2),
(8, 207, 2),
(8, 195, 2),
(8, 205, 2),
(8, 188, 2),
(8, 181, 2),
(9, 192, 3),
(9, 208, 3),
(9, 187, 3),
(9, 201, 3),
(9, 182, 3),
(9, 193, 3),
(9, 194, 3),
(9, 185, 3),
(9, 190, 3),
(9, 189, 3),
(9, 202, 3),
(9, 184, 3),
(9, 209, 3),
(9, 207, 3),
(9, 195, 3),
(9, 205, 3),
(9, 188, 3),
(9, 181, 3),
(10, 192, 4),
(10, 208, 4),
(10, 187, 4),
(10, 201, 4),
(10, 182, 4),
(10, 193, 4),
(10, 194, 4),
(10, 185, 4),
(10, 190, 4),
(10, 189, 4),
(10, 202, 4),
(10, 184, 4),
(10, 209, 4),
(10, 207, 4),
(10, 195, 4),
(10, 205, 4),
(10, 188, 4),
(10, 181, 4),
(19, 192, 1),
(19, 208, 1),
(19, 187, 1),
(19, 201, 1),
(19, 182, 1),
(19, 193, 1),
(19, 194, 1),
(19, 185, 1),
(19, 190, 1),
(19, 189, 1),
(19, 202, 1),
(19, 184, 1),
(19, 209, 1),
(19, 207, 1),
(19, 195, 1),
(19, 205, 1),
(19, 188, 1),
(19, 181, 1),
(30, 192, 1),
(30, 208, 1),
(30, 187, 1),
(30, 201, 1),
(30, 182, 1),
(30, 193, 1),
(30, 194, 1),
(30, 185, 1),
(30, 190, 1),
(30, 189, 1),
(30, 202, 1),
(30, 184, 1),
(30, 209, 1),
(30, 207, 1),
(30, 195, 1),
(30, 205, 1),
(30, 188, 1),
(30, 181, 1),
(28, 192, 1),
(28, 208, 1),
(28, 187, 1),
(28, 201, 1),
(28, 182, 1),
(28, 193, 1),
(28, 194, 1),
(28, 185, 1),
(28, 190, 1),
(28, 189, 1),
(28, 202, 1),
(28, 184, 1),
(28, 209, 1),
(28, 207, 1),
(28, 195, 1),
(28, 205, 1),
(28, 188, 1),
(28, 181, 1),
(29, 192, 1),
(29, 208, 1),
(29, 187, 1),
(29, 201, 1),
(29, 182, 1),
(29, 193, 1),
(29, 194, 1),
(29, 185, 1),
(29, 190, 1),
(29, 189, 1),
(29, 202, 1),
(29, 184, 1),
(29, 209, 1),
(29, 207, 1),
(29, 195, 1),
(29, 205, 1),
(29, 188, 1),
(29, 181, 1),
(22, 192, 1),
(22, 208, 1),
(22, 187, 1),
(22, 201, 1),
(22, 182, 1),
(22, 193, 1),
(22, 194, 1),
(22, 185, 1),
(22, 190, 1),
(22, 189, 1),
(22, 202, 1),
(22, 184, 1),
(22, 209, 1),
(22, 207, 1),
(22, 195, 1),
(22, 205, 1),
(22, 188, 1),
(22, 181, 1),
(23, 192, 2),
(23, 208, 2),
(23, 187, 2),
(23, 201, 2),
(23, 182, 2),
(23, 193, 2),
(23, 194, 2),
(23, 185, 2),
(23, 190, 2),
(23, 189, 2),
(23, 202, 2),
(23, 184, 2),
(23, 209, 2),
(23, 207, 2),
(23, 195, 2),
(23, 205, 2),
(23, 188, 2),
(23, 181, 2),
(24, 192, 1),
(24, 208, 1),
(24, 187, 1),
(24, 201, 1),
(24, 182, 1),
(24, 193, 1),
(24, 194, 1),
(24, 185, 1),
(24, 190, 1),
(24, 189, 1),
(24, 202, 1),
(24, 184, 1),
(24, 209, 1),
(24, 207, 1),
(24, 195, 1),
(24, 205, 1),
(24, 188, 1),
(24, 181, 1),
(25, 192, 2),
(25, 208, 2),
(25, 187, 2),
(25, 201, 2),
(25, 182, 2),
(25, 193, 2),
(25, 194, 2),
(25, 185, 2),
(25, 190, 2),
(25, 189, 2),
(25, 202, 2),
(25, 184, 2),
(25, 209, 2),
(25, 207, 2),
(25, 195, 2),
(25, 205, 2),
(25, 188, 2),
(25, 181, 2),
(26, 192, 3),
(26, 208, 3),
(26, 187, 3),
(26, 201, 3),
(26, 182, 3),
(26, 193, 3),
(26, 194, 3),
(26, 185, 3),
(26, 190, 3),
(26, 189, 3),
(26, 202, 3),
(26, 184, 3),
(26, 209, 3),
(26, 207, 3),
(26, 195, 3),
(26, 205, 3),
(26, 188, 3),
(26, 181, 3),
(27, 192, 4),
(27, 208, 4),
(27, 187, 4),
(27, 201, 4),
(27, 182, 4),
(27, 193, 4),
(27, 194, 4),
(27, 185, 4),
(27, 190, 4),
(27, 189, 4),
(27, 202, 4),
(27, 184, 4),
(27, 209, 4),
(27, 207, 4),
(27, 195, 4),
(27, 205, 4),
(27, 188, 4),
(27, 181, 4),
(10, 211, 4),
(9, 211, 3),
(8, 211, 2),
(7, 211, 1),
(47, 211, 1),
(46, 211, 1),
(15, 211, 1),
(17, 211, 1),
(20, 211, 1),
(5, 211, 1),
(12, 211, 1),
(18, 211, 1),
(16, 211, 1),
(46, 1, 1),
(46, 4, 1),
(46, 5, 1),
(46, 6, 1),
(46, 7, 1),
(46, 8, 1),
(46, 9, 1),
(46, 10, 1),
(46, 11, 1),
(46, 12, 1),
(46, 18, 1),
(46, 19, 1),
(46, 20, 1),
(46, 21, 1),
(46, 22, 1),
(46, 23, 1),
(46, 24, 1),
(46, 25, 1),
(46, 26, 1),
(46, 27, 1),
(46, 28, 1),
(46, 192, 1),
(46, 208, 1),
(46, 187, 1),
(46, 201, 1),
(46, 182, 1),
(46, 193, 1),
(46, 194, 1),
(46, 185, 1),
(46, 190, 1),
(46, 189, 1),
(46, 202, 1),
(46, 184, 1),
(46, 209, 1),
(46, 207, 1),
(46, 195, 1),
(46, 205, 1),
(46, 188, 1),
(46, 181, 1),
(46, 56, 1),
(46, 30, 1),
(46, 31, 1),
(46, 32, 1),
(46, 33, 1),
(46, 34, 1),
(46, 35, 1),
(46, 36, 1),
(46, 57, 1),
(46, 37, 1),
(46, 38, 1),
(46, 39, 1),
(46, 40, 1),
(46, 58, 1),
(46, 59, 1),
(46, 50, 1),
(46, 46, 1),
(46, 47, 1),
(46, 48, 1),
(46, 49, 1),
(46, 53, 1),
(46, 54, 1),
(46, 90, 1),
(47, 1, 1),
(47, 4, 1),
(47, 5, 1),
(47, 6, 1),
(47, 7, 1),
(47, 8, 1),
(47, 9, 1),
(47, 10, 1),
(47, 11, 1),
(47, 12, 1),
(47, 18, 1),
(47, 19, 1),
(47, 20, 1),
(47, 21, 1),
(47, 22, 1),
(47, 23, 1),
(47, 24, 1),
(47, 25, 1),
(47, 26, 1),
(47, 27, 1),
(47, 28, 1),
(47, 192, 1),
(47, 208, 1),
(47, 187, 1),
(47, 201, 1),
(47, 182, 1),
(47, 193, 1),
(47, 194, 1),
(47, 185, 1),
(47, 190, 1),
(47, 189, 1),
(47, 202, 1),
(47, 184, 1),
(47, 209, 1),
(47, 207, 1),
(47, 195, 1),
(47, 205, 1),
(47, 188, 1),
(47, 181, 1),
(47, 56, 1),
(47, 30, 1),
(47, 31, 1),
(47, 32, 1),
(47, 33, 1),
(47, 34, 1),
(47, 35, 1),
(47, 36, 1),
(47, 57, 1),
(47, 37, 1),
(47, 38, 1),
(47, 39, 1),
(47, 40, 1),
(47, 58, 1),
(47, 59, 1),
(47, 50, 1),
(47, 46, 1),
(47, 47, 1),
(47, 48, 1),
(47, 49, 1),
(47, 53, 1),
(47, 54, 1),
(47, 90, 1),
(16, 215, 1),
(16, 229, 1),
(16, 217, 1),
(16, 225, 1),
(16, 216, 1),
(16, 213, 1),
(16, 212, 1),
(16, 221, 1),
(16, 226, 1),
(16, 227, 1),
(16, 228, 1),
(16, 224, 1),
(16, 219, 1),
(18, 215, 1),
(18, 229, 1),
(18, 217, 1),
(18, 225, 1),
(18, 216, 1),
(18, 213, 1),
(18, 212, 1),
(18, 221, 1),
(18, 226, 1),
(18, 227, 1),
(18, 228, 1),
(18, 224, 1),
(18, 219, 1),
(12, 215, 1),
(12, 229, 1),
(12, 217, 1),
(12, 225, 1),
(12, 216, 1),
(12, 213, 1),
(12, 212, 1),
(12, 221, 1),
(12, 226, 1),
(12, 227, 1),
(12, 228, 1),
(12, 224, 1),
(12, 219, 1),
(5, 215, 1),
(5, 229, 1),
(5, 217, 1),
(5, 225, 1),
(5, 216, 1),
(5, 213, 1),
(5, 212, 1),
(5, 221, 1),
(5, 226, 1),
(5, 227, 1),
(5, 228, 1),
(5, 224, 1),
(5, 219, 1),
(20, 215, 1),
(20, 229, 1),
(20, 217, 1),
(20, 225, 1),
(20, 216, 1),
(20, 213, 1),
(20, 212, 1),
(20, 221, 1),
(20, 226, 1),
(20, 227, 1),
(20, 228, 1),
(20, 224, 1),
(20, 219, 1),
(17, 215, 1),
(17, 229, 1),
(17, 217, 1),
(17, 225, 1),
(17, 216, 1),
(17, 213, 1),
(17, 212, 1),
(17, 221, 1),
(17, 226, 1),
(17, 227, 1),
(17, 228, 1),
(17, 224, 1),
(17, 219, 1),
(15, 215, 1),
(15, 229, 1),
(15, 217, 1),
(15, 225, 1),
(15, 216, 1),
(15, 213, 1),
(15, 212, 1),
(15, 221, 1),
(15, 226, 1),
(15, 227, 1),
(15, 228, 1),
(15, 224, 1),
(15, 219, 1),
(46, 215, 1),
(46, 229, 1),
(46, 217, 1),
(46, 225, 1),
(46, 216, 1),
(46, 213, 1),
(46, 212, 1),
(46, 221, 1),
(46, 226, 1),
(46, 227, 1),
(46, 228, 1),
(46, 224, 1),
(46, 219, 1),
(47, 215, 1),
(47, 229, 1),
(47, 217, 1),
(47, 225, 1),
(47, 216, 1),
(47, 213, 1),
(47, 212, 1),
(47, 221, 1),
(47, 226, 1),
(47, 227, 1),
(47, 228, 1),
(47, 224, 1),
(47, 219, 1),
(7, 215, 1),
(7, 229, 1),
(7, 217, 1),
(7, 225, 1),
(7, 216, 1),
(7, 213, 1),
(7, 212, 1),
(7, 221, 1),
(7, 226, 1),
(7, 227, 1),
(7, 228, 1),
(7, 224, 1),
(7, 219, 1),
(8, 215, 2),
(8, 229, 2),
(8, 217, 2),
(8, 225, 2),
(8, 216, 2),
(8, 213, 2),
(8, 212, 2),
(8, 221, 2),
(8, 226, 2),
(8, 227, 2),
(8, 228, 2),
(8, 224, 2),
(8, 219, 2),
(9, 215, 3),
(9, 229, 3),
(9, 217, 3),
(9, 225, 3),
(9, 216, 3),
(9, 213, 3),
(9, 212, 3),
(9, 221, 3),
(9, 226, 3),
(9, 227, 3),
(9, 228, 3),
(9, 224, 3),
(9, 219, 3),
(10, 215, 4),
(10, 229, 4),
(10, 217, 4),
(10, 225, 4),
(10, 216, 4),
(10, 213, 4),
(10, 212, 4),
(10, 221, 4),
(10, 226, 4),
(10, 227, 4),
(10, 228, 4),
(10, 224, 4),
(10, 219, 4),
(19, 215, 1),
(19, 229, 1),
(19, 217, 1),
(19, 225, 1),
(19, 216, 1),
(19, 213, 1),
(19, 212, 1),
(19, 221, 1),
(19, 226, 1),
(19, 227, 1),
(19, 228, 1),
(19, 224, 1),
(19, 219, 1),
(30, 215, 1),
(30, 229, 1),
(30, 217, 1),
(30, 225, 1),
(30, 216, 1),
(30, 213, 1),
(30, 212, 1),
(30, 221, 1),
(30, 226, 1),
(30, 227, 1),
(30, 228, 1),
(30, 224, 1),
(30, 219, 1),
(28, 215, 1),
(28, 229, 1),
(28, 217, 1),
(28, 225, 1),
(28, 216, 1),
(28, 213, 1),
(28, 212, 1),
(28, 221, 1),
(28, 226, 1),
(28, 227, 1),
(28, 228, 1),
(28, 224, 1),
(28, 219, 1),
(29, 215, 1),
(29, 229, 1),
(29, 217, 1),
(29, 225, 1),
(29, 216, 1),
(29, 213, 1),
(29, 212, 1),
(29, 221, 1),
(29, 226, 1),
(29, 227, 1),
(29, 228, 1),
(29, 224, 1),
(29, 219, 1),
(22, 215, 1),
(22, 229, 1),
(22, 217, 1),
(22, 225, 1),
(22, 216, 1),
(22, 213, 1),
(22, 212, 1),
(22, 221, 1),
(22, 226, 1),
(22, 227, 1),
(22, 228, 1),
(22, 224, 1),
(22, 219, 1),
(23, 215, 2),
(23, 229, 2),
(23, 217, 2),
(23, 225, 2),
(23, 216, 2),
(23, 213, 2),
(23, 212, 2),
(23, 221, 2),
(23, 226, 2),
(23, 227, 2),
(23, 228, 2),
(23, 224, 2),
(23, 219, 2),
(24, 215, 1),
(24, 229, 1),
(24, 217, 1),
(24, 225, 1),
(24, 216, 1),
(24, 213, 1),
(24, 212, 1),
(24, 221, 1),
(24, 226, 1),
(24, 227, 1),
(24, 228, 1),
(24, 224, 1),
(24, 219, 1),
(25, 215, 2),
(25, 229, 2),
(25, 217, 2),
(25, 225, 2),
(25, 216, 2),
(25, 213, 2),
(25, 212, 2),
(25, 221, 2),
(25, 226, 2),
(25, 227, 2),
(25, 228, 2),
(25, 224, 2),
(25, 219, 2),
(26, 215, 3),
(26, 229, 3),
(26, 217, 3),
(26, 225, 3),
(26, 216, 3),
(26, 213, 3),
(26, 212, 3),
(26, 221, 3),
(26, 226, 3),
(26, 227, 3),
(26, 228, 3),
(26, 224, 3),
(26, 219, 3),
(27, 215, 4),
(27, 229, 4),
(27, 217, 4),
(27, 225, 4),
(27, 216, 4),
(27, 213, 4),
(27, 212, 4),
(27, 221, 4),
(27, 226, 4),
(27, 227, 4),
(27, 228, 4),
(27, 224, 4),
(27, 219, 4),
(53, 192, 1),
(53, 208, 1),
(53, 187, 1),
(53, 201, 1),
(53, 182, 1),
(53, 193, 1),
(53, 194, 1),
(53, 185, 1),
(53, 190, 1),
(53, 189, 1),
(53, 202, 1),
(53, 184, 1),
(53, 209, 1),
(53, 207, 1),
(53, 195, 1),
(53, 205, 1),
(53, 188, 1),
(53, 181, 1),
(54, 1, 1),
(54, 4, 1),
(54, 5, 1),
(54, 6, 1),
(54, 7, 1),
(54, 8, 1),
(54, 9, 1),
(54, 10, 1),
(54, 11, 1),
(54, 12, 1),
(54, 18, 1),
(54, 19, 1),
(54, 20, 1),
(54, 21, 1),
(54, 22, 1),
(54, 23, 1),
(54, 24, 1),
(54, 25, 1),
(54, 26, 1),
(54, 27, 1),
(54, 28, 1),
(54, 192, 1),
(54, 208, 1),
(54, 187, 1),
(54, 201, 1),
(54, 182, 1),
(54, 193, 1),
(54, 194, 1),
(54, 185, 1),
(54, 190, 1),
(54, 189, 1),
(54, 202, 1),
(54, 184, 1),
(54, 209, 1),
(54, 207, 1),
(54, 195, 1),
(54, 205, 1),
(54, 188, 1),
(54, 181, 1),
(54, 56, 1),
(54, 30, 1),
(54, 31, 1),
(54, 32, 1),
(54, 33, 1),
(54, 34, 1),
(54, 35, 1),
(54, 36, 1),
(54, 57, 1),
(54, 37, 1),
(54, 38, 1),
(54, 39, 1),
(54, 40, 1),
(54, 58, 1),
(54, 59, 1),
(54, 50, 1),
(54, 46, 1),
(54, 47, 1),
(54, 48, 1),
(54, 49, 1),
(54, 53, 1),
(54, 54, 1),
(54, 211, 1),
(54, 215, 1),
(54, 229, 1),
(54, 217, 1),
(54, 225, 1),
(54, 216, 1),
(54, 213, 1),
(54, 212, 1),
(54, 221, 1),
(54, 226, 1),
(54, 227, 1),
(54, 228, 1),
(54, 224, 1),
(54, 219, 1),
(56, 192, 1),
(56, 208, 1),
(56, 187, 1),
(56, 201, 1),
(56, 182, 1),
(56, 193, 1),
(56, 194, 1),
(56, 185, 1),
(56, 190, 1),
(56, 189, 1),
(56, 202, 1),
(56, 184, 1),
(56, 209, 1),
(56, 207, 1),
(56, 195, 1),
(56, 205, 1),
(56, 188, 1),
(56, 181, 1),
(57, 192, 1),
(57, 208, 1),
(57, 187, 1),
(57, 201, 1),
(57, 182, 1),
(57, 193, 1),
(57, 194, 1),
(57, 185, 1),
(57, 190, 1),
(57, 189, 1),
(57, 202, 1),
(57, 184, 1),
(57, 209, 1),
(57, 207, 1),
(57, 195, 1),
(57, 205, 1),
(57, 188, 1),
(57, 181, 1),
(58, 192, 1),
(58, 208, 1),
(58, 187, 1),
(58, 201, 1),
(58, 182, 1),
(58, 193, 1),
(58, 194, 1),
(58, 185, 1),
(58, 190, 1),
(58, 189, 1),
(58, 202, 1),
(58, 184, 1),
(58, 209, 1),
(58, 207, 1),
(58, 195, 1),
(58, 205, 1),
(58, 188, 1),
(58, 181, 1),
(59, 192, 1),
(59, 208, 1),
(59, 187, 1),
(59, 201, 1),
(59, 182, 1),
(59, 193, 1),
(59, 194, 1),
(59, 185, 1),
(59, 190, 1),
(59, 189, 1),
(59, 202, 1),
(59, 184, 1),
(59, 209, 1),
(59, 207, 1),
(59, 195, 1),
(59, 205, 1),
(59, 188, 1),
(59, 181, 1),
(60, 1, 2),
(60, 4, 2),
(60, 5, 2),
(60, 6, 2),
(60, 7, 2),
(60, 8, 2),
(60, 9, 2),
(60, 10, 2),
(60, 11, 2),
(60, 12, 2),
(60, 18, 2),
(60, 19, 2),
(60, 20, 2),
(60, 21, 2),
(60, 22, 2),
(60, 23, 2),
(60, 24, 2),
(60, 25, 2),
(60, 26, 2),
(60, 27, 2),
(60, 28, 2),
(60, 192, 2),
(60, 208, 2),
(60, 187, 2),
(60, 201, 2),
(60, 182, 2),
(60, 193, 2),
(60, 194, 2),
(60, 185, 2),
(60, 190, 2),
(60, 189, 2),
(60, 202, 2),
(60, 184, 2),
(60, 209, 2),
(60, 207, 2),
(60, 195, 2),
(60, 205, 2),
(60, 188, 2),
(60, 181, 2),
(60, 56, 2),
(60, 30, 2),
(60, 31, 2),
(60, 32, 2),
(60, 33, 2),
(60, 34, 2),
(60, 35, 2),
(60, 36, 2),
(60, 57, 2),
(60, 37, 2),
(60, 38, 2),
(60, 39, 2),
(60, 40, 2),
(60, 58, 2),
(60, 59, 2),
(60, 50, 2),
(60, 46, 2),
(60, 47, 2),
(60, 48, 2),
(60, 49, 2),
(60, 53, 2),
(60, 54, 2),
(60, 211, 2),
(60, 215, 2),
(60, 229, 2),
(60, 217, 2),
(60, 225, 2),
(60, 216, 2),
(60, 213, 2),
(60, 212, 2),
(60, 221, 2),
(60, 226, 2),
(60, 227, 2),
(60, 228, 2),
(60, 224, 2),
(60, 219, 2);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_comment`
--

CREATE TABLE `nv4_vi_comment` (
  `cid` mediumint(8) UNSIGNED NOT NULL,
  `module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `area` int(11) NOT NULL DEFAULT '0',
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `pid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `post_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `post_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `likes` mediumint(9) NOT NULL DEFAULT '0',
  `dislikes` mediumint(9) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_comment`
--

INSERT INTO `nv4_vi_comment` (`cid`, `module`, `area`, `id`, `pid`, `content`, `post_time`, `userid`, `post_name`, `post_email`, `post_ip`, `status`, `likes`, `dislikes`) VALUES
(1, 'news', 8, 18, 0, 'SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa', 1467447355, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0),
(2, 'news', 8, 19, 0, 'SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa', 1467447373, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0),
(3, 'news', 8, 9, 0, 'Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình.', 1467447448, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0),
(4, 'news', 8, 15, 0, 'Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.', 1467447590, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0),
(5, 'news', 8, 1, 0, 'Hiện tại bên mình sẽ KHÔNG làm khu vực Thủ đức, Bình Chánh, Hóc Môn, Củ Chi và các vùng <br />xa trung tâm Thành Phố', 1467530833, 0, 'Nguyễn Tất Thắng', 'thangvinades@gmail.com', '::1', 1, 0, 0),
(6, 'shops', 187, 7, 0, '12 năm học, những năm tháng miệt mài, những buổi ôn tập, những môn thi, dù thành hay bại, dù dại hay khôn, dù thua hay thắng... cũng đã xong. Ta đã đi thi nhiều khi chỉ bằng niềm tin, giờ ta chờ kết quả trong hy vọng. Chúc các bạn may mắn với tương lai phía trước&#33;', 1467550906, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0),
(7, 'videos', 212, 1, 0, 'Video hay quá...', 1467550952, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0),
(8, 'videos', 212, 1, 7, '@Tất Thắng <br />12 năm học, những năm tháng miệt mài, những buổi ôn tập, những môn thi, dù thành hay bại, dù dại hay khôn, dù thua hay thắng... cũng đã xong. Ta đã đi thi nhiều khi chỉ bằng niềm tin, giờ ta chờ kết quả trong hy vọng. Chúc các bạn may mắn với tương lai phía trước&#33;12 năm học, những năm tháng miệt mài, những buổi ôn tập, những môn thi, dù thành hay bại, dù dại hay khôn, dù thua hay thắng... cũng đã xong. Ta đã đi thi nhiều khi chỉ bằng niềm tin, giờ ta chờ kết quả trong hy vọng. Chúc các bạn may mắn với tương lai phía trước&#33;12 năm học, những năm tháng miệt mài, những buổi ôn tập, những môn thi, dù thành hay bại, dù dại hay khôn, dù thua hay thắng... cũng đã xong. Ta đã đi thi nhiều khi chỉ bằng niềm tin, giờ ta chờ kết quả trong hy vọng. Chúc các bạn may mắn với tương lai phía trước&#33;', 1467551083, 1, 'admin', 'thangviades@gmail.com', '::1', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_department`
--

CREATE TABLE `nv4_vi_contact_department` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `full_name` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fax` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `note` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `others` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cats` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `admins` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `weight` smallint(5) NOT NULL,
  `is_default` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_contact_department`
--

INSERT INTO `nv4_vi_contact_department` (`id`, `full_name`, `alias`, `image`, `phone`, `fax`, `email`, `address`, `note`, `others`, `cats`, `admins`, `act`, `weight`, `is_default`) VALUES
(1, 'Phòng Chăm sóc khách hàng', 'Cham-soc-khach-hang', '', '(08) 38.000.000[+84838000000]', '08 38.000.001', 'customer@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các yêu cầu, đề nghị, ý kiến liên quan đến hoạt động chính của doanh nghiệp', '{"viber":"myViber","skype":"mySkype","yahoo":"myYahoo"}', 'Tư vấn|Khiếu nại, phản ánh|Đề nghị hợp tác', '1/1/1/0;', 1, 1, 1),
(2, 'Phòng Kỹ thuật', 'Ky-thuat', '', '(08) 38.000.002[+84838000002]', '08 38.000.003', 'technical@mysite.com', '', 'Bộ phận tiếp nhận và giải quyết các câu hỏi liên quan đến kỹ thuật', '{"viber":"myViber2","skype":"mySkype2","yahoo":"myYahoo2"}', 'Thông báo lỗi|Góp ý cải tiến', '1/1/1/0;', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_reply`
--

CREATE TABLE `nv4_vi_contact_reply` (
  `rid` mediumint(8) UNSIGNED NOT NULL,
  `id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `reply_content` text COLLATE utf8mb4_unicode_ci,
  `reply_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `reply_aid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_contact_send`
--

CREATE TABLE `nv4_vi_contact_send` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `cid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `send_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `sender_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `sender_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sender_phone` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sender_ip` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_read` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `is_reply` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_blocks`
--

CREATE TABLE `nv4_vi_freecontent_blocks` (
  `bid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_blocks`
--

INSERT INTO `nv4_vi_freecontent_blocks` (`bid`, `title`, `description`) VALUES
(1, 'Sản phẩm', 'Sản phẩm của công ty cổ phần phát triển nguồn mở Việt Nam - VINADES.,JSC');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_freecontent_rows`
--

CREATE TABLE `nv4_vi_freecontent_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `bid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '' COMMENT '_blank|_self|_parent|_top',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `start_time` int(11) NOT NULL DEFAULT '0',
  `end_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0' COMMENT '0: In-Active, 1: Active, 2: Expired'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_freecontent_rows`
--

INSERT INTO `nv4_vi_freecontent_rows` (`id`, `bid`, `title`, `description`, `link`, `target`, `image`, `start_time`, `end_time`, `status`) VALUES
(1, 1, 'Hệ quản trị nội dung NukeViet', '<ul>\n	<li>Giải thưởng Nhân tài đất Việt 2011, 10.000+ website đang sử dụng</li>\n	<li>Được Bộ GD&amp;ĐT khuyến khích sử dụng trong các cơ sở giáo dục</li>\n	<li>Bộ TT&amp;TT quy định ưu tiên sử dụng trong cơ quan nhà nước</li>\n</ul>', 'http://vinades.vn/vi/san-pham/nukeviet/', '_blank', 'cms.jpg', 1467124147, 0, 1),
(2, 1, 'Cổng thông tin doanh nghiệp', '<ul>\n	<li>Tích hợp bán hàng trực tuyến</li>\n	<li>Tích hợp các nghiệp vụ quản lý (quản lý khách hàng, quản lý nhân sự, quản lý tài liệu)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-doanh-nghiep-NukeViet-portal/', '_blank', 'portal.jpg', 1467124147, 0, 1),
(3, 1, 'Cổng thông tin Phòng giáo dục, Sở giáo dục', '<ul>\n	<li>Tích hợp chung website hàng trăm trường</li>\n	<li>Tích hợp các ứng dụng trực tuyến (Tra điểm SMS, Tra cứu văn bằng, Học bạ điện tử ...)</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Cong-thong-tin-giao-duc-NukeViet-Edugate/', '_blank', 'edugate.jpg', 1467124147, 0, 1),
(4, 1, 'Tòa soạn báo điện tử chuyên nghiệp', '<ul>\n	<li>Bảo mật đa tầng, phân quyền linh hoạt</li>\n	<li>Hệ thống bóc tin tự động, đăng bài tự động, cùng nhiều chức năng tiên tiến khác...</li>\n</ul>', 'http://vinades.vn/vi/san-pham/Toa-soan-bao-dien-tu/', '_blank', 'toa-soan-dien-tu.jpg', 1467124147, 0, 1),
(5, 1, 'Giải pháp bán hàng trực tuyến', '<ul><li>Tích hợp các tính năng cơ bản bán hàng trực tuyến</li><li>Tích hợp với các cổng thanh toán, ví điện tử trên toàn quốc</li></ul>', 'http://vinades.vn', '_blank', 'shop.jpg', 1467124147, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu`
--

CREATE TABLE `nv4_vi_menu` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu`
--

INSERT INTO `nv4_vi_menu` (`id`, `title`) VALUES
(1, 'Top Menu');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_menu_rows`
--

CREATE TABLE `nv4_vi_menu_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` int(11) NOT NULL,
  `sort` int(11) NOT NULL DEFAULT '0',
  `lev` int(11) NOT NULL DEFAULT '0',
  `subitem` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `op` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `target` tinyint(4) DEFAULT '0',
  `css` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `active_type` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_menu_rows`
--

INSERT INTO `nv4_vi_menu_rows` (`id`, `parentid`, `mid`, `title`, `link`, `icon`, `note`, `weight`, `sort`, `lev`, `subitem`, `groups_view`, `module_name`, `op`, `target`, `css`, `active_type`, `status`) VALUES
(1, 0, 1, 'Giới thiệu', '/xedap/index.php?language=vi&nv=about', '', '', 1, 1, 0, '8,9', '6', 'about', '', 1, '', 0, 1),
(2, 0, 1, 'Tin Tức', '/xedap/index.php?language=vi&nv=news', '', '', 3, 5, 0, '16,17,18,19,20,21,22', '6', 'news', '', 1, '', 0, 1),
(3, 0, 1, 'Thành viên', '/xedap/index.php?language=vi&nv=users', '', '', 4, 13, 0, '', '6', 'users', '', 1, '', 0, 1),
(7, 0, 1, 'Liên hệ', '/xedap/index.php?language=vi&nv=contact', '', '', 5, 14, 0, '', '6', 'contact', '', 1, '', 0, 1),
(8, 1, 1, 'Giới thiệu về NukeViet', '/xedap/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet.html', '', '', 1, 2, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet', 1, '', 0, 1),
(9, 1, 1, 'Giới thiệu về NukeViet CMS', '/xedap/index.php?language=vi&nv=about&op=gioi-thieu-ve-nukeviet-cms.html', '', '', 2, 3, 1, '', '6', 'about', 'gioi-thieu-ve-nukeviet-cms', 1, '', 0, 1),
(23, 0, 1, 'Xe đạp', '/xedap/index.php?language=vi&nv=shops', '', '', 2, 4, 0, '', '6', 'shops', '', 1, '', 0, 1),
(24, 0, 1, 'Video', '/xedap/index.php?language=vi&nv=videos', '', '', 6, 15, 0, '', '6', 'videos', '', 1, '', 0, 1),
(16, 2, 1, 'Đối tác', '/xedap/index.php?language=vi&nv=news&op=Doi-tac', '', '', 1, 6, 1, '', '6', 'news', 'Doi-tac', 1, '', 0, 1),
(17, 2, 1, 'Tuyển dụng', '/xedap/index.php?language=vi&nv=news&op=Tuyen-dung', '', '', 2, 7, 1, '', '6', 'news', 'Tuyen-dung', 1, '', 0, 1),
(18, 2, 1, 'Rss', '/xedap/index.php?language=vi&nv=news&op=rss', '', '', 3, 8, 1, '', '6', 'news', 'rss', 1, '', 0, 1),
(19, 2, 1, 'Đăng bài viết', '/xedap/index.php?language=vi&nv=news&op=content', '', '', 4, 9, 1, '', '6', 'news', 'content', 1, '', 0, 1),
(20, 2, 1, 'Tìm kiếm', '/xedap/index.php?language=vi&nv=news&op=search', '', '', 5, 10, 1, '', '6', 'news', 'search', 1, '', 0, 1),
(21, 2, 1, 'Tin tức', '/xedap/index.php?language=vi&nv=news&op=Tin-tuc', '', '', 6, 11, 1, '', '6', 'news', 'Tin-tuc', 1, '', 0, 1),
(22, 2, 1, 'Sản phẩm', '/xedap/index.php?language=vi&nv=news&op=San-pham', '', '', 7, 12, 1, '', '6', 'news', 'San-pham', 1, '', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modfuncs`
--

CREATE TABLE `nv4_vi_modfuncs` (
  `func_id` mediumint(8) UNSIGNED NOT NULL,
  `func_name` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `func_custom_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `in_module` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `show_func` tinyint(4) NOT NULL DEFAULT '0',
  `in_submenu` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `subweight` smallint(2) UNSIGNED NOT NULL DEFAULT '1',
  `setting` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modfuncs`
--

INSERT INTO `nv4_vi_modfuncs` (`func_id`, `func_name`, `alias`, `func_custom_name`, `in_module`, `show_func`, `in_submenu`, `subweight`, `setting`) VALUES
(1, 'main', 'main', 'Main', 'about', 1, 0, 1, ''),
(2, 'sitemap', 'sitemap', 'Sitemap', 'about', 0, 0, 0, ''),
(3, 'rss', 'rss', 'Rss', 'about', 0, 0, 0, ''),
(4, 'main', 'main', 'Main', 'news', 1, 0, 1, ''),
(5, 'viewcat', 'viewcat', 'Viewcat', 'news', 1, 0, 2, ''),
(6, 'topic', 'topic', 'Topic', 'news', 1, 0, 3, ''),
(7, 'content', 'content', 'Content', 'news', 1, 1, 4, ''),
(8, 'detail', 'detail', 'Detail', 'news', 1, 0, 5, ''),
(9, 'tag', 'tag', 'Tag', 'news', 1, 0, 6, ''),
(10, 'rss', 'rss', 'Rss', 'news', 1, 1, 7, ''),
(11, 'search', 'search', 'Search', 'news', 1, 1, 8, ''),
(12, 'groups', 'groups', 'Groups', 'news', 1, 0, 9, ''),
(13, 'sitemap', 'sitemap', 'Sitemap', 'news', 0, 0, 0, ''),
(14, 'print', 'print', 'Print', 'news', 0, 0, 0, ''),
(15, 'rating', 'rating', 'Rating', 'news', 0, 0, 0, ''),
(16, 'savefile', 'savefile', 'Savefile', 'news', 0, 0, 0, ''),
(17, 'sendmail', 'sendmail', 'Sendmail', 'news', 0, 0, 0, ''),
(18, 'main', 'main', 'Main', 'users', 1, 0, 1, ''),
(19, 'login', 'login', 'Đăng nhập', 'users', 1, 1, 2, ''),
(20, 'register', 'register', 'Đăng ký', 'users', 1, 1, 3, ''),
(21, 'lostpass', 'lostpass', 'Khôi phục mật khẩu', 'users', 1, 1, 4, ''),
(22, 'active', 'active', 'Kích hoạt tài khoản', 'users', 1, 0, 5, ''),
(23, 'lostactivelink', 'lostactivelink', 'Lostactivelink', 'users', 1, 0, 6, ''),
(24, 'editinfo', 'editinfo', 'Thiếp lập tài khoản', 'users', 1, 1, 7, ''),
(25, 'memberlist', 'memberlist', 'Danh sách thành viên', 'users', 1, 1, 8, ''),
(26, 'avatar', 'avatar', 'Avatar', 'users', 1, 0, 9, ''),
(27, 'logout', 'logout', 'Thoát', 'users', 1, 1, 10, ''),
(28, 'groups', 'groups', 'Quản lý nhóm', 'users', 1, 0, 11, ''),
(29, 'oauth', 'oauth', 'Oauth', 'users', 0, 0, 0, ''),
(30, 'main', 'main', 'Main', 'statistics', 1, 0, 1, ''),
(31, 'allreferers', 'allreferers', 'Theo đường dẫn đến site', 'statistics', 1, 1, 2, ''),
(32, 'allcountries', 'allcountries', 'Theo quốc gia', 'statistics', 1, 1, 3, ''),
(33, 'allbrowsers', 'allbrowsers', 'Theo trình duyệt', 'statistics', 1, 1, 4, ''),
(34, 'allos', 'allos', 'Theo hệ điều hành', 'statistics', 1, 1, 5, ''),
(35, 'allbots', 'allbots', 'Theo máy chủ tìm kiếm', 'statistics', 1, 1, 6, ''),
(36, 'referer', 'referer', 'Đường dẫn đến site theo tháng', 'statistics', 1, 0, 7, ''),
(37, 'main', 'main', 'Main', 'banners', 1, 0, 1, ''),
(38, 'addads', 'addads', 'Addads', 'banners', 1, 0, 2, ''),
(39, 'clientinfo', 'clientinfo', 'Clientinfo', 'banners', 1, 0, 3, ''),
(40, 'stats', 'stats', 'Stats', 'banners', 1, 0, 4, ''),
(41, 'cledit', 'cledit', 'Cledit', 'banners', 0, 0, 0, ''),
(42, 'click', 'click', 'Click', 'banners', 0, 0, 0, ''),
(43, 'clinfo', 'clinfo', 'Clinfo', 'banners', 0, 0, 0, ''),
(44, 'logininfo', 'logininfo', 'Logininfo', 'banners', 0, 0, 0, ''),
(45, 'viewmap', 'viewmap', 'Viewmap', 'banners', 0, 0, 0, ''),
(46, 'main', 'main', 'main', 'comment', 1, 0, 1, ''),
(47, 'post', 'post', 'post', 'comment', 1, 0, 2, ''),
(48, 'like', 'like', 'Like', 'comment', 1, 0, 3, ''),
(49, 'delete', 'delete', 'Delete', 'comment', 1, 0, 4, ''),
(50, 'main', 'main', 'Main', 'page', 1, 0, 1, ''),
(51, 'sitemap', 'sitemap', 'Sitemap', 'page', 0, 0, 0, ''),
(52, 'rss', 'rss', 'Rss', 'page', 0, 0, 0, ''),
(53, 'main', 'main', 'Main', 'siteterms', 1, 0, 1, ''),
(54, 'rss', 'rss', 'Rss', 'siteterms', 1, 0, 2, ''),
(55, 'sitemap', 'sitemap', 'Sitemap', 'siteterms', 0, 0, 0, ''),
(56, 'main', 'main', 'Main', 'contact', 1, 0, 1, ''),
(57, 'main', 'main', 'Main', 'voting', 1, 0, 1, ''),
(58, 'main', 'main', 'Main', 'seek', 1, 0, 1, ''),
(59, 'main', 'main', 'Main', 'feeds', 1, 0, 1, ''),
(209, 'wishlist', 'wishlist', 'Wishlist', 'shops', 1, 0, 13, ''),
(207, 'tag', 'tag', 'Tag', 'shops', 1, 0, 14, ''),
(208, 'viewcat', 'viewcat', 'Viewcat', 'shops', 1, 0, 2, ''),
(206, 'sitemap', 'sitemap', 'Sitemap', 'shops', 0, 0, 0, ''),
(205, 'shippingajax', 'shippingajax', 'Shippingajax', 'shops', 1, 0, 16, ''),
(203, 'sendmail', 'sendmail', 'Sendmail', 'shops', 0, 0, 0, ''),
(204, 'setcart', 'setcart', 'Setcart', 'shops', 0, 0, 0, ''),
(201, 'search', 'search', 'Search', 'shops', 1, 0, 4, ''),
(202, 'search_result', 'search_result', 'Search_result', 'shops', 1, 0, 11, ''),
(200, 'rss', 'rss', 'Rss', 'shops', 0, 0, 0, ''),
(199, 'review', 'review', 'Review', 'shops', 0, 0, 0, ''),
(198, 'remove', 'remove', 'Remove', 'shops', 0, 0, 0, ''),
(197, 'print_pro', 'print_pro', 'Print_pro', 'shops', 0, 0, 0, ''),
(196, 'print', 'print', 'Print', 'shops', 0, 0, 0, ''),
(195, 'point', 'point', 'Point', 'shops', 1, 0, 15, ''),
(194, 'payment', 'payment', 'Payment', 'shops', 1, 0, 7, ''),
(193, 'order', 'order', 'Order', 'shops', 1, 0, 6, ''),
(192, 'main', 'main', 'Main', 'shops', 1, 0, 1, ''),
(191, 'loadcart', 'loadcart', 'Loadcart', 'shops', 0, 0, 0, ''),
(190, 'history', 'history', 'History', 'shops', 1, 0, 9, ''),
(189, 'group', 'group', 'Group', 'shops', 1, 0, 10, ''),
(188, 'download', 'download', 'Download', 'shops', 1, 0, 17, ''),
(186, 'delhis', 'delhis', 'Delhis', 'shops', 0, 0, 0, ''),
(184, 'compare', 'compare', 'Compare', 'shops', 1, 0, 12, ''),
(211, 'main', 'main', 'Main', 'slider', 1, 1, 1, ''),
(187, 'detail', 'detail', 'Detail', 'shops', 1, 0, 3, ''),
(185, 'complete', 'complete', 'Complete', 'shops', 1, 0, 8, ''),
(183, 'checkorder', 'checkorder', 'Checkorder', 'shops', 0, 0, 0, ''),
(182, 'cart', 'cart', 'Cart', 'shops', 1, 0, 5, ''),
(181, 'blockcat', 'blockcat', 'Blockcat', 'shops', 1, 0, 18, ''),
(210, 'wishlist_update', 'wishlist_update', 'Wishlist_update', 'shops', 0, 0, 0, ''),
(212, 'detail', 'detail', 'Detail', 'videos', 1, 0, 7, ''),
(213, 'groups', 'groups', 'Groups', 'videos', 1, 0, 6, ''),
(214, 'list_playlist_cat', 'list_playlist_cat', 'List_playlist_cat', 'videos', 0, 0, 0, ''),
(215, 'main', 'main', 'Main', 'videos', 1, 0, 1, ''),
(216, 'player', 'player', 'Player', 'videos', 1, 0, 5, ''),
(217, 'playlists', 'playlists', 'Playlists', 'videos', 1, 0, 3, ''),
(218, 'rating', 'rating', 'Rating', 'videos', 0, 0, 0, ''),
(219, 'rss', 'rss', 'Rss', 'videos', 1, 1, 13, ''),
(220, 'savefile', 'savefile', 'Savefile', 'videos', 0, 0, 0, ''),
(221, 'search', 'search', 'Search', 'videos', 1, 1, 8, ''),
(222, 'sendmail', 'sendmail', 'Sendmail', 'videos', 0, 0, 0, ''),
(223, 'sitemap', 'sitemap', 'Sitemap', 'videos', 0, 0, 0, ''),
(224, 'tag', 'tag', 'Tag', 'videos', 1, 0, 12, ''),
(225, 'uploader', 'uploader', 'Uploader', 'videos', 1, 0, 4, ''),
(226, 'user-playlist', 'user-playlist', 'User-playlist', 'videos', 1, 1, 9, ''),
(227, 'user-video', 'user-video', 'User-video', 'videos', 1, 1, 10, ''),
(228, 'v_funcs', 'v_funcs', 'V_funcs', 'videos', 1, 0, 11, ''),
(229, 'viewcat', 'viewcat', 'Viewcat', 'videos', 1, 0, 2, ''),
(230, 'main', 'main', 'Main', 'support', 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modthemes`
--

CREATE TABLE `nv4_vi_modthemes` (
  `func_id` mediumint(8) DEFAULT NULL,
  `layout` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modthemes`
--

INSERT INTO `nv4_vi_modthemes` (`func_id`, `layout`, `theme`) VALUES
(0, 'left-main-right', 'default'),
(0, 'main', 'mobile_default'),
(1, 'left-main', 'default'),
(1, 'main', 'mobile_default'),
(4, 'main', 'mobile_default'),
(4, 'main-right', 'default'),
(5, 'main', 'mobile_default'),
(5, 'main-right', 'default'),
(6, 'main', 'mobile_default'),
(6, 'main-right', 'default'),
(7, 'main', 'mobile_default'),
(7, 'main-right', 'default'),
(8, 'main', 'mobile_default'),
(8, 'main-right', 'default'),
(9, 'main', 'mobile_default'),
(9, 'main-right', 'default'),
(10, 'main-right', 'default'),
(11, 'main', 'mobile_default'),
(11, 'main-right', 'default'),
(12, 'main', 'mobile_default'),
(12, 'main-right', 'default'),
(18, 'left-main', 'default'),
(18, 'main', 'mobile_default'),
(19, 'left-main', 'default'),
(19, 'main', 'mobile_default'),
(20, 'left-main', 'default'),
(20, 'main', 'mobile_default'),
(21, 'left-main', 'default'),
(21, 'main', 'mobile_default'),
(22, 'left-main', 'default'),
(22, 'main', 'mobile_default'),
(23, 'left-main', 'default'),
(23, 'main', 'mobile_default'),
(24, 'left-main', 'default'),
(24, 'main', 'mobile_default'),
(25, 'left-main', 'default'),
(25, 'main', 'mobile_default'),
(26, 'left-main', 'default'),
(27, 'left-main', 'default'),
(27, 'main', 'mobile_default'),
(28, 'left-main', 'default'),
(28, 'main', 'mobile_default'),
(30, 'left-main', 'default'),
(30, 'main', 'mobile_default'),
(31, 'left-main', 'default'),
(31, 'main', 'mobile_default'),
(32, 'left-main', 'default'),
(32, 'main', 'mobile_default'),
(33, 'left-main', 'default'),
(33, 'main', 'mobile_default'),
(34, 'left-main', 'default'),
(34, 'main', 'mobile_default'),
(35, 'left-main', 'default'),
(35, 'main', 'mobile_default'),
(36, 'left-main', 'default'),
(36, 'main', 'mobile_default'),
(37, 'left-main', 'default'),
(37, 'main', 'mobile_default'),
(38, 'left-main', 'default'),
(38, 'main', 'mobile_default'),
(39, 'left-main', 'default'),
(39, 'main', 'mobile_default'),
(40, 'left-main', 'default'),
(40, 'main', 'mobile_default'),
(46, 'left-main', 'default'),
(46, 'main', 'mobile_default'),
(47, 'left-main', 'default'),
(47, 'main', 'mobile_default'),
(48, 'left-main', 'default'),
(48, 'main', 'mobile_default'),
(49, 'left-main', 'default'),
(49, 'main', 'mobile_default'),
(50, 'left-main', 'default'),
(50, 'main', 'mobile_default'),
(53, 'left-main', 'default'),
(53, 'main', 'mobile_default'),
(54, 'left-main', 'default'),
(54, 'main', 'mobile_default'),
(56, 'left-main', 'default'),
(56, 'main', 'mobile_default'),
(57, 'left-main', 'default'),
(57, 'main', 'mobile_default'),
(58, 'left-main', 'default'),
(58, 'main', 'mobile_default'),
(59, 'left-main', 'default'),
(59, 'main', 'mobile_default'),
(181, 'main', 'default'),
(181, 'main', 'mobile_default'),
(182, 'main', 'default'),
(182, 'main', 'mobile_default'),
(183, 'left-main-right', 'default'),
(184, 'main', 'default'),
(184, 'main', 'mobile_default'),
(185, 'main', 'default'),
(185, 'main', 'mobile_default'),
(186, 'left-main-right', 'default'),
(187, 'main', 'default'),
(187, 'main', 'mobile_default'),
(188, 'main', 'default'),
(188, 'main', 'mobile_default'),
(189, 'main', 'default'),
(189, 'main', 'mobile_default'),
(190, 'main', 'default'),
(190, 'main', 'mobile_default'),
(191, 'left-main-right', 'default'),
(192, 'main', 'default'),
(192, 'main', 'mobile_default'),
(193, 'main', 'default'),
(193, 'main', 'mobile_default'),
(194, 'main', 'default'),
(194, 'main', 'mobile_default'),
(195, 'main', 'default'),
(195, 'main', 'mobile_default'),
(196, 'left-main-right', 'default'),
(197, 'left-main-right', 'default'),
(198, 'left-main-right', 'default'),
(199, 'left-main-right', 'default'),
(200, 'left-main-right', 'default'),
(201, 'main', 'default'),
(201, 'main', 'mobile_default'),
(202, 'main', 'default'),
(202, 'main', 'mobile_default'),
(203, 'left-main-right', 'default'),
(204, 'left-main-right', 'default'),
(205, 'main', 'default'),
(205, 'main', 'mobile_default'),
(206, 'left-main-right', 'default'),
(207, 'main', 'default'),
(207, 'main', 'mobile_default'),
(208, 'main', 'default'),
(208, 'main', 'mobile_default'),
(209, 'main', 'default'),
(209, 'main', 'mobile_default'),
(210, 'left-main-right', 'default'),
(211, 'left-main-right', 'default'),
(211, 'main', 'mobile_default'),
(212, 'left-main', 'default'),
(212, 'main', 'mobile_default'),
(213, 'left-main', 'default'),
(213, 'main', 'mobile_default'),
(214, 'left-main-right', 'default'),
(215, 'left-main', 'default'),
(215, 'main', 'mobile_default'),
(216, 'left-main', 'default'),
(216, 'main', 'mobile_default'),
(217, 'left-main', 'default'),
(217, 'main', 'mobile_default'),
(218, 'left-main-right', 'default'),
(219, 'left-main', 'default'),
(219, 'main', 'mobile_default'),
(220, 'left-main-right', 'default'),
(221, 'left-main', 'default'),
(221, 'main', 'mobile_default'),
(222, 'left-main-right', 'default'),
(223, 'left-main-right', 'default'),
(224, 'left-main', 'default'),
(224, 'main', 'mobile_default'),
(225, 'left-main', 'default'),
(225, 'main', 'mobile_default'),
(226, 'left-main', 'default'),
(226, 'main', 'mobile_default'),
(227, 'left-main', 'default'),
(227, 'main', 'mobile_default'),
(228, 'left-main', 'default'),
(228, 'main', 'mobile_default'),
(229, 'left-main', 'default'),
(229, 'main', 'mobile_default'),
(230, 'left-main-right', 'default');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_modules`
--

CREATE TABLE `nv4_vi_modules` (
  `title` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL,
  `module_file` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_data` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `module_upload` varchar(55) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `custom_title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `admin_title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `main_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admin_file` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `theme` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `mobile` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `admins` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `rss` tinyint(4) NOT NULL DEFAULT '1',
  `gid` smallint(5) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_modules`
--

INSERT INTO `nv4_vi_modules` (`title`, `module_file`, `module_data`, `module_upload`, `custom_title`, `admin_title`, `set_time`, `main_file`, `admin_file`, `theme`, `mobile`, `description`, `keywords`, `groups_view`, `weight`, `act`, `admins`, `rss`, `gid`) VALUES
('about', 'page', 'about', 'about', 'Giới thiệu', '', 1467124147, 1, 1, '', '', '', '', '6', 1, 1, '', 1, 0),
('news', 'news', 'news', 'news', 'Tin Tức', '', 1467124147, 1, 1, '', '', '', '', '6', 2, 1, '', 1, 0),
('users', 'users', 'users', 'users', 'Thành viên', 'Tài khoản', 1467124147, 1, 1, '', '', '', '', '6', 3, 1, '', 0, 0),
('contact', 'contact', 'contact', 'contact', 'Liên hệ', '', 1467124147, 1, 1, '', '', '', '', '6', 5, 1, '', 0, 0),
('statistics', 'statistics', 'statistics', 'statistics', 'Thống kê', '', 1467124147, 1, 1, '', '', '', 'online, statistics', '6', 6, 1, '', 0, 0),
('voting', 'voting', 'voting', 'voting', 'Thăm dò ý kiến', '', 1467124147, 1, 1, '', '', '', '', '6', 7, 1, '', 1, 0),
('banners', 'banners', 'banners', 'banners', 'Quảng cáo', '', 1467124147, 1, 1, '', '', '', '', '6', 8, 1, '', 0, 0),
('seek', 'seek', 'seek', 'seek', 'Tìm kiếm', '', 1467124147, 1, 0, '', '', '', '', '6', 9, 1, '', 0, 0),
('menu', 'menu', 'menu', 'menu', 'Menu Site', '', 1467124147, 0, 1, '', '', '', '', '6', 10, 1, '', 0, 0),
('feeds', 'feeds', 'feeds', 'feeds', 'RSS-feeds', 'RSS-feeds', 1467124147, 1, 1, '', '', '', '', '6', 11, 1, '', 0, 0),
('page', 'page', 'page', 'page', 'Page', '', 1467124147, 1, 1, '', '', '', '', '6', 12, 1, '', 1, 0),
('comment', 'comment', 'comment', 'comment', 'Bình luận', 'Quản lý bình luận', 1467124147, 0, 1, '', '', '', '', '6', 13, 1, '', 0, 0),
('siteterms', 'page', 'siteterms', 'siteterms', 'Điều khoản sử dụng', '', 1467124147, 1, 1, '', '', '', '', '6', 14, 1, '', 1, 0),
('freecontent', 'freecontent', 'freecontent', 'freecontent', 'Giới thiệu sản phẩm', '', 1467124147, 0, 1, '', '', '', '', '6', 15, 1, '', 0, 0),
('shops', 'shops', 'shops', 'shops', 'Xe đạp', 'Xe đạp', 1467213738, 1, 1, '', '', '', '', '6', 4, 1, '', 1, 0),
('slider', 'slider', 'slider', 'slider', 'Slide ảnh', 'Slide ảnh', 1467193480, 1, 1, '', '', '', '', '6', 16, 1, '', 0, 0),
('videos', 'videos', 'videos', 'videos', 'Video', 'Video', 1467384183, 1, 1, '', '', '', '', '6', 17, 1, '', 1, 0),
('support', 'support', 'support', 'support', 'Hỗ trợ trực tuyến', 'Hỗ trợ trực tuyến', 1467535107, 1, 1, '', '', '', '', '6', 18, 1, '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_1`
--

CREATE TABLE `nv4_vi_news_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_1`
--

INSERT INTO `nv4_vi_news_1` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 4, 1, 5, 1),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 14, 0, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 1, 0, 5, 1),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_2`
--

CREATE TABLE `nv4_vi_news_2` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_2`
--

INSERT INTO `nv4_vi_news_2` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_8`
--

CREATE TABLE `nv4_vi_news_8` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_8`
--

INSERT INTO `nv4_vi_news_8` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 4, 1, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_9`
--

CREATE TABLE `nv4_vi_news_9` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_9`
--

INSERT INTO `nv4_vi_news_9` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_10`
--

CREATE TABLE `nv4_vi_news_10` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_10`
--

INSERT INTO `nv4_vi_news_10` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0),
(19, 10, '10', 0, 1, '123host', 0, 1453192440, 1453192440, 1, 1453192440, 0, 2, 'Chọn nhà cung cấp Hosting nào tốt cho NukeViet?', 'chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet', 'NukeViet được xây dựng và phát triển để tương thích với nhiều loại hosting và server. Tuy nhiên, để website NukeViet của bạn hoạt động tốt trên môi trường internet, cần chọn một nhà cung cấp Hosting uy tín, tin cậy và để &quot;chọn mặt gởi vàng&quot; website của mình. Bài viết này sẽ trình bày các tiêu chí để lựa chọn một nhà cung cấp Hosting tốt cho website của bạn.', '2016_01/how-to-choose-hosting.jpg', '', 1, 1, '4', 1, 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_11`
--

CREATE TABLE `nv4_vi_news_11` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_11`
--

INSERT INTO `nv4_vi_news_11` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 1, 1, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 1, 0, 5, 1),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 1, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_12`
--

CREATE TABLE `nv4_vi_news_12` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_12`
--

INSERT INTO `nv4_vi_news_12` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 4, 1, 5, 1),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 14, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_admins`
--

CREATE TABLE `nv4_vi_news_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block`
--

CREATE TABLE `nv4_vi_news_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block`
--

INSERT INTO `nv4_vi_news_block` (`bid`, `id`, `weight`) VALUES
(1, 1, 1),
(2, 17, 2),
(2, 16, 3),
(2, 15, 4),
(2, 14, 5),
(2, 12, 6),
(2, 11, 7),
(2, 1, 8),
(2, 6, 9);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_block_cat`
--

CREATE TABLE `nv4_vi_news_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_block_cat`
--

INSERT INTO `nv4_vi_news_block_cat` (`bid`, `adddefault`, `numbers`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 0, 4, 'Tin tiêu điểm', 'Tin-tieu-diem', '', 'Tin tiêu điểm', 1, '', 1279945710, 1279956943),
(2, 1, 4, 'Tin mới nhất', 'Tin-moi-nhat', '', 'Tin mới nhất', 2, '', 1279945725, 1279956445);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_cat`
--

CREATE TABLE `nv4_vi_news_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `ad_block_cat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_cat`
--

INSERT INTO `nv4_vi_news_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `ad_block_cat`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Tin tức', '', 'Tin-tuc', '', '', '', 0, 1, 1, 0, 'viewcat_main_right', 3, '8,12,9', 1, 4, 2, 0, '', '', '', 1274986690, 1274986690, '6'),
(2, 0, 'Sản phẩm', '', 'San-pham', '', '', '', 0, 2, 5, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274986705, 1274986705, '6'),
(8, 1, 'Thông cáo báo chí', '', 'thong-cao-bao-chi', '', '', '', 0, 1, 2, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987105, 1274987244, '6'),
(9, 1, 'Tin công nghệ', '', 'Tin-cong-nghe', '', '', '', 0, 3, 4, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987212, 1274987212, '6'),
(10, 0, 'Đối tác', '', 'Doi-tac', '', '', '', 0, 3, 9, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987460, 1274987460, '6'),
(11, 0, 'Tuyển dụng', '', 'Tuyen-dung', '', '', '', 0, 4, 12, 0, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987538, 1274987538, '6'),
(12, 1, 'Bản tin nội bộ', '', 'Ban-tin-noi-bo', '', '', '', 0, 2, 3, 1, 'viewcat_page_new', 0, '', 1, 4, 2, 0, '', '', '', 1274987902, 1274987902, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_config_post`
--

CREATE TABLE `nv4_vi_news_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_config_post`
--

INSERT INTO `nv4_vi_news_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(1, 0, 0, 0, 0),
(2, 0, 0, 0, 0),
(3, 0, 0, 0, 0),
(4, 0, 0, 0, 0),
(7, 0, 0, 0, 0),
(5, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_detail`
--

CREATE TABLE `nv4_vi_news_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imgposition` tinyint(1) NOT NULL DEFAULT '1',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_print` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_detail`
--

INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(1, '<p style="text-align: justify;">Để chuyên nghiệp hóa việc phát hành mã nguồn mở NukeViet, Ban quản trị NukeViet quyết định thành lập doanh nghiệp chuyên quản NukeViet mang tên Công ty cổ phần Phát triển nguồn mở Việt Nam (Viết tắt là VINADES.,JSC), chính thức ra mắt vào ngày 25-2-2010 (trụ sở tại Hà Nội) nhằm phát triển, phổ biến hệ thống NukeViet tại Việt Nam.<br /> <br /> Theo ông Nguyễn Anh Tú, Chủ tịch HĐQT VINADES, công ty sẽ phát triển bộ mã nguồn NukeViet nhất quán theo con đường mã nguồn mở đã chọn, chuyên nghiệp và quy mô hơn bao giờ hết. Đặc biệt là hoàn toàn miễn phí đúng tinh thần mã nguồn mở quốc tế.<br /> <br /> NukeViet là một hệ quản trị nội dung mã nguồn mở (Opensource Content Management System) thuần Việt từ nền tảng PHP-Nuke và cơ sở dữ liệu MySQL. Người sử dụng thường gọi NukeViet là portal vì nó có khả năng tích hợp nhiều ứng dụng trên nền web, cho phép người sử dụng có thể dễ dàng xuất bản và quản trị các nội dung của họ lên internet hoặc intranet.<br /> <br /> NukeViet cung cấp nhiều dịch vụ và ứng dụng nhờ khả năng tăng cường tính năng thêm các module, block... tạo sự dễ dàng cài đặt, quản lý, ngay cả với những người mới tiếp cận với website. Người dùng có thể tìm hiểu thêm thông tin và tải về sản phẩm tại địa chỉ http://nukeviet.vn</p><blockquote> <p style="text-align: justify;"> <em>Thông tin ra mắt công ty VINADES có thể tìm thấy trên trang 7 báo Hà Nội Mới ra ngày 25/02/2010 (<a href="http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm" target="_blank">xem chi tiết</a>), Bản tin tiếng Anh của đài tiếng nói Việt Nam ngày 26/02/2010 (<a href="http://english.vovnews.vn/Home/First-opensource-company-starts-operation/20102/112960.vov" target="_blank">xem chi tiết</a>); trang 7 báo An ninh Thủ Đô số 2858 ra vào thứ 2 ngày 01/03/2010 và các trang tin tức, báo điện tử khác.</em></p></blockquote>', 'http://hanoimoi.com.vn/newsdetail/Cong_nghe/309750/ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-viet-nam.htm', 2, 0, 1, 1, 1, 0),
(6, '<div style="text-align: justify;">Tính đến năm 2015, ước tính có hơn 10.000 website đang sử dụng NukeViet. Nhu cầu triển khai NukeViet không chỉ dừng lại ở các cá nhân, doanh nghiệp, cơ sở giáo dục mà đã lan rộng ra khối chính phủ.</div><div style="text-align: justify;"><br  />Cộng đồng NukeViet cũng đã lớn mạnh hơn trước. Nếu như đầu năm 2010, ngoài Công ty VINADES chỉ có một vài công ty cung cấp dịch vụ cho NukeViet nhưng không chuyên, thì theo thống kê năm 2015 đã có hàng trăm doanh nghiệp đang cung cấp dịch vụ có liên quan đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... trên nền tảng NukeViet. Đặc biệt có nhiều doanh nghiệp hoàn toàn cung cấp dịch vụ thiết kế web, cung cấp giao diện, module... sử dụng nền tảng NukeViet. Nhiều sản phẩm phái sinh từ NukeViet đã ra đời, NukeViet được phát triển thành nhiều phần mềm quản lý sử dụng trên mạng LAN hay trên internet, được phát triển thành các phần mềm dùng riêng hay sử dụng như một nền tảng để cung cấp dịch vụ online, thậm chí đã được thử nghiệm tích hợp vào trong các thiết bị phần cứng để bán cùng thiết bị (NukeViet Captive Portal - dùng để quản lý người dùng truy cập internet, tích hợp trong thiết bị quản lý wifi)...<br  /><br  />Tuy nhiên, cùng với những cơ hội, cộng đồng NukeViet đang đứng trước một thách thức mới. NukeViet cần tập hợp tất cả các doanh nghiệp, tổ chức và cá nhân đang cung cấp dịch vụ cho NukeViet và liên kết các đơn vị này với nhau để giúp nhau chuyên nghiệp hóa, cùng nhau chia sẻ những cơ hội kinh doanh và trở lên lớn mạnh hơn.<br  /><br  />Nếu cộng đồng NukeViet có 500 công ty siêu nhỏ chỉ 2-3 người và những công ty này đứng riêng rẽ như hiện nay thì NukeViet mãi bé nhỏ và sẽ không làm được việc gì. Nhưng nếu 500 công ty này biết nhau, cùng làm một số việc, cùng tham gia phát triển NukeViet, đó sẽ là sức mạnh rất lớn cho một phần mềm nguồn mở như NukeViet, và đó cũng là cơ hội rất lớn để các công ty nhỏ ấy trở lên chuyên nghiệp và vững mạnh.<br  /><br  />Cho dù bạn là doanh nghiệp hay một nhóm kinh doanh, cho dù bạn đang cung cấp bất kỳ dịch vụ có liên quan trực tiếp đến NukeViet như: đào tạo NukeViet, thiết kế web, phát triển phần mềm, cung cấp giao diện, module... hoặc gián tiếp có liên quan đến NukeViet (ví dụ các công ty hosting, các nhà cung cấp dịch vụ thanh toán điện tử...). Bạn đều là một thành phần quan trọng của NukeViet. Dù bạn là công ty to hay một nhóm nhỏ, hãy đăng ký vào danh sách các đối tác của NukeViet để thiết lập kênh liên lạc với các doanh nghiệp khác trong cộng đồng NukeViet và nhận sự hỗ trợ từ Ban Quản Trị NukeViet cũng như từ các cơ quan nhà nước đang có nhu cầu tìm kiếm các đơn vị cung ứng dịch vụ cho NukeViet.<br  /><br  />Hãy gửi email cho Ban Quản Trị NukeViet về địa chỉ: admin@nukeviet.vn để đăng ký vào danh sách các đơn vị hỗ trợ NukeViet.<br  /><br  />Tiêu đề email: Đăng ký vào danh sách các đơn vị cung cấp dịch vụ dựa trên NukeViet<br  />Nội dung email: Thông tin về đơn vị, dịch vụ cung cấp.<br  /><br  />Hoặc gửi yêu cầu tại đây: <a href="http://nukeviet.vn/vi/contact/" target="_blank">http://nukeviet.vn/vi/contact/</a><br  /><br  />Mọi yêu cầu sẽ được phản hồi trong vòng 24h. Trường hợp không nhận được phản hồi, hãy liên hệ với Ban Quản Trị NukeViet qua các kênh liên lạc khác như:<br  /><br  />- Diễn đàn doanh nghiệp NukeViet: <a href="http://forum.nukeviet.vn/viewforum.php?f=4" target="_blank">http://forum.nukeviet.vn/viewforum.php?f=4</a><br  />- Fanpage NukeViet trên FaceBook: <a href="http://fb.com/nukeviet/" target="_blank">http://fb.com/nukeviet/</a><br  /><br  />Vui lòng truy cập địa chỉ sau để xem danh sách các đơn vị: <a href="https://nukeviet.vn/vi/partner/" target="_blank">https://nukeviet.vn/vi/partner/</a></div>', 'http://vinades.vn/vi/news/thong-cao-bao-chi/Thu-moi-hop-tac-6/', 2, 0, 1, 1, 1, 0),
(7, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên PHP và MySQL<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul><li>Phát triển hệ thống NukeViet.</li><li>Phân tích yêu cầu và lập trình riêng cho các dự án cụ thể.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng của sản phẩm trong khi sản phẩm hoạt động.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Nắm vững kiến thức hướng đối tượng, cấu trúc dữ liệu và giải thuật.</li><li>Có kinh nghiệm về PHP và các hệ cơ sở dữ liệu MySQL.…</li><li>Tư duy lập trình tốt, thiết kế CSDL chuẩn, biết xử lý nhanh các vấn đề khi phát sinh nghiệp vụ mới.</li><li>Sửa được các lỗi, nâng cấp tính năng cho các module đã có. 6. Viết module mới.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo.</li><li>Đam mê công việc về lập trình web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href="http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/" target="_blank"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', 'http://vinades.vn/vi/news/Tuyen-dung/', 2, 0, 1, 1, 1, 0),
(8, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Chuyên viên đồ hoạ.<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><br /><br /><em><strong>Công việc chính:</strong></em><ul><li>Thiết kế layout, banner, logo website theo yêu cầu của dự án.</li><li>Đưa ra sản phẩm sáng tạo dựa trên ý tưởng của khách hàng.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><em><strong>Ngoài ra bạn cần có khả năng thực hiện các công việc sau:</strong></em><ul><li>Cắt và ghép giao diện cho hệ thống.</li><li>Valid CSS, xHTML.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Sử dụng thành thạo phần mềm thiết kế: Photoshop ngoài ra cần biết cách sử dụng các phần mềm thiết kế khác là một lợi thế.</li><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Có kinh nghiệm, kỹ năng thiết kế giao diện web, logo, banner.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt</li><li>Đam mê công việc thiết kế và website.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href="http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/" target="_blank"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0),
(9, 'Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) đang thu hút tuyển dụng nhân tài ở các vị trí:<ol><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-PHP-7.html">Lập trình viên PHP và MySQL.</a></li><li><a href="/Tuyen-dung/Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS-9.html">Lập trình viên front-end (HTML/CSS/JS).</a></li><li><a href="/Tuyen-dung/Tuyen-dung-chuyen-vien-do-hoa-8.html">Chuyên Viên Đồ Hoạ.</a></li></ol><br />Tại VINADES.,JSC bạn sẽ được tham gia các dự án của công ty, tham gia xây dựng và phát triển bộ nhân hệ thống NukeViet, được học hỏi và trau dồi nâng cao kiến thức và kỹ năng cá nhân. Ngoài ra, nếu bạn đam mê về nguồn mở và có mong muốn cống hiến cho quá trình phát triển nguồn mở của Việt Nam nói riêng và của thế giới nói chung, thì đây là cơ hội lớn nhất để bạn đạt được mong muốn của mình. Tham gia công tác tại công ty là bạn đã góp phần xây dựng một cộng đồng nguồn mở chuyên nghiệp cho Việt Nam để vươn xa ra thế giới.<br /><br /><span style="font-size:16px;"><strong>1. Vị trí dự tuyển:</strong></span> Lập trình viên front-end (HTML/ CSS/ JS)<br /><br /><span style="font-size:16px;"><strong>2. Mô tả công việc:</strong></span><ul><li>Cắt, làm giao diện website từ bản thiết kế (sử dụng Photoshop) trên nền hệ thống NukeViet.</li><li>Tham gia vào việc phát triển Front-End các ứng dụng nền web.</li><li>Thực hiện các công đoạn để dưa website vào hoạt động như upload dữ liệu lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng, trải nghiệm người dùng, thẩm mỹ của sản phẩm trong khi sản phẩm hoạt động Tham mưu, tư vấn về chất lượng, thẩm mỹ, trải nghiệm người dùng về các sản phẩm.</li><li>Đảm bảo website theo các tiêu chuẩn web (W3c, XHTML, CSS 3.0, Tableless, no inline style, … ).</li><li>Đảm bảo website hiển thị đúng trên tất cả các trình duyệt.</li><li>Đảm bảo website theo chuẩn “Responsive Web Design.</li><li>Đảm bảo việc đưa sản phẩm thiết kế đến người dùng cuối cùng một cách chính xác và đẹp.</li><li>Thực hiện các công việc theo sự phân công của cấp trên.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc.</li></ul><br /><span style="font-size:16px;"><strong>3. Yêu cầu:</strong></span><ul><li>Có kiến thức cơ bản về thiết kế website: Am hiểu các dạng layout, thành phần của một website.</li><li>Hiểu rõ và nắm chắc cách làm Theme/Template.</li><li>Sử dụng thành thạo HTML5, CSS3 &amp; Javascrip/Jquery và Xtemplate</li><li>Khả năng chuyển PSD sang NukeViet tốt.</li><li>Biết đưa website lên host, xử lý lỗi, sự cố liên quan.</li><li>Chịu trách nhiệm về chất lượng và tiến độ công việc phụ trách.</li><li>Khả năng sáng tạo, tính thẩm mỹ tốt.</li><li>Đam mê công việc về web.</li></ul><br /><em><strong>Ưu tiên các ứng viên:</strong></em><ul><li>Có kiến thức cơ bản về quản trị website NukeViệt.</li><li>Am hiểu về Responsive và có thể thiết kế giao diện, layout trên mobile (Boostrap).</li><li>Sử dụng và nắm rõ các tính năng, block thường dùng của NukeViet.</li><li>Biết sử dụng git để quản lý source code (nếu ứng viên chưa biết công ty sẽ đào tạo thêm).</li><li>Có khả năng giao tiếp với khách hàng (Trực tiếp, điện thoại, email).</li><li>Có khả năng làm việc độc lập và làm việc theo nhóm.</li><li>Có tinh thần trách nhiệm cao và chủ động trong công việc.</li><li>Có khả năng trình bày ý tưởng.</li></ul><br /><span style="font-size:16px;"><strong>4. Quyền lợi:</strong></span><ul><li>Lương thoả thuận, trả qua ATM.</li><li>Thưởng theo dự án, các ngày lễ tết.</li><li>Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội...</li></ul><br /><span style="font-size:16px;"><strong>5. Thời gian làm việc:</strong></span> Toàn thời gian cố định hoặc làm online.<br /><br /><span style="font-size:16px;"><strong>6. Hạn nộp hồ sơ:</strong></span> Không hạn chế, vui lòng kiểm tra tại <a href="http://vinades.vn/vi/news/Tuyen-dung/">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><span style="font-size:16px;"><strong>7. Cách thức đăng ký dự tuyển:</strong></span> Làm Hồ sơ xin việc<em><strong> (download tại đây: <strong><a href="http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-ky-thuat-vien/" target="_blank"><u>Mẫu lý lịch ứng viên</u></a></strong>)</strong></em> và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br /><br /><span style="font-size:16px;"><strong>8. Hồ sơ bao gồm:</strong></span><ul><li>Đơn xin việc: Tự biên soạn.</li><li>Thông tin ứng viên: Theo mẫu của VINADES.,JSC</li></ul>&nbsp;<p style="text-align: justify;"><strong>Chi tiết vui lòng tham khảo tại:</strong> <a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br /><br /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</p><div>- Tel: +84-4-85872007 - Fax: +84-4-35500914<br />- Email: <a href="mailto:contact@vinades.vn">contact@vinades.vn</a> - Website: <a href="http://www.vinades.vn/">http://www.vinades.vn</a></div></blockquote>', '', 2, 0, 1, 1, 1, 0),
(10, 'Cả hội trường như vỡ òa, rộn tiếng vỗ tay, tiếng cười nói chúc mừng các nhà khoa học, các nhóm tác giả đoạt Giải thưởng Nhân tài Đất Việt năm 2011. Năm thứ 7 liên tiếp, Giải thưởng đã phát hiện và tôn vinh nhiều tài năng của đất nước.<div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/01_b7d3f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Sân khấu trước lễ trao giải.</span></div><div> &nbsp;</div><div align="center"> &nbsp;</div><div align="left"> Cơ cấu Giải thưởng của Nhân tài Đất Việt 2011 trong lĩnh vực CNTT bao gồm 2 hệ thống giải dành cho “Sản phẩm có tiềm năng ứng dụng” và “Sản phẩm đã ứng dụng rộng rãi trong thực tế”. Mỗi hệ thống giải sẽ có 1 giải Nhất, 1 giải Nhì và 1 giải Ba với trị giá giải thưởng tương đương là 100 triệu đồng, 50 triệu đồng và 30 triệu đồng cùng phần thưởng của các đơn vị tài trợ.</div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/03_f19bd.jpg" width="350" /></div> <div align="center"> Nhiều tác giả, nhóm tác giả đến lễ trao giải từ rất sớm.</div></div><p> Giải thưởng Nhân tài Đất Việt 2011 trong lĩnh vực Khoa học Tự nhiên được gọi chính thức là Giải thưởng Khoa học Tự nhiên Việt Nam sẽ có tối đa 6 giải, trị giá 100 triệu đồng/giải dành cho các lĩnh vực: Toán học, Cơ học, Vật lý, Hoá học, Các khoa học về sự sống, Các khoa học về trái đất (gồm cả biển) và môi trường, và các lĩnh vực khoa học liên ngành hoặc đa ngành của hai hoặc nhiều ngành nói trên. Viện Khoa học và Công nghệ Việt Nam thành lập Hội đồng giám khảo gồm các nhà khoa học tự nhiên hàng đầu trong nước để thực hiện việc đánh giá và trao giải.</p><div> Sau thành công của việc trao Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y dược năm 2010, Ban Tổ chức tiếp tục tìm kiếm những chủ nhân xứng đáng cho Giải thưởng này trong năm 2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/07_78b85.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam Lê Khả Phiêu tới&nbsp;dự Lễ trao giải.</span></div><div> &nbsp;</div><div> 45 phút trước lễ trao giải, không khí tại Cung Văn hóa Hữu nghị Việt - Xô đã trở nên nhộn nhịp. Sảnh phía trước Cung gần như chật kín. Rất đông bạn trẻ yêu thích công nghệ thông tin, sinh viên các trường đại học đã đổ về đây, cùng với đó là những bó hoa tươi tắn sẽ được dành cho các tác giả, nhóm tác giả đoạt giải.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/09_aef87.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCN Việt Nam Nguyễn Thị Doan.</span></div><div> &nbsp;</div><div> Các vị khách quý cũng đến từ rất sớm. Tới tham dự lễ trao giải năm nay có ông Lê Khả Phiêu, nguyên Tổng Bí thư BCH TW Đảng Cộng sản Việt Nam; bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCN Việt Nam; ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam; ông Nguyễn Bắc Son, Bộ trưởng Bộ Thông tin và Truyền thông; ông Đặng Ngọc Tùng, Chủ tịch Tổng Liên đoàn lao động Việt Nam; ông Phạm Văn Linh, Phó trưởng ban Tuyên giáo Trung ương; ông Đỗ Trung Tá, Phái viên của Thủ tướng Chính phủ về CNTT, Chủ tịch Hội đồng Khoa học công nghệ quốc gia; ông Nguyễn Quốc Triệu, nguyên Bộ trưởng Bộ Y tế, Trưởng Ban Bảo vệ Sức khỏe TƯ; bà Cù Thị Hậu, Chủ tịch Hội người cao tuổi Việt Nam; ông Lê Doãn Hợp, nguyên Bộ trưởng Bộ Thông tin Truyền thông, Chủ tịch Hội thông tin truyền thông số…</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/08_ba46c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Bộ trưởng Bộ Thông tin và Truyền thông Nguyễn Bắc Son.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/06_29592.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Giáo sư - Viện sỹ Nguyễn Văn Hiệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/04_051f2.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Bộ trưởng Bộ Y tế Nguyễn Quốc Triệu.</span></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/05_c7ea4.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Ông Vũ Oanh, nguyên Ủy viên Bộ Chính trị, nguyên Chủ tịch Hội Khuyến học Việt Nam.</span></div><p> Do tuổi cao, sức yếu hoặc bận công tác không đến tham dự lễ trao giải nhưng Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang cũng gửi lẵng hoa đến chúc mừng lễ trao giải.</p><div> Đúng 20h, Lễ trao giải bắt đầu với bài hát “Nhân tài Đất Việt” do ca sỹ Thái Thùy Linh cùng ca sĩ nhí và nhóm múa biểu diễn. Các nhóm tác giả tham dự Giải thưởng năm 2011 và những tác giả của các năm trước từ từ bước ra sân khấu trong tiếng vỗ tay tán dương của khán giả.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/12_74abf.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN15999_3e629.jpg" style="MARGIN: 5px" width="450" /></div></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Tiết mục mở màn Lễ trao giải.</span></div><p> Trước Lễ trao giải Giải thưởng Nhân tài Đất Việt năm 2011, Đại tướng Võ Nguyên Giáp, Chủ tịch danh dự Hội Khuyến học Việt Nam, đã gửi thư chúc mừng, khích lệ Ban tổ chức Giải thưởng cũng như các nhà khoa học, các tác giả tham dự.</p><blockquote> <p> <em><span style="FONT-STYLE: italic">Hà Nội, ngày 16 tháng 11 năm 2011</span></em></p> <div> <em>Giải thưởng “Nhân tài đất Việt” do Hội Khuyến học Việt Nam khởi xướng đã bước vào năm thứ bảy (2005 - 2011) với ba lĩnh vực: Công nghệ thông tin, Khoa học tự nhiên và Y dược.</em></div></blockquote><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/thuDaituong1_767f4.jpg" style="MARGIN: 5px" width="400" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Thư của Đại tướng Võ Nguyên Giáp gửi BTC Giải thưởng Nhân tài đất Việt.</span></div><blockquote> <p> <em>Tôi gửi lời chúc mừng các nhà khoa học và các thí sinh được nhận giải thưởng “Nhân tài đất Việt” năm nay.</em></p> <p> <em>Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</em></p> <p> <em>Nhân ngày “Nhà giáo Việt Nam”, chúc Hội Khuyến học Việt nam, chúc các thầy giáo và cô giáo, với tâm huyết và trí tuệ của mình, sẽ đóng góp xứng đáng vào công cuộc đổi mới căn bản và toàn diện nền giáo dục nước nhà, để cho nền giáo dục Việt Nam thực sự là cội nguồn của nguyên khí quốc gia, đảm bảo cho mọi nhân cách và tài năng đất Việt được vun đắp và phát huy vì sự trường tồn, sự phát triển tiến bộ và bền vững của đất nước trong thời đại toàn cầu hóa và hội nhập quốc tế.</em></p> <p> <em>Chào thân ái,</em></p> <p> <strong><em>Chủ tịch danh dự Hội Khuyến học Việt Nam</em></strong></p> <p> <strong><em>Đại tướng Võ Nguyên Giáp</em></strong></p></blockquote><p> Phát biểu khai mạc Lễ trao giải, Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng Ban tổ chức, bày tỏ lời cám ơn chân thành về những tình cảm cao đẹp và sự quan tâm chăm sóc của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang đã và đang dành cho Nhân tài Đất Việt.</p><div> Nhà báo Phạm Huy Hoàn nhấn mạnh, Giải thưởng Nhân tài Đất Việt suốt 7 năm qua đều nhận được sự quan tâm của các vị lãnh đạo Đảng, Nhà nước và của toàn xã hội. Tại Lễ trao giải, Ban tổ chức luôn có vinh dự được đón tiếp&nbsp;các vị lãnh đạo&nbsp; Đảng và Nhà nước đến dự và trực tiếp trao Giải thưởng.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/15_4670c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Trưởng Ban tổ chức Phạm Huy Hoàn phát biểu khai mạc buổi lễ.</span></div><p> Năm 2011, Giải thưởng có 3 lĩnh vực được xét trao giải là CNTT, Khoa học tự nhiên và Y dược. Lĩnh&nbsp; vực CNTT đã đón nhận 204 sản phẩm tham dự từ mọi miền đất nước và cả nước ngoài như thí sinh Nguyễn Thái Bình từ bang California - Hoa Kỳ và một thí sinh ở Pháp cũng đăng ký tham gia.</p><div> “Cùng với lĩnh vực CNTT, năm nay, Hội đồng khoa học của Viện khoa học và công nghệ Việt Nam và Hội đồng khoa học - Bộ Y tế tiếp tục giới thiệu những nhà khoa học xuất&nbsp; sắc, có công trình nghiên cứu đem lại nhiều lợi ích cho xã hội trong lĩnh vực khoa học tự nhiên và lĩnh vực y dược. Đó là những bác sĩ tài năng, những nhà khoa học mẫn tuệ, những người đang ngày đêm thầm lặng cống hiến trí tuệ sáng tạo của mình cho xã hội trong công cuộc xây dựng đất nước.” - nhà báo Phạm Huy Hoàn nói.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/14_6e18f.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, TBT báo điện tử Dân trí, Trưởng BTC Giải thưởng và ông Phan Hoàng Đức, Phó TGĐ Tập đoàn VNPT nhận lẵng hoa chúc mừng của Đại tướng Võ Nguyên Giáp và Chủ tịch nước Trương Tấn Sang.</span></div><p> Cũng theo Trưởng Ban tổ chức Phạm Huy Hoàn, đến nay, vị Chủ tịch danh dự đầu tiên của Hội Khuyến học Việt Nam, Đại tướng Võ Nguyên Giáp, đã bước qua tuổi 100 nhưng vẫn luôn dõi theo và động viên từng bước phát triển của Giải thưởng Nhân tài Đất Việt. Đại tướng luôn quan tâm chăm sóc Giải thưởng ngay từ khi Giải thưởng&nbsp; mới ra đời cách đây 7 năm.</p><p> Trước lễ trao giải, Đại tướng Võ Nguyên Giáp đã gửi thư chúc mừng, động viên Ban tổ chức. Trong thư, Đại tướng viết: “Mong rằng, các sản phẩm và các công trình nghiên cứu được trao giải sẽ được tiếp tục hoàn thiện và được ứng dụng rộng rãi trong đời sống, đem lại hiệu quả kinh tế và xã hội thiết thực.</p><p> Sau phần khai mạc, cả hội trường hồi hội chờ đợi phút vinh danh các nhà khoa học và các tác giả, nhóm tác giả đoạt giải.</p><div> <span style="FONT-WEIGHT: bold">* Giải thưởng Khoa học Tự nhiên Việt Nam </span>thuộc về 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ - Viện Vật lý, Viện Khoa học công nghệ Việt Nam với công trình “Nghiên cứu cấu trúc hạt nhân và các phản ứng hạt nhân”.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn_d4aae.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Hai nhà khoa học đã tiến hành thành công các nghiên cứu về phản ứng hạt nhân với nơtron, phản ứng quang hạt nhân, quang phân hạch và các phản ứng hạt nhân khác có cơ chế phức tạp trên các máy gia tốc như máy phát nơtron, Microtron và các máy gia tốc thẳng của Việt Nam và Quốc tế. Các nghiên cứu này đã góp phần làm sáng tỏ cấu trúc hạt nhân và cơ chế phản ứng hạt nhân, đồng thời cung cấp nhiều số liệu hạt nhân mới có giá trị cho Kho tàng số liệu hạt nhân.</p><p> GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ đã khai thác hiệu quả hai máy gia tốc đầu tiên của Việt Nam là máy phát nơtron NA-3-C và Microtron MT-17 trong nghiên cứu cơ bản, nghiên cứu ứng dụng và đào tạo nhân lực. Trên cơ sở các thiết bị này, hai nhà khoa học đã tiến hành thành công những nghiên cứu cơ bản thực nghiệm đầu tiên về phản ứng hạt nhân ở Việt Nam; nghiên cứu và phát triển các phương pháp phân tích hạt nhân hiện đại và áp dụng thành công ở Việt Nam.</p><div> Bà Nguyễn Thị Doan, Phó Chủ tịch nước CHXHCNVN và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/khtn2_e2865.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Phó Chủ tịch nước CHXHCNVN Nguyễn Thị Doan và Giáo sư - Viện sỹ Nguyễn Văn Hiệu trao giải thưởng cho 2 nhà khoa học GS.TS Trần Đức Thiệp và GS.TS Nguyễn Văn Đỗ.</span></div><p> GS.VS Nguyễn Văn Hiệu chia sẻ: “Cách đây không lâu, Chính phủ đã ký quyết định xây dựng nhà máy điện hạt nhân trong điều kiện đất nước còn nhỏ bé, nghèo khó và vì thế việc đào tạo nhân lực là nhiệm vụ số 1 hiện nay. Rất may, Việt Nam có 2 nhà khoa học cực kỳ tâm huyết và nổi tiếng trong cả nước cũng như trên thế giới. Hội đồng khoa học chúng tôi muốn xướng tên 2 nhà khoa học này để Chính phủ huy động cùng phát triển xây dựng nhà máy điện hạt nhân.”</p><p> GS.VS Hiệu nhấn mạnh, mặc dù điều kiện làm việc của 2 nhà khoa học không được quan tâm, làm việc trên những máy móc cũ kỹ được mua từ năm 1992 nhưng 2 ông vẫn xay mê cống hiến hết mình cho lĩnh Khoa học tự nhiên Việt Nam.</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài Đất Việt trong lĩnh vực Y Dược:</span> 2 giải</p><div> <span style="FONT-WEIGHT: bold">1.</span> Nhóm nghiên cứu của Bệnh viện Hữu nghị Việt - Đức với công trình <span style="FONT-STYLE: italic">“Nghiên cứu triển khai ghép gan, thận, tim lấy từ người cho chết não”</span>.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y_3dca2.jpg" style="MARGIN: 5px" width="450" /></div></div><div> &nbsp;</div><div> Tại bệnh viện Việt Đức, tháng 4/2011, các ca ghép tạng từ nguồn cho là người bệnh chết não được triển khai liên tục. Với 4 người cho chết não hiến tạng, bệnh viện đã ghép tim cho một trường hợp,&nbsp;2 người được ghép gan, 8 người được ghép thận, 2 người được ghép van tim và tất cả các ca ghép này đều thành công, người bệnh được ghép đã có một cuộc sống tốt hơn với tình trạng sức khỏe ổn định.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y2_cb5a1.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nguyên Tổng Bí Ban chấp hành TW Đảng CSVN Lê Khả Phiêu và ông Vũ Văn Tiền, Chủ tịch Hội đồng quản trị Ngân hàng An Bình trao giải thưởng cho nhóm nghiên cứu của BV Hữu nghị Việt - Đức.</span></div><p> Công trong việc ghép tạng từ người cho chết não không chỉ thể hiện năng lực, trình độ, tay nghề của bác sĩ Việt Nam mà nó còn mang một ý nghĩa nhân văn to lớn, mang một thông điệp gửi đến những con người giàu lòng nhân ái với nghĩa cử cao đẹp đã hiến tạng để cứu sống những người bệnh khác.</p><p> <span style="FONT-WEIGHT: bold">2.</span> Hội đồng ghép tim Bệnh viện Trung ương Huế với công trình nghiên cứu <span style="FONT-STYLE: italic">“Triển khai ghép tim trên người lấy từ người cho chết não”</span>.</p><div> Đề tài được thực hiện dựa trên ca mổ ghép tim thành công lần đầu tiên ở Việt Nam của chính 100% đội ngũ y, bác sĩ của Bệnh viện Trung ương Huế đầu tháng 3/2011. Bệnh nhân được ghép tim thành công là anh Trần Mậu Đức (26 tuổi, ở phường Phú Hội, TP. Huế).</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/y3_7768c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Hội đồng ghép tim BV Trung ương Huế nhận Giải thưởng Nhân tài Đất Việt.</span></div><p> Ghép tim từ người cho chết não đến người bị bệnh tim cần được ghép tim phải đảm bảo các yêu cầu: đánh giá chức năng các cơ quan; đánh giá tương hợp miễn dịch và phát hiện nguy cơ tiềm ẩn có thể xảy ra trong và sau khi ghép tim để từ đó có phương thức điều trị thích hợp. Có tới 30 xét nghiệm cận lâm sàng trung và cao cấp tiến hành cho cả người cho tim chết não và người sẽ nhận ghép tim tại hệ thống labo của bệnh viện.</p><p> ---------------------</p><p> <span style="FONT-WEIGHT: bold">* Giải thưởng Nhân tài đất Việt Lĩnh vực Công nghệ thông tin.</span></p><p> <span style="FONT-STYLE: italic">Hệ thống sản phẩm đã ứng dụng thực tế:</span></p><p> <span style="FONT-STYLE: italic">Giải Nhất:</span> Không có.</p><p> <span style="FONT-STYLE: italic">Giải Nhì:</span> Không có</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 3 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1.</span> <span style="FONT-STYLE: italic">“Bộ cạc xử lý tín hiệu HDTV”</span> của nhóm HD Việt Nam.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/hdtv_13b10.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm HDTV Việt Nam lên nhận giải.</span></div><p> Đây là bộ cạc xử lý tín hiệu HDTV đầu tiên tại Việt Nam đạt tiêu chuẩn OpenGear. Bộ thiết bị bao gồm 2 sản phẩm là cạc khuếch đại phân chia tín hiệu HD DA và cạc xử lý tín hiệu HD FX1. Nhờ bộ cạc này mà người sử dụng cũng có thể điều chỉnh mức âm thanh hoặc video để tín hiệu của kênh tuân theo mức chuẩn và không phụ thuộc vào chương trình đầu vào.</p><div> <span style="FONT-WEIGHT: bold; FONT-STYLE: italic">2.</span> <span style="FONT-STYLE: italic">“Mã nguồn mở NukeViet”</span> của nhóm tác giả Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC).</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" alt="NukeViet nhận giải ba Nhân tài đất Việt 2011" src="/uploads/news/nukeviet-nhantaidatviet2011.jpg" style="margin: 5px; width: 450px; height: 301px;" /></div></div><p> NukeViet là CMS mã nguồn mở đầu tiên của Việt Nam có quá trình phát triển lâu dài nhất, có lượng người sử dụng đông nhất. Hiện NukeViet cũng là một trong những mã nguồn mở chuyên nghiệp đầu tiên của Việt Nam, cơ quan chủ quản của NukeViet là VINADES.,JSC - đơn vị chịu trách nhiệm phát triển NukeViet và triển khai NukeViet thành các ứng dụng cụ thể cho doanh nghiệp.</p><div> <span style="FONT-WEIGHT: bold">3.</span> <span style="FONT-STYLE: italic">“Hệ thống ngôi nhà thông minh homeON”</span> của nhóm Smart home group.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16132_82014.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Sản phẩm là kết quả từ những nghiên cứu miệt mài nhằm xây dựng một ngôi nhà thông minh, một cuộc sống xanh với tiêu chí: An toàn, tiện nghi, sang trọng và tiết kiệm năng lượng, hưởng ứng lời kêu gọi tiết kiệm năng lượng của Chính phủ.&nbsp;</p><p> <strong><span style="FONT-STYLE: italic">* Hệ thống sản phẩm có tiềm năng ứng dụng:</span></strong></p><p> <span style="FONT-STYLE: italic">Giải Nhất: </span>Không có.</p><div> <span style="FONT-STYLE: italic">Giải Nhì:</span> trị giá 50 triệu đồng: <span style="FONT-STYLE: italic">“Dịch vụ Thông tin và Tri thức du lịch ứng dụng cộng nghệ ngữ nghĩa - iCompanion”</span> của nhóm tác giả SIG.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/nhi_7eee0.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhóm tác giả SIG nhận giải Nhì Nhân tài đất Việt 2011 ở hệ thống sản phẩm có tiềm năng ứng dụng.</span></div><p> ICompanion là hệ thống thông tin đầu tiên ứng dụng công nghệ ngữ nghĩa trong lĩnh vực du lịch - với đặc thù khác biệt là cung cấp các dịch vụ tìm kiếm, gợi ý thông tin “thông minh” hơn, hướng người dùng và kết hợp khai thác các tính năng hiện đại của môi trường di động.</p><p> Đại diện nhóm SIG chia sẻ: “Tinh thần sáng tạo và lòng khát khao muốn được tạo ra các sản phẩm mới có khả năng ứng dụng cao trong thực tiễn luôn có trong lòng của những người trẻ Việt Nam. Cảm ơn ban tổ chức và những nhà tài trợ đã giúp chúng tôi có một sân chơi thú vị để khuyến khích và chắp cánh thực hiện ước mơ của mình. Xin cảm ơn trường ĐH Bách Khoa đã tạo ra một môi trường nghiên cứu và sáng tạo, gắn kết 5 thành viên trong nhóm.”</p><p> <span style="FONT-STYLE: italic">Giải Ba:</span> 2 giải, mỗi giải trị giá 30 triệu đồng.</p><div> <span style="FONT-WEIGHT: bold">1. </span><span style="FONT-STYLE: italic">“Bộ điều khiển IPNET”</span> của nhóm IPNET</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16149_ed58d.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> <span style="FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Nhà báo Phạm Huy Hoàn, Trưởng Ban Tổ chức Giải thưởng NTĐV, Tổng Biên tập báo điện tử Dân trí và ông Tạ Hữu Thanh - Phó TGĐ Jetstar Pacific trao giải cho nhóm IPNET.</span></div><p> Bằng cách sử dụng kiến thức thiên văn học để tính giờ mặt trời lặn và mọc tại vị trí cần chiếu sáng được sáng định bởi kinh độ, vĩ độ cao độ, hàng ngày sản phẩm sẽ tính lại thời gian cần bật/tắt đèn cho phù hợp với giờ mặt trời lặn/mọc.</p><div> <span style="FONT-WEIGHT: bold">2.</span> <span style="FONT-STYLE: italic">“Hệ thống lập kế hoạch xạ trị ung thư quản lý thông tin bệnh nhân trên web - LYNX”</span> của nhóm LYNX.</div><div> &nbsp;</div><div align="center"> <div> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/3tiem-nang_32fee.jpg" style="MARGIN: 5px" width="450" /></div></div><p> Đây là loại phần mềm hoàn toàn mới ở Việt Nam, là hệ thống lập kế hoạch và quản lý thông tin của bệnh nhân ung thư qua Internet (LYNX) dựa vào nền tảng Silverlight của Microsoft và kiến thức chuyên ngành Vật lý y học. LYNX giúp ích cho các nhà khoa học, bác sĩ, kỹ sư vật lý, bệnh nhân và mọi thành viên trong việc quản lý và theo dõi hệ thống xạ trị ung thư một cách tổng thể. LYNX có thể được sử dụng thông qua các thiết bị như máy tính cá nhân, máy tính bảng… và các trình duyệt Internet Explorer, Firefox, Chrome…</p><div> Chương trình trao giải đã được truyền hình trực tiếp trên VTV2 - Đài Truyền hình Việt Nam và tường thuật trực&nbsp;tuyến trên báo điện tử Dân trí từ 20h tối 20/11/2011.</div><div> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0545_c898e.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/NVH0560_c995c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <img _fl="" align="middle" src="http://dantri4.vcmedia.vn/xFKfMbJ7RTXgah5W1cc/File/2011/PHN16199_36a5c.jpg" style="MARGIN: 5px" width="450" /></div><div align="center"> &nbsp;</div><div align="center"> <div align="center"> <table border="1" cellpadding="0" cellspacing="0" width="90%"> <tbody> <tr> <td> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Khởi xướng từ năm 2005, Giải thưởng Nhân tài Đất Việt đã phát hiện và tôn vinh nhiều tài năng trong lĩnh vực CNTT-TT, Khoa học tự nhiên và Y dược, trở thành một sân chơi bổ ích cho những người yêu thích CNTT. Mỗi năm, Giải thưởng ngày càng thu hút số lượng tác giả và sản phẩm tham gia đông đảo và nhận được sự quan tâm sâu sắc của lãnh đạo Đảng, Nhà nước cũng như công chúng.</span></span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold"><span style="FONT-WEIGHT: normal; FONT-SIZE: 10pt; FONT-FAMILY: Tahoma">Đối tượng tham gia Giải thưởng trong lĩnh vực CNTT là những người Việt Nam ở mọi lứa tuổi, đang sinh sống trong cũng như ngoài nước. Năm 2006, Giải thưởng có sự tham gia của thí sinh đến từ 8 nước trên thế giới và 40 tỉnh thành của Việt Nam. Từ năm 2009, Giải thưởng được mở rộng sang lĩnh vực Khoa học tự nhiên, và năm 2010 là lĩnh vực Y dược, vinh danh những nhà khoa học trong các lĩnh vực này.</span>&nbsp;</span></div> <div> <span style="FONT-WEIGHT: bold">&nbsp;</span></div> </td> </tr> </tbody> </table> </div></div>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(11, '<div style="text-align: justify;">Có hiệu lực từ ngày 20/1/2015, Thông tư này thay thế cho Thông tư 41/2009/TT-BTTTT (Thông tư 41) ngày 30/12/2009 ban hành Danh mục các sản phẩm phần mềm nguồn mở đáp ứng yêu cầu sử dụng trong cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nSản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước trong Thông tư 41/2009/TT-BTTTT vừa được Bộ TT&amp;TT ban hành, là những&nbsp;sản phẩm đã đáp ứng các tiêu chí về tính năng kỹ thuật cũng như tính mở và bền vững, và NukeViet là một trong số đó.</div>\r\n\r\n<p style="text-align: justify;">Cụ thể, theo Thông tư 20, sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước phải đáp các tiêu chí về chức năng, tính năng kỹ thuật bao gồm: phần mềm có các chức năng, tính năng kỹ thuật phù hợp với các yêu cầu nghiệp vụ hoặc các quy định, hướng dẫn tương ứng về ứng dụng CNTT trong các cơ quan, tổ chức nhà nước; phần mềm đáp ứng được yêu cầu tương thích với hệ thống thông tin, cơ sở dữ liệu hiện có của các cơ quan, tổ chức.</p>\r\n\r\n<p style="text-align: justify;">Bên cạnh đó, các sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước còn phải đáp ứng tiêu chí về tính mở và tính bền vững của phần mềm. Cụ thể, phần mềm phải đảm bảo các quyền: tự do sử dụng phần mềm không phải trả phí bản quyền, tự do phân phối lại phần mềm, tự do sửa đổi phần mềm theo nhu cầu sử dụng, tự do phân phối lại phần mềm đã chỉnh sửa (có thể thu phí hoặc miễn phí); phần mềm phải có bản mã nguồn, bản cài đặt được cung cấp miễn phí trên mạng; có điểm ngưỡng thất bại PoF từ 50 điểm trở xuống và điểm mô hình độ chín nguồn mở OSMM từ 60 điểm trở lên.</p>\r\n\r\n<p style="text-align: justify;">Căn cứ những tiêu chuẩn trên, thông tư 20 quy định cụ thể Danh mục 31 sản phẩm thuộc 11 loại phần mềm được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước.&nbsp;NukeViet thuộc danh mục hệ quản trị nội dung nguồn mở. Chi tiết thông tư và danh sách 31 sản phẩm phần mềm nguồn mở được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước có&nbsp;<a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-20-2014-TT-BTTTT/" target="_blank">tại đây</a>.</p>\r\n\r\n<p style="text-align: justify;">Thông tư 20/2014/TT-BTTTT quy định rõ: Các cơ quan, tổ chức nhà nước khi có nhu cầu sử dụng vốn nhà nước để đầu tư xây dựng, mua sắm hoặc thuê sử dụng các loại phần mềm có trong Danh mục hoặc các loại phần mềm trên thị trường đã có sản phẩm phần mềm nguồn mở tương ứng thỏa mãn các tiêu chí trên (quy định tại Điều 3 Thông tư 20) thì phải&nbsp;ưu tiên lựa chọn các sản phẩm phần mềm nguồn mở tương ứng, đồng thời phải thể hiện rõ sự ưu tiên này trong các tài liệu&nbsp;như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Đồng thời,&nbsp;các cơ quan, tổ chức nhà nước phải đảm bảo không đưa ra các yêu cầu, điều kiện, tính năng kỹ thuật có thể dẫn đến việc loại bỏ các sản phẩm phần mềm nguồn mở&nbsp;trong các tài liệu như thiết kế sơ bộ, thiết kế thi công, kế hoạch đấu thầu, kế hoạch đầu tư, hồ sơ mời thầu, yêu cầu chào hàng, yêu cầu báo giá hoặc các yêu cầu mua sắm khác.</p>\r\n\r\n<p style="text-align: justify;">Như vậy, sau thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐT ban hành ngày 01-03-2010 quy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục trong đó đưa NukeViet vào danh sách các mã nguồn mở được khuyến khích sử dụng trong giáo dục, thông tư 20/2014/TT-BTTTT đã mở đường cho NukeViet vào sử dụng cho các cơ quan, tổ chức nhà nước. Các đơn vị hỗ trợ triển khai NukeViet cho các cơ quan nhà nước có thể sử dụng quy định này để được ưu tiên triển khai cho các dự án website, cổng thông tin cho các cơ quan, tổ chức nhà nước.<br />\r\n<br />\r\nThời gian tới, Công ty cổ phần phát triển nguồn mở Việt Nam (<a href="http://vinades.vn/" target="_blank">VINADES.,JSC</a>) - đơn vị chủ quản của NukeViet - sẽ cùng với Ban Quản Trị NukeViet tiếp tục hỗ trợ các doanh nghiệp đào tạo nguồn nhân lực chính quy phát triển NukeViet nhằm cung cấp dịch vụ ngày một tốt hơn cho chính phủ và các cơ quan nhà nước, từng bước xây dựng và hình thành liên minh các doanh nghiệp phát triển NukeViet, đưa sản phẩm phần mềm nguồn mở Việt không những phục vụ tốt thị trường Việt Nam mà còn từng bước tiến ra thị trường khu vực và các nước đang phát triển khác trên thế giới nhờ vào lợi thế phần mềm nguồn mở đang được chính phủ nhiều nước ưu tiên phát triển.</p>', 'mic.gov.vn', 2, 0, 1, 1, 1, 0),
(12, '<div style="text-align: justify;">Trong năm 2016, chúng tôi xác định là đơn vị sát cánh cùng các đơn vị giáo dục- là đơn vị xây dựng nhiều website cho ngành giáo dục nhất trên cả nước.<br  />Với phần mềm mã nguồn mở NukeViet hiện có nhiều lợi thế:<br  />+ Được Bộ giáo dục khuyến khích sử dụng.<br  />+ Được bộ thông tin truyền thông chỉ định sử dụng trong khối cơ quan nhà nước.<br  />+Được cục công nghệ thông tin ghi rõ tên sản phẩm NukeViet nên dùng theo hướng dẫn thực hiện CNTT 2015-2016.<br  />Chúng tôi cần các bạn góp phần xây dựng nền giáo dục nước nhà ngày càng phát triển.</div><div>&nbsp;</div><table align="left" border="1" cellpadding="20" cellspacing="0" class="table table-striped table-bordered table-hover" style="width:100%;" width="653">	<tbody>		<tr>			<td style="width: 27.66%;"><strong>Vị trí tuyển dụng:</strong></td>			<td style="width: 72.34%;">Nhân viên kinh doanh</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Chức vụ:</strong></td>			<td style="width: 72.34%;">Nhân viên</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Ngành nghề:</strong></td>			<td style="width: 72.34%;"><strong>Sản phẩm:</strong><br  />			Cổng thông tin, website cho các phòng, sở giáo dục và đào tạo các trường học.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hình thức làm việc:</strong></td>			<td style="width: 72.34%;">Toàn thời gian cố định</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Địa điểm làm việc:</strong></td>			<td style="width: 72.34%;">Văn phòng công ty (Được đi công tác theo hợp đồng đã ký)</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Mức lương:</strong></td>			<td style="width: 72.34%;">&nbsp;Lương cố định + Thưởng vượt doanh số + thưởng theo từng hợp đồng (từ 2-7%).</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Mô tả công việc:</strong></td>			<td style="width: 72.34%;">Chúng tôi có khách hàng mục tiêu và danh sách khách hàng, công việc đòi hỏi ứng viên sử dụng thành thạo vi tính văn phòng, các phần mềm liên quan đến công việc và có laptop để phục vụ công việc.<br  />			- Sales Online, quảng bá ký kết, liên kết, với các đối tác qua INTERNET. Xây dưng mối quan hệ phát triển bền vững với các đối tác.<br  />			- Gọi điện, giới thiệu dịch vụ, sản phẩm của công ty đến đối tác.<br  />			- Xử lý các cuộc gọi của khách hàng liên quan đến, sản phẩm, dịch vụ công ty.<br  />			- Đàm phán, thương thuyết, ký kết hợp đồng với khách hàng đang có nhu cầu thiết kế website , SEO website , PR thương hiệu trên Internet&nbsp;<br  />			- Duy trì và chăm sóc mối quan hệ lâu dài với khách hàng, mở rộng khách hàng tiềm năng nhằm thúc đẩy doanh số bán hàng<br  />			- Hỗ trợ khách hàng khi được yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Số lượng cần tuyển:</strong></td>			<td style="width: 72.34%;">05</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Quyền lợi được hưởng:</strong></td>			<td style="width: 72.34%;">- Được đào tạo kĩ năng bán hàng, được công ty hỗ trợ tham gia khóa học bán hàng chuyên nghiệp.<br  />			- Lương cứng: 3.000.000 VNĐ+ hoa hồng dự án (2-7%/năm/hợp đồng). Lương trả qua ATM, được xét tăng lương 3 tháng một lần dựa trên doanh thu.<br  />			- Bậc lương xét trên năng lực bán hàng.<br  />			- Thưởng theo dự án, các ngày lễ tết.<br  />			- Hưởng các chế độ khác theo quy định của công ty và pháp luật: Bảo hiểm y tế, bảo hiểm xã hội.<br  />			- Cơ hội làm việc và gắn bó lâu dài trong công ty, được thưởng cổ phần nếu doanh thu tốt.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Số năm kinh nghiệm:</strong></td>			<td style="width: 72.34%;">Trên 6 tháng</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu bằng cấp:</strong></td>			<td style="width: 72.34%;">Cao đẳng, Đại học</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu giới tính:</strong></td>			<td style="width: 72.34%;">Không yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu độ tuổi:</strong></td>			<td style="width: 72.34%;">Không yêu cầu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Yêu cầu khác:</strong></td>			<td style="width: 72.34%;">- Yêu thích và đam mê Internet Marketing, thích online, thương mại điện tử<br  />			- Giọng nói dễ nghe, không nói ngọng.<br  />			- Có khả năng giao tiếp qua điện thoại.<br  />			- Ngoại hình ưa nhìn là một lợi thế<br  />			- Có tính cẩn thận trong công việc, luôn cố gắng học hỏi.<br  />			- Kỹ năng sales online tốt.<br  />			-Trung thực, năng động, nhiệt tình,siêng năng, nhiệt huyết trong công việc.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hồ sơ bao gồm:</strong></td>			<td style="width: 72.34%;"><strong>* Yêu cầu Hồ sơ:</strong><br  />			<strong>Cách thức đăng ký dự tuyển</strong>: Làm Hồ sơ xin việc (file mềm) và gửi về hòm thư <a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a><br  />			<br  />			<strong>Nội dung hồ sơ xin việc file mềm gồm</strong>:<br  />			<strong>+ Đơn xin việc:</strong>&nbsp;Theo hướng dẫn bên dưới.<br  />			<strong>+ Thông tin ứng viên:</strong>&nbsp;Theo mẫu của VINADES.,JSC <strong><em>(download tại đây:&nbsp;<a href="http://vinades.vn/vi/download/Tai-lieu/Ban-khai-so-yeu-ly-lich-kinh-doanh/">Mẫu lý lịch ứng viên</a>)</em></strong><br  />			<strong>* Hồ sơ xin việc (Bản in thông thường) bao gồm</strong>:<br  />			- Giấy khám sức khoẻ của cơ quan y tế.<br  />			- Bản sao hộ khẩu (có công chứng)<br  />			- Bản sao giấy khai sinh (có công chứng)<br  />			- Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn -bằng chứng chỉ (có công chứng)<br  />			- Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.<br  />			- Thư giới thiệu (nếu có)<br  />			- Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).<br  />			<br  />			<strong>*Hướng dẫn</strong>:<br  />			- Với bản in của hồ sơ ứng tuyển, ứng viên sẽ phải nộp trước cho Ban tuyển dụng hoặc muộn nhất là mang theo khi có lịch phỏng vấn. Bản in sẽ không được trả lại ngay cả khi ứng viên không đạt yêu cầu.<br  />			- Nếu không thể bố trí thời gian phỏng vấn như sắp xếp của -Ban tuyển dụng, thí sinh cần thông báo ngay để được đổi lịch.<br  />			- Nếu có bất cứ thắc mắc gì bạn có thể liên hệ với Ms. Thu qua email: tuyendung@vinades.vn. Có thể gọi điện theo số điện thoại: 01255723353</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hạn nộp hồ sơ:</strong></td>			<td style="width: 72.34%;">Không hạn chế cho tới khi tuyển đủ.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Hình thức nộp hồ sơ:</strong></td>			<td style="width: 72.34%;">Qua Email</td>		</tr>		<tr>			<td colspan="2" style="width:100.0%;">			<h3>THÔNG TIN LIÊN HỆ</h3>			</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Điện thoại liên hệ:</strong></td>			<td style="width: 72.34%;">01255723353- Ms. Thu</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Địa chỉ liên hệ:</strong></td>			<td style="width: 72.34%;">Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.</td>		</tr>		<tr>			<td style="width: 27.66%;"><strong>Email liên hệ:</strong></td><td style="width: 72.34%;">tuyendung@vinades.vn</td></tr></tbody></table>', '', 2, 0, 1, 1, 1, 0),
(14, '<p style="text-align: justify;">Nếu bạn yêu thích công nghệ, thích kinh doanh hoặc lập trình web và mong muốn trải nghiệm, học hỏi, thậm chí là đi làm ngay từ khi còn ngồi trên ghế nhà trường, hãy tham gia chương trình thực tập sinh tại công ty VINADES.</p><p style="text-align: justify;">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href="http://vinades.vn/vi/about/history/" target="_blank">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;. Là công ty được thành lập từ cộng đồng phần mềm nguồn mở, hàng năm công ty dành những vị trí đặc biệt cho các bạn sinh viên được học tập, trải nghiệm, làm việc tại công ty.<br  />&nbsp;</p><h2 style="text-align: justify;"><b>C</b><b>ác vị trí thực tập</b></h2><ul>	<li style="text-align: justify;"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style="text-align: justify;"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style="text-align: justify;"><b>Quyền lợi của thực tập sinh</b></h2><ul>	<li style="text-align: justify;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style="text-align: justify;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style="text-align: justify;">Có cơ hội tìm hiểu, phát triển định hướng của bản thân.</li>	<li style="text-align: justify;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style="text-align: justify;">Cơ&nbsp;hội được học việc để trở thành nhân viên chính thức nếu có kết quả thực tập tốt.</li>	<li style="text-align: justify;">Thực tập không hưởng lương nhưng có thể được trả thù lao cho một số công việc được giao theo đơn hàng.</li></ul><h2 style="text-align: justify;"><b>Thời gian làm việc</b></h2><ul>	<li style="text-align: justify;">Toàn thời gian cố định hoặc làm online.</li>	<li style="text-align: justify;">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style="text-align: justify;">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style="text-align: justify;"><b>Đối tượng và điều kiện ứng tuyển</b></h2><p style="text-align: justify;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style="text-align: justify;">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style="text-align: justify;">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style="text-align: justify;">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style="text-align: justify;">Có máy tính xách tay để làm việc.</p><p style="text-align: justify;">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href="http://forum.nukeviet.vn/">forum.nukeviet.vn</a>).</p><h2 style="text-align: justify;"><b>Cách thức ứng tuyển</b></h2><p style="text-align: justify;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a>;</p><p style="text-align: justify;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển thực tập &#91;Bộ phận ứng tuyển&#93;.</p><p style="text-align: justify;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển thực tập sinh bộ phận đồ họa</p><p style="text-align: justify;">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style="text-align: justify;">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style="text-align: justify;">Bản sao giấy khai sinh (có công chứng).</li>	<li style="text-align: justify;">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style="text-align: justify;">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style="text-align: justify;">Chứng minh thư (photo không cần công chứng).</li>	<li style="text-align: justify;">Thư giới thiệu (nếu có)</li>	<li style="text-align: justify;">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href="mailto:contact@vinades.vn">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href="http://www.vinades.vn/">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0),
(15, '<p style="text-align: justify;">Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC) là đơn vị chịu trách nhiệm chính trong việc phát triển phần mềm NukeViet và có nhiệm vụ hỗ trợ cộng đồng người dùng NukeViet &#91;<u><a href="http://vinades.vn/vi/about/history/" target="_blank">xem thêm giới thiệu về lịch sử hình thành VINADES</a></u>&#93;.</p><p style="text-align: justify;">Nếu bạn yêu thích phần mềm nguồn mở, triết lý của phần mềm tự do nguồn mở hoặc đơn giản là yêu NukeViet, hãy liên hệ ngay để gia nhập công ty VINADES, cùng chúng tôi phát triển NukeViet – Phần mềm nguồn mở Việt Nam – và tạo ra những sản phẩm web tuyệt vời cho cộng đồng.</p><h2 style="text-align: justify;"><b>Các vị trí nhận học việc</b></h2><ul>	<li style="text-align: justify;"><strong>Kinh doanh:</strong> Cổng thông tin doanh nghiệp, Cổng thông tin giáo dục Edu Gate…</li>	<li style="text-align: justify;"><strong>Kỹ thuật:</strong> Chuyên viên đồ họa, Lập trình viên…</li></ul><h2 style="text-align: justify;"><b>Quyền lợi của học viên</b></h2><ul>	<li style="text-align: justify;">Được hưởng trợ cấp ăn trưa.</li>	<li style="text-align: justify;">Được trợ cấp vé gửi xe.</li>	<li style="text-align: justify;">Được hưởng lương khoán theo từng dự án (nếu có).</li>	<li style="text-align: justify;">Được hỗ trợ học phí tham gia các khóa học nâng cao các kỹ năng (nếu có).</li>	<li style="text-align: justify;">Được&nbsp;tiếp xúc với văn hóa doanh nghiệp, trải nghiệm trong môi trường làm việc chuyên nghiệp, năng động.</li>	<li style="text-align: justify;">Được&nbsp;giao tiếp và học hỏi kiến thức từ những SEO, các lập trình viên chính của đội code NukeViet; qua đó&nbsp;nâng cao không chỉ kỹ năng chuyên môn liên quan đến công việc mà còn các kỹ năng mềm trong quá trình làm việc hàng ngày.</li>	<li style="text-align: justify;">Tham gia các chương trình ngoại khóa, các hoạt động nội bộ của công ty.</li>	<li style="text-align: justify;">Cơ&nbsp;hội ưu tiên (không cần qua thử việc) trở thành nhân viên chính thức nếu có kết quả học việc tốt.</li></ul><h2 style="text-align: justify;"><b>Thời gian làm việc</b></h2><ul>	<li style="text-align: justify;">Toàn thời gian cố định hoặc làm online.</li>	<li style="text-align: justify;">Thời gian làm việc là:&nbsp;8:00 – 17:00, Thứ hai – Thứ sáu</li>	<li style="text-align: justify;">Ngày làm việc và thời gian làm việc có thể thay đổi linh hoạt tùy thuộc vào điều kiện của ứng viên và tình hình thực tế.</li></ul><h2 style="text-align: justify;"><b>Đối tượng</b></h2><p style="text-align: justify;">Tất cả các bạn sinh viên năm cuối/mới tốt nghiệp các trường CĐ - ĐH đáp ứng được những yêu cầu sau:</p><ul>	<li style="text-align: justify;">Sinh viên khối ngành kinh tế: yêu thích marketing online, mong muốn thực tập trong lĩnh vực kinh doanh phần mềm.</li>	<li style="text-align: justify;">Sinh viên khối ngành kỹ thuật: yêu thích thiết kế, lập trình web.</li></ul><p style="text-align: justify;">Có kỹ năng giao tiếp và tư duy logic tốt, năng động và ham học hỏi.</p><p style="text-align: justify;">Ưu tiên các ứng viên đam mê phần mềm nguồn mở, đặc biệt là các ứng viên đã từng tham gia và có bài viết diễn đàn NukeViet (<a href="http://forum.nukeviet.vn/">forum.nukeviet.vn</a>)</p><h2 style="text-align: justify;"><b>Điều kiện</b></h2><p style="text-align: justify;">Có máy tính xách tay để làm việc.</p><p style="text-align: justify;">Ứng viên sẽ được ký hợp đồng học việc (có thời hạn cụ thể). Nếu được nhận vào làm việc chính thức, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền đào tạo. Chi phí này được tính là 3.000.000 VND</p><p style="text-align: justify;">Nếu được cử đi học, người lao động phải làm ở công ty ít nhất 2 năm, nếu không làm hoặc nghỉ trước thời hạn sẽ phải hoàn lại tiền học phí.</p><p style="text-align: justify;">Thực hiện theo các quy định khác của công ty...</p><h2 style="text-align: justify;"><b>Cách thức ứng tuyển</b></h2><p style="text-align: justify;">Gửi bản mềm đơn đăng ký ứng tuyển tới:&nbsp;<a href="mailto:tuyendung@vinades.vn">tuyendung@vinades.vn</a>;</p><p style="text-align: justify;">Tiêu đề mail ghi rõ: &#91;Họ tên&#93; –Ứng tuyển học việc&#91;Bộ phận ứng tuyển&#93;;</p><p style="text-align: justify;">Ví dụ: Lê Văn Nam –&nbsp;Ứng tuyển học việc bộ phận đồ họa</p><p style="text-align: justify;">Hồ sơ bản cứng cần chuẩn bị (sẽ gửi sau nếu đạt yêu cầu) gồm:</p><ul>	<li style="text-align: justify;">Giấy khám sức khoẻ của cơ quan y tế</li>	<li style="text-align: justify;">Bản sao giấy khai sinh (có công chứng).</li>	<li style="text-align: justify;">Bản sao quá trình học tập (bảng điểm tốt nghiệp), các văn bằng chứng chỉ (có công chứng) nếu đã tốt nghiệp.</li>	<li style="text-align: justify;">Sơ yếu lý lịch có xác nhận của cơ quan công tác trước đó (nếu có) hoặc xác nhận của chính quyền địa phương nơi bạn đăng ký hộ khẩu thường trú.</li>	<li style="text-align: justify;">Chứng minh thư (photo không cần công chứng).</li>	<li style="text-align: justify;">Thư giới thiệu (nếu có)</li>	<li style="text-align: justify;">Ảnh 4x6: 4 chiếc (đã bao gồm 1 chiếc gắn trên sơ yếu lý lịch).</li></ul><p style="text-align: justify;"><br  /><strong>Chi tiết vui lòng tham khảo tại:</strong>&nbsp;<a href="http://vinades.vn/vi/news/Tuyen-dung/" target="_blank">http://vinades.vn/vi/news/Tuyen-dung/</a><br  /><br  /><strong>Mọi thắc mắc vui lòng liên hệ:</strong></p><blockquote><p style="text-align: justify;"><strong>Công ty cổ phần phát triển nguồn mở Việt Nam.</strong><br  />Trụ sở chính: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội.<br  /><br  />- Tel: +84-4-85872007 - Fax: +84-4-35500914<br  />- Email:&nbsp;<a href="mailto:contact@vinades.vn">contact@vinades.vn</a>&nbsp;- Website:&nbsp;<a href="http://www.vinades.vn/">http://www.vinades.vn</a></p></blockquote>', '', 2, 0, 1, 1, 1, 0),
(16, '<div class="details-content clearfix" id="bodytext"><strong>Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có gì mới?</strong><br  /><br  />Trong các hướng dẫn thực hiện nhiệm vụ CNTT từ năm 2010 đến nay liên tục chỉ đạo việc đẩy mạnh công tác triển khai sử dụng phần mềm nguồn mở trong nhà trường và các cơ quan quản lý giáo dục. Tuy nhiên Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo có nhiều thay đổi mạnh mẽ đáng chú ý, đặc biệt việc chỉ đạo triển khai các phần mềm nguồn mở vào trong các cơ sở quản lý giao dục được rõ ràng và cụ thể hơn rất nhiều.<br  /><br  />Một điểm thay đổi đáng chú ý đối với phần mềm nguồn mở, trong đó đã thay hẳn thuật ngữ &quot;phần mềm tự do mã nguồn mở&quot; hoặc &quot;phần mềm mã nguồn mở&quot; thành &quot;phần mềm nguồn mở&quot;, phản ánh xu thế sử dụng thuật ngữ phần mềm nguồn mở đã phổ biến trong cộng đồng nguồn mở thời gian vài năm trở lại đây.<br  /><br  /><strong>NukeViet - Phần mềm nguồn mở Việt - không chỉ được khuyến khích mà đã được hướng dẫn thực thi</strong><br  /><br  />Từ 5 năm trước, thông tư số 08/2010/TT-BGDĐT của Bộ GD&amp;ĐTquy định về sử dụng phần mềm tự do mã nguồn mở trong các cơ sở giáo dục, NukeViet đã được đưa vào danh sách các mã nguồn mở <strong>được khuyến khích sử dụng trong giáo dục</strong>. Tuy nhiên, việc sử dụng chưa được thực hiện một cách đồng bộ mà chủ yếu làm nhỏ lẻ rải rác tại một số trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo lần này, NukeViet&nbsp; không chỉ được khuyến khích mà đã được hướng dẫn thực thi, không những thế NukeViet còn được đưa vào hầu hết các nhiệm vụ chính, cụ thể:<div><div><div>&nbsp;</div>- <strong>Nhiệm vụ số 5</strong> &quot;<strong>Công tác bồi dưỡng ứng dụng CNTT cho giáo viên và cán bộ quản lý giáo dục</strong>&quot;, mục 5.1 &quot;Một số nội dung cần bồi dưỡng&quot; có ghi &quot;<strong>Tập huấn sử dụng phần mềm nguồn mở NukeViet.</strong>&quot;<br  />&nbsp;</div>- <strong>Nhiệm vụ số 10 &quot;Khai thác, sử dụng và dạy học bằng phần mềm nguồn mở</strong>&quot; có ghi: &quot;<strong>Khai thác và áp dụng phần mềm nguồn mở NukeViet trong giáo dục.&quot;</strong><br  />&nbsp;</div>- Phụ lục văn bản, có trong nội dung &quot;Khuyến cáo khi sử dụng các hệ thống CNTT&quot;, hạng mục số 3 ghi rõ &quot;<strong>Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.</strong><br  />&nbsp;<div>Hiện giờ văn bản này đã được đăng lên website của Bộ GD&amp;ĐT: <a href="http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage" target="_blank">http://moet.gov.vn/?page=1.10&amp;view=983&amp;opt=brpage</a></div><p><br  />Hoặc có thể tải về tại đây: <a href="http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/" target="_blank">http://vinades.vn/vi/download/van-ban-luat/Huong-dan-thuc-hien-nhiem-vu-CNTT-nam-hoc-2015-2016/</a></p><blockquote><p><em>Trên cơ sở hướng dẫn của Bộ GD&amp;ĐT, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&amp;ĐT, Sở GD&amp;ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT.<br  /><br  />Các Phòng, Sở GD&amp;ĐT có nhu cầu có thể xem thêm thông tin chi tiết tại đây: <a href="http://vinades.vn/vi/news/thong-cao-bao-chi/Ho-tro-trien-khai-dao-tao-va-trien-khai-NukeViet-cho-cac-Phong-So-GD-DT-264/" target="_blank">Hỗ trợ triển khai đào tạo và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT</a></em></p></blockquote></div>', '', 2, 0, 1, 1, 1, 0),
(17, '<div class="details-content clearfix" id="bodytext"><span style="font-size:16px;"><strong>Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet</strong></span><br  /><br  />Công tác hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng phần mềm nguồn mở NukeViet sẽ được thực hiện bởi đội ngũ chuyên gia giàu kinh nghiệm về NukeViet được tuyển chọn từ lực lượng lập trình viên, chuyên viên kỹ thuật hiện đang tham gia phát triển và hỗ trợ về NukeViet từ Ban Quản Trị NukeViet và Công ty cổ phần phát triển nguồn mở Việt Nam và các đối tác thuộc Liên minh phần mềm giáo dục nguồn mở NukeViet.<br  /><br  />Với kinh nghiệm tập huấn đã được tổ chức thành công cho nhiều Phòng giáo dục và đào tạo, các chuyên gia về NukeViet sẽ giúp chuyển giao giáo trình, chương trình, kịch bản đào tạo cho các Phòng, Sở GD&amp;ĐT; hỗ trợ các giáo viên và cán bộ quản lý giáo dục sử dụng trong suốt thời gian sau đào tạo.<br  /><br  />Đặc biệt, đối với các đơn vị sử dụng NukeViet làm website và cổng thông tin đồng bộ theo quy mô cấp Phòng và Sở, cán bộ tập huấn của NukeViet sẽ có nhiều chương trình hỗ trợ khác như chương trình thi đua giữa các website sử dụng NukeViet trong cùng đơn vị cấp Phòng, Sở và trên toàn quốc; Chương trình báo cáo và giám sát và xếp hạng website hàng tháng; Chương trình tập huấn nâng cao trình độ sử dụng NukeViet hàng năm cho giáo viên và cán bộ quản lý giáo dục đang thực hiện công tác quản trị các hệ thống sử dụng nền tảng NukeViet.<br  /><br  /><span style="font-size:16px;"><strong>Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT</strong></span><br  /><br  />Nhằm hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&amp;ĐT một cách toàn diện, đồng bộ và tiết kiệm, hiện tại, Liên minh phần mềm nguồn mở giáo dục NukeViet chuẩn bị ra mắt. Liên minh này do Công ty cổ phần phát triển nguồn mở Việt Nam đứng dầu và thực hiện việc điều phối công các hỗ trợ và phối hợp giữa các đơn vị trên toàn quốc. Thành viên của liên minh là các doanh nghiệp cung cấp sản phẩm và dịch vụ phần mềm hỗ trợ cho giáo dục (kể cả những đơn vị chỉ tham gia lập trình và những đơn vị chỉ tham gia khai thác thương mại). Liên minh sẽ cùng nhau làm việc để xây dựng một hệ thống phần mềm thống nhất cho giáo dục, có khả năng liên thông và kết nối với nhau, hoàn toàn dựa trên nền tảng phần mềm nguồn mở. Liên minh cũng hỗ trợ và phân phối phần mềm cho các đơn vị làm phần mềm trong ngành giáo dục với mục tiêu là tiết kiệm tối đa chi phí trong khâu thương mại, mang tới cơ hội cho các đơn vị làm phần mềm giáo dục mà không cần phải lo lắng về việc phân phối phần mềm. Các doanh nghiệp quan tâm đến cơ hội kinh doanh bằng phần mềm nguồn mở, muốn tìm hiểu và tham gia liên minh có thể đăng ký tại đây: <a href="http://edu.nukeviet.vn/lienminh-dangky.html" target="_blank">http://edu.nukeviet.vn/lienminh-dangky.html</a><br  /><br  />Liên minh phần mềm nguồn mở giáo dục NukeViet đang cung cấp giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) cung cấp dưới dạng dịch vụ công nghệ thông tin (theo mô hình của <a href="http://vinades.vn/vi/download/van-ban-luat/Quyet-dinh-80-ve-thue-dich-vu-CNTT/" target="_blank">Quyết định số 80/2014/QĐ-TTg của Thủ tướng Chính phủ</a>) có thể hỗ trợ cho các trường, Phòng và Sở GD&amp;ĐT triển khai NukeViet ngay lập tức.<br  /><br  />Giải pháp cổng thông tin chuyên dùng cho phòng và Sở GD&amp;ĐT (NukeViet Edu Gate) có tích hợp website các trường (liên thông 3 cấp: trường - phòng - sở) cho phép tích hợp hàng ngàn website của các trường cùng nhiều dịch vụ khác trên cùng một hệ thống giúp tiết kiệm chi phí đầu tư, chi phí triển khai và bảo trì hệ thống bởi toàn bộ hệ thống được vận hành bằng một phần mềm duy nhất. Ngoài giải pháp cổng thông tin giáo dục tích hợp, Liên minh phần mềm nguồn mở giáo dục NukeViet cũng đang phát triển một số&nbsp;sản phẩm phần mềm dựa trên phần mềm nguồn mở NukeViet và sẽ sớm ra mắt trong thời gian tới.<div><br  />Hiện nay,&nbsp;NukeViet Edu Gate cũng&nbsp;đã được triển khai rộng rãi và nhận được sự ủng hộ của&nbsp;nhiều Phòng, Sở GD&amp;ĐT trên toàn quốc.&nbsp;Các phòng, sở GD&amp;ĐT quan tâm đến giải pháp NukeViet Edu Gate có thể truy cập&nbsp;<a href="http://edu.nukeviet.vn/" target="_blank">http://edu.nukeviet.vn</a>&nbsp;để tìm hiểu thêm hoặc liên hệ:<br  /><br  /><span style="font-size:14px;"><strong>Liên minh phần mềm nguồn mở giáo dục NukeViet</strong></span><br  />Đại diện: <strong>Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC)</strong><br  /><strong>Địa chỉ</strong>: Phòng 2004 - Tòa nhà CT2 Nàng Hương, 583 Nguyễn Trãi, Hà Nội<br  /><strong>Email</strong>: contact@vinades.vn, Tel: 04-85872007, <strong>Fax</strong>: 04-35500914,<br  /><strong>Hotline</strong>: 0904762534 (Mr. Hùng), 0936226385 (Ms. Ngọc),&nbsp;<span style="color: rgb(38, 38, 38); font-family: arial, sans-serif; font-size: 13px; line-height: 16px;">0904719186 (Mr. Hậu)</span><br  />Các Phòng GD&amp;ĐT, Sở GD&amp;ĐT có thể đăng ký tìm hiểu, tổ chức hội thảo, tập huấn, triển khai NukeViet trực tiếp tại đây: <a href="http://edu.nukeviet.vn/dangky.html" target="_blank">http://edu.nukeviet.vn/dangky.html</a><br  /><br  /><span style="font-size:16px;"><strong>Tìm hiểu về phương thức chuyển đổi các hệ thống website cổng thông tin sang NukeViet theo mô hình tích hợp liên thông từ trưởng, lên Phòng, Sở GD&amp;ĐT:</strong></span><br  /><br  />Đối với các Phòng, Sở GD&amp;ĐT, trường Nầm non, tiểu học, THCS, THPT... chưa có website, Liên minh phần mềm nguồn mở giáo dục NukeViet sẽ hỗ trợ triển khai NukeViet theo mô hình cổng thông tin liên cấp như quy định tại <a href="http://vinades.vn/vi/download/van-ban-luat/Thong-tu-quy-dinh-ve-ve-to-chuc-hoat-dong-su-dung-thu-dien-tu/" target="_blank">thông tư số <strong>53/2012/TT-BGDĐT</strong> của Bộ GD&amp;ĐT</a> ban hành ngày 20-12-2012 quy định về quy định về về tổ chức hoạt động, sử dụng thư điện tử và cổng thông tin điện tử tại sở giáo dục và đào tạo, phòng giáo dục và đào tạo và các cơ sở GDMN, GDPT và GDTX.<br  /><br  />Trường hợp các đơn vị có website và đang sử dụng NukeViet theo dạng rời rạc thì việc chuyển đổi và tích hợp các website NukeViet rời rạc vào NukeViet Edu Gate của Phòng và Sở có thể thực hiện dễ dàng và giữ nguyên toàn bộ dữ liệu.<br  /><br  />Trường hợp các đơn vị có website và nhưng không sử dụng NukeViet cũng có thể chuyển đổi sang sử dụng NukeViet để hợp nhất vào hệ thống cổng thông tin giáo dục cấp Phòng, Sở. Tuy nhiên mức độ và tỉ lệ dữ liệu được chuyển đổi thành công sẽ phụ thuộc vào tình hình thực tế của từng website.</div></div>', '', 2, 0, 1, 1, 1, 0),
(18, '<p dir="ltr" style="text-align: justify;">Trải qua hơn 10 năm phát triển, từ một mã nguồn chỉ mang tính cá nhân, NukeViet đã phát triển thành công theo hướng cộng đồng. Năm 2010, NukeViet 3 ra đời đánh dấu một mốc lớn trong quá trình đi lên của NukeViet, phát triển theo hướng chuyên nghiệp với sự hậu thuẫn của Công ty cổ phần phát triển nguồn mở Việt Nam (VINADES.,JSC). NukeViet 3 đã và được sử dụng rộng rãi trong cộng đồng, từ các cổng thông tin tổ chức, hệ thống giáo dục, cho đến các website cá nhân, thương mại, mang lại các trải nghiệm vượt trội của mã nguồn thương hiệu Việt so với các mã nguồn nổi tiếng khác trên thế giới.<br  /><br  />Năm 2016, NukeViet 4 ra đời được xem là một cuộc cách mạng lớn trong chuỗi sự kiện phát triển NukeViet, cũng như xu thế công nghệ hiện tại. Hệ thống gần như được đổi mới hoàn toàn từ nhân hệ thống đến giao diện, nâng cao đáng kể hiệu suất và trải nghiệm người dùng.<br  /><br  /><span style="line-height: 1.6;"><strong>Dưới đây là một số thay đổi của NukeViet 4.</strong></span><br  /><strong><span style="line-height: 1.6;">Các thay đổi từ nhân hệ thống:</span></strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Các công nghệ mới được áp dụng.</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng composer để quản lý các thư viện PHP được cài vào hệ thống.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Từng bước áp dụng &nbsp;các tiêu chuẩn viết code PHP theo khuyến nghị của <a href="http://www.php-fig.org/psr/">http://www.php-fig.org/psr/</a></p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng PDO để thay cho extension MySQL.</p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Tăng cường khả năng bảo mật</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sau khi các chuyên giả bảo mật của HP gửi đánh giá, chúng tôi đã tối ưu NukeViet 4.0 để hệ thống an toàn hơn.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Mã hóa các mật khẩu lưu trữ trong hệ thống: Các mật khẩu như FPT, SMTP,... đã được mã hóa, bảo mật thông tin người dùng.</p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Tối ưu SEO:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">SEO được xem là một trong những ưu tiên hàng đầu được phát triển trong phiên bản này. NukeViet 4 tập trung tối ưu hóa SEO Onpage mạnh mẽ. Các công cụ hỗ trợ SEO được tập hợp lại qua module “Công cụ SEO”. Các chức năng được thêm mới:</p>		<ul>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Loại bỏ tên module khỏi URL khi không dùng đa ngôn ngữ</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Cho phép đổi đường dẫn module</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Thêm chức năng xác thực Google+ (Bản quyền tác giả)</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Thêm chức năng ping đến các công cụ tìm kiếm: Submit url mới đến google để việc hiển thị bài viết mới lên kết quả tìm kiếm nhanh chóng hơn.</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Hỗ trợ Meta OG của facebook</p>			</li>			<li dir="ltr">			<p dir="ltr" style="text-align: justify;">Hỗ trợ chèn Meta GEO qua Cấu hình Meta-Tags</p>			</li>		</ul>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cùng với đó, các module cũng được tối ưu hóa bằng các form hỗ trợ khai báo tiêu đề, mô tả (description), từ khóa (keywods) cho từng khu vực, từng trang. &nbsp;</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Với sự hỗ trợ tối đa này, người quản trị (admin) có thể tùy biến lại website theo phong cách SEO riêng biệt.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thay đổi giao diện, sử dụng giao diện tuỳ biến</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Giao diện trong NukeViet 4 được làm mới, tương thích với nhiều màn hình hơn.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Sử dụng thư viện bootstrap để việc phát triển giao diện thống nhất và dễ dàng hơn.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Hệ thống nhận thông báo:&nbsp;</strong><span style="line-height: 1.6;">Có thể gọi đây là một tiện ích nhỏ, song nó rất hữu dụng để admin tương tác với hệ thống một cách nhanh chóng. Admin có thể nhận thông báo từ hệ thống (hoặc từ module) khi có sự kiện nào đó.</span></p>	</li></ul><p dir="ltr" style="text-align: justify; margin-left: 40px;"><strong>Ví dụ:</strong> Khi có khách gửi liên hệ (qua module contact) đến thì hệ thống xuất hiện biểu tượng thông báo “Có liên hệ mới” ở góc phải, Admin sẽ nhận được ngay lập tức thông báo khi người dùng đang ở Admin control panel (ACP).</p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thay đổi cơ chế quản lý block:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Nhận thấy việc hiển thị block ở lightbox trong NukeViet 3 dẫn đến một số bất tiện trong quá trình quản lý, NukeViet 4 đã thay thế cách hiển thị này ở dạng cửa sổ popup. Dễ nhận thấy sự thay đổi này khi admin thêm (hoặc sửa) một block nào đó.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">“Cấu hình hiển thị block trên các thiết bị” cũng được đưa vào phần cấu hình block, admin có thể tùy chọn cho phép block hiển thị trên các thiết bị nào (tất cả thiết bị, thiết bị di động, máy tính bảng, thiết bị khác).<span style="line-height: 1.6;">&nbsp;</span></p>		</li>	</ul>	</li></ul><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Thêm ngôn ngữ tiếng Pháp:</strong> website cài đặt mới có sẵn 3 ngôn ngữ mặc định là Việt, Anh và Pháp.</p>	</li></ul><p dir="ltr" style="text-align: justify;"><strong>Các thay đổi của module:</strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module menu:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Phương án quản lý menu được thay đổi hướng tới việc quản lý menu nhanh chóng, tiện lợi nhất cho admin. Admin có thể nạp nhanh menu theo các tùy chọn mà hệ thống cung cấp.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Mẫu menu cũng được thay đổi, đa dạng và hiển thị tốt với các giao diện hiện đại.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module contact (Liên hệ):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Bổ sung các trường thông tin về bộ phận (Điện thoại, fax, email, các trường liên hệ khác,...).</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Admin có thể trả lời khách nhiều lần, hệ thống lưu lại lịch sử trao đổi đó.</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module users (Tài khoản):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thay thế OpenID bằng thư viện OAuth - hỗ trợ tích hợp đăng nhập qua tài khoản mạng xã hội</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cho phép đăng nhập 1 lần tài khoản người dùng NukeViet với Alfresco, Zimbra, Moodle, Koha</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm chức năng tùy biến trường dữ liệu thành viên</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm chức năng phân quyền sử dụng module users</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm cấu hình: Số ký tự username, độ phức tạp mật khẩu, tạo mật khảu ngẫu nhiên,....</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cho phép sử dụng tên truy cập, hoặc email để đăng nhập</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module about:</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Module about ở NukeViet 3 được đổi tên thành module page</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm các cấu hình hỗ trợ SEO: Ảnh minh họa, chú thích ảnh minh họa, mô tả, từ khóa cho bài viết, hiển thị các công cụ tương tác với các mạng xã hội.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm RSS</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Cấu hình phương án hiển thị các bài viết trên trang chính</p>		</li>	</ul>	</li>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;"><strong>Module news (Tin tức):</strong></p>	<ul>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm phân quyền cho người quản lý module, đến từng chủ đề</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thay đổi phương án lọc từ khóa bài viết, lọc từ khóa theo các từ khóa đã có trong tags thay vì đọc từ từ điển.</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Bổ sung các trạng thái bài viết</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm cấu hình mặc định hiển thị ảnh minh họa trên trang xem chi tiết bài viết</p>		</li>		<li dir="ltr">		<p dir="ltr" style="text-align: justify;">Thêm các công cụ tương tác với mạng xã &nbsp;hội.</p>		</li>	</ul>	</li></ul><p dir="ltr" style="text-align: justify;"><strong>Quản lý Bình luận</strong></p><ul>	<li dir="ltr">	<p dir="ltr" style="text-align: justify;">Các bình luận của các module sẽ được tích hợp quản lý tập trung để cấu hình.</p>	</li>	<li dir="ltr" style="text-align: justify;">Khi xây dựng mới module, Chỉ cần nhúng 1 đoạn mã vào. Tránh phải việc copy mã code gây khó khăn cho bảo trì.</li></ul>', '', 2, 0, 1, 1, 1, 0);
INSERT INTO `nv4_vi_news_detail` (`id`, `bodyhtml`, `sourcetext`, `imgposition`, `copyright`, `allowed_send`, `allowed_print`, `allowed_save`, `gid`) VALUES
(19, '<h2><span style="color:rgb(255, 0, 0);"><strong>1. Tốc độ</strong></span></h2><div style="text-align:center"><img alt="litespeed benchmark" height="292" src="/xedap/uploads/news/2016_01/litespeed-benchmark.jpg" width="540" /></div><br  />Tốc độ truy cập website rất quan trọng, ảnh hưởng đến trải nghiệm của người dùng cũng như thứ hạng trên các bộ máy tìm kiếm (Google, Bing...). Website có tốc độ nhanh là website không để người dùng &quot;chờ&quot; khi click vào bất cứ trang nào. Hay nói cách khác tốc độ load trang phải 1 giây trở xuống. Có 2 yếu tố tác động đến tốc độ đó là &quot;sự tối ưu của mã nguồn website&quot; và &quot;sự tối ưu của hệ thống hosting&quot;<br  />&nbsp;<ul>	<li><span style="color:rgb(0, 0, 205);"><strong>Sự tối ưu của mã nguồn website:</strong></span> Nếu bạn đang dùng NukeViet, bạn đang rất may mắn bởi NukeViet được thiết kế để tối ưu và tăng tốc truy cập.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Sự tối ưu của hệ thống hosting:</strong></span> Các nhà cung cấp hosting kinh nghiệm và uy tín luôn tối ưu hệ thống Hosting của họ một cách tốt nhất, hãy để ý một số tiêu chí sau để đánh giá mức độ VIP về việc tối ưu tốc độ của hosting bạn đang sử dụng:	<ul>		<li><strong>Ổ cứng SSD:</strong> Công nghệ ổ cứng SSD đang được sử dụng mạnh mẽ để thay thế các ổ cứng SATA thế hệ cũ bởi tốc độ đọc ghi dữ liệu của ổ cứng SSD cực nhanh, giúp máy chủ hosting xử lý và đọc ghi dữ liệu nhanh hơn. Công nghệ này không những áp dụng vào hệ thống hosting mà còn đang áp dụng với hầu hết các hệ thống máy chủ thời nay.</li>		<li><strong>Webserver Litespeed:</strong> Đây là phần mềm web server có tốc độ nhanh nhất (nhanh gấp 5 lần Apache), là giải pháp thay thế cho web server truyền thống Apache. Web server này cũng được đánh giá là ổn định và bảo mật. Tuy nhiên đây là phần mềm web server có bản quyền<strong>. <span style="background-color:rgb(250, 235, 215);">Nếu nhà cung cấp hosting của bạn sử dụng phần mềm này, họ đã đầu tư bài bản cho hệ thống hosting của mình</span></strong>.</li>	</ul>	</li></ul><h2><span style="color:rgb(255, 0, 0);"><strong>2. Bảo mật</strong></span></h2><div style="text-align:center"><img alt="cloudlinux security" height="312" src="/xedap/uploads/news/2016_01/cloudlinux-security.jpg" width="540" /></div><br  />Khi sử dụng hosting, bạn cần quan tâm đến hình thức tấn công &quot;local attack&quot;. Bởi một máy chủ hosting có rất nhiều tài khoản hosting khác nhau. Local attack là hình thức chiếm quyền điều khiển tài khoản hosting A (vì website trên hosting A này bị lỗi bảo mật hoặc bị lộ mật khẩu) sau đó dùng hosting A để chiếm quyền điền khiển sang hosting B - hosting của bạn. Hình thức tấn công này rất nguy hiểm, tuy nhiên hãy để ý, <strong><span style="background-color:rgb(255, 255, 224);">nếu nhà cung cấp hosting nào đang sử dụng công nghệ &quot;CloudLinux&quot;, hosting của họ đã chống được gần như 100% hình thức tấn công này</span></strong><span style="background-color:rgb(255, 255, 224);">.</span><h3>&nbsp;</h3><h2><span style="color:rgb(255, 0, 0);"><strong>3. Ổn định</strong></span></h2><div style="text-align:center"><img alt="123host network security" height="310" src="/xedap/uploads/news/2016_01/123host-network-security.jpg" width="540" /></div><br  />Sự ổn định rất quan trọng bởi bạn sẽ sử dụng hosting lâu dài ngày này qua ngày khác. Sự chập chờn, gián đoạn truy cập chỉ trong ít phút cũng đã ảnh hưởng đến doanh thu, thứ hạn, làm giảm lượng truy cập vào website bạn. Các yếu tố cơ bản sau ảnh hưởng đến độ ổn định của dịch vụ hosting:<ul>	<li><span style="color:rgb(0, 0, 205);"><strong>Network &amp; Datacenter: </strong></span>Hạ tầng network ổn định đặt tại các datacenter lớn là tiêu chí rất quan trọng. <strong><span style="background-color:rgb(255, 255, 224);">Các nhà cung cấp hosting lớn luôn đặt máy chủ của mình tại các datacenter lớn nhất Việt Nam như VDC2 hoặc ViettelIDC</span></strong>.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Chống tấn công DDOS: </strong></span>Đây là yếu tố cực kỳ quan trọng giúp các máy chủ hosting ổn định. Một máy chủ hosting có thể chứa hàng nghìn website, vì vậy thường xuyên sẽ có những cuộc tấn công DDOS vào một trong số các website này và sẽ ảnh hưởng toàn bộ máy chủ hosting và tất nhiên sẽ ảnh hưởng đến website của bạn. Truy cập sẽ chập chờn, lúc chậm lúc nhanh và có khi sẽ gián đoạn<strong>. <span style="background-color:rgb(255, 255, 224);">Hãy để ý các nhà cung cấp hosting tốt luôn có hệ thống Firewall</span> </strong>(tường lửa) chuyện dụng cho hosting của mình.</li></ul><h2><br  /><span style="color:rgb(255, 0, 0);"><strong>4. Hỗ trợ</strong></span></h2><div style="text-align:center"><img alt="support247" height="151" src="/xedap/uploads/news/2016_01/support247.jpg" width="540" /></div><br  />Không cần bàn cãi gì nữa, một nhà cung cấp hosting tốt luôn:<br  />&nbsp;<ul>	<li>Hỗ trợ khách hàng 24/7 bất kể là đêm hay ngày, kể cả những ngày lễ tết.</li>	<li>Hỗ trợ nhanh và nhiệt tình, giải quyết các vấn đề bạn gặp phải nhanh chóng.</li></ul><h3>&nbsp;</h3><h2><span style="color:rgb(255, 0, 0);"><strong>5. Các tham số quan trọng của hosting</strong><span style="font-size: 13px; line-height: 1.6;">&nbsp;</span></span></h2><ul>	<li><strong><span style="color:rgb(0, 0, 205);">Băng thông</span></strong> (bandwidth): Tham số này rất quan trọng nếu website của bạn chứa nhiều hình ảnh và lượng truy cập website cao. Vì vậy khi lựa chọn hosting, hãy để ý tham số băng thông, tốt nhất <strong><span style="background-color:rgb(255, 255, 224);">nên chọn các nhà cung cấp hosting không giới hạn băng thông</span></strong>&nbsp;để khỏi lo lắng về vấn đề này.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Tự ý thay đổi được phiên bản PHP</strong></span>, thành phần mở rộng (extension) của PHP cũng như các tham số cấu hình PHP: Yếu tố này cũng khá quan trọng, ví dụ bạn đang dùng NukeViet 3, phiên bản NukeViet này yêu cầu PHP version là 5.3, nếu bạn nâng cấp Nukeviet lên Nukeviet 4, yêu cầu phiên bản PHP phải là 5.4 . Vì vậy<strong> <span style="background-color:rgb(255, 255, 224);">hãy chọn lựa các nhà cung cấp hosting cho phép bạn thay đổi được các phiên bản PHP</span></strong> cũng như các tham số cấu hình nó.</li></ul>&nbsp;<br  />Đến thời điểm hiện tại, <a href="https://123host.vn/web-hosting.html" target="_blank"><strong>123HOST</strong></a> là nhà cung cấp hosting đầu tiên&nbsp;<span style="color:rgb(0, 0, 205);"><strong>đạt chứng nhận tương thích với mã nguồn NukeViet 4 </strong></span>(xem tại <a href="http://nukeviet.vn/vi/partner/hosting/">http://nukeviet.vn/vi/partner/hosting/</a> ).&nbsp; Đồng thời họ cũng là nhà cung cấp hosting uy tín đáp ứng được tất cả 5 tiêu chí khắt khe trên.<br  />&nbsp;<div style="text-align:center"><img alt="hosting 123host nukeviet" height="298" src="/xedap/uploads/news/2016_01/hosting-123host-nukeviet.jpg" width="540" /></div><br  /><br  />Nếu sử dụng NukeViet hay bất kỳ mã nguồn mở nào khác, chúng tôi khuyên bạn nên dùng dịch vụ tại <strong>123HOST</strong>. Ngoài đáp ứng 5 tiêu chí trên, hosting tại <strong>123HOST</strong> còn có các tính năng đặc biệt mà không nhà cung cấp nào có:<ul>	<li>Tất cả các gói hosting của <strong>123HOST</strong> đều<strong> <span style="color:rgb(0, 0, 205);">không giới hạn băng thông</span></strong>, parked domain, tài khoản email, FTP, tài khoản MySQL. Hầu như tất cả đều không giới hạn cho tất cả các gói hosting.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>DDOS Protection:</strong> </span>Nếu dùng hosting của các nhà cung cấp khác, khi website của bạn bị tấn công DDOS, họ sẽ khóa website của bạn để khỏi ảnh hưởng đến máy chủ hosting. Tuy nhiên tại <strong>123HOST</strong>, hệ thống của họ sẽ tự phát hiện và bật cản lọc tấn công cho website của bạn. Đồng thời bạn cũng có thể tự&nbsp; mình kích hoạt tính năng này tại giao diện cPanel. &nbsp;Website của bạn sẽ an toàn và hoạt động bình thường.</li>	<li><span style="color:rgb(0, 0, 205);"><strong>Malware Scanner:</strong></span> Tính năng này được tích hợp tại cPanel để người dùng quét xem mã nguồn website của mình có bị kẻ xấu lợi dụng và upload mã độc lên hay không. Đồng thời họ cũng hỗ trợ kiểm tra mã nguồn cho bạn nếu bạn gởi yêu cầu hỗ trợ kỹ thuật.</li>	<li><strong><span style="color:rgb(0, 0, 205);">Backup miễn phí:</span> </strong>Hosting tại <strong>123HOST</strong> đều tự động backup trong vòng 7 ngày, mỗi ngày 1 bản backup. Nếu bạn lỡ tay xóa mất dữ liệu website của mình hay website bị kẻ xấu hack và xóa dữ liệu, hãy bình tĩnh và liên hệ với kỹ thuật của 123HOST, họ sẽ khôi phục website cho bạn MIỄN PHÍ.</li></ul><div style="text-align:center"><img alt="cpanel ddos protection malware scanner" height="300" src="/xedap/uploads/news/2016_01/cpanel-ddos-protection-malware-scanner.jpg" width="540" /></div><br  />Chúc các bạn thành công.<br /><br />----<div>Giấy phép:<br /><a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license" target="_blank"><img alt="CC BY NC SA" height="15" src="/xedap/uploads/news/2016_01/cc-by-nc-sa.png" style="border-width: 0px;" width="80" /></a><br />Bài viết này được chia sẻ với các điều khoản của <a href="http://creativecommons.org/licenses/by-nc-sa/4.0/" rel="license" target="_blank">giấy phép Creative Commons Attribution-NonCommercial-ShareAlike 4.0</a>.<br />Nguồn: <a href="https://123host.vn/blog/chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet.html" target="_blank">https://123host.vn/blog/chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet.html</a></div>', '', 2, 0, 1, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_logs`
--

CREATE TABLE `nv4_vi_news_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_rows`
--

CREATE TABLE `nv4_vi_news_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `topicid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `homeimgfile` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_rows`
--

INSERT INTO `nv4_vi_news_rows` (`id`, `catid`, `listcatid`, `topicid`, `admin_id`, `author`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1,8,12', 0, 1, 'Quỳnh Nhi', 1, 1274989177, 1275318126, 1, 1274989140, 0, 2, 'Ra mắt công ty mã nguồn mở đầu tiên tại Việt Nam', 'Ra-mat-cong-ty-ma-nguon-mo-dau-tien-tai-Viet-Nam', 'Mã nguồn mở NukeViet vốn đã quá quen thuộc với cộng đồng CNTT Việt Nam trong mấy năm qua. Tuy chưa hoạt động chính thức, nhưng chỉ trong khoảng 5 năm gần đây, mã nguồn mở NukeViet đã được dùng phổ biến ở Việt Nam, áp dụng ở hầu hết các lĩnh vực, từ tin tức đến thương mại điện tử, từ các website cá nhân cho tới những hệ thống website doanh nghiệp.', 'nangly.jpg', 'Thành lập VINADES.,JSC', 1, 1, '6', 1, 4, 1, 5, 1),
(6, 12, '1,12', 0, 1, 'Nguyễn Thế Hùng', 7, 1453192444, 1453192444, 1, 1453192444, 0, 2, 'Hãy trở thành nhà cung cấp dịch vụ của NukeViet&#33;', 'hay-tro-thanh-nha-cung-cap-dich-vu-cua-nukeviet', 'Nếu bạn là công ty hosting, là công ty thiết kế web có sử dụng mã nguồn NukeViet, là cơ sở đào tạo NukeViet hay là công ty bất kỳ có kinh doanh dịch vụ liên quan đến NukeViet... hãy cho chúng tôi biết thông tin liên hệ của bạn để NukeViet hỗ trợ bạn trong công việc kinh doanh nhé!', 'hoptac.jpg', '', 1, 1, '6', 1, 14, 0, 0, 0),
(7, 11, '11', 0, 1, 'Phạm Quốc Tiến', 2, 1453192400, 1453192400, 1, 1453192400, 0, 2, 'Tuyển dụng lập trình viên PHP phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-PHP', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về PHP và MySQL?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(8, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391089, 1445394192, 1, 1445391060, 0, 2, 'Tuyển dụng chuyên viên đồ hoạ phát triển NukeViet', 'Tuyen-dung-chuyen-vien-do-hoa', 'Bạn đam mê nguồn mở? Bạn là chuyên gia đồ họa? Chúng tôi sẽ giúp bạn hiện thực hóa ước mơ của mình với một mức lương đảm bảo. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 0, 0, 0, 0),
(9, 11, '11', 0, 1, 'Phạm Quốc Tiến', 0, 1445391090, 1445394193, 1, 1445391060, 0, 2, 'Tuyển dụng lập trình viên front-end (HTML/CSS/JS) phát triển NukeViet', 'Tuyen-dung-lap-trinh-vien-front-end-HTML-CSS-JS', 'Bạn đam mê nguồn mở? Bạn đang cần tìm một công việc phù hợp với thế mạnh của bạn về front-end (HTML/CSS/JS)?. Hãy gia nhập VINADES.,JSC để xây dựng mã nguồn mở hàng đầu cho Việt Nam.', 'tuyendung-kythuat.jpg', 'Tuyển dụng', 1, 1, '6', 1, 1, 1, 0, 0),
(10, 1, '1,9', 0, 1, '', 3, 1322685920, 1322686042, 1, 1322685920, 0, 2, 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 'Ma-nguon-mo-NukeViet-gianh-giai-ba-Nhan-tai-dat-Viet-2011', 'Không có giải nhất và giải nhì, sản phẩm Mã nguồn mở NukeViet của VINADES.,JSC là một trong ba sản phẩm đã đoạt giải ba Nhân tài đất Việt 2011 - Lĩnh vực Công nghệ thông tin (Sản phẩm đã ứng dụng rộng rãi).', 'nukeviet-nhantaidatviet2011.jpg', 'Mã nguồn mở NukeViet giành giải ba Nhân tài đất Việt 2011', 1, 1, '6', 1, 1, 0, 0, 0),
(11, 1, '1', 0, 1, '', 4, 1445309676, 1445309676, 1, 1445309520, 0, 2, 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 'nukeviet-duoc-uu-tien-mua-sam-su-dung-trong-co-quan-to-chuc-nha-nuoc', 'Ngày 5/12/2014, Bộ trưởng Bộ TT&TT Nguyễn Bắc Son đã ký ban hành Thông tư 20/2014/TT-BTTTT (Thông tư 20) quy định về các sản phẩm phần mềm nguồn mở (PMNM) được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước. NukeViet (phiên bản 3.4.02 trở lên) là phần mềm được nằm trong danh sách này.', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', 'NukeViet được ưu tiên mua sắm, sử dụng trong cơ quan, tổ chức nhà nước', 1, 1, '4', 1, 2, 0, 0, 0),
(12, 11, '11', 0, 1, 'Vũ Bích Ngọc', 0, 1445391061, 1445394203, 1, 1445391000, 0, 2, 'Công ty VINADES tuyển dụng nhân viên kinh doanh', 'cong-ty-vinades-tuyen-dung-nhan-vien-kinh-doanh', 'Công ty cổ phần phát triển nguồn mở Việt Nam là đơn vị chủ quản của phần mềm mã nguồn mở NukeViet - một mã nguồn được tin dùng trong cơ quan nhà nước, đặc biệt là ngành giáo dục. Chúng tôi cần tuyển 05 nhân viên kinh doanh cho lĩnh vực này.', 'tuyen-dung-nvkd.png', '', 1, 1, '4', 1, 1, 0, 5, 1),
(14, 1, '1,11', 0, 1, 'Trần Thị Thu', 0, 1445391118, 1445394180, 1, 1445391060, 0, 2, 'Chương trình thực tập sinh tại công ty VINADES', 'chuong-trinh-thuc-tap-sinh-tai-cong-ty-vinades', 'Cơ hội để những sinh viên năng động được học tập, trải nghiệm, thử thách sớm với những tình huống thực tế, được làm việc cùng các chuyên gia có nhiều kinh nghiệm của công ty VINADES.', 'thuc-tap-sinh.jpg', '', 1, 1, '4', 1, 0, 0, 0, 0),
(15, 11, '11', 0, 1, 'Trần Thị Thu', 0, 1445391135, 1445394444, 1, 1445391120, 0, 2, 'Học việc tại công ty VINADES', 'hoc-viec-tai-cong-ty-vinades', 'Công ty cổ phần phát triển nguồn mở Việt Nam tạo cơ hội việc làm và học việc miễn phí cho những ứng viên có đam mê thiết kế web, lập trình PHP… được học tập và rèn luyện cùng đội ngũ lập trình viên phát triển NukeViet.', 'hoc-viec-tai-cong-ty-vinades.jpg', '', 1, 1, '4', 1, 1, 1, 0, 0),
(16, 1, '1', 0, 1, '', 0, 1445391182, 1445394133, 1, 1445391120, 0, 2, 'NukeViet được Bộ GD&amp;ĐT đưa vào Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016', 'nukeviet-duoc-bo-gd-dt-dua-vao-huong-dan-thuc-hien-nhiem-vu-cntt-nam-hoc-2015-2016', 'Trong Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, NukeViet được đưa vào các hạng mục: Tập huấn sử dụng phần mềm nguồn mở cho giáo viên và cán bộ quản lý giáo dục; Khai thác, sử dụng và dạy học; đặc biệt phần &quot;khuyến cáo khi sử dụng các hệ thống CNTT&quot; có chỉ rõ &quot;Không nên làm website mã nguồn đóng&quot; và &quot;Nên làm NukeViet: phần mềm nguồn mở&quot;.', 'nukeviet-cms.jpg', '', 1, 1, '4', 1, 1, 0, 5, 1),
(17, 1, '1,10', 0, 1, '', 0, 1445391217, 1445393997, 1, 1445391180, 0, 2, 'Hỗ trợ tập huấn và triển khai NukeViet cho các Phòng, Sở GD&amp;ĐT', 'ho-tro-tap-huan-va-trien-khai-nukeviet-cho-cac-phong-so-gd-dt', 'Trên cơ sở Hướng dẫn thực hiện nhiệm vụ CNTT năm học 2015 - 2016 của Bộ Giáo dục và Đào tạo, Công ty cổ phần phát triển nguồn mở Việt Nam và các doanh nghiệp phát triển NukeViet trong cộng đồng NukeViet đang tích cực công tác hỗ trợ cho các phòng GD&ĐT, Sở GD&ĐT triển khai 2 nội dung chính: Hỗ trợ công tác đào tạo tập huấn hướng dẫn sử dụng NukeViet và Hỗ trợ triển khai NukeViet cho các trường, Phòng và Sở GD&ĐT', 'tap-huan-pgd-ha-dong-2015.jpg', 'Tập huấn triển khai NukeViet tại Phòng Giáo dục và Đào tạo Hà Đông - Hà Nội', 1, 1, '4', 1, 1, 0, 0, 0),
(18, 2, '2', 0, 1, 'VINADES', 0, 1453194455, 1453194455, 1, 1453194455, 0, 2, 'NukeViet 4.0 có gì mới?', 'nukeviet-4-0-co-gi-moi', 'NukeViet 4 là phiên bản NukeViet được cộng đồng đánh giá cao, hứa hẹn nhiều điểm vượt trội về công nghệ đến thời điểm hiện tại. NukeViet 4 thay đổi gần như hoàn toàn từ nhân hệ thống đến chức năng, giao diện người dùng. Vậy, có gì mới trong phiên bản này?', 'chuc-mung-nukeviet-thong-tu-20-bo-tttt.jpg', '', 1, 1, '4', 1, 3, 1, 0, 0),
(19, 10, '10', 0, 1, '123host', 0, 1453192440, 1453192440, 1, 1453192440, 0, 2, 'Chọn nhà cung cấp Hosting nào tốt cho NukeViet?', 'chon-nha-cung-cap-hosting-nao-tot-cho-nukeviet', 'NukeViet được xây dựng và phát triển để tương thích với nhiều loại hosting và server. Tuy nhiên, để website NukeViet của bạn hoạt động tốt trên môi trường internet, cần chọn một nhà cung cấp Hosting uy tín, tin cậy và để &quot;chọn mặt gởi vàng&quot; website của mình. Bài viết này sẽ trình bày các tiêu chí để lựa chọn một nhà cung cấp Hosting tốt cho website của bạn.', '2016_01/how-to-choose-hosting.jpg', '', 1, 1, '4', 1, 3, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_sources`
--

CREATE TABLE `nv4_vi_news_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_sources`
--

INSERT INTO `nv4_vi_news_sources` (`sourceid`, `title`, `link`, `logo`, `weight`, `add_time`, `edit_time`) VALUES
(1, 'Báo Hà Nội Mới', 'http://hanoimoi.com.vn', '', 1, 1274989177, 1274989177),
(2, 'VINADES.,JSC', 'http://vinades.vn', '', 2, 1274989787, 1274989787),
(3, 'Báo điện tử Dân Trí', 'http://dantri.com.vn', '', 3, 1322685396, 1322685396),
(4, 'Bộ Thông tin và Truyền thông', 'http://http://mic.gov.vn', '', 4, 1445309676, 1445309676);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags`
--

CREATE TABLE `nv4_vi_news_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags`
--

INSERT INTO `nv4_vi_news_tags` (`tid`, `numnews`, `alias`, `image`, `description`, `keywords`) VALUES
(1, 0, 'nguồn-mở', '', '', 'nguồn mở'),
(2, 0, 'quen-thuộc', '', '', 'quen thuộc'),
(3, 0, 'cộng-đồng', '', '', 'cộng đồng'),
(4, 0, 'việt-nam', '', '', 'việt nam'),
(5, 0, 'hoạt-động', '', '', 'hoạt động'),
(6, 0, 'tin-tức', '', '', 'tin tức'),
(7, 1, 'thương-mại-điện', '', '', 'thương mại điện'),
(8, 0, 'điện-tử', '', '', 'điện tử'),
(9, 13, 'nukeviet', '', '', 'nukeviet'),
(10, 8, 'vinades', '', '', 'vinades'),
(11, 3, 'lập-trình-viên', '', '', 'lập trình viên'),
(12, 3, 'chuyên-viên-đồ-họa', '', '', 'chuyên viên đồ họa'),
(13, 3, 'php', '', '', 'php'),
(14, 2, 'mysql', '', '', 'mysql'),
(15, 1, 'nhân-tài-đất-việt-2011', '', '', 'nhân tài đất việt 2011'),
(16, 9, 'mã-nguồn-mở', '', '', 'mã nguồn mở'),
(17, 2, 'nukeviet4', '', '', 'nukeviet4'),
(18, 1, 'mail', '', '', 'mail'),
(19, 1, 'fpt', '', '', 'fpt'),
(20, 1, 'smtp', '', '', 'smtp'),
(21, 1, 'bootstrap', '', '', 'bootstrap'),
(22, 1, 'block', '', '', 'block'),
(23, 1, 'modules', '', '', 'modules'),
(24, 2, 'banner', '', '', 'banner'),
(25, 1, 'liên-kết', '', '', 'liên kết'),
(26, 2, 'hosting', '', '', 'hosting'),
(27, 1, 'hỗ-trợ', '', '', 'hỗ trợ'),
(28, 1, 'hợp-tác', '', '', 'hợp tác'),
(29, 1, 'tốc-độ', '', '', 'tốc độ'),
(30, 2, 'website', '', '', 'website'),
(31, 1, 'bảo-mật', '', '', 'bảo mật'),
(32, 4, 'giáo-dục', '', '', 'giáo dục'),
(33, 1, 'edu-gate', '', '', 'edu gate'),
(34, 2, 'lập-trình', '', '', 'lập trình'),
(35, 1, 'logo', '', '', 'logo'),
(36, 1, 'code', '', '', 'code'),
(37, 1, 'thực-tập', '', '', 'thực tập'),
(38, 1, 'kinh-doanh', '', '', 'kinh doanh'),
(39, 1, 'nhân-viên', '', '', 'nhân viên'),
(40, 1, 'bộ-gd&đt', '', '', 'Bộ GD&ĐT'),
(41, 1, 'module', '', '', 'module'),
(42, 1, 'php-nuke', '', '', 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_tags_id`
--

CREATE TABLE `nv4_vi_news_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_tags_id`
--

INSERT INTO `nv4_vi_news_tags_id` (`id`, `tid`, `keyword`) VALUES
(1, 7, 'thương mại điện'),
(1, 9, 'nukeviet'),
(7, 10, 'vinades'),
(7, 9, 'nukeviet'),
(7, 11, 'lập trình viên'),
(7, 12, 'chuyên viên đồ họa'),
(7, 13, 'php'),
(7, 14, 'mysql'),
(10, 15, 'Nhân tài đất Việt 2011'),
(10, 16, 'mã nguồn mở'),
(10, 9, 'nukeviet'),
(18, 17, 'nukeviet4'),
(18, 9, 'nukeviet'),
(18, 10, 'vinades'),
(18, 13, 'php'),
(18, 14, 'mysql'),
(18, 18, 'mail'),
(18, 19, 'fpt'),
(18, 20, 'smtp'),
(18, 21, 'bootstrap'),
(18, 22, 'block'),
(18, 23, 'modules'),
(18, 16, 'mã nguồn mở'),
(6, 16, 'mã nguồn mở'),
(6, 9, 'nukeviet'),
(6, 17, 'nukeviet4'),
(6, 10, 'vinades'),
(6, 24, 'banner'),
(6, 25, 'liên kết'),
(6, 26, 'hosting'),
(6, 27, 'hỗ trợ'),
(6, 28, 'hợp tác'),
(19, 9, 'nukeviet'),
(19, 10, 'vinades'),
(19, 29, 'tốc độ'),
(19, 26, 'hosting'),
(19, 30, 'website'),
(19, 31, 'bảo mật'),
(17, 9, 'nukeviet'),
(17, 32, 'giáo dục'),
(17, 33, 'edu gate'),
(15, 16, 'mã nguồn mở'),
(15, 10, 'vinades'),
(15, 9, 'nukeviet'),
(15, 11, 'lập trình viên'),
(15, 12, 'chuyên viên đồ họa'),
(16, 9, 'nukeviet'),
(16, 16, 'mã nguồn mở'),
(16, 32, 'giáo dục'),
(8, 10, 'vinades'),
(8, 34, 'lập trình'),
(8, 35, 'logo'),
(8, 24, 'banner'),
(8, 30, 'website'),
(8, 36, 'code'),
(8, 13, 'php'),
(9, 16, 'mã nguồn mở'),
(9, 10, 'vinades'),
(9, 34, 'lập trình'),
(9, 9, 'nukeviet'),
(14, 37, 'thực tập'),
(14, 10, 'vinades'),
(14, 12, 'chuyên viên đồ họa'),
(14, 11, 'lập trình viên'),
(14, 9, 'nukeviet'),
(14, 16, 'mã nguồn mở'),
(12, 38, 'kinh doanh'),
(12, 9, 'nukeviet'),
(12, 32, 'giáo dục'),
(12, 39, 'nhân viên'),
(11, 16, 'mã nguồn mở'),
(11, 9, 'nukeviet'),
(11, 40, 'Bộ GD&ĐT'),
(11, 32, 'giáo dục'),
(1, 41, 'module'),
(1, 16, 'mã nguồn mở'),
(1, 42, 'php-nuke');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_news_topics`
--

CREATE TABLE `nv4_vi_news_topics` (
  `topicid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_news_topics`
--

INSERT INTO `nv4_vi_news_topics` (`topicid`, `title`, `alias`, `image`, `description`, `weight`, `keywords`, `add_time`, `edit_time`) VALUES
(1, 'NukeViet 4', 'NukeViet-4', '', 'NukeViet 4', 1, 'NukeViet 4', 1445396011, 1445396011);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page`
--

CREATE TABLE `nv4_vi_page` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_page_config`
--

CREATE TABLE `nv4_vi_page_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_page_config`
--

INSERT INTO `nv4_vi_page_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_referer_stats`
--

CREATE TABLE `nv4_vi_referer_stats` (
  `host` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `month01` int(11) NOT NULL DEFAULT '0',
  `month02` int(11) NOT NULL DEFAULT '0',
  `month03` int(11) NOT NULL DEFAULT '0',
  `month04` int(11) NOT NULL DEFAULT '0',
  `month05` int(11) NOT NULL DEFAULT '0',
  `month06` int(11) NOT NULL DEFAULT '0',
  `month07` int(11) NOT NULL DEFAULT '0',
  `month08` int(11) NOT NULL DEFAULT '0',
  `month09` int(11) NOT NULL DEFAULT '0',
  `month10` int(11) NOT NULL DEFAULT '0',
  `month11` int(11) NOT NULL DEFAULT '0',
  `month12` int(11) NOT NULL DEFAULT '0',
  `last_update` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_searchkeys`
--

CREATE TABLE `nv4_vi_searchkeys` (
  `id` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `skey` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total` int(11) NOT NULL DEFAULT '0',
  `search_engine` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms`
--

CREATE TABLE `nv4_vi_siteterms` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imagealt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `imageposition` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `bodytext` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `socialbutton` tinyint(4) NOT NULL DEFAULT '0',
  `activecomm` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `layout_func` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gid` mediumint(9) NOT NULL DEFAULT '0',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms`
--

INSERT INTO `nv4_vi_siteterms` (`id`, `title`, `alias`, `image`, `imagealt`, `imageposition`, `description`, `bodytext`, `keywords`, `socialbutton`, `activecomm`, `layout_func`, `gid`, `weight`, `admin_id`, `add_time`, `edit_time`, `status`) VALUES
(1, 'Chính sách bảo mật (Quyền riêng tư)', 'privacy', '', '', 0, 'Tài liệu này cung cấp cho bạn (người truy cập và sử dụng website) chính sách liên quan đến bảo mật và quyền riêng tư của bạn', '<strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Thu thập thông tin</a><br /> <a href="#2">Điều 2: Lưu trữ &amp; Bảo vệ thông tin</a><br /> <a href="#3">Điều 3: Sử dụng thông tin </a><br /> <a href="#4">Điều 4: Tiếp nhận thông tin từ các đối tác </a><br /> <a href="#5">Điều 5: Chia sẻ thông tin với bên thứ ba</a><br /> <a href="#6">Điều 6: Thay đổi chính sách bảo mật</a>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều 1: Thu thập thông tin</h2>  <h3 style="text-align: justify;">1.1. Thu thập tự động:</h3>  <div style="text-align: justify;">Hệ thống này được xây dựng bằng mã nguồn NukeViet. Như mọi website hiện đại khác, chúng tôi sẽ thu thập địa chỉ IP và các thông tin web tiêu chuẩn khác của bạn như: loại trình duyệt, các trang bạn truy cập trong quá trình sử dụng dịch vụ, thông tin về máy tính &amp; thiết bị mạng v.v… cho mục đích phân tích thông tin phục vụ việc bảo mật và giữ an toàn cho hệ thống.</div>  <h3 style="text-align: justify;">1.2. Thu thập từ các khai báo của chính bạn:</h3>  <div style="text-align: justify;">Các thông tin do bạn khai báo cho chúng tôi trong quá trình làm việc như: đăng ký tài khoản, liên hệ với chúng tôi... cũng sẽ được chúng tôi lưu trữ phục vụ công việc chăm sóc khách hàng sau này.</div>  <h3 style="text-align: justify;">1.3. Thu thập thông tin thông qua việc đặt cookies:</h3>  <p style="text-align: justify;">Như mọi website hiện đại khác, khi bạn truy cập website, chúng tôi (hoặc các công cụ theo dõi hoặc thống kê hoạt động của website do các đối tác cung cấp) sẽ đặt một số File dữ liệu gọi là Cookies lên đĩa cứng hoặc bộ nhớ máy tính của bạn.</p>  <p style="text-align: justify;">Một trong số những Cookies này có thể tồn tại lâu để thuận tiện cho bạn trong quá trình sử dụng, ví dụ như: lưu Email của bạn trong trang đăng nhập để bạn không phải nhập lại v.v…</p>  <h3 style="text-align: justify;">1.4. Thu thập và lưu trữ thông tin trong quá khứ:</h3>  <p style="text-align: justify;">Bạn có thể thay đổi thông tin cá nhân của mình bất kỳ lúc nào bằng cách sử dụng chức năng tương ứng. Tuy nhiên chúng tôi sẽ lưu lại những thông tin bị thay đổi để chống các hành vi xóa dấu vết gian lận.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Điều 2: Lưu trữ &amp; Bảo vệ thông tin</h2>  <div style="text-align: justify;">Hầu hết các thông tin được thu thập sẽ được lưu trữ tại cơ sở dữ liệu của chúng tôi.<br /> <br /> Chúng tôi bảo vệ dữ liệu cá nhân của các bạn bằng các hình thức như: mật khẩu, tường lửa, mã hóa cùng các hình thức thích hợp khác và chỉ cấp phép việc truy cập và xử lý dữ liệu cho các đối tượng phù hợp, ví dụ chính bạn hoặc các nhân viên có trách nhiệm xử thông tin với bạn thông qua các bước xác định danh tính phù hợp.<br /> <br /> Mật khẩu của bạn được lưu trữ và bảo vệ bằng phương pháp mã hoá trong cơ sở dữ liệu của hệ thống, vì thế nó rất an toàn. Tuy nhiên, chúng tôi khuyên bạn không nên dùng lại mật khẩu này trên các website khác. Mật khẩu của bạn là cách duy nhất để bạn đăng nhập vào tài khoản thành viên của mình trong website này, vì thế hãy cất giữ nó cẩn thận. Trong mọi trường hợp bạn không nên cung cấp thông tin mật khẩu cho bất kỳ người nào dù là người của chúng tôi, người của NukeViet hay bất kỳ người thứ ba nào khác trừ khi bạn hiểu rõ các rủi ro khi để lộ mật khẩu. Nếu quên mật khẩu, bạn có thể sử dụng chức năng “<a href="/users/lostpass/">Quên mật khẩu</a>” trên website. Để thực hiện việc này, bạn cần phải cung cấp cho hệ thống biết tên thành viên hoặc địa chỉ Email đang sử dụng của mình trong tài khoản, sau đó hệ thống sẽ tạo ra cho bạn mật khẩu mới và gửi đến cho bạn để bạn vẫn có thể đăng nhập vào tài khoản thành viên của mình.  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Điều 3: Sử dụng thông tin</h2>  <p style="text-align: justify;">Thông tin thu thập được sẽ được chúng tôi sử dụng để:</p>  <div style="text-align: justify;">- Cung cấp các dịch vụ hỗ trợ &amp; chăm sóc khách hàng.</div>  <div style="text-align: justify;">- Thực hiện giao dịch thanh toán &amp; gửi các thông báo trong quá trình giao dịch.</div>  <div style="text-align: justify;">- Xử lý khiếu nại, thu phí &amp; giải quyết sự cố.</div>  <div style="text-align: justify;">- Ngăn chặn các hành vi có nguy cơ rủi ro, bị cấm hoặc bất hợp pháp và đảm bảo tuân thủ đúng chính sách “Thỏa thuận người dùng”.</div>  <div style="text-align: justify;">- Đo đạc, tùy biến &amp; cải tiến dịch vụ, nội dung và hình thức của website.</div>  <div style="text-align: justify;">- Gửi bạn các thông tin về chương trình Marketing, các thông báo &amp; chương trình khuyến mại.</div>  <div style="text-align: justify;">- So sánh độ chính xác của thông tin cá nhân của bạn trong quá trình kiểm tra với bên thứ ba.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Điều 4: Tiếp nhận thông tin từ các đối tác</h2>  <div style="text-align: justify;">Khi sử dụng các công cụ giao dịch và thanh toán thông qua internet, chúng tôi có thể tiếp nhận thêm các thông tin về bạn như địa chỉ username, Email, số tài khoản ngân hàng... Chúng tôi kiểm tra những thông tin này với cơ sở dữ liệu người dùng của mình nhằm xác nhận rằng bạn có phải là khách hàng của chúng tôi hay không nhằm giúp việc thực hiện các dịch vụ cho bạn được thuận lợi.<br /> <br /> Các thông tin tiếp nhận được sẽ được chúng tôi bảo mật như những thông tin mà chúng tôi thu thập được trực tiếp từ bạn.</div>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="5" name="5"></a>Điều 5: Chia sẻ thông tin với bên thứ ba</h2>  <p style="text-align: justify;">Chúng tôi sẽ không chia sẻ thông tin cá nhân, thông tin tài chính... của bạn cho các bên thứ 3 trừ khi được sự đồng ý của chính bạn hoặc khi chúng tôi buộc phải tuân thủ theo các quy định pháp luật hoặc khi có yêu cầu từ cơ quan công quyền có thẩm quyền.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2><a id="6" name="6"></a>Điều 6: Thay đổi chính sách bảo mật</h2>  <p style="text-align: justify;">Chính sách Bảo mật này có thể thay đổi theo thời gian. Chúng tôi sẽ không giảm quyền của bạn theo Chính sách Bảo mật này mà không có sự đồng ý rõ ràng của bạn. Chúng tôi sẽ đăng bất kỳ thay đổi Chính sách Bảo mật nào trên trang này và, nếu những thay đổi này quan trọng, chúng tôi sẽ cung cấp thông báo nổi bật hơn (bao gồm, đối với một số dịch vụ nhất định, thông báo bằng email về các thay đổi của Chính sách Bảo mật).</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <p style="text-align: right;">Chính sách bảo mật mặc định này được xây dựng cho <a href="http://nukeviet.vn" target="_blank">NukeViet CMS</a>, được tham khảo từ website <a href="http://webnhanh.vn/vi/thiet-ke-web/detail/Chinh-sach-bao-mat-Quyen-rieng-tu-Privacy-Policy-2147/">webnhanh.vn</a></p>', '', 0, '4', '', 0, 1, 1, 1467124147, 1467124147, 1),
(2, 'Điều khoản và điều kiện sử dụng', 'terms-and-conditions', '', '', 0, 'Đây là các điều khoản và điều kiện áp dụng cho website này. Truy cập và sử dụng website tức là bạn đã đồng ý với các quy định này.', '<div style="text-align: justify;">Cảm ơn bạn đã sử dụng. Xin vui lòng đọc các Điều khoản một cách cẩn thận, và <a href="/contact/">liên hệ</a> với chúng tôi nếu bạn có bất kỳ câu hỏi. Bằng việc truy cập hoặc sử dụng website của chúng tôi, bạn đồng ý bị ràng buộc bởi các <a href="/siteterms/terms-and-conditions.html">Điều khoản và điều kiện</a> sử dụng cũng như <a href="/siteterms/privacy.html">Chính sách bảo mật</a> của chúng tôi. Nếu không đồng ý với các quy định này, bạn vui lòng ngưng sử dụng website.<br /> <br /> <strong><a id="index" name="index"></a>Danh mục</strong><br /> <a href="#1">Điều 1: Điều khoản liên quan đến phần mềm vận hành website</a><br /> <a href="#2">Điều 2: Giới hạn cho việc sử dụng Website và các tài liệu trên website</a><br /> <a href="#3">Điều 3: Sử dụng thương hiệu</a><br /> <a href="#4">Điều 4: Các hành vi bị nghiêm cấm</a><br /> <a href="#5">Điều 5: Các đường liên kết đến các website khác</a><br /> <a href="#6">Điều 6: Từ chối bảo đảm</a><br /> <a href="#7">Điều 7: Luật áp dụng và cơ quan giải quyết tranh chấp</a><br /> <a href="#8">Điều 8: Thay đổi điều khoản và điều kiện sử dụng</a></div>  <hr  /> <h2 style="text-align: justify;"><a id="1" name="1"></a>Điều khoản liên quan đến phần mềm vận hành website</h2>  <p style="text-align: justify;">- Website của chúng tôi sử dụng hệ thống NukeViet, là giải pháp về website/ cổng thông tin nguồn mở được phát hành theo giấy phép bản quyền phần mềm tự do nguồn mở “<a href="http://www.gnu.org/licenses/old-licenses/gpl-2.0.html" target="_blank">GNU General Public License</a>” (viết tắt là GNU/GPL hay GPL) và có thể tải về miễn phí tại trang web <a href="http://www.nukeviet.vn" target="_blank">www.nukeviet.vn</a>.<br /> - Website này do chúng tôi sở hữu, điều hành và duy trì. NukeViet (hiểu ở đây là “hệ thống NukeViet” (bao gồm nhân hệ thống NukeViet và các sản phẩm phái sinh như NukeViet CMS, NukeViet Portal, <a href="http://edu.nukeviet.vn" target="_blank">NukeViet Edu Gate</a>...), “www.nukeviet.vn”, “tổ chức NukeViet”, “ban điều hành NukeViet”, &quot;Ban Quản Trị NukeViet&quot; và nói chung là những gì liên quan đến NukeViet...) không liên quan gì đến việc chúng tôi điều hành website cũng như quy định bạn được phép làm và không được phép làm gì trên website này.<br /> - Hệ thống NukeViet là bộ mã nguồn được phát triển để xây dựng các website/ cổng thông tin trên mạng. Chúng tôi (chủ sở hữu, điều hành và duy trì website này) không hỗ trợ và khẳng định hay ngụ ý về việc có liên quan đến NukeViet. Để biết thêm nhiều thông tin về NukeViet, hãy ghé thăm website của NukeViet tại địa chỉ: <a href="http://nukeviet.vn" target="_blank">http://nukeviet.vn</a>.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="2" name="2"></a>Giới hạn cho việc sử dụng Website và các tài liệu trên website</h2>  <p style="text-align: justify;">- Tất cả các quyền liên quan đến tất cả tài liệu và thông tin được hiển thị và/ hoặc được tạo ra sẵn cho Website này (ví dụ như những tài liệu được cung cấp để tải về) được quản lý, sở hữu hoặc được cho phép sử dụng bởi chúng tôi hoặc chủ sở hữu tương ứng với giấy phép tương ứng. Việc sử dụng các tài liệu và thông tin phải được tuân thủ theo giấy phép tương ứng được áp dụng cho chúng.<br /> - Ngoại trừ các tài liệu được cấp phép rõ ràng dưới dạng giấy phép tư liệu mở&nbsp;Creative Commons (gọi là giấy phép CC) cho phép bạn khai thác và chia sẻ theo quy định của giấy phép tư liệu mở, đối với các loại tài liệu không ghi giấy phép rõ ràng thì bạn không được phép sử dụng (bao gồm nhưng không giới hạn việc sao chép, chỉnh sửa toàn bộ hay một phần, đăng tải, phân phối, cấp phép, bán và xuất bản) bất cứ tài liệu nào mà không có sự cho phép trước bằng văn bản của chúng tôi ngoại trừ việc sử dụng cho mục đích cá nhân, nội bộ, phi thương mại.<br /> - Một số tài liệu hoặc thông tin có những điều khoản và điều kiện áp dụng riêng cho chúng không phải là giấy phép tư liệu mở, trong trường hợp như vậy, bạn được yêu cầu phải chấp nhận các điều khoản và điều kiện đó khi truy cập vào các tài liệu và thông tin này.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="3" name="3"></a>Sử dụng thương hiệu</h2>  <p style="text-align: justify;">- VINADES.,JSC, NukeViet và thương hiệu gắn với NukeViet (ví dụ NukeViet CMS, NukeViet Portal, NukeViet Edu Gate...), logo công ty VINADES thuộc sở hữu của Công ty cổ phần phát triển nguồn mở Việt Nam.<br /> - Những tên sản phẩm, tên dịch vụ khác, logo và/ hoặc những tên công ty được sử dụng trong Website này là những tài sản đã được đăng ký độc quyền và được giữ bản quyền bởi những người sở hữu và/ hoặc người cấp phép tương ứng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="4" name="4"></a>Các hành vi bị nghiêm cấm</h2>  <p style="text-align: justify;">Người truy cập website này không được thực hiện những hành vi dưới đây khi sử dụng website:<br /> - Xâm phạm các quyền hợp pháp (bao gồm nhưng không giới hạn đối với các quyền riêng tư và chung) của người khác.<br /> - Gây ra sự thiệt hại hoặc bất lợi cho người khác.<br /> - Làm xáo trộn trật tự công cộng.<br /> - Hành vi liên quan đến tội phạm.<br /> - Tải lên hoặc phát tán thông tin riêng tư của tổ chức, cá nhân khác mà không được sự chấp thuận của họ.<br /> - Sử dụng Website này vào mục đích thương mại mà chưa được sự cho phép của chúng tôi.<br /> - Nói xấu, làm nhục, phỉ báng người khác.<br /> - Tải lên các tập tin chứa virus hoặc các tập tin bị hư mà có thể gây thiệt hại đến sự vận hành của máy tính khác.<br /> - Những hoạt động có khả năng ảnh hưởng đến hoạt động bình thường của website.<br /> - Những hoạt động mà chúng tôi cho là không thích hợp.<br /> - Những hoạt động bất hợp pháp hoặc bị cấm bởi pháp luật hiện hành.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="5" name="5"></a>Các đường liên kết đến các website khác</h2>  <p style="text-align: justify;">- Các website của các bên thứ ba (không phải các trang do chúng tôi quản lý) được liên kết đến hoặc từ website này (&quot;Các website khác&quot;) được điều hành và duy trì hoàn toàn độc lập bởi các bên thứ ba đó và không nằm trong quyền điều khiển và/hoặc giám sát của chúng tôi. Việc truy cập các website khác phải được tuân thủ theo các điều khoản và điều kiện quy định bởi ban điều hành của website đó.<br /> - Chúng tôi không chịu trách nhiệm cho sự mất mát hoặc thiệt hại do việc truy cập và sử dụng các website bên ngoài, và bạn phải chịu mọi rủi ro khi truy cập các website đó.<br /> - Không có nội dung nào trong Website này thể hiện như một sự đảm bảo của chúng tôi về nội dung của các website khác và các sản phẩm và/ hoặc các dịch vụ xuất hiện và/ hoặc được cung cấp tại các website khác.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="6" name="6"></a>Từ chối bảo đảm</h2>  <p style="text-align: justify;">NGOẠI TRỪ PHẠM VI BỊ CẤM THEO LUẬT PHÁP HIỆN HÀNH, CHÚNG TÔI SẼ:<br /> - KHÔNG CHỊU TRÁCH NHIỆM HAY BẢO ĐẢM, MỘT CÁCH RÕ RÀNG HAY NGỤ Ý, BAO GỒM SỰ BẢO ĐẢM VỀ TÍNH CHÍNH XÁC, MỨC ĐỘ TIN CẬY, HOÀN THIỆN, PHÙ HỢP CHO MỤC ĐÍCH CỤ THỂ, SỰ KHÔNG XÂM PHẠM QUYỀN CỦA BÊN THỨ 3 VÀ/HOẶC TÍNH AN TOÀN CỦA NỘI DỤNG WEBSITE NÀY, VÀ NHỮNG TUYÊN BỐ, ĐẢM BẢO CÓ LIÊN QUAN.<br /> - KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT KỲ SỰ THIỆT HẠI HAY MẤT MÁT PHÁT SINH TỪ VIỆC TRUY CẬP VÀ SỬ DỤNG WEBSITE HAY VIỆC KHÔNG THỂ SỬ DỤNG WEBSITE.<br /> - CHÚNG TÔI CÓ THỂ THAY ĐỔI VÀ/HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE NÀY, HOẶC TẠM HOÃN HOẶC NGƯNG CUNG CẤP CÁC DỊCH VỤ QUA WEBSITE NÀY VÀO BẤT KỲ THỜI ĐIỂM NÀO MÀ KHÔNG CẦN THÔNG BÁO TRƯỚC. CHÚNG TÔI SẼ KHÔNG CHỊU TRÁCH NHIỆM CHO BẤT CỨ THIỆT HẠI NÀO PHÁT SINH DO SỰ THAY ĐỔI HOẶC THAY THẾ NỘI DUNG CỦA WEBSITE.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="7" name="7"></a>Luật áp dụng và cơ quan giải quyết tranh chấp</h2>  <p style="text-align: justify;">- Các Điều Khoản và Điều Kiện này được điều chỉnh và giải thích theo luật của Việt Nam trừ khi có điều khoản khác được cung cấp thêm. Tất cả tranh chấp phát sinh liên quan đến website này và các Điều Khoản và Điều Kiện sử dụng này sẽ được giải quyết tại các tòa án ở Việt Nam.<br /> - Nếu một phần nào đó của các Điều Khoản và Điều Kiện bị xem là không có giá trị, vô hiệu, hoặc không áp dụng được vì lý do nào đó, phần đó được xem như là phần riêng biệt và không ảnh hưởng đến tính hiệu lực của phần còn lại.<br /> - Trong trường hợp có sự mâu thuẫn giữa bản Tiếng Anh và bản Tiếng Việt của bản Điều Khoản và Điều Kiện này, bản Tiếng Việt sẽ được ưu tiên áp dụng.</p>  <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p>  <h2 style="text-align: justify;"><a id="8" name="8"></a>Thay đổi điều khoản và điều kiện sử dụng</h2>  <div style="text-align: justify;">Điều khoản và điều kiện sử dụng có thể thay đổi theo thời gian. Chúng tôi bảo lưu quyền thay đổi hoặc sửa đổi bất kỳ điều khoản và điều kiện cũng như các quy định khác, bất cứ lúc nào và theo ý mình. Chúng tôi sẽ có thông báo trên website khi có sự thay đổi. Tiếp tục sử dụng trang web này sau khi đăng các thay đổi tức là bạn đã chấp nhận các thay đổi đó. <p style="text-align: right;"><a href="#index">Trở lại danh mục</a></p> </div>', '', 0, '4', '', 0, 2, 1, 1467124147, 1467124147, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_siteterms_config`
--

CREATE TABLE `nv4_vi_siteterms_config` (
  `config_name` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `config_value` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_siteterms_config`
--

INSERT INTO `nv4_vi_siteterms_config` (`config_name`, `config_value`) VALUES
('viewtype', '0'),
('facebookapi', ''),
('per_page', '20'),
('news_first', '0'),
('related_articles', '5');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_slider_group`
--

CREATE TABLE `nv4_vi_slider_group` (
  `group_id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_slider_group`
--

INSERT INTO `nv4_vi_slider_group` (`group_id`, `title`, `status`, `weight`, `date_added`) VALUES
(1, 'Slide trang chủ', 1, 1, 1467193502),
(2, 'Khách hàng', 1, 2, 1467193508);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_slider_photo`
--

CREATE TABLE `nv4_vi_slider_photo` (
  `photo_id` mediumint(8) UNSIGNED NOT NULL,
  `group_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `links` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumb` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_slider_photo`
--

INSERT INTO `nv4_vi_slider_photo` (`photo_id`, `group_id`, `title`, `description`, `links`, `image`, `thumb`, `status`, `weight`, `date_added`) VALUES
(1, 1, '001', '', '', '01.jpg', '01-thumb.jpg', 1, 2, 1467193648),
(2, 1, '002', '', '', '02.jpg', '02-thumb.jpg', 1, 4, 1467193658),
(3, 1, '003', '', '', '03.jpg', '03-thumb.jpg', 1, 3, 1467193667),
(4, 2, 'A', '', '', 'a-1.jpg', 'a-1-thumb.jpg', 1, 5, 1467193961),
(5, 2, 'B', '', '', 'a-2.png', 'a-2-thumb.png', 1, 6, 1467193974),
(6, 2, 'C', '', '', 'a-3.png', 'a-3-thumb.png', 1, 7, 1467193983),
(7, 2, 'D', '', '', 'a-4.png', 'a-4-thumb.png', 1, 8, 1467193991),
(8, 2, 'E', '', '', 'a-5.png', 'a-5-thumb.png', 1, 9, 1467193999),
(9, 2, 'F', '', '', 'a-1.png', 'a-1-thumb.png', 1, 10, 1467194024),
(10, 2, 'G', '', '', 'a-6.png', 'a-6-thumb.png', 1, 11, 1467194031),
(11, 1, '04', '', '', '03_1.jpg', '03_1-thumb.jpg', 1, 1, 1467532073),
(12, 1, '005', '', '', '01_1.jpg', '01_1-thumb.jpg', 1, 12, 1467532085);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_slider_template`
--

CREATE TABLE `nv4_vi_slider_template` (
  `template_id` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `weight` smallint(4) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `date_added` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_slider_template`
--

INSERT INTO `nv4_vi_slider_template` (`template_id`, `title`, `weight`, `status`, `date_added`) VALUES
(1, 'slider', 1, 1, 1467193480),
(2, 'bxslider', 2, 1, 1467193480),
(3, 'nivo_slider', 3, 1, 1467193480),
(4, 'pinwheel', 4, 1, 1467193480),
(5, 'layerslider', 5, 1, 0),
(6, 'partnerslides', 6, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_support`
--

CREATE TABLE `nv4_vi_support` (
  `id` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_support`
--

INSERT INTO `nv4_vi_support` (`id`, `title`) VALUES
(1, 'Phòng kinh doanh'),
(3, 'Phòng chăm sóc khách hàng');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_support_rows`
--

CREATE TABLE `nv4_vi_support_rows` (
  `id` mediumint(5) NOT NULL,
  `parentid` mediumint(5) UNSIGNED NOT NULL,
  `mid` smallint(5) NOT NULL DEFAULT '0',
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `photo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `skype` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` int(11) NOT NULL,
  `status` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_support_rows`
--

INSERT INTO `nv4_vi_support_rows` (`id`, `parentid`, `mid`, `title`, `photo`, `phone`, `email`, `skype`, `facebook`, `weight`, `status`) VALUES
(1, 0, 1, 'Lan Chi', '04.jpg', '09.14.41.65.67', 'lanchi@gmail.com', 'lanchi', '', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_1`
--

CREATE TABLE `nv4_vi_videos_1` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_1`
--

INSERT INTO `nv4_vi_videos_1` (`id`, `catid`, `listcatid`, `admin_id`, `admin_name`, `author`, `artist`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `vid_path`, `vid_type`, `vid_duration`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1', 1, 'admin', 'Tất Thắng', 'Adimo', 0, 1467385335, 1467385335, 1, 1467385200, 0, 2, 'Quảng cáo xe đạp tại Mỹ', 'quang-cao-xe-dap-tai-my', 'Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!', 'https://www.youtube.com/watch?v=bzr9VFd4xQM', '2', '0:00:00', '2016_07/0044.jpg', '', 1, 1, '4', 1, 6, 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_admins`
--

CREATE TABLE `nv4_vi_videos_admins` (
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `catid` smallint(5) NOT NULL DEFAULT '0',
  `admin` tinyint(4) NOT NULL DEFAULT '0',
  `add_content` tinyint(4) NOT NULL DEFAULT '0',
  `pub_content` tinyint(4) NOT NULL DEFAULT '0',
  `edit_content` tinyint(4) NOT NULL DEFAULT '0',
  `del_content` tinyint(4) NOT NULL DEFAULT '0',
  `app_content` tinyint(4) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_block`
--

CREATE TABLE `nv4_vi_videos_block` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `weight` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_block_cat`
--

CREATE TABLE `nv4_vi_videos_block_cat` (
  `bid` smallint(5) UNSIGNED NOT NULL,
  `adddefault` tinyint(4) NOT NULL DEFAULT '0',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_cat`
--

CREATE TABLE `nv4_vi_videos_cat` (
  `catid` smallint(5) UNSIGNED NOT NULL,
  `parentid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `titlesite` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `descriptionhtml` text COLLATE utf8mb4_unicode_ci,
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `viewdescription` tinyint(2) NOT NULL DEFAULT '0',
  `weight` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `sort` smallint(5) NOT NULL DEFAULT '0',
  `lev` smallint(5) NOT NULL DEFAULT '0',
  `viewcat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'viewcat_page_new',
  `numsubcat` smallint(5) NOT NULL DEFAULT '0',
  `subcatid` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `numlinks` tinyint(2) UNSIGNED NOT NULL DEFAULT '3',
  `newday` tinyint(2) UNSIGNED NOT NULL DEFAULT '2',
  `featured` int(11) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `admins` text COLLATE utf8mb4_unicode_ci,
  `add_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edit_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_cat`
--

INSERT INTO `nv4_vi_videos_cat` (`catid`, `parentid`, `title`, `titlesite`, `alias`, `description`, `descriptionhtml`, `image`, `viewdescription`, `weight`, `sort`, `lev`, `viewcat`, `numsubcat`, `subcatid`, `inhome`, `numlinks`, `newday`, `featured`, `keywords`, `admins`, `add_time`, `edit_time`, `groups_view`) VALUES
(1, 0, 'Quảng cáo xe đạp', '', 'quang-cao-xe-dap', '', '', '', 0, 1, 1, 0, 'viewcat_page_new', 0, '', 1, 3, 2, 0, '', '', 1467385213, 1467385213, '6');

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_config_post`
--

CREATE TABLE `nv4_vi_videos_config_post` (
  `group_id` smallint(5) NOT NULL,
  `addcontent` tinyint(4) NOT NULL,
  `postcontent` tinyint(4) NOT NULL,
  `editcontent` tinyint(4) NOT NULL,
  `delcontent` tinyint(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_config_post`
--

INSERT INTO `nv4_vi_videos_config_post` (`group_id`, `addcontent`, `postcontent`, `editcontent`, `delcontent`) VALUES
(1, 0, 0, 0, 0),
(2, 0, 0, 0, 0),
(3, 0, 0, 0, 0),
(4, 0, 0, 0, 0),
(10, 0, 0, 0, 0),
(11, 0, 0, 0, 0),
(12, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_detail`
--

CREATE TABLE `nv4_vi_videos_detail` (
  `id` int(11) UNSIGNED NOT NULL,
  `bodyhtml` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `sourcetext` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `copyright` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_send` tinyint(1) NOT NULL DEFAULT '0',
  `allowed_save` tinyint(1) NOT NULL DEFAULT '0',
  `gid` mediumint(8) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_detail`
--

INSERT INTO `nv4_vi_videos_detail` (`id`, `bodyhtml`, `sourcetext`, `copyright`, `allowed_send`, `allowed_save`, `gid`) VALUES
(1, '<div style="text-align: justify;">Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!</div>', '', 0, 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_logs`
--

CREATE TABLE `nv4_vi_videos_logs` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `sid` mediumint(8) NOT NULL DEFAULT '0',
  `userid` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `note` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `set_time` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_playlist`
--

CREATE TABLE `nv4_vi_videos_playlist` (
  `playlist_id` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL,
  `playlist_sort` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_playlist_cat`
--

CREATE TABLE `nv4_vi_videos_playlist_cat` (
  `playlist_id` smallint(5) UNSIGNED NOT NULL,
  `userid` smallint(5) UNSIGNED NOT NULL,
  `status` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `private_mode` smallint(5) UNSIGNED NOT NULL DEFAULT '1',
  `numbers` smallint(5) NOT NULL DEFAULT '10',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` smallint(5) NOT NULL DEFAULT '0',
  `keywords` text COLLATE utf8mb4_unicode_ci,
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `favorite` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) NOT NULL DEFAULT '0',
  `edit_time` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_rows`
--

CREATE TABLE `nv4_vi_videos_rows` (
  `id` int(11) UNSIGNED NOT NULL,
  `catid` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `listcatid` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `admin_name` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `artist` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `sourceid` mediumint(8) NOT NULL DEFAULT '0',
  `addtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `edittime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `publtime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exptime` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `archive` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `hometext` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `vid_path` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_type` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `vid_duration` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgfile` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgalt` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `homeimgthumb` tinyint(4) NOT NULL DEFAULT '0',
  `inhome` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `allowed_comm` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `allowed_rating` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `hitstotal` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `hitscm` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `total_rating` int(11) NOT NULL DEFAULT '0',
  `click_rating` int(11) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_rows`
--

INSERT INTO `nv4_vi_videos_rows` (`id`, `catid`, `listcatid`, `admin_id`, `admin_name`, `author`, `artist`, `sourceid`, `addtime`, `edittime`, `status`, `publtime`, `exptime`, `archive`, `title`, `alias`, `hometext`, `vid_path`, `vid_type`, `vid_duration`, `homeimgfile`, `homeimgalt`, `homeimgthumb`, `inhome`, `allowed_comm`, `allowed_rating`, `hitstotal`, `hitscm`, `total_rating`, `click_rating`) VALUES
(1, 1, '1', 1, 'admin', 'Tất Thắng', 'Adimo', 0, 1467385335, 1467385335, 1, 1467385200, 0, 2, 'Quảng cáo xe đạp tại Mỹ', 'quang-cao-xe-dap-tai-my', 'Click vào nút THÍCH và ĐĂNG KÝ để có thể theo dõi những video đặc sắc tiếp theo!', 'https://www.youtube.com/watch?v=bzr9VFd4xQM', '2', '0:00:00', '2016_07/0044.jpg', '', 1, 1, '4', 1, 6, 2, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_rows_favourite`
--

CREATE TABLE `nv4_vi_videos_rows_favourite` (
  `fid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_rows_favourite`
--

INSERT INTO `nv4_vi_videos_rows_favourite` (`fid`, `id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_rows_report`
--

CREATE TABLE `nv4_vi_videos_rows_report` (
  `rid` smallint(5) UNSIGNED NOT NULL,
  `id` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_sources`
--

CREATE TABLE `nv4_vi_videos_sources` (
  `sourceid` mediumint(8) UNSIGNED NOT NULL,
  `title` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `link` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `logo` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `weight` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `add_time` int(11) UNSIGNED NOT NULL,
  `edit_time` int(11) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_tags`
--

CREATE TABLE `nv4_vi_videos_tags` (
  `tid` mediumint(8) UNSIGNED NOT NULL,
  `numnews` mediumint(8) NOT NULL DEFAULT '0',
  `alias` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `image` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `keywords` varchar(250) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_tags_id`
--

CREATE TABLE `nv4_vi_videos_tags_id` (
  `id` int(11) NOT NULL,
  `tid` mediumint(9) NOT NULL,
  `keyword` varchar(65) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_videos_uploaders`
--

CREATE TABLE `nv4_vi_videos_uploaders` (
  `userid` mediumint(8) NOT NULL,
  `group_id` smallint(5) UNSIGNED NOT NULL DEFAULT '0',
  `status` mediumint(8) NOT NULL DEFAULT '1',
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `md5username` char(32) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `email` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `first_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `last_name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `description` text COLLATE utf8mb4_unicode_ci,
  `view_mail` tinyint(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_videos_uploaders`
--

INSERT INTO `nv4_vi_videos_uploaders` (`userid`, `group_id`, `status`, `username`, `md5username`, `email`, `first_name`, `last_name`, `description`, `view_mail`) VALUES
(1, 1, 1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'thangviades@gmail.com', 'admin', '', 'Giới thiệu về admin', 0);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting`
--

CREATE TABLE `nv4_vi_voting` (
  `vid` smallint(5) UNSIGNED NOT NULL,
  `question` varchar(250) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `acceptcm` int(2) NOT NULL DEFAULT '1',
  `admin_id` mediumint(8) UNSIGNED NOT NULL DEFAULT '0',
  `groups_view` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `publ_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `exp_time` int(11) UNSIGNED NOT NULL DEFAULT '0',
  `act` tinyint(1) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting`
--

INSERT INTO `nv4_vi_voting` (`vid`, `question`, `link`, `acceptcm`, `admin_id`, `groups_view`, `publ_time`, `exp_time`, `act`) VALUES
(2, 'Bạn biết gì về NukeViet 4?', '', 1, 1, '6', 1275318563, 0, 1),
(3, 'Lợi ích của phần mềm nguồn mở là gì?', '', 1, 1, '6', 1275318563, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `nv4_vi_voting_rows`
--

CREATE TABLE `nv4_vi_voting_rows` (
  `id` mediumint(8) UNSIGNED NOT NULL,
  `vid` smallint(5) UNSIGNED NOT NULL,
  `title` varchar(245) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `url` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `hitstotal` int(11) UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `nv4_vi_voting_rows`
--

INSERT INTO `nv4_vi_voting_rows` (`id`, `vid`, `title`, `url`, `hitstotal`) VALUES
(5, 2, 'Một bộ sourcecode cho web hoàn toàn mới.', '', 0),
(6, 2, 'Mã nguồn mở, sử dụng miễn phí.', '', 0),
(7, 2, 'Sử dụng HTML5, CSS3 và hỗ trợ Ajax', '', 0),
(8, 2, 'Tất cả các ý kiến trên', '', 0),
(9, 3, 'Liên tục được cải tiến, sửa đổi bởi cả thế giới.', '', 0),
(10, 3, 'Được sử dụng miễn phí không mất tiền.', '', 0),
(11, 3, 'Được tự do khám phá, sửa đổi theo ý thích.', '', 0),
(12, 3, 'Phù hợp để học tập, nghiên cứu vì được tự do sửa đổi theo ý thích.', '', 0),
(13, 3, 'Tất cả các ý kiến trên', '', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `nv4_authors`
--
ALTER TABLE `nv4_authors`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keyname` (`keyname`);

--
-- Indexes for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  ADD PRIMARY KEY (`mid`),
  ADD UNIQUE KEY `module` (`module`);

--
-- Indexes for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ip` (`ip`);

--
-- Indexes for table `nv4_banners_click`
--
ALTER TABLE `nv4_banners_click`
  ADD KEY `bid` (`bid`),
  ADD KEY `click_day` (`click_day`),
  ADD KEY `click_ip` (`click_ip`),
  ADD KEY `click_country` (`click_country`),
  ADD KEY `click_browse_key` (`click_browse_key`),
  ADD KEY `click_os_key` (`click_os_key`);

--
-- Indexes for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `login` (`login`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `full_name` (`full_name`);

--
-- Indexes for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `title` (`title`);

--
-- Indexes for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pid` (`pid`),
  ADD KEY `clid` (`clid`);

--
-- Indexes for table `nv4_config`
--
ALTER TABLE `nv4_config`
  ADD UNIQUE KEY `lang` (`lang`,`module`,`config_name`);

--
-- Indexes for table `nv4_cookies`
--
ALTER TABLE `nv4_cookies`
  ADD UNIQUE KEY `cookiename` (`name`,`domain`,`path`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `nv4_counter`
--
ALTER TABLE `nv4_counter`
  ADD UNIQUE KEY `c_type` (`c_type`,`c_val`);

--
-- Indexes for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `is_sys` (`is_sys`);

--
-- Indexes for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  ADD PRIMARY KEY (`idfile`);

--
-- Indexes for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  ADD PRIMARY KEY (`gid`),
  ADD UNIQUE KEY `idprofile` (`idprofile`);

--
-- Indexes for table `nv4_language`
--
ALTER TABLE `nv4_language`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `filelang` (`idfile`,`lang_key`);

--
-- Indexes for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  ADD PRIMARY KEY (`idfile`),
  ADD UNIQUE KEY `module` (`module`,`admin_file`);

--
-- Indexes for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  ADD PRIMARY KEY (`pid`),
  ADD UNIQUE KEY `plugin_file` (`plugin_file`);

--
-- Indexes for table `nv4_sessions`
--
ALTER TABLE `nv4_sessions`
  ADD UNIQUE KEY `session_id` (`session_id`),
  ADD KEY `onl_time` (`onl_time`);

--
-- Indexes for table `nv4_setup`
--
ALTER TABLE `nv4_setup`
  ADD UNIQUE KEY `lang` (`lang`,`module`);

--
-- Indexes for table `nv4_setup_extensions`
--
ALTER TABLE `nv4_setup_extensions`
  ADD UNIQUE KEY `title` (`type`,`title`),
  ADD KEY `id` (`id`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_setup_language`
--
ALTER TABLE `nv4_setup_language`
  ADD PRIMARY KEY (`lang`);

--
-- Indexes for table `nv4_shops_block`
--
ALTER TABLE `nv4_shops_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`);

--
-- Indexes for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_carrier_config_location`
--
ALTER TABLE `nv4_shops_carrier_config_location`
  ADD UNIQUE KEY `cid` (`cid`,`lid`);

--
-- Indexes for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_coupons_product`
--
ALTER TABLE `nv4_shops_coupons_product`
  ADD UNIQUE KEY `cid` (`cid`,`pid`);

--
-- Indexes for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
  ADD PRIMARY KEY (`did`),
  ADD KEY `begin_time` (`begin_time`,`end_time`);

--
-- Indexes for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rows_id` (`rows_id`,`field_id`);

--
-- Indexes for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_files_rows`
--
ALTER TABLE `nv4_shops_files_rows`
  ADD UNIQUE KEY `id_files` (`id_files`,`id_rows`);

--
-- Indexes for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
  ADD PRIMARY KEY (`groupid`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_group_cateid`
--
ALTER TABLE `nv4_shops_group_cateid`
  ADD UNIQUE KEY `groupid` (`groupid`,`cateid`);

--
-- Indexes for table `nv4_shops_group_items`
--
ALTER TABLE `nv4_shops_group_items`
  ADD PRIMARY KEY (`pro_id`,`group_id`),
  ADD KEY `pro_id` (`pro_id`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_shops_group_quantity`
--
ALTER TABLE `nv4_shops_group_quantity`
  ADD UNIQUE KEY `pro_id` (`pro_id`,`listgroup`);

--
-- Indexes for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_shops_money_vi`
--
ALTER TABLE `nv4_shops_money_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
  ADD PRIMARY KEY (`order_id`),
  ADD UNIQUE KEY `order_code` (`order_code`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `order_time` (`order_time`),
  ADD KEY `shop_id` (`shop_id`);

--
-- Indexes for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `orderid` (`order_id`,`id`);

--
-- Indexes for table `nv4_shops_orders_id_group`
--
ALTER TABLE `nv4_shops_orders_id_group`
  ADD UNIQUE KEY `orderid` (`order_i`,`group_id`);

--
-- Indexes for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
  ADD PRIMARY KEY (`id`),
  ADD KEY `add_time` (`add_time`);

--
-- Indexes for table `nv4_shops_payment`
--
ALTER TABLE `nv4_shops_payment`
  ADD PRIMARY KEY (`payment`);

--
-- Indexes for table `nv4_shops_point`
--
ALTER TABLE `nv4_shops_point`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
  ADD PRIMARY KEY (`review_id`);

--
-- Indexes for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vi_alias` (`vi_alias`),
  ADD KEY `listcatid` (`listcatid`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`);

--
-- Indexes for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_shops_carrier`
--
ALTER TABLE `nv4_shops_shops_carrier`
  ADD UNIQUE KEY `shops_id` (`shops_id`,`carrier_id`);

--
-- Indexes for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_tags_id_vi`
--
ALTER TABLE `nv4_shops_tags_id_vi`
  ADD UNIQUE KEY `sid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
  ADD PRIMARY KEY (`transaction_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `payment_id` (`payment_id`);

--
-- Indexes for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
  ADD PRIMARY KEY (`logid`),
  ADD KEY `wid` (`wid`);

--
-- Indexes for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `logid` (`logid`);

--
-- Indexes for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Indexes for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
  ADD PRIMARY KEY (`wid`);

--
-- Indexes for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  ADD PRIMARY KEY (`did`),
  ADD UNIQUE KEY `name` (`dirname`);

--
-- Indexes for table `nv4_upload_file`
--
ALTER TABLE `nv4_upload_file`
  ADD UNIQUE KEY `did` (`did`,`title`),
  ADD KEY `userid` (`userid`),
  ADD KEY `type` (`type`);

--
-- Indexes for table `nv4_users`
--
ALTER TABLE `nv4_users`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idsite` (`idsite`);

--
-- Indexes for table `nv4_users_config`
--
ALTER TABLE `nv4_users_config`
  ADD PRIMARY KEY (`config`);

--
-- Indexes for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  ADD PRIMARY KEY (`fid`),
  ADD UNIQUE KEY `field` (`field`);

--
-- Indexes for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  ADD PRIMARY KEY (`group_id`),
  ADD UNIQUE KEY `ktitle` (`title`,`idsite`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_users_groups_users`
--
ALTER TABLE `nv4_users_groups_users`
  ADD PRIMARY KEY (`group_id`,`userid`);

--
-- Indexes for table `nv4_users_info`
--
ALTER TABLE `nv4_users_info`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_users_openid`
--
ALTER TABLE `nv4_users_openid`
  ADD PRIMARY KEY (`opid`),
  ADD KEY `userid` (`userid`),
  ADD KEY `email` (`email`);

--
-- Indexes for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  ADD PRIMARY KEY (`qid`),
  ADD UNIQUE KEY `title` (`title`,`lang`);

--
-- Indexes for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  ADD PRIMARY KEY (`userid`),
  ADD UNIQUE KEY `login` (`username`),
  ADD UNIQUE KEY `md5username` (`md5username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_about_config`
--
ALTER TABLE `nv4_vi_about_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  ADD PRIMARY KEY (`bid`),
  ADD KEY `theme` (`theme`),
  ADD KEY `module` (`module`),
  ADD KEY `position` (`position`),
  ADD KEY `exp_time` (`exp_time`);

--
-- Indexes for table `nv4_vi_blocks_weight`
--
ALTER TABLE `nv4_vi_blocks_weight`
  ADD UNIQUE KEY `bid` (`bid`,`func_id`);

--
-- Indexes for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `mod_id` (`module`,`area`,`id`),
  ADD KEY `post_time` (`post_time`);

--
-- Indexes for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `full_name` (`full_name`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  ADD PRIMARY KEY (`rid`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sender_name` (`sender_name`);

--
-- Indexes for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  ADD PRIMARY KEY (`bid`);

--
-- Indexes for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  ADD PRIMARY KEY (`func_id`),
  ADD UNIQUE KEY `func_name` (`func_name`,`in_module`),
  ADD UNIQUE KEY `alias` (`alias`,`in_module`);

--
-- Indexes for table `nv4_vi_modthemes`
--
ALTER TABLE `nv4_vi_modthemes`
  ADD UNIQUE KEY `func_id` (`func_id`,`layout`,`theme`);

--
-- Indexes for table `nv4_vi_modules`
--
ALTER TABLE `nv4_vi_modules`
  ADD PRIMARY KEY (`title`);

--
-- Indexes for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_admins`
--
ALTER TABLE `nv4_vi_news_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_news_block`
--
ALTER TABLE `nv4_vi_news_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_vi_news_config_post`
--
ALTER TABLE `nv4_vi_news_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_news_detail`
--
ALTER TABLE `nv4_vi_news_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `topicid` (`topicid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_news_tags_id`
--
ALTER TABLE `nv4_vi_news_tags_id`
  ADD UNIQUE KEY `id_tid` (`id`,`tid`),
  ADD KEY `tid` (`tid`);

--
-- Indexes for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  ADD PRIMARY KEY (`topicid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_page_config`
--
ALTER TABLE `nv4_vi_page_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_referer_stats`
--
ALTER TABLE `nv4_vi_referer_stats`
  ADD UNIQUE KEY `host` (`host`),
  ADD KEY `total` (`total`);

--
-- Indexes for table `nv4_vi_searchkeys`
--
ALTER TABLE `nv4_vi_searchkeys`
  ADD KEY `id` (`id`),
  ADD KEY `skey` (`skey`),
  ADD KEY `search_engine` (`search_engine`);

--
-- Indexes for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_siteterms_config`
--
ALTER TABLE `nv4_vi_siteterms_config`
  ADD UNIQUE KEY `config_name` (`config_name`);

--
-- Indexes for table `nv4_vi_slider_group`
--
ALTER TABLE `nv4_vi_slider_group`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_slider_photo`
--
ALTER TABLE `nv4_vi_slider_photo`
  ADD PRIMARY KEY (`photo_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `nv4_vi_slider_template`
--
ALTER TABLE `nv4_vi_slider_template`
  ADD PRIMARY KEY (`template_id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_support`
--
ALTER TABLE `nv4_vi_support`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_support_rows`
--
ALTER TABLE `nv4_vi_support_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `parentid` (`parentid`,`mid`);

--
-- Indexes for table `nv4_vi_videos_1`
--
ALTER TABLE `nv4_vi_videos_1`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_videos_admins`
--
ALTER TABLE `nv4_vi_videos_admins`
  ADD UNIQUE KEY `userid` (`userid`,`catid`);

--
-- Indexes for table `nv4_vi_videos_block`
--
ALTER TABLE `nv4_vi_videos_block`
  ADD UNIQUE KEY `bid` (`bid`,`id`);

--
-- Indexes for table `nv4_vi_videos_block_cat`
--
ALTER TABLE `nv4_vi_videos_block_cat`
  ADD PRIMARY KEY (`bid`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_videos_cat`
--
ALTER TABLE `nv4_vi_videos_cat`
  ADD PRIMARY KEY (`catid`),
  ADD UNIQUE KEY `alias` (`alias`),
  ADD KEY `parentid` (`parentid`);

--
-- Indexes for table `nv4_vi_videos_config_post`
--
ALTER TABLE `nv4_vi_videos_config_post`
  ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `nv4_vi_videos_detail`
--
ALTER TABLE `nv4_vi_videos_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nv4_vi_videos_logs`
--
ALTER TABLE `nv4_vi_videos_logs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sid` (`sid`),
  ADD KEY `userid` (`userid`);

--
-- Indexes for table `nv4_vi_videos_playlist`
--
ALTER TABLE `nv4_vi_videos_playlist`
  ADD UNIQUE KEY `playlist_id` (`playlist_id`,`id`);

--
-- Indexes for table `nv4_vi_videos_playlist_cat`
--
ALTER TABLE `nv4_vi_videos_playlist_cat`
  ADD PRIMARY KEY (`playlist_id`),
  ADD UNIQUE KEY `title` (`title`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_videos_rows`
--
ALTER TABLE `nv4_vi_videos_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `catid` (`catid`),
  ADD KEY `admin_id` (`admin_id`),
  ADD KEY `author` (`author`),
  ADD KEY `title` (`title`),
  ADD KEY `addtime` (`addtime`),
  ADD KEY `publtime` (`publtime`),
  ADD KEY `exptime` (`exptime`),
  ADD KEY `status` (`status`);

--
-- Indexes for table `nv4_vi_videos_rows_favourite`
--
ALTER TABLE `nv4_vi_videos_rows_favourite`
  ADD UNIQUE KEY `fid` (`fid`,`id`);

--
-- Indexes for table `nv4_vi_videos_rows_report`
--
ALTER TABLE `nv4_vi_videos_rows_report`
  ADD UNIQUE KEY `rid` (`rid`,`id`);

--
-- Indexes for table `nv4_vi_videos_sources`
--
ALTER TABLE `nv4_vi_videos_sources`
  ADD PRIMARY KEY (`sourceid`),
  ADD UNIQUE KEY `title` (`title`);

--
-- Indexes for table `nv4_vi_videos_tags`
--
ALTER TABLE `nv4_vi_videos_tags`
  ADD PRIMARY KEY (`tid`),
  ADD UNIQUE KEY `alias` (`alias`);

--
-- Indexes for table `nv4_vi_videos_tags_id`
--
ALTER TABLE `nv4_vi_videos_tags_id`
  ADD UNIQUE KEY `sid` (`id`,`tid`);

--
-- Indexes for table `nv4_vi_videos_uploaders`
--
ALTER TABLE `nv4_vi_videos_uploaders`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  ADD PRIMARY KEY (`vid`),
  ADD UNIQUE KEY `question` (`question`);

--
-- Indexes for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `vid` (`vid`,`title`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `nv4_authors_config`
--
ALTER TABLE `nv4_authors_config`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_authors_module`
--
ALTER TABLE `nv4_authors_module`
  MODIFY `mid` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_banip`
--
ALTER TABLE `nv4_banip`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_clients`
--
ALTER TABLE `nv4_banners_clients`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_banners_plans`
--
ALTER TABLE `nv4_banners_plans`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_banners_rows`
--
ALTER TABLE `nv4_banners_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_cronjobs`
--
ALTER TABLE `nv4_cronjobs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `nv4_extension_files`
--
ALTER TABLE `nv4_extension_files`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=526;
--
-- AUTO_INCREMENT for table `nv4_googleplus`
--
ALTER TABLE `nv4_googleplus`
  MODIFY `gid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language`
--
ALTER TABLE `nv4_language`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_language_file`
--
ALTER TABLE `nv4_language_file`
  MODIFY `idfile` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_logs`
--
ALTER TABLE `nv4_logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=463;
--
-- AUTO_INCREMENT for table `nv4_notification`
--
ALTER TABLE `nv4_notification`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_plugin`
--
ALTER TABLE `nv4_plugin`
  MODIFY `pid` tinyint(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_shops_block_cat`
--
ALTER TABLE `nv4_shops_block_cat`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier`
--
ALTER TABLE `nv4_shops_carrier`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config`
--
ALTER TABLE `nv4_shops_carrier_config`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_carrier_config_items`
--
ALTER TABLE `nv4_shops_carrier_config_items`
  MODIFY `id` smallint(4) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_catalogs`
--
ALTER TABLE `nv4_shops_catalogs`
  MODIFY `catid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
--
-- AUTO_INCREMENT for table `nv4_shops_coupons`
--
ALTER TABLE `nv4_shops_coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_coupons_history`
--
ALTER TABLE `nv4_shops_coupons_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_discounts`
--
ALTER TABLE `nv4_shops_discounts`
  MODIFY `did` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_shops_field`
--
ALTER TABLE `nv4_shops_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_field_value_vi`
--
ALTER TABLE `nv4_shops_field_value_vi`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_files`
--
ALTER TABLE `nv4_shops_files`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_group`
--
ALTER TABLE `nv4_shops_group`
  MODIFY `groupid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=58;
--
-- AUTO_INCREMENT for table `nv4_shops_location`
--
ALTER TABLE `nv4_shops_location`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders`
--
ALTER TABLE `nv4_shops_orders`
  MODIFY `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders_id`
--
ALTER TABLE `nv4_shops_orders_id`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_orders_shipping`
--
ALTER TABLE `nv4_shops_orders_shipping`
  MODIFY `id` tinyint(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_point_history`
--
ALTER TABLE `nv4_shops_point_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_review`
--
ALTER TABLE `nv4_shops_review`
  MODIFY `review_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_rows`
--
ALTER TABLE `nv4_shops_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `nv4_shops_shops`
--
ALTER TABLE `nv4_shops_shops`
  MODIFY `id` tinyint(3) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_tabs`
--
ALTER TABLE `nv4_shops_tabs`
  MODIFY `id` int(3) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_shops_tags_vi`
--
ALTER TABLE `nv4_shops_tags_vi`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;
--
-- AUTO_INCREMENT for table `nv4_shops_template`
--
ALTER TABLE `nv4_shops_template`
  MODIFY `id` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_transaction`
--
ALTER TABLE `nv4_shops_transaction`
  MODIFY `transaction_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_units`
--
ALTER TABLE `nv4_shops_units`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse`
--
ALTER TABLE `nv4_shops_warehouse`
  MODIFY `wid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs`
--
ALTER TABLE `nv4_shops_warehouse_logs`
  MODIFY `logid` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `nv4_shops_warehouse_logs_group`
--
ALTER TABLE `nv4_shops_warehouse_logs_group`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_shops_weight_vi`
--
ALTER TABLE `nv4_shops_weight_vi`
  MODIFY `id` tinyint(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_shops_wishlist`
--
ALTER TABLE `nv4_shops_wishlist`
  MODIFY `wid` smallint(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_upload_dir`
--
ALTER TABLE `nv4_upload_dir`
  MODIFY `did` mediumint(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `nv4_users`
--
ALTER TABLE `nv4_users`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_users_field`
--
ALTER TABLE `nv4_users_field`
  MODIFY `fid` mediumint(8) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_users_groups`
--
ALTER TABLE `nv4_users_groups`
  MODIFY `group_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_users_question`
--
ALTER TABLE `nv4_users_question`
  MODIFY `qid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `nv4_users_reg`
--
ALTER TABLE `nv4_users_reg`
  MODIFY `userid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_about`
--
ALTER TABLE `nv4_vi_about`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nv4_vi_blocks_groups`
--
ALTER TABLE `nv4_vi_blocks_groups`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `nv4_vi_comment`
--
ALTER TABLE `nv4_vi_comment`
  MODIFY `cid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_department`
--
ALTER TABLE `nv4_vi_contact_department`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_reply`
--
ALTER TABLE `nv4_vi_contact_reply`
  MODIFY `rid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_contact_send`
--
ALTER TABLE `nv4_vi_contact_send`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_blocks`
--
ALTER TABLE `nv4_vi_freecontent_blocks`
  MODIFY `bid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_freecontent_rows`
--
ALTER TABLE `nv4_vi_freecontent_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `nv4_vi_menu`
--
ALTER TABLE `nv4_vi_menu`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_menu_rows`
--
ALTER TABLE `nv4_vi_menu_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
--
-- AUTO_INCREMENT for table `nv4_vi_modfuncs`
--
ALTER TABLE `nv4_vi_modfuncs`
  MODIFY `func_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=231;
--
-- AUTO_INCREMENT for table `nv4_vi_news_1`
--
ALTER TABLE `nv4_vi_news_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `nv4_vi_news_2`
--
ALTER TABLE `nv4_vi_news_2`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `nv4_vi_news_8`
--
ALTER TABLE `nv4_vi_news_8`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_news_9`
--
ALTER TABLE `nv4_vi_news_9`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `nv4_vi_news_10`
--
ALTER TABLE `nv4_vi_news_10`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `nv4_vi_news_11`
--
ALTER TABLE `nv4_vi_news_11`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `nv4_vi_news_12`
--
ALTER TABLE `nv4_vi_news_12`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv4_vi_news_block_cat`
--
ALTER TABLE `nv4_vi_news_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_news_cat`
--
ALTER TABLE `nv4_vi_news_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_vi_news_logs`
--
ALTER TABLE `nv4_vi_news_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_news_rows`
--
ALTER TABLE `nv4_vi_news_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `nv4_vi_news_sources`
--
ALTER TABLE `nv4_vi_news_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `nv4_vi_news_tags`
--
ALTER TABLE `nv4_vi_news_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;
--
-- AUTO_INCREMENT for table `nv4_vi_news_topics`
--
ALTER TABLE `nv4_vi_news_topics`
  MODIFY `topicid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_page`
--
ALTER TABLE `nv4_vi_page`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_siteterms`
--
ALTER TABLE `nv4_vi_siteterms`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_slider_group`
--
ALTER TABLE `nv4_vi_slider_group`
  MODIFY `group_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `nv4_vi_slider_photo`
--
ALTER TABLE `nv4_vi_slider_photo`
  MODIFY `photo_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `nv4_vi_slider_template`
--
ALTER TABLE `nv4_vi_slider_template`
  MODIFY `template_id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `nv4_vi_support`
--
ALTER TABLE `nv4_vi_support`
  MODIFY `id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_support_rows`
--
ALTER TABLE `nv4_vi_support_rows`
  MODIFY `id` mediumint(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_1`
--
ALTER TABLE `nv4_vi_videos_1`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_block_cat`
--
ALTER TABLE `nv4_vi_videos_block_cat`
  MODIFY `bid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_cat`
--
ALTER TABLE `nv4_vi_videos_cat`
  MODIFY `catid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_logs`
--
ALTER TABLE `nv4_vi_videos_logs`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_playlist_cat`
--
ALTER TABLE `nv4_vi_videos_playlist_cat`
  MODIFY `playlist_id` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_rows`
--
ALTER TABLE `nv4_vi_videos_rows`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_sources`
--
ALTER TABLE `nv4_vi_videos_sources`
  MODIFY `sourceid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_videos_tags`
--
ALTER TABLE `nv4_vi_videos_tags`
  MODIFY `tid` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `nv4_vi_voting`
--
ALTER TABLE `nv4_vi_voting`
  MODIFY `vid` smallint(5) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `nv4_vi_voting_rows`
--
ALTER TABLE `nv4_vi_voting_rows`
  MODIFY `id` mediumint(8) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
