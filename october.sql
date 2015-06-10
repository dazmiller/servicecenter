-- phpMyAdmin SQL Dump
-- version 4.3.12
-- http://www.phpmyadmin.net
--
-- Host: localhost:3306
-- Generation Time: Jun 06, 2015 at 06:05 PM
-- Server version: 10.0.17-MariaDB
-- PHP Version: 5.6.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `october`
--

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_contacts`
--

CREATE TABLE IF NOT EXISTS `acme_crm_contacts` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `position` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_contacts`
--

INSERT INTO `acme_crm_contacts` (`id`, `first_name`, `last_name`, `email`, `phone`, `mobile`, `position`, `company`, `created_at`, `updated_at`) VALUES
(1, 'Jim', 'Henson', NULL, NULL, NULL, 'Operator', 'Jim''s Mowing', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(2, 'Wes', 'Anderson', NULL, NULL, NULL, 'Director', 'Indian Paintbrush', '2015-06-02 17:10:22', '2015-06-02 17:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_notes`
--

CREATE TABLE IF NOT EXISTS `acme_crm_notes` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `opportunity_id` int(10) unsigned DEFAULT NULL,
  `owner_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_notes`
--

INSERT INTO `acme_crm_notes` (`id`, `subject`, `content`, `opportunity_id`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 'Initial Contact Note', '<p>initial contact, offer made​</p>', 1, 1, '2015-06-02 17:12:07', '2015-06-02 17:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_offerings`
--

CREATE TABLE IF NOT EXISTS `acme_crm_offerings` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `owner_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_offerings`
--

INSERT INTO `acme_crm_offerings` (`id`, `name`, `description`, `price`, `cost`, `owner_id`, `created_at`, `updated_at`) VALUES
(1, 'Web application', NULL, '600.00', '300.00', NULL, '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(2, 'Broschure website', NULL, '100.00', '50.00', NULL, '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(3, 'Mobile application', NULL, '120.00', '60.00', NULL, '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(4, 'Logo design', NULL, '80.00', '40.00', NULL, '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(5, 'Copywriting', NULL, '40.00', '20.00', NULL, '2015-06-02 17:10:22', '2015-06-02 17:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_opportunities`
--

CREATE TABLE IF NOT EXISTS `acme_crm_opportunities` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `status_id` int(10) unsigned DEFAULT NULL,
  `closed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_opportunities`
--

INSERT INTO `acme_crm_opportunities` (`id`, `name`, `description`, `status_id`, `closed_at`, `created_at`, `updated_at`) VALUES
(1, 'Test', '<p>​this is the brief</p>', 1, NULL, '2015-06-02 17:12:34', '2015-06-02 17:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_opportunities_contacts`
--

CREATE TABLE IF NOT EXISTS `acme_crm_opportunities_contacts` (
  `opportunity_id` int(10) unsigned NOT NULL,
  `contact_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_opportunities_contacts`
--

INSERT INTO `acme_crm_opportunities_contacts` (`opportunity_id`, `contact_id`) VALUES
(1, 1),
(1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_opportunities_offerings`
--

CREATE TABLE IF NOT EXISTS `acme_crm_opportunities_offerings` (
  `opportunity_id` int(10) unsigned NOT NULL,
  `offering_id` int(10) unsigned NOT NULL,
  `price` decimal(15,2) NOT NULL DEFAULT '0.00',
  `cost` decimal(15,2) NOT NULL DEFAULT '0.00',
  `owner_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_opportunities_offerings`
--

INSERT INTO `acme_crm_opportunities_offerings` (`opportunity_id`, `offering_id`, `price`, `cost`, `owner_id`) VALUES
(1, 1, '300.00', '600.00', 1),
(1, 2, '50.00', '100.00', 1),
(1, 3, '60.00', '120.00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `acme_crm_statuses`
--

CREATE TABLE IF NOT EXISTS `acme_crm_statuses` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `probability` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `acme_crm_statuses`
--

INSERT INTO `acme_crm_statuses` (`id`, `name`, `probability`, `created_at`, `updated_at`) VALUES
(1, 'First contact', '5%', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(2, 'Proposal made', '20%', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(3, 'Under review', '40%', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(4, 'Positive response', '60%', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(5, 'Verbal agreement', '90%', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(6, 'Closed (Won)', '100%', '2015-06-02 17:10:22', '2015-06-02 17:10:22'),
(7, 'Closed (Lost)', '0%', '2015-06-02 17:10:22', '2015-06-02 17:10:22');

-- --------------------------------------------------------

--
-- Table structure for table `backend_access_log`
--

CREATE TABLE IF NOT EXISTS `backend_access_log` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_access_log`
--

INSERT INTO `backend_access_log` (`id`, `user_id`, `ip_address`, `created_at`, `updated_at`) VALUES
(1, 1, '127.0.0.1', '2015-05-30 18:58:36', '2015-05-30 18:58:36'),
(2, 1, '127.0.0.1', '2015-06-01 14:21:28', '2015-06-01 14:21:28'),
(3, 1, '127.0.0.1', '2015-06-04 18:49:06', '2015-06-04 18:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users`
--

CREATE TABLE IF NOT EXISTS `backend_users` (
  `id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `login` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users`
--

INSERT INTO `backend_users` (`id`, `first_name`, `last_name`, `login`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `created_at`, `updated_at`) VALUES
(1, 'Darren', 'Miller', 'admin', 'dazmiller@gmail.com', '$2y$10$B9aPTwIYuYsbdc8ehCK6pONKfq/a0/Ca7dIzvwoKqAD74RVJHa5nK', NULL, '$2y$10$Gfdl1fHy/2lB72vlx0HgCOCmi9C8DPLMH4eLwtInMAqcb73UdNG4K', NULL, '{"superuser":1}', 1, NULL, '2015-06-04 18:49:06', '2015-05-30 18:57:49', '2015-06-04 18:49:06');

-- --------------------------------------------------------

--
-- Table structure for table `backend_users_groups`
--

CREATE TABLE IF NOT EXISTS `backend_users_groups` (
  `user_id` int(10) unsigned NOT NULL,
  `user_group_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_users_groups`
--

INSERT INTO `backend_users_groups` (`user_id`, `user_group_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_groups`
--

CREATE TABLE IF NOT EXISTS `backend_user_groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `is_new_user_default` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_groups`
--

INSERT INTO `backend_user_groups` (`id`, `name`, `permissions`, `created_at`, `updated_at`, `code`, `description`, `is_new_user_default`) VALUES
(1, 'Admins', NULL, '2015-05-30 18:57:49', '2015-05-30 18:57:49', 'admins', 'Default group for administrators', 1);

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_preferences`
--

CREATE TABLE IF NOT EXISTS `backend_user_preferences` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_preferences`
--

INSERT INTO `backend_user_preferences` (`id`, `user_id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 1, 'backend', 'reportwidgets', 'dashboard', '{"report_container_dashboard_1":{"class":"System\\\\ReportWidgets\\\\Status","configuration":{"title":"backend::lang.dashboard.status.widget_title_default","ocWidgetWidth":"10"},"sortOrder":1},"report_container_dashboard_2":{"class":"ShahiemSeymor\\\\Maintenance\\\\ReportWidgets\\\\Maintenance","configuration":{"ocWidgetWidth":"10"},"sortOrder":2}}');

-- --------------------------------------------------------

--
-- Table structure for table `backend_user_throttle`
--

CREATE TABLE IF NOT EXISTS `backend_user_throttle` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `backend_user_throttle`
--

INSERT INTO `backend_user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `bedard_blogtags_post_tag`
--

CREATE TABLE IF NOT EXISTS `bedard_blogtags_post_tag` (
  `tag_id` int(10) unsigned DEFAULT NULL,
  `post_id` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `bedard_blogtags_tags`
--

CREATE TABLE IF NOT EXISTS `bedard_blogtags_tags` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `benfreke_menumanager_menus`
--

CREATE TABLE IF NOT EXISTS `benfreke_menumanager_menus` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nest_left` int(10) unsigned DEFAULT NULL,
  `nest_right` int(10) unsigned DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_external` tinyint(1) NOT NULL DEFAULT '0',
  `link_target` varchar(255) COLLATE utf8_unicode_ci NOT NULL DEFAULT '_self',
  `enabled` int(11) NOT NULL DEFAULT '1',
  `parameters` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `query_string` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cms_theme_data`
--

CREATE TABLE IF NOT EXISTS `cms_theme_data` (
  `id` int(10) unsigned NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `deferred_bindings`
--

CREATE TABLE IF NOT EXISTS `deferred_bindings` (
  `id` int(10) unsigned NOT NULL,
  `master_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `master_field` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slave_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `session_key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `is_bind` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_activities`
--

CREATE TABLE IF NOT EXISTS `dma_friends_activities` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wordpress_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  `activity_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `activity_lockout` int(11) DEFAULT NULL,
  `time_restriction` tinyint(4) NOT NULL DEFAULT '0',
  `time_restriction_data` text COLLATE utf8_unicode_ci,
  `date_begin` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `activity_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `touch` tinyint(1) NOT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dma_friends_activities`
--

INSERT INTO `dma_friends_activities` (`id`, `created_at`, `updated_at`, `wordpress_id`, `title`, `description`, `excerpt`, `is_published`, `is_archived`, `points`, `image_id`, `activity_code`, `activity_lockout`, `time_restriction`, `time_restriction_data`, `date_begin`, `date_end`, `activity_type`, `touch`, `priority`) VALUES
(1, '2015-06-05 15:41:19', '2015-06-05 15:41:19', 0, 'A test', '<p>​A test</p>', '', 1, 0, 10, NULL, NULL, NULL, 0, 'a:3:{s:10:"start_time";s:0:"";s:8:"end_time";s:0:"";s:4:"days";a:7:{i:1;b:1;i:2;b:1;i:3;b:1;i:4;b:1;i:5;b:1;i:6;b:1;i:7;b:1;}}', NULL, NULL, 'ActivityCode', 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_activity_logs`
--

CREATE TABLE IF NOT EXISTS `dma_friends_activity_logs` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `action` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` longtext COLLATE utf8_unicode_ci NOT NULL,
  `object_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL,
  `artwork_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `wordpress_object_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT '',
  `points_earned` int(11) DEFAULT '0',
  `total_points` int(11) DEFAULT '0',
  `timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `timezone` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_activity_metadata`
--

CREATE TABLE IF NOT EXISTS `dma_friends_activity_metadata` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `key` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `value` longtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `session_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_activity_user`
--

CREATE TABLE IF NOT EXISTS `dma_friends_activity_user` (
  `activity_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_badges`
--

CREATE TABLE IF NOT EXISTS `dma_friends_badges` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `touch` tinyint(1) NOT NULL,
  `wordpress_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `congratulations_text` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '1',
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `maximum_earnings` int(11) DEFAULT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  `is_sequential` tinyint(1) NOT NULL DEFAULT '0',
  `show_earners` tinyint(1) NOT NULL DEFAULT '1',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `time_between_steps_min` int(11) DEFAULT '0',
  `time_between_steps_max` int(11) DEFAULT '0',
  `maximium_time` int(11) DEFAULT NULL,
  `date_begin` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `special` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `priority` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_badge_user`
--

CREATE TABLE IF NOT EXISTS `dma_friends_badge_user` (
  `id` int(10) unsigned NOT NULL,
  `badge_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `location_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_bookmarks`
--

CREATE TABLE IF NOT EXISTS `dma_friends_bookmarks` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `user_id` int(10) unsigned NOT NULL,
  `object_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `object_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_categories`
--

CREATE TABLE IF NOT EXISTS `dma_friends_categories` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `touch` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_locations`
--

CREATE TABLE IF NOT EXISTS `dma_friends_locations` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `wordpress_id` int(11) DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `printer_reward` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `printer_membership` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `uuid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_authorized` tinyint(1) DEFAULT NULL,
  `image_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_notification`
--

CREATE TABLE IF NOT EXISTS `dma_friends_notification` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `from_user_id` int(10) unsigned DEFAULT NULL,
  `subject` varchar(128) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `object_id` int(10) unsigned NOT NULL,
  `object_type` varchar(128) COLLATE utf8_unicode_ci NOT NULL,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `sent_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_object_categories`
--

CREATE TABLE IF NOT EXISTS `dma_friends_object_categories` (
  `category_id` int(11) NOT NULL,
  `object_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `object_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_rewards`
--

CREATE TABLE IF NOT EXISTS `dma_friends_rewards` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `touch` tinyint(1) NOT NULL,
  `wordpress_id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `excerpt` text COLLATE utf8_unicode_ci,
  `is_published` tinyint(1) NOT NULL DEFAULT '0',
  `is_archived` tinyint(1) NOT NULL DEFAULT '0',
  `points` int(11) NOT NULL DEFAULT '0',
  `image_id` int(11) DEFAULT NULL,
  `barcode` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `date_begin` timestamp NULL DEFAULT NULL,
  `date_end` timestamp NULL DEFAULT NULL,
  `days_valid` int(11) DEFAULT NULL,
  `inventory` int(11) DEFAULT NULL,
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `fine_print` text COLLATE utf8_unicode_ci,
  `enable_email` tinyint(1) NOT NULL DEFAULT '0',
  `redemption_email` text COLLATE utf8_unicode_ci,
  `enable_admin_email` tinyint(1) NOT NULL DEFAULT '0',
  `email_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `admin_email_group` int(11) DEFAULT NULL,
  `admin_email_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_reward_user`
--

CREATE TABLE IF NOT EXISTS `dma_friends_reward_user` (
  `id` int(10) unsigned NOT NULL,
  `reward_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_steps`
--

CREATE TABLE IF NOT EXISTS `dma_friends_steps` (
  `id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `touch` tinyint(1) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `wordpress_id` int(11) NOT NULL,
  `badge_id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `count` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_step_user`
--

CREATE TABLE IF NOT EXISTS `dma_friends_step_user` (
  `id` int(10) unsigned NOT NULL,
  `step_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `location_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_usermetas`
--

CREATE TABLE IF NOT EXISTS `dma_friends_usermetas` (
  `user_id` int(10) unsigned NOT NULL,
  `first_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email_optin` tinyint(1) NOT NULL,
  `current_member` smallint(6) NOT NULL,
  `birth_date` timestamp NULL DEFAULT NULL,
  `gender` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `race` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `household_income` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `household_size` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `education` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `instagram` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `current_member_number` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dma_friends_usermetas`
--

INSERT INTO `dma_friends_usermetas` (`user_id`, `first_name`, `last_name`, `email_optin`, `current_member`, `birth_date`, `gender`, `race`, `household_income`, `household_size`, `education`, `facebook`, `twitter`, `instagram`, `current_member_number`) VALUES
(1, '', '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_users_groups`
--

CREATE TABLE IF NOT EXISTS `dma_friends_users_groups` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `membership_status` enum('PENDING','ACCEPTED','REJECTED','CANCELLED') COLLATE utf8_unicode_ci NOT NULL DEFAULT 'PENDING',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dma_friends_user_groups`
--

CREATE TABLE IF NOT EXISTS `dma_friends_user_groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `owner_id` int(11) NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `permissions` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL,
  `queue` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laminsanneh_fantasticfaq_faq_groups`
--

CREATE TABLE IF NOT EXISTS `laminsanneh_fantasticfaq_faq_groups` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laminsanneh_fantasticfaq_questions`
--

CREATE TABLE IF NOT EXISTS `laminsanneh_fantasticfaq_questions` (
  `id` int(10) unsigned NOT NULL,
  `group_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `body` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2013_10_01_000001_Db_Deferred_Bindings', 1),
('2013_10_01_000002_Db_System_Files', 1),
('2013_10_01_000003_Db_System_Plugin_Versions', 1),
('2013_10_01_000004_Db_System_Plugin_History', 1),
('2013_10_01_000005_Db_System_Settings', 1),
('2013_10_01_000006_Db_System_Parameters', 1),
('2013_10_01_000007_Db_System_Add_Disabled_Flag', 1),
('2013_10_01_000008_Db_System_Mail_Templates', 1),
('2013_10_01_000009_Db_System_Mail_Layouts', 1),
('2014_10_01_000010_Db_Jobs', 1),
('2014_10_01_000011_Db_System_Event_Logs', 1),
('2014_10_01_000012_Db_System_Request_Logs', 1),
('2014_10_01_000013_Db_System_Sessions', 1),
('2015_10_01_000014_Db_System_Mail_Layout_Rename', 1),
('2013_10_01_000001_Db_Backend_Users', 2),
('2013_10_01_000002_Db_Backend_User_Groups', 2),
('2013_10_01_000003_Db_Backend_Users_Groups', 2),
('2013_10_01_000004_Db_Backend_User_Throttle', 2),
('2014_01_04_000005_Db_Backend_User_Preferences', 2),
('2014_10_01_000006_Db_Backend_Access_Log', 2),
('2014_10_01_000007_Db_Backend_Add_Description_Field', 2),
('2014_10_01_000001_Db_Cms_Theme_Data', 3);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_categories`
--

CREATE TABLE IF NOT EXISTS `rainlab_blog_categories` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_categories`
--

INSERT INTO `rainlab_blog_categories` (`id`, `name`, `slug`, `code`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Uncategorized', 'uncategorized', NULL, NULL, '2015-05-30 19:06:37', '2015-05-30 19:06:37');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts`
--

CREATE TABLE IF NOT EXISTS `rainlab_blog_posts` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `excerpt` text COLLATE utf8_unicode_ci,
  `content` text COLLATE utf8_unicode_ci,
  `published_at` timestamp NULL DEFAULT NULL,
  `published` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `content_html` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts`
--

INSERT INTO `rainlab_blog_posts` (`id`, `user_id`, `title`, `slug`, `excerpt`, `content`, `published_at`, `published`, `created_at`, `updated_at`, `content_html`) VALUES
(1, 1, 'test', 'test', '', '# First test post\r\nWow this is pretty cool\r\n\r\n** this should be bold **', '2015-05-30 14:00:00', 1, '2015-05-30 19:15:42', '2015-05-30 19:15:42', '<h1>First test post</h1>\n<p>Wow this is pretty cool</p>\n<p><strong> this should be bold </strong></p>');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_blog_posts_categories`
--

CREATE TABLE IF NOT EXISTS `rainlab_blog_posts_categories` (
  `post_id` int(10) unsigned NOT NULL,
  `category_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_blog_posts_categories`
--

INSERT INTO `rainlab_blog_posts_categories` (`post_id`, `category_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_channels`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_channels` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(10) unsigned DEFAULT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `nest_left` int(11) DEFAULT NULL,
  `nest_right` int(11) DEFAULT NULL,
  `nest_depth` int(11) DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_hidden` tinyint(1) NOT NULL DEFAULT '0',
  `is_moderated` tinyint(1) NOT NULL DEFAULT '0',
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_forum_channels`
--

INSERT INTO `rainlab_forum_channels` (`id`, `parent_id`, `title`, `slug`, `description`, `nest_left`, `nest_right`, `nest_depth`, `count_topics`, `count_posts`, `created_at`, `updated_at`, `is_hidden`, `is_moderated`, `embed_code`) VALUES
(1, NULL, 'Channel Orange', 'channel-orange', 'A root level forum channel', 1, 12, 0, 0, 0, '2015-06-02 12:34:42', '2015-06-02 12:34:43', 0, 0, NULL),
(2, 1, 'Autumn Leaves', 'autumn-leaves', 'Disccusion about the season of falling leaves.', 2, 9, 1, 0, 0, '2015-06-02 12:34:42', '2015-06-02 12:34:43', 0, 0, NULL),
(3, 2, 'September', 'september', 'The start of the fall season.', 3, 4, 2, 0, 0, '2015-06-02 12:34:43', '2015-06-02 12:34:43', 0, 0, NULL),
(4, 2, 'October', 'october', 'The middle of the fall season.', 5, 6, 2, 0, 0, '2015-06-02 12:34:43', '2015-06-02 12:34:43', 0, 0, NULL),
(5, 2, 'November', 'november', 'The end of the fall season.', 7, 8, 2, 0, 0, '2015-06-02 12:34:43', '2015-06-02 12:34:43', 0, 0, NULL),
(6, 1, 'Summer Breeze', 'summer-breeze', 'Disccusion about the wind at the ocean.', 10, 11, 1, 0, 0, '2015-06-02 12:34:43', '2015-06-02 12:34:43', 0, 0, NULL),
(7, NULL, 'Channel Green', 'channel-green', 'A root level forum channel', 13, 18, 0, 0, 0, '2015-06-02 12:34:43', '2015-06-02 12:34:44', 0, 0, NULL),
(8, 7, 'Winter Snow', 'winter-snow', 'Disccusion about the frosty snow flakes.', 14, 15, 1, 0, 0, '2015-06-02 12:34:44', '2015-06-02 12:34:44', 0, 0, NULL),
(9, 7, 'Spring Trees', 'spring-trees', 'Disccusion about the blooming gardens.', 16, 17, 1, 0, 0, '2015-06-02 12:34:44', '2015-06-02 12:34:44', 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_channel_watches`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_channel_watches` (
  `id` int(10) unsigned NOT NULL,
  `channel_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) unsigned DEFAULT NULL,
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `watched_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_members`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_members` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_topics` int(11) NOT NULL DEFAULT '0',
  `last_active_at` datetime DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_moderator` tinyint(1) NOT NULL DEFAULT '0',
  `is_banned` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_forum_members`
--

INSERT INTO `rainlab_forum_members` (`id`, `user_id`, `username`, `slug`, `count_posts`, `count_topics`, `last_active_at`, `created_at`, `updated_at`, `is_moderator`, `is_banned`) VALUES
(1, 1, 'dazmiller1', 'dazmiller1', 0, 0, NULL, '2015-06-02 14:45:53', '2015-06-02 14:45:53', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_posts`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_posts` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) unsigned DEFAULT NULL,
  `edit_user_id` int(11) DEFAULT NULL,
  `delete_user_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topics`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_topics` (
  `id` int(10) unsigned NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `slug` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `channel_id` int(10) unsigned NOT NULL,
  `start_member_id` int(11) DEFAULT NULL,
  `last_post_id` int(11) DEFAULT NULL,
  `last_post_member_id` int(11) DEFAULT NULL,
  `last_post_at` datetime DEFAULT NULL,
  `is_private` tinyint(1) NOT NULL DEFAULT '0',
  `is_sticky` tinyint(1) NOT NULL DEFAULT '0',
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `count_views` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `embed_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topic_followers`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_topic_followers` (
  `topic_id` int(10) unsigned NOT NULL,
  `member_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_forum_topic_watches`
--

CREATE TABLE IF NOT EXISTS `rainlab_forum_topic_watches` (
  `id` int(10) unsigned NOT NULL,
  `topic_id` int(10) unsigned DEFAULT NULL,
  `member_id` int(10) unsigned DEFAULT NULL,
  `count_posts` int(11) NOT NULL DEFAULT '0',
  `watched_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_sitemap_definitions`
--

CREATE TABLE IF NOT EXISTS `rainlab_sitemap_definitions` (
  `id` int(10) unsigned NOT NULL,
  `theme` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_countries`
--

CREATE TABLE IF NOT EXISTS `rainlab_user_countries` (
  `id` int(10) unsigned NOT NULL,
  `is_enabled` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=249 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_user_countries`
--

INSERT INTO `rainlab_user_countries` (`id`, `is_enabled`, `name`, `code`) VALUES
(1, 0, 'United States', 'US'),
(2, 0, 'Canada', 'CA'),
(3, 1, 'Australia', 'AU'),
(4, 0, 'France', 'FR'),
(5, 0, 'Germany', 'DE'),
(6, 0, 'Iceland', 'IS'),
(7, 0, 'Ireland', 'IE'),
(8, 0, 'Italy', 'IT'),
(9, 0, 'Spain', 'ES'),
(10, 0, 'Sweden', 'SE'),
(11, 0, 'Austria', 'AT'),
(12, 0, 'Belgium', 'BE'),
(13, 0, 'Finland', 'FI'),
(14, 0, 'Czech Republic', 'CZ'),
(15, 0, 'Denmark', 'DK'),
(16, 0, 'Norway', 'NO'),
(17, 0, 'United Kingdom', 'GB'),
(18, 0, 'Switzerland', 'CH'),
(19, 0, 'New Zealand', 'NZ'),
(20, 0, 'Russian Federation', 'RU'),
(21, 0, 'Portugal', 'PT'),
(22, 0, 'Netherlands', 'NL'),
(23, 0, 'Isle of Man', 'IM'),
(24, 0, 'Afghanistan', 'AF'),
(25, 0, 'Aland Islands ', 'AX'),
(26, 0, 'Albania', 'AL'),
(27, 0, 'Algeria', 'DZ'),
(28, 0, 'American Samoa', 'AS'),
(29, 0, 'Andorra', 'AD'),
(30, 0, 'Angola', 'AO'),
(31, 0, 'Anguilla', 'AI'),
(32, 0, 'Antarctica', 'AQ'),
(33, 0, 'Antigua and Barbuda', 'AG'),
(34, 0, 'Argentina', 'AR'),
(35, 0, 'Armenia', 'AM'),
(36, 0, 'Aruba', 'AW'),
(37, 0, 'Azerbaijan', 'AZ'),
(38, 0, 'Bahamas', 'BS'),
(39, 0, 'Bahrain', 'BH'),
(40, 0, 'Bangladesh', 'BD'),
(41, 0, 'Barbados', 'BB'),
(42, 0, 'Belarus', 'BY'),
(43, 0, 'Belize', 'BZ'),
(44, 0, 'Benin', 'BJ'),
(45, 0, 'Bermuda', 'BM'),
(46, 0, 'Bhutan', 'BT'),
(47, 0, 'Bolivia, Plurinational State of', 'BO'),
(48, 0, 'Bonaire, Sint Eustatius and Saba', 'BQ'),
(49, 0, 'Bosnia and Herzegovina', 'BA'),
(50, 0, 'Botswana', 'BW'),
(51, 0, 'Bouvet Island', 'BV'),
(52, 0, 'Brazil', 'BR'),
(53, 0, 'British Indian Ocean Territory', 'IO'),
(54, 0, 'Brunei Darussalam', 'BN'),
(55, 0, 'Bulgaria', 'BG'),
(56, 0, 'Burkina Faso', 'BF'),
(57, 0, 'Burundi', 'BI'),
(58, 0, 'Cambodia', 'KH'),
(59, 0, 'Cameroon', 'CM'),
(60, 0, 'Cape Verde', 'CV'),
(61, 0, 'Cayman Islands', 'KY'),
(62, 0, 'Central African Republic', 'CF'),
(63, 0, 'Chad', 'TD'),
(64, 0, 'Chile', 'CL'),
(65, 0, 'China', 'CN'),
(66, 0, 'Christmas Island', 'CX'),
(67, 0, 'Cocos (Keeling) Islands', 'CC'),
(68, 0, 'Colombia', 'CO'),
(69, 0, 'Comoros', 'KM'),
(70, 0, 'Congo', 'CG'),
(71, 0, 'Congo, the Democratic Republic of the', 'CD'),
(72, 0, 'Cook Islands', 'CK'),
(73, 0, 'Costa Rica', 'CR'),
(74, 0, 'Cote d''Ivoire', 'CI'),
(75, 0, 'Croatia', 'HR'),
(76, 0, 'Cuba', 'CU'),
(77, 0, 'Curaçao', 'CW'),
(78, 0, 'Cyprus', 'CY'),
(79, 0, 'Djibouti', 'DJ'),
(80, 0, 'Dominica', 'DM'),
(81, 0, 'Dominican Republic', 'DO'),
(82, 0, 'Ecuador', 'EC'),
(83, 0, 'Egypt', 'EG'),
(84, 0, 'El Salvador', 'SV'),
(85, 0, 'Equatorial Guinea', 'GQ'),
(86, 0, 'Eritrea', 'ER'),
(87, 0, 'Estonia', 'EE'),
(88, 0, 'Ethiopia', 'ET'),
(89, 0, 'Falkland Islands (Malvinas)', 'FK'),
(90, 0, 'Faroe Islands', 'FO'),
(91, 0, 'Fiji', 'FJ'),
(92, 0, 'French Guiana', 'GF'),
(93, 0, 'French Polynesia', 'PF'),
(94, 0, 'French Southern Territories', 'TF'),
(95, 0, 'Gabon', 'GA'),
(96, 0, 'Gambia', 'GM'),
(97, 0, 'Georgia', 'GE'),
(98, 0, 'Ghana', 'GH'),
(99, 0, 'Gibraltar', 'GI'),
(100, 0, 'Greece', 'GR'),
(101, 0, 'Greenland', 'GL'),
(102, 0, 'Grenada', 'GD'),
(103, 0, 'Guadeloupe', 'GP'),
(104, 0, 'Guam', 'GU'),
(105, 0, 'Guatemala', 'GT'),
(106, 0, 'Guernsey', 'GG'),
(107, 0, 'Guinea', 'GN'),
(108, 0, 'Guinea-Bissau', 'GW'),
(109, 0, 'Guyana', 'GY'),
(110, 0, 'Haiti', 'HT'),
(111, 0, 'Heard Island and McDonald Islands', 'HM'),
(112, 0, 'Holy See (Vatican City State)', 'VA'),
(113, 0, 'Honduras', 'HN'),
(114, 0, 'Hong Kong', 'HK'),
(115, 0, 'Hungary', 'HU'),
(116, 0, 'India', 'IN'),
(117, 0, 'Indonesia', 'ID'),
(118, 0, 'Iran, Islamic Republic of', 'IR'),
(119, 0, 'Iraq', 'IQ'),
(120, 0, 'Israel', 'IL'),
(121, 0, 'Jamaica', 'JM'),
(122, 0, 'Japan', 'JP'),
(123, 0, 'Jersey', 'JE'),
(124, 0, 'Jordan', 'JO'),
(125, 0, 'Kazakhstan', 'KZ'),
(126, 0, 'Kenya', 'KE'),
(127, 0, 'Kiribati', 'KI'),
(128, 0, 'Korea, Democratic People''s Republic of', 'KP'),
(129, 0, 'Korea, Republic of', 'KR'),
(130, 0, 'Kuwait', 'KW'),
(131, 0, 'Kyrgyzstan', 'KG'),
(132, 0, 'Lao People''s Democratic Republic', 'LA'),
(133, 0, 'Latvia', 'LV'),
(134, 0, 'Lebanon', 'LB'),
(135, 0, 'Lesotho', 'LS'),
(136, 0, 'Liberia', 'LR'),
(137, 0, 'Libyan Arab Jamahiriya', 'LY'),
(138, 0, 'Liechtenstein', 'LI'),
(139, 0, 'Lithuania', 'LT'),
(140, 0, 'Luxembourg', 'LU'),
(141, 0, 'Macao', 'MO'),
(142, 0, 'Macedonia', 'MK'),
(143, 0, 'Madagascar', 'MG'),
(144, 0, 'Malawi', 'MW'),
(145, 0, 'Malaysia', 'MY'),
(146, 0, 'Maldives', 'MV'),
(147, 0, 'Mali', 'ML'),
(148, 0, 'Malta', 'MT'),
(149, 0, 'Marshall Islands', 'MH'),
(150, 0, 'Martinique', 'MQ'),
(151, 0, 'Mauritania', 'MR'),
(152, 0, 'Mauritius', 'MU'),
(153, 0, 'Mayotte', 'YT'),
(154, 0, 'Mexico', 'MX'),
(155, 0, 'Micronesia, Federated States of', 'FM'),
(156, 0, 'Moldova, Republic of', 'MD'),
(157, 0, 'Monaco', 'MC'),
(158, 0, 'Mongolia', 'MN'),
(159, 0, 'Montenegro', 'ME'),
(160, 0, 'Montserrat', 'MS'),
(161, 0, 'Morocco', 'MA'),
(162, 0, 'Mozambique', 'MZ'),
(163, 0, 'Myanmar', 'MM'),
(164, 0, 'Namibia', 'NA'),
(165, 0, 'Nauru', 'NR'),
(166, 0, 'Nepal', 'NP'),
(167, 0, 'New Caledonia', 'NC'),
(168, 0, 'Nicaragua', 'NI'),
(169, 0, 'Niger', 'NE'),
(170, 0, 'Nigeria', 'NG'),
(171, 0, 'Niue', 'NU'),
(172, 0, 'Norfolk Island', 'NF'),
(173, 0, 'Northern Mariana Islands', 'MP'),
(174, 0, 'Oman', 'OM'),
(175, 0, 'Pakistan', 'PK'),
(176, 0, 'Palau', 'PW'),
(177, 0, 'Palestinian Territory, Occupied', 'PS'),
(178, 0, 'Panama', 'PA'),
(179, 0, 'Papua New Guinea', 'PG'),
(180, 0, 'Paraguay', 'PY'),
(181, 0, 'Peru', 'PE'),
(182, 0, 'Philippines', 'PH'),
(183, 0, 'Pitcairn', 'PN'),
(184, 0, 'Poland', 'PL'),
(185, 0, 'Puerto Rico', 'PR'),
(186, 0, 'Qatar', 'QA'),
(187, 0, 'Reunion', 'RE'),
(188, 0, 'Romania', 'RO'),
(189, 0, 'Rwanda', 'RW'),
(190, 0, 'Saint Barthélemy', 'BL'),
(191, 0, 'Saint Helena', 'SH'),
(192, 0, 'Saint Kitts and Nevis', 'KN'),
(193, 0, 'Saint Lucia', 'LC'),
(194, 0, 'Saint Martin (French part)', 'MF'),
(195, 0, 'Saint Pierre and Miquelon', 'PM'),
(196, 0, 'Saint Vincent and the Grenadines', 'VC'),
(197, 0, 'Samoa', 'WS'),
(198, 0, 'San Marino', 'SM'),
(199, 0, 'Sao Tome and Principe', 'ST'),
(200, 0, 'Saudi Arabia', 'SA'),
(201, 0, 'Senegal', 'SN'),
(202, 0, 'Serbia', 'RS'),
(203, 0, 'Seychelles', 'SC'),
(204, 0, 'Sierra Leone', 'SL'),
(205, 0, 'Singapore', 'SG'),
(206, 0, 'Sint Maarten (Dutch part)', 'SX'),
(207, 0, 'Slovakia', 'SK'),
(208, 0, 'Slovenia', 'SI'),
(209, 0, 'Solomon Islands', 'SB'),
(210, 0, 'Somalia', 'SO'),
(211, 0, 'South Africa', 'ZA'),
(212, 0, 'South Georgia and the South Sandwich Islands', 'GS'),
(213, 0, 'Sri Lanka', 'LK'),
(214, 0, 'Sudan', 'SD'),
(215, 0, 'Suriname', 'SR'),
(216, 0, 'Svalbard and Jan Mayen', 'SJ'),
(217, 0, 'Swaziland', 'SZ'),
(218, 0, 'Syrian Arab Republic', 'SY'),
(219, 0, 'Taiwan, Province of China', 'TW'),
(220, 0, 'Tajikistan', 'TJ'),
(221, 0, 'Tanzania, United Republic of', 'TZ'),
(222, 0, 'Thailand', 'TH'),
(223, 0, 'Timor-Leste', 'TL'),
(224, 0, 'Togo', 'TG'),
(225, 0, 'Tokelau', 'TK'),
(226, 0, 'Tonga', 'TO'),
(227, 0, 'Trinidad and Tobago', 'TT'),
(228, 0, 'Tunisia', 'TN'),
(229, 0, 'Turkey', 'TR'),
(230, 0, 'Turkmenistan', 'TM'),
(231, 0, 'Turks and Caicos Islands', 'TC'),
(232, 0, 'Tuvalu', 'TV'),
(233, 0, 'Uganda', 'UG'),
(234, 0, 'Ukraine', 'UA'),
(235, 0, 'United Arab Emirates', 'AE'),
(236, 0, 'United States Minor Outlying Islands', 'UM'),
(237, 0, 'Uruguay', 'UY'),
(238, 0, 'Uzbekistan', 'UZ'),
(239, 0, 'Vanuatu', 'VU'),
(240, 0, 'Venezuela, Bolivarian Republic of', 'VE'),
(241, 0, 'Viet Nam', 'VN'),
(242, 0, 'Virgin Islands, British', 'VG'),
(243, 0, 'Virgin Islands, U.S.', 'VI'),
(244, 0, 'Wallis and Futuna', 'WF'),
(245, 0, 'Western Sahara', 'EH'),
(246, 0, 'Yemen', 'YE'),
(247, 0, 'Zambia', 'ZM'),
(248, 0, 'Zimbabwe', 'ZW');

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_mail_blockers`
--

CREATE TABLE IF NOT EXISTS `rainlab_user_mail_blockers` (
  `id` int(10) unsigned NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `template` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rainlab_user_states`
--

CREATE TABLE IF NOT EXISTS `rainlab_user_states` (
  `id` int(10) unsigned NOT NULL,
  `country_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=285 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rainlab_user_states`
--

INSERT INTO `rainlab_user_states` (`id`, `country_id`, `name`, `code`) VALUES
(1, 1, 'Alabama', 'AL'),
(2, 1, 'Alaska', 'AK'),
(3, 1, 'American Samoa', 'AS'),
(4, 1, 'Arizona', 'AZ'),
(5, 1, 'Arkansas', 'AR'),
(6, 1, 'California', 'CA'),
(7, 1, 'Colorado', 'CO'),
(8, 1, 'Connecticut', 'CT'),
(9, 1, 'Delaware', 'DE'),
(10, 1, 'Dist. of Columbia', 'DC'),
(11, 1, 'Florida', 'FL'),
(12, 1, 'Georgia', 'GA'),
(13, 1, 'Guam', 'GU'),
(14, 1, 'Hawaii', 'HI'),
(15, 1, 'Idaho', 'ID'),
(16, 1, 'Illinois', 'IL'),
(17, 1, 'Indiana', 'IN'),
(18, 1, 'Iowa', 'IA'),
(19, 1, 'Kansas', 'KS'),
(20, 1, 'Kentucky', 'KY'),
(21, 1, 'Louisiana', 'LA'),
(22, 1, 'Maine', 'ME'),
(23, 1, 'Maryland', 'MD'),
(24, 1, 'Marshall Islands', 'MH'),
(25, 1, 'Massachusetts', 'MA'),
(26, 1, 'Michigan', 'MI'),
(27, 1, 'Micronesia', 'FM'),
(28, 1, 'Minnesota', 'MN'),
(29, 1, 'Mississippi', 'MS'),
(30, 1, 'Missouri', 'MO'),
(31, 1, 'Montana', 'MT'),
(32, 1, 'Nebraska', 'NE'),
(33, 1, 'Nevada', 'NV'),
(34, 1, 'New Hampshire', 'NH'),
(35, 1, 'New Jersey', 'NJ'),
(36, 1, 'New Mexico', 'NM'),
(37, 1, 'New York', 'NY'),
(38, 1, 'North Carolina', 'NC'),
(39, 1, 'North Dakota', 'ND'),
(40, 1, 'Northern Marianas', 'MP'),
(41, 1, 'Ohio', 'OH'),
(42, 1, 'Oklahoma', 'OK'),
(43, 1, 'Oregon', 'OR'),
(44, 1, 'Palau', 'PW'),
(45, 1, 'Pennsylvania', 'PA'),
(46, 1, 'Puerto Rico', 'PR'),
(47, 1, 'Rhode Island', 'RI'),
(48, 1, 'South Carolina', 'SC'),
(49, 1, 'South Dakota', 'SD'),
(50, 1, 'Tennessee', 'TN'),
(51, 1, 'Texas', 'TX'),
(52, 1, 'Utah', 'UT'),
(53, 1, 'Vermont', 'VT'),
(54, 1, 'Virginia', 'VA'),
(55, 1, 'Virgin Islands', 'VI'),
(56, 1, 'Washington', 'WA'),
(57, 1, 'West Virginia', 'WV'),
(58, 1, 'Wisconsin', 'WI'),
(59, 1, 'Wyoming', 'WY'),
(60, 2, 'Alberta', 'AB'),
(61, 2, 'British Columbia', 'BC'),
(62, 2, 'Manitoba', 'MB'),
(63, 2, 'New Brunswick', 'NB'),
(64, 2, 'Newfoundland and Labrador', 'NL'),
(65, 2, 'Northwest Territories', 'NT'),
(66, 2, 'Nova Scotia', 'NS'),
(67, 2, 'Nunavut', 'NU'),
(68, 2, 'Ontario', 'ON'),
(69, 2, 'Prince Edward Island', 'PE'),
(70, 2, 'Quebec', 'QC'),
(71, 2, 'Saskatchewan', 'SK'),
(72, 2, 'Yukon', 'YT'),
(73, 3, 'New South Wales', 'NSW'),
(74, 3, 'Queensland', 'QLD'),
(75, 3, 'South Australia', 'SA'),
(76, 3, 'Tasmania', 'TAS'),
(77, 3, 'Victoria', 'VIC'),
(78, 3, 'Western Australia', 'WA'),
(79, 3, 'Northern Territory', 'NT'),
(80, 3, 'Australian Capital Territory', 'ACT'),
(81, 5, 'Baden-Württemberg', 'BW'),
(82, 5, 'Bavaria', 'BY'),
(83, 5, 'Berlin', 'BE'),
(84, 5, 'Brandenburg', 'BB'),
(85, 5, 'Bremen', 'HB'),
(86, 5, 'Hamburg', 'HH'),
(87, 5, 'Hesse', 'HE'),
(88, 5, 'Mecklenburg-Vorpommern', 'MV'),
(89, 5, 'Lower Saxony', 'NI'),
(90, 5, 'North Rhine-Westphalia', 'NW'),
(91, 5, 'Rhineland-Palatinate', 'RP'),
(92, 5, 'Saarland', 'SL'),
(93, 5, 'Saxony', 'SN'),
(94, 5, 'Saxony-Anhalt', 'ST'),
(95, 5, 'Schleswig-Holstein', 'SH'),
(96, 5, 'Thuringia', 'TH'),
(97, 7, 'Dublin', 'D'),
(98, 7, 'Wicklow', 'WW'),
(99, 7, 'Wexford', 'WX'),
(100, 7, 'Carlow', 'CW'),
(101, 7, 'Kildare', 'KE'),
(102, 7, 'Meath', 'MH'),
(103, 7, 'Louth', 'LH'),
(104, 7, 'Monaghan', 'MN'),
(105, 7, 'Cavan', 'CN'),
(106, 7, 'Longford', 'LD'),
(107, 7, 'Westmeath', 'WH'),
(108, 7, 'Offaly', 'OY'),
(109, 7, 'Laois', 'LS'),
(110, 7, 'Kilkenny', 'KK'),
(111, 7, 'Waterford', 'WD'),
(112, 7, 'Cork', 'C'),
(113, 7, 'Kerry', 'KY'),
(114, 7, 'Limerick', 'LK'),
(115, 7, 'North Tipperary', 'TN'),
(116, 7, 'South Tipperary', 'TS'),
(117, 7, 'Clare', 'CE'),
(118, 7, 'Galway', 'G'),
(119, 7, 'Mayo', 'MO'),
(120, 7, 'Roscommon', 'RN'),
(121, 7, 'Sligo', 'SO'),
(122, 7, 'Leitrim', 'LM'),
(123, 7, 'Donegal', 'DL'),
(124, 22, 'Drenthe', 'DR'),
(125, 22, 'Flevoland', 'FL'),
(126, 22, 'Friesland', 'FR'),
(127, 22, 'Gelderland', 'GE'),
(128, 22, 'Groningen', 'GR'),
(129, 22, 'Limburg', 'LI'),
(130, 22, 'Noord-Brabant', 'NB'),
(131, 22, 'Noord-Holland', 'NH'),
(132, 22, 'Overijssel', 'OV'),
(133, 22, 'Utrecht', 'UT'),
(134, 22, 'Zeeland', 'ZE'),
(135, 22, 'Zuid-Holland', 'ZH'),
(136, 17, 'Aberdeenshire', 'ABE'),
(137, 17, 'Anglesey', 'ALY'),
(138, 17, 'Angus', 'ANG'),
(139, 17, 'Argyll', 'ARG'),
(140, 17, 'Ayrshire', 'AYR'),
(141, 17, 'Banffshire', 'BAN'),
(142, 17, 'Bedfordshire', 'BED'),
(143, 17, 'Berkshire', 'BER'),
(144, 17, 'Berwickshire', 'BWS'),
(145, 17, 'Brecknockshire', 'BRE'),
(146, 17, 'Buckinghamshire', 'BUC'),
(147, 17, 'Bute', 'BUT'),
(148, 17, 'Caernarfonshire', 'CAE'),
(149, 17, 'Caithness', 'CAI'),
(150, 17, 'Cambridgeshire', 'CAM'),
(151, 17, 'Cardiganshire', 'CAR'),
(152, 17, 'Carmarthenshire', 'CMS'),
(153, 17, 'Cheshire', 'CHE'),
(154, 17, 'Clackmannanshire', 'CLA'),
(155, 17, 'Cleveland', 'CLE'),
(156, 17, 'Cornwall', 'COR'),
(157, 17, 'Cromartyshire', 'CRO'),
(158, 17, 'Cumberland', 'CBR'),
(159, 17, 'Cumbria', 'CUM'),
(160, 17, 'Denbighshire', 'DEN'),
(161, 17, 'Derbyshire', 'DER'),
(162, 17, 'Devon', 'DEV'),
(163, 17, 'Dorset', 'DOR'),
(164, 17, 'Dumbartonshire', 'DBS'),
(165, 17, 'Dumfriesshire', 'DUM'),
(166, 17, 'Durham', 'DUR'),
(167, 17, 'East Lothian', 'ELO'),
(168, 17, 'Essex', 'ESS'),
(169, 17, 'Flintshire', 'FLI'),
(170, 17, 'Fife', 'FIF'),
(171, 17, 'Glamorgan', 'GLA'),
(172, 17, 'Gloucestershire', 'GLO'),
(173, 17, 'Hampshire', 'HAM'),
(174, 17, 'Herefordshire', 'HER'),
(175, 17, 'Hertfordshire', 'HTF'),
(176, 17, 'Huntingdonshire', 'HUN'),
(177, 17, 'Inverness', 'INV'),
(178, 17, 'Kent', 'KEN'),
(179, 17, 'Kincardineshire', 'KCD'),
(180, 17, 'Kinross-shire', 'KIN'),
(181, 17, 'Kirkcudbrightshire', 'KIR'),
(182, 17, 'Lanarkshire', 'LKS'),
(183, 17, 'Lancashire', 'LAN'),
(184, 17, 'Leicestershire', 'LEI'),
(185, 17, 'Lincolnshire', 'LIN'),
(186, 17, 'London', 'LON'),
(187, 17, 'Manchester', 'MAN'),
(188, 17, 'Merionethshire', 'MER'),
(189, 17, 'Merseyside', 'MER'),
(190, 17, 'Middlesex', 'MDX'),
(191, 17, 'Midlands', 'MID'),
(192, 17, 'Midlothian', 'MLT'),
(193, 17, 'Monmouthshire', 'MON'),
(194, 17, 'Montgomeryshire', 'MGY'),
(195, 17, 'Moray', 'MOR'),
(196, 17, 'Nairnshire', 'NAI'),
(197, 17, 'Norfolk', 'NOR'),
(198, 17, 'Northamptonshire', 'NMP'),
(199, 17, 'Northumberland', 'NUM'),
(200, 17, 'Nottinghamshire', 'NOT'),
(201, 17, 'Orkney', 'ORK'),
(202, 17, 'Oxfordshire', 'OXF'),
(203, 17, 'Peebleshire', 'PEE'),
(204, 17, 'Pembrokeshire', 'PEM'),
(205, 17, 'Perthshire', 'PER'),
(206, 17, 'Radnorshire', 'RAD'),
(207, 17, 'Renfrewshire', 'REN'),
(208, 17, 'Ross & Cromarty', 'ROS'),
(209, 17, 'Roxburghshire', 'ROX'),
(210, 17, 'Rutland', 'RUT'),
(211, 17, 'Selkirkshire', 'SEL'),
(212, 17, 'Shetland', 'SHE'),
(213, 17, 'Shropshire', 'SHR'),
(214, 17, 'Somerset', 'SOM'),
(215, 17, 'Staffordshire', 'STA'),
(216, 17, 'Stirlingshire', 'STI'),
(217, 17, 'Suffolk', 'SUF'),
(218, 17, 'Surrey', 'SUR'),
(219, 17, 'Sussex', 'SUS'),
(220, 17, 'Sutherland', 'SUT'),
(221, 17, 'Tyne & Wear', 'TYN'),
(222, 17, 'Warwickshire', 'WAR'),
(223, 17, 'West Lothian', 'WLO'),
(224, 17, 'Westmorland', 'WES'),
(225, 17, 'Wigtownshire', 'WIG'),
(226, 17, 'Wiltshire', 'WIL'),
(227, 17, 'Worcestershire', 'WOR'),
(228, 17, 'Yorkshire', 'YOR'),
(229, 115, 'Budapest', 'BUD'),
(230, 115, 'Baranya', 'BAR'),
(231, 115, 'Bács-Kiskun', 'BKM'),
(232, 115, 'Békés', 'BEK'),
(233, 115, 'Borsod-Abaúj-Zemplén', 'BAZ'),
(234, 115, 'Csongrád', 'CSO'),
(235, 115, 'Fejér', 'FEJ'),
(236, 115, 'Győr-Moson-Sopron', 'GMS'),
(237, 115, 'Hajdú-Bihar', 'HBM'),
(238, 115, 'Heves', 'HEV'),
(239, 115, 'Jász-Nagykun-Szolnok', 'JNS'),
(240, 115, 'Komárom-Esztergom', 'KEM'),
(241, 115, 'Nógrád', 'NOG'),
(242, 115, 'Pest', 'PES'),
(243, 115, 'Somogy', 'SOM'),
(244, 115, 'Szabolcs-Szatmár-Bereg', 'SSB'),
(245, 115, 'Tolna', 'TOL'),
(246, 115, 'Vas', 'VAS'),
(247, 115, 'Veszprém', 'VES'),
(248, 115, 'Zala', 'ZAL'),
(249, 116, 'Andhra Pradesh', 'AP'),
(250, 116, 'Arunachal Pradesh', 'AR'),
(251, 116, 'Assam', 'AS'),
(252, 116, 'Bihar', 'BR'),
(253, 116, 'Chhattisgarh', 'CT'),
(254, 116, 'Goa', 'GA'),
(255, 116, 'Gujarat', 'GJ'),
(256, 116, 'Haryana', 'HR'),
(257, 116, 'Himachal Pradesh', 'HP'),
(258, 116, 'Jammu and Kashmir', 'JK'),
(259, 116, 'Jharkhand', 'JH'),
(260, 116, 'Karnataka', 'KA'),
(261, 116, 'Kerala', 'KL'),
(262, 116, 'Madhya Pradesh', 'MP'),
(263, 116, 'Maharashtra', 'MH'),
(264, 116, 'Manipur', 'MN'),
(265, 116, 'Meghalaya', 'ML'),
(266, 116, 'Mizoram', 'MZ'),
(267, 116, 'Nagaland', 'NL'),
(268, 116, 'Odisha', 'OR'),
(269, 116, 'Punjab', 'PB'),
(270, 116, 'Rajasthan', 'RJ'),
(271, 116, 'Sikkim', 'SK'),
(272, 116, 'Tamil Nadu', 'TN'),
(273, 116, 'Telangana', 'TG'),
(274, 116, 'Tripura', 'TR'),
(275, 116, 'Uttarakhand', 'UT'),
(276, 116, 'Uttar Pradesh', 'UP'),
(277, 116, 'West Bengal', 'WB'),
(278, 116, 'Andaman and Nicobar Islands', 'AN'),
(279, 116, 'Chandigarh', 'CH'),
(280, 116, 'Dadra and Nagar Haveli', 'DN'),
(281, 116, 'Daman and Diu', 'DD'),
(282, 116, 'Delhi', 'DL'),
(283, 116, 'Lakshadweep', 'LD'),
(284, 116, 'Puducherry', 'PY');

-- --------------------------------------------------------

--
-- Table structure for table `renatio_dynamicpdf_pdf_layouts`
--

CREATE TABLE IF NOT EXISTS `renatio_dynamicpdf_pdf_layouts` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `renatio_dynamicpdf_pdf_layouts`
--

INSERT INTO `renatio_dynamicpdf_pdf_layouts` (`id`, `code`, `name`, `content_html`, `content_css`, `created_at`, `updated_at`) VALUES
(1, 'renatio::invoice', 'Invoice', '<html>\n<head>\n    <style type="text/css" media="screen">\n        {{ css|raw }}\n    </style>\n</head>\n<body style="background: url({{ background_img }}) top left no-repeat;">\n<div id="header">\n    <p class="left"><strong>www.example.com</strong></p>\n    <p class="right">\n        <strong>Acme Company</strong><br>\n        Admin Person<br>\n        Test Street<br>\n        34131 Berlin\n    </p>\n</div>\n<div id="footer">\n    <p class="left">\n        Tel. 4141414144<br>\n        Fax: 41414141414<br>\n        E-mail: test@test.com<br>\n        USt-IdNr.: 34131 Berlin\n    </p>\n    <p class="right">\n        Bank: Acme Company<br>\n        Kontoinhaber: Admin Person<br>\n        IBAN: DE41413113131<br>\n        BIC: 341314\n    </p>\n</div>\n{{ content_html|raw }}\n</body>\n</html>', '@font-face {\n    font-family: ''Open Sans'';\n    src: url(''plugins/renatio/dynamicpdf/assets/fonts/OpenSans-Regular.ttf'');\n}\n\n@font-face {\n    font-family: ''Open Sans'';\n    font-weight: bold;\n    src: url(''plugins/renatio/dynamicpdf/assets/fonts/OpenSans-Bold.ttf'');\n}\n\n@font-face {\n    font-family: ''Open Sans'';\n    font-style: italic;\n    src: url(''plugins/renatio/dynamicpdf/assets/fonts/OpenSans-Italic.ttf'');\n}\n\n@font-face {\n    font-family: ''Open Sans'';\n    font-style: italic;\n    font-weight: bold;\n    src: url(''plugins/renatio/dynamicpdf/assets/fonts/OpenSans-BoldItalic.ttf'');\n}\n\n@page {\n    margin: 0;\n    padding: 0;\n}\n\nbody {\n    font-family: ''Open Sans'', sans-serif;\n    font-size: 14px;\n}\n\n#header {\n    position: fixed;\n    top: 3%;\n    left: 30%;\n}\n\n#header .left {\n    color: #373430;\n    font-size: .9em;\n    text-transform: uppercase;\n    width: 60%;\n    display: inline-block;\n}\n\n#header .right {\n    font-size: .7em;\n    color: #545554;\n    line-height: 1em;\n    text-align: right;\n    display: inline-block;\n    width: 30%;\n    padding-top: 1%;\n}\n\n#footer {\n    position: fixed;\n    bottom: 0;\n    left: 5%;\n    height: 12%;\n    font-size: .7em;\n    color: #545554;\n    line-height: 1em;\n}\n\n#footer .left {\n    display: inline-block;\n    width: 25%;\n}\n\n#footer .right {\n    display: inline-block;\n    width: 30%;\n    padding-top: 7%;\n}\n\n#content {\n    margin: 12% 0 0 10%;\n}\n\n.small-txt {\n    font-size: .7em;\n}\n\n.company-info {\n    display: inline-block;\n    width: 55%;\n    line-height: 1.1em;\n    font-size: 1.1em;\n}\n\n.customer-info {\n    display: inline-block;\n    width: 45%;\n    font-size: .9em;\n    height: 10%;\n}\n\n#summary {\n    margin: 10% 0 5% 0;\n    border-collapse: collapse;\n    width: 90%;\n}\n\n#summary th {\n    background-color: #BEBEBE;\n    border: 1px solid #000;\n    padding: 5px;\n}\n\n#summary td {\n    padding: 5px 10px;\n    border-right: 1px solid #000;\n}\n\n#summary .col-1 {\n    width: 15%;\n    text-align: center;\n    border-left: 1px solid #000;\n}\n\n#summary .col-2 {\n    width: 50%;\n}\n\n#summary .col-3 {\n    width: 15%;\n    text-align: right;\n}\n\n#summary .col-4 {\n    width: 20%;\n    text-align: right;\n}\n\n#summary .bt {\n    border-top: 1px solid #000;\n}\n\n#summary .sum-price .col-4 {\n    border-top: 1px solid #000;\n    border-bottom: 1px solid #000;\n}', '2015-05-30 19:09:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `renatio_dynamicpdf_pdf_templates`
--

CREATE TABLE IF NOT EXISTS `renatio_dynamicpdf_pdf_templates` (
  `id` int(10) unsigned NOT NULL,
  `layout_id` int(10) unsigned DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `renatio_dynamicpdf_pdf_templates`
--

INSERT INTO `renatio_dynamicpdf_pdf_templates` (`id`, `layout_id`, `code`, `title`, `description`, `content_html`, `created_at`, `updated_at`) VALUES
(1, 1, 'renatio::invoice', 'Invoice', 'Example Invoice Template', '<div id="content">\n    <p class="small-txt">Acme Company • Admin Person • Test Street • 31335 Berlin</p>\n\n    <p class="company-info">\n        <strong>Happy Customer - Acme GmbH</strong><br>\n        <strong>Elbstr. 2</strong><br>\n        <strong>041340 Berlin</strong>\n    </p>\n\n    <p class="customer-info">\n        <strong>Kundennummer:</strong> 1211<br>\n        <strong>Rechnungsnummer:</strong> 2015-ADG-1612<br>\n        <strong>Datum:</strong> 18.03.2015<br>\n        <strong>Zahlungsbedingungen:</strong> 2 Tage ohne Abzug<br>\n        <strong>Fällig am:</strong> 20.03.2015\n    </p>\n    <table id="summary">\n        <tr>\n            <th>Menge</th>\n            <th>Beschreibung</th>\n            <th>Preis</th>\n            <th>Anzahlung 30%</th>\n        </tr>\n        <tr>\n            <td class="col-1">1</td>\n            <td class="col-2">4 Holzfenster</td>\n            <td class="col-3">26.653,69 &euro;</td>\n            <td class="col-4">7.996,11 &euro;</td>\n        </tr>\n        <tr>\n            <td class="col-1">1</td>\n            <td class="col-2">4 Holzfenster</td>\n            <td class="col-3">26.653,69 &euro;</td>\n            <td class="col-4">7.996,11 &euro;</td>\n        </tr>\n        {% for i in 0..5 %}\n        <tr>\n            <td class="col-1">&nbsp;</td>\n            <td class="col-2"></td>\n            <td class="col-3"></td>\n            <td class="col-4"></td>\n        </tr>\n        {% endfor %}\n        <tr class="sum-price">\n            <td colspan="3" class="col-3 bt">Netto</td>\n            <td class="col-4">7.996,11 &euro;</td>\n        </tr>\n        <tr class="sum-price">\n            <td colspan="3" class="col-3">zzgl. 19% MwSt.</td>\n            <td class="col-4">1.519,26 &euro;</td>\n        </tr>\n        <tr class="sum-price">\n            <td colspan="3" class="col-3"><strong>Gesamt</strong></td>\n            <td class="col-4">9.515,37 &euro;</td>\n        </tr>\n    </table>\n    <p><strong>Vielen Dank für Ihren Auftrag</strong></p>\n\n    <p>Gerichtsstand für alle Ansprüche aus diesem Auftrag ist Berlin.</p>\n</div>', '2015-05-30 19:09:04', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_dishsmith_activities`
--

CREATE TABLE IF NOT EXISTS `responsiv_dishsmith_activities` (
  `id` int(10) unsigned NOT NULL,
  `dish_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_dishsmith_dishes`
--

CREATE TABLE IF NOT EXISTS `responsiv_dishsmith_dishes` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responsiv_dishsmith_dishes`
--

INSERT INTO `responsiv_dishsmith_dishes` (`id`, `user_id`, `name`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, 1, 'test', 1, '2015-06-01 14:22:28', '2015-06-01 14:22:28'),
(2, 1, 'sdfdfsdfds', 2, '2015-06-01 14:22:52', '2015-06-01 14:22:52'),
(3, 1, 'cxvcvxcvcx', 3, '2015-06-01 14:23:00', '2015-06-01 14:23:00'),
(4, 1, 'xcv vxcvcx', 4, '2015-06-01 14:23:11', '2015-06-01 14:23:11');

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_dishsmith_dishes_ingredients`
--

CREATE TABLE IF NOT EXISTS `responsiv_dishsmith_dishes_ingredients` (
  `dish_id` int(10) unsigned NOT NULL,
  `ingredient_id` int(10) unsigned NOT NULL,
  `amount` int(11) DEFAULT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responsiv_dishsmith_dishes_ingredients`
--

INSERT INTO `responsiv_dishsmith_dishes_ingredients` (`dish_id`, `ingredient_id`, `amount`, `type`) VALUES
(1, 1, 2, 'serves'),
(1, 2, 500, 'grams'),
(4, 1, 3, 'serves');

-- --------------------------------------------------------

--
-- Table structure for table `responsiv_dishsmith_ingredients`
--

CREATE TABLE IF NOT EXISTS `responsiv_dishsmith_ingredients` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `responsiv_dishsmith_ingredients`
--

INSERT INTO `responsiv_dishsmith_ingredients` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'cheese', NULL, '2015-06-01 14:22:28', '2015-06-01 14:22:28'),
(2, 'flour', NULL, '2015-06-01 14:22:28', '2015-06-01 14:22:28');

-- --------------------------------------------------------

--
-- Table structure for table `romanov_flashmessage_settings`
--

CREATE TABLE IF NOT EXISTS `romanov_flashmessage_settings` (
  `id` int(10) unsigned NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `options` text COLLATE utf8_unicode_ci NOT NULL,
  `settings` text COLLATE utf8_unicode_ci NOT NULL,
  `settingsplacement` text COLLATE utf8_unicode_ci NOT NULL,
  `settingsoffset` text COLLATE utf8_unicode_ci NOT NULL,
  `settingsanimate` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceme_companies_companies`
--

CREATE TABLE IF NOT EXISTS `serviceme_companies_companies` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `trading_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `department` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `state` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `country` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `logo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `telephone` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `main_contact` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `industry_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceme_industries_industries`
--

CREATE TABLE IF NOT EXISTS `serviceme_industries_industries` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `payload` text COLLATE utf8_unicode_ci,
  `last_activity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shahiemseymor_assigned_roles`
--

CREATE TABLE IF NOT EXISTS `shahiemseymor_assigned_roles` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shahiemseymor_permissions`
--

CREATE TABLE IF NOT EXISTS `shahiemseymor_permissions` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shahiemseymor_permissions`
--

INSERT INTO `shahiemseymor_permissions` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'gggg', NULL, '2015-06-01 20:03:51', '2015-06-01 20:03:51');

-- --------------------------------------------------------

--
-- Table structure for table `shahiemseymor_permission_role`
--

CREATE TABLE IF NOT EXISTS `shahiemseymor_permission_role` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shahiemseymor_roles`
--

CREATE TABLE IF NOT EXISTS `shahiemseymor_roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `default_group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_event_logs`
--

CREATE TABLE IF NOT EXISTS `system_event_logs` (
  `id` int(10) unsigned NOT NULL,
  `level` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8_unicode_ci,
  `details` mediumtext COLLATE utf8_unicode_ci,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_event_logs`
--

INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(1, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''Class ''Responsiv\\DishSmith\\Models\\Dish'' not found'' in C:\\lamp\\www\\october\\modules\\cms\\classes\\CodeParser.php(189) : eval()''d code:11\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(417): Cms556cf6005d0ab_1474951600Class->onStart()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(350): Cms\\Classes\\Controller->execPageCycle()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-01 14:17:05', '2015-06-01 14:17:05'),
(2, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''Class ''Responsiv\\DishSmith\\Models\\Dish'' not found'' in C:\\lamp\\www\\october\\storage\\cms\\cache\\49\\74\\default.htm.php:11\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(417): Cms556cf6005d0ab_1474951600Class->onStart()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(350): Cms\\Classes\\Controller->execPageCycle()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-01 14:17:22', '2015-06-01 14:17:22'),
(3, 'error', 'exception ''PDOException'' with message ''SQLSTATE[42S02]: Base table or view not found: 1146 Table ''october.responsiv_dishsmith_dishes'' doesn''t exist'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:292\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(292): PDO->prepare(''select count(*)...'')\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(616): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(Object(Illuminate\\Database\\MySqlConnection), ''select count(*)...'', Array)\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''select count(*)...'', Array, Object(Closure))\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(297): Illuminate\\Database\\Connection->run(''select count(*)...'', Array, Object(Closure))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1377): Illuminate\\Database\\Connection->select(''select count(*)...'', Array, true)\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1367): Illuminate\\Database\\Query\\Builder->runSelect()\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1354): Illuminate\\Database\\Query\\Builder->getFresh(Array)\n#7 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(75): Illuminate\\Database\\Query\\Builder->get(Array)\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1643): October\\Rain\\Database\\QueryBuilder->get(Array)\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1581): Illuminate\\Database\\Query\\Builder->aggregate(''count'', Array)\n#10 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(177): Illuminate\\Database\\Query\\Builder->count(''*'')\n#11 [internal function]: October\\Rain\\Database\\QueryBuilder->count()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(933): call_user_func_array(Array, Array)\n#13 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Builder.php(131): Illuminate\\Database\\Eloquent\\Builder->__call(''count'', Array)\n#14 C:\\lamp\\www\\october\\plugins\\responsiv\\dishsmith\\models\\Dish.php(115): October\\Rain\\Database\\Builder->__call(''count'', Array)\n#15 C:\\lamp\\www\\october\\plugins\\responsiv\\dishsmith\\models\\Dish.php(115): October\\Rain\\Database\\Builder->count()\n#16 C:\\lamp\\www\\october\\storage\\cms\\cache\\49\\74\\default.htm.php(11): Responsiv\\DishSmith\\Models\\Dish::getWeeksForUser(Object(RainLab\\User\\Models\\User))\n#17 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(417): Cms556cf6005d0ab_1474951600Class->onStart()\n#18 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(350): Cms\\Classes\\Controller->execPageCycle()\n#19 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#20 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''dishes'')\n#21 [internal function]: Cms\\Classes\\CmsController->run(''dishes'')\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#25 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#31 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#38 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#46 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#58 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#61 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#62 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#63 {main}\n\nNext exception ''Illuminate\\Database\\QueryException'' with message ''SQLSTATE[42S02]: Base table or view not found: 1146 Table ''october.responsiv_dishsmith_dishes'' doesn''t exist (SQL: select count(*) as aggregate from `responsiv_dishsmith_dishes` where `user_id` = 1)'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:624\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''select count(*)...'', Array, Object(Closure))\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(297): Illuminate\\Database\\Connection->run(''select count(*)...'', Array, Object(Closure))\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1377): Illuminate\\Database\\Connection->select(''select count(*)...'', Array, true)\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1367): Illuminate\\Database\\Query\\Builder->runSelect()\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1354): Illuminate\\Database\\Query\\Builder->getFresh(Array)\n#5 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(75): Illuminate\\Database\\Query\\Builder->get(Array)\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1643): October\\Rain\\Database\\QueryBuilder->get(Array)\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1581): Illuminate\\Database\\Query\\Builder->aggregate(''count'', Array)\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\QueryBuilder.php(177): Illuminate\\Database\\Query\\Builder->count(''*'')\n#9 [internal function]: October\\Rain\\Database\\QueryBuilder->count()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(933): call_user_func_array(Array, Array)\n#11 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Builder.php(131): Illuminate\\Database\\Eloquent\\Builder->__call(''count'', Array)\n#12 C:\\lamp\\www\\october\\plugins\\responsiv\\dishsmith\\models\\Dish.php(115): October\\Rain\\Database\\Builder->__call(''count'', Array)\n#13 C:\\lamp\\www\\october\\plugins\\responsiv\\dishsmith\\models\\Dish.php(115): October\\Rain\\Database\\Builder->count()\n#14 C:\\lamp\\www\\october\\storage\\cms\\cache\\49\\74\\default.htm.php(11): Responsiv\\DishSmith\\Models\\Dish::getWeeksForUser(Object(RainLab\\User\\Models\\User))\n#15 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(417): Cms556cf6005d0ab_1474951600Class->onStart()\n#16 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(350): Cms\\Classes\\Controller->execPageCycle()\n#17 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#18 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''dishes'')\n#19 [internal function]: Cms\\Classes\\CmsController->run(''dishes'')\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#23 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#36 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#38 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#44 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}', NULL, '2015-06-01 14:19:44', '2015-06-01 14:19:44');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(4, 'error', 'exception ''Twig_Error_Syntax'' with message ''The filter "media" does not exist in "C:\\lamp\\www\\october/themes/serviceme/partials/footer.htm" at line 14'' in C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php:588\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(452): Twig_ExpressionParser->getFilterNodeClass(''media'', 14)\n#1 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(437): Twig_ExpressionParser->parseFilterExpressionRaw(Object(Twig_Node_Expression_GetAttr))\n#2 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(302): Twig_ExpressionParser->parseFilterExpression(Object(Twig_Node_Expression_GetAttr))\n#3 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(194): Twig_ExpressionParser->parsePostfixExpression(Object(Twig_Node_Expression_Name))\n#4 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(84): Twig_ExpressionParser->parsePrimaryExpression()\n#5 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(41): Twig_ExpressionParser->getPrimary()\n#6 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(141): Twig_ExpressionParser->parseExpression()\n#7 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(95): Twig_Parser->subparse(NULL, false)\n#8 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(543): Twig_Parser->parse(Object(Twig_TokenStream))\n#9 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(595): Twig_Environment->parse(Object(Twig_TokenStream))\n#10 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(335): Twig_Environment->compileSource(''<div class="buy...'', ''C:\\\\lamp\\\\www\\\\oct...'')\n#11 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(879): Twig_Environment->loadTemplate(''C:\\\\lamp\\\\www\\\\oct...'')\n#12 C:\\lamp\\www\\october\\modules\\cms\\twig\\Extension.php(116): Cms\\Classes\\Controller->renderPartial(''footer'', Array)\n#13 C:\\lamp\\www\\october\\storage\\cms\\twig\\0d\\db\\28ff87fabdea3245b32738b908afb6373de92c076a60bb495fabb3b23393.php(610): Cms\\Twig\\Extension->partialFunction(''footer'', Array)\n#14 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(313): __TwigTemplate_0ddb28ff87fabdea3245b32738b908afb6373de92c076a60bb495fabb3b23393->doDisplay(Array, Array)\n#15 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(287): Twig_Template->displayWithErrorHandling(Array, Array)\n#16 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(298): Twig_Template->display(Array)\n#17 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(380): Twig_Template->render(Array)\n#18 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#19 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''/'')\n#20 [internal function]: Cms\\Classes\\CmsController->run(''/'')\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#24 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#37 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#39 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#45 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2015-06-01 15:45:11', '2015-06-01 15:45:11'),
(5, 'error', 'exception ''Twig_Error_Syntax'' with message ''The filter "assets" does not exist in "C:\\lamp\\www\\october/themes/serviceme/partials/footer.htm" at line 14'' in C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php:588\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(452): Twig_ExpressionParser->getFilterNodeClass(''assets'', 14)\n#1 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(437): Twig_ExpressionParser->parseFilterExpressionRaw(Object(Twig_Node_Expression_GetAttr))\n#2 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(302): Twig_ExpressionParser->parseFilterExpression(Object(Twig_Node_Expression_GetAttr))\n#3 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(194): Twig_ExpressionParser->parsePostfixExpression(Object(Twig_Node_Expression_Name))\n#4 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(84): Twig_ExpressionParser->parsePrimaryExpression()\n#5 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\ExpressionParser.php(41): Twig_ExpressionParser->getPrimary()\n#6 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(141): Twig_ExpressionParser->parseExpression()\n#7 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(95): Twig_Parser->subparse(NULL, false)\n#8 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(543): Twig_Parser->parse(Object(Twig_TokenStream))\n#9 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(595): Twig_Environment->parse(Object(Twig_TokenStream))\n#10 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(335): Twig_Environment->compileSource(''<div class="buy...'', ''C:\\\\lamp\\\\www\\\\oct...'')\n#11 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(879): Twig_Environment->loadTemplate(''C:\\\\lamp\\\\www\\\\oct...'')\n#12 C:\\lamp\\www\\october\\modules\\cms\\twig\\Extension.php(116): Cms\\Classes\\Controller->renderPartial(''footer'', Array)\n#13 C:\\lamp\\www\\october\\storage\\cms\\twig\\0d\\db\\28ff87fabdea3245b32738b908afb6373de92c076a60bb495fabb3b23393.php(610): Cms\\Twig\\Extension->partialFunction(''footer'', Array)\n#14 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(313): __TwigTemplate_0ddb28ff87fabdea3245b32738b908afb6373de92c076a60bb495fabb3b23393->doDisplay(Array, Array)\n#15 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(287): Twig_Template->displayWithErrorHandling(Array, Array)\n#16 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(298): Twig_Template->display(Array)\n#17 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(380): Twig_Template->render(Array)\n#18 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#19 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''/'')\n#20 [internal function]: Cms\\Classes\\CmsController->run(''/'')\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#24 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#37 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#39 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#45 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2015-06-01 15:46:04', '2015-06-01 15:46:04'),
(6, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''<'', expecting function (T_FUNCTION)'' in C:\\lamp\\www\\october\\storage\\cms\\cache\\14\\02\\home.htm.php:5\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(529): Cms\\Classes\\CodeParser->source()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(300): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-01 15:54:00', '2015-06-01 15:54:00'),
(7, 'error', 'exception ''ErrorException'' with message ''file_put_contents(C:\\lamp\\www\\october\\storage/framework/cache/50/35/5035b0c1e1f82379067d38f8383c7b5d): failed to open stream: Invalid argument'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php:75\nStack trace:\n#0 [internal function]: Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleError(2, ''file_put_conten...'', ''C:\\\\lamp\\\\www\\\\oct...'', 75, Array)\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Filesystem\\Filesystem.php(75): file_put_contents(''C:\\\\lamp\\\\www\\\\oct...'', ''1433297979N;'', 0)\n#2 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Filesystem\\Filesystem.php(189): Illuminate\\Filesystem\\Filesystem->put(''C:\\\\lamp\\\\www\\\\oct...'', ''1433297979N;'', false)\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cache\\FileStore.php(103): October\\Rain\\Filesystem\\Filesystem->put(''C:\\\\lamp\\\\www\\\\oct...'', ''1433297979N;'')\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cache\\Repository.php(141): Illuminate\\Cache\\FileStore->put(''cms::theme.acti...'', NULL, 1440)\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cache\\Repository.php(204): Illuminate\\Cache\\Repository->put(''cms::theme.acti...'', NULL, 1440)\n#6 [internal function]: Illuminate\\Cache\\Repository->remember(''cms::theme.acti...'', 1440, Object(Closure))\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cache\\CacheManager.php(312): call_user_func_array(Array, Array)\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(216): Illuminate\\Cache\\CacheManager->__call(''remember'', Array)\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(216): Illuminate\\Cache\\CacheManager->remember(''cms::theme.acti...'', 1440, Object(Closure))\n#10 C:\\lamp\\www\\october\\modules\\cms\\classes\\Theme.php(154): Illuminate\\Support\\Facades\\Facade::__callStatic(''remember'', Array)\n#11 C:\\lamp\\www\\october\\modules\\cms\\classes\\Theme.php(154): Illuminate\\Support\\Facades\\Cache::remember(''cms::theme.acti...'', 1440, Object(Closure))\n#12 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(123): Cms\\Classes\\Theme::getActiveTheme()\n#13 [internal function]: Cms\\Classes\\Controller->__construct(NULL)\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(817): ReflectionClass->newInstanceArgs(Array)\n#15 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(656): Illuminate\\Container\\Container->build(''Cms\\\\Classes\\\\Con...'', Array)\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Application.php(644): Illuminate\\Container\\Container->make(''Cms\\\\Classes\\\\Con...'', Array)\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(210): Illuminate\\Foundation\\Application->make(''Cms\\\\Classes\\\\Con...'')\n#18 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Illuminate\\Support\\Facades\\Facade::__callStatic(''make'', Array)\n#19 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Illuminate\\Support\\Facades\\App::make(''Cms\\\\Classes\\\\Con...'')\n#20 [internal function]: Cms\\Classes\\CmsController->run(''images/slidesho...'')\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#24 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#28 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#30 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#37 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#39 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#45 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#57 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#61 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#62 {main}', NULL, '2015-06-01 16:19:39', '2015-06-01 16:19:39');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(8, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected identifier (T_STRING), expecting function (T_FUNCTION)'' in C:\\lamp\\www\\october\\storage\\cms\\cache\\71\\78\\user.htm.php:4\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(529): Cms\\Classes\\CodeParser->source()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(300): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-02 14:10:48', '2015-06-02 14:10:48'),
(9, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''['', expecting function (T_FUNCTION)'' in C:\\lamp\\www\\october\\storage\\cms\\cache\\71\\78\\user.htm.php:4\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(529): Cms\\Classes\\CodeParser->source()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(300): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-02 14:11:54', '2015-06-02 14:11:54'),
(10, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''['', expecting function (T_FUNCTION)'' in C:\\lamp\\www\\october\\storage\\cms\\cache\\71\\78\\user.htm.php:4\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(529): Cms\\Classes\\CodeParser->source()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(300): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-02 14:12:17', '2015-06-02 14:12:17'),
(11, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''['', expecting function (T_FUNCTION)'' in C:\\lamp\\www\\october\\storage\\cms\\cache\\71\\78\\user.htm.php:5\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(529): Cms\\Classes\\CodeParser->source()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(300): Cms\\Classes\\Controller->initCustomObjects()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage()\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run()\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Cms\\Classes\\CmsController->run()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#49 C:\\lamp\\www\\october\\index.php(0): {main}()\n#50 {main}', NULL, '2015-06-02 14:14:47', '2015-06-02 14:14:47'),
(12, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''''DOB'''' (T_CONSTANT_ENCAPSED_STRING), expecting '']'''' in C:\\lamp\\www\\october\\plugins\\indikator\\user\\lang\\en\\lang.php:14\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Translation\\FileLoader.php(110): Illuminate\\Filesystem\\Filesystem->getRequire()\n#4 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Translation\\FileLoader.php(70): October\\Rain\\Translation\\FileLoader->loadPath()\n#5 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Translation\\FileLoader.php(56): October\\Rain\\Translation\\FileLoader->loadNamespaced()\n#6 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Translation\\Translator.php(254): October\\Rain\\Translation\\FileLoader->load()\n#7 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Translation\\Translator.php(95): October\\Rain\\Translation\\Translator->load()\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(210): October\\Rain\\Translation\\Translator->get()\n#9 C:\\lamp\\www\\october\\plugins\\indikator\\user\\Plugin.php(35): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#10 C:\\lamp\\www\\october\\plugins\\indikator\\user\\Plugin.php(35): Illuminate\\Support\\Facades\\Lang::get()\n#11 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(696): Indikator\\User\\Plugin->Indikator\\User\\{closure}()\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\Dispatcher.php(218): Backend\\Behaviors\\FormController::Backend\\Behaviors\\{closure}()\n#13 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\Dispatcher.php(218): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Events\\Dispatcher.php:218}()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Events\\Dispatcher->fire()\n#15 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(419): Illuminate\\Support\\Facades\\Facade::__callStatic()\n#16 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(419): Illuminate\\Support\\Facades\\Event::fire()\n#17 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(145): Backend\\Widgets\\Form->defineFormFields()\n#18 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(141): Backend\\Widgets\\Form->bindToController()\n#19 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(238): Backend\\Behaviors\\FormController->initForm()\n#20 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(296): Backend\\Behaviors\\FormController->update()\n#21 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(296): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php:296}()\n#22 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\Extendable.php(44): October\\Rain\\Extension\\Extendable->extendableCall()\n#23 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(323): October\\Rain\\Extension\\Extendable->__call()\n#24 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(323): RainLab\\User\\Controllers\\Users->update()\n#25 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(323): call_user_func_array:{C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php:323}()\n#26 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(240): Backend\\Classes\\Controller->execPageAction()\n#27 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(95): Backend\\Classes\\Controller->run()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Backend\\Classes\\BackendController->run()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#34 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#61 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#62 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#63 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#64 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#65 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#66 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#67 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#68 C:\\lamp\\www\\october\\index.php(0): {main}()\n#69 {main}', NULL, '2015-06-02 15:01:38', '2015-06-02 15:01:38');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(13, 'error', 'exception ''October\\Rain\\Exception\\SystemException'' with message ''The partial ''C:\\lamp\\www\\october\\modules\\backend\\widgets/form/partials/_field_date.htm'' is not found.'' in C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php:61\nStack trace:\n#0 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(247): Backend\\Classes\\WidgetBase->makePartial(''field_date'', Array)\n#1 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field.htm(19): Backend\\Widgets\\Form->renderFieldElement(Object(Backend\\Classes\\FormField))\n#2 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#3 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#4 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field-container.htm(8): Backend\\Classes\\WidgetBase->makePartial(''field'', Array)\n#5 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#6 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#7 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form_fields.htm(2): Backend\\Classes\\WidgetBase->makePartial(''field-container'', Array)\n#8 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#9 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#10 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form_tabs.htm(27): Backend\\Classes\\WidgetBase->makePartial(''form_fields'', Array)\n#11 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#12 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#13 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_section.htm(27): Backend\\Classes\\WidgetBase->makePartial(''form_tabs'', Array)\n#14 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#15 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#16 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_section-container.htm(13): Backend\\Classes\\WidgetBase->makePartial(''section'', Array)\n#17 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#18 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#19 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(214): Backend\\Classes\\WidgetBase->makePartial(''section-contain...'', Array)\n#20 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(338): Backend\\Widgets\\Form->render(Array)\n#21 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(475): Backend\\Behaviors\\FormController->formRender(Array)\n#22 [internal function]: Backend\\Behaviors\\FormController->formRenderPrimaryTabs()\n#23 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(296): call_user_func_array(Array, Array)\n#24 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\Extendable.php(44): October\\Rain\\Extension\\Extendable->extendableCall(''formRenderPrima...'', Array)\n#25 C:\\lamp\\www\\october\\plugins\\rainlab\\user\\controllers\\users\\update.htm(41): October\\Rain\\Extension\\Extendable->__call(''formRenderPrima...'', Array)\n#26 C:\\lamp\\www\\october\\plugins\\rainlab\\user\\controllers\\users\\update.htm(41): RainLab\\User\\Controllers\\Users->formRenderPrimaryTabs()\n#27 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#28 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(79): Backend\\Classes\\Controller->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'')\n#29 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(337): Backend\\Classes\\Controller->makeView(''update'')\n#30 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(240): Backend\\Classes\\Controller->execPageAction(''update'', Array)\n#31 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(95): Backend\\Classes\\Controller->run(''update'', Array)\n#32 [internal function]: Backend\\Classes\\BackendController->run(''rainlab/user/us...'')\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), ''run'')\n#36 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#38 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Backend\\\\Classes...'', ''run'')\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#47 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#49 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#55 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#61 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#62 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#63 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#64 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#65 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#66 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#67 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#68 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#69 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#70 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#71 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#72 {main}', NULL, '2015-06-02 15:02:08', '2015-06-02 15:02:08'),
(14, 'error', 'exception ''PDOException'' with message ''SQLSTATE[42S22]: Column not found: 1054 Unknown column ''iu_DOB'' in ''field list'''' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:382\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(382): PDO->prepare(''update `users` ...'')\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(616): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(Object(Illuminate\\Database\\MySqlConnection), ''update `users` ...'', Array)\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''update `users` ...'', Array, Object(Closure))\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(387): Illuminate\\Database\\Connection->run(''update `users` ...'', Array, Object(Closure))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(332): Illuminate\\Database\\Connection->affectingStatement(''update `users` ...'', Array)\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1740): Illuminate\\Database\\Connection->update(''update `users` ...'', Array)\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(288): Illuminate\\Database\\Query\\Builder->update(Array)\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1544): Illuminate\\Database\\Eloquent\\Builder->update(Array)\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1477): Illuminate\\Database\\Eloquent\\Model->performUpdate(Object(October\\Rain\\Database\\Builder), Array)\n#9 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Model.php(1068): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#10 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Model.php(1097): October\\Rain\\Database\\Model->saveInternal(NULL, Array)\n#11 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(261): October\\Rain\\Database\\Model->save(NULL, ''h7mi4Au3fT1SsWf...'')\n#12 [internal function]: Backend\\Behaviors\\FormController->update_onSave(''1'')\n#13 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(296): call_user_func_array(Array, Array)\n#14 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\Extendable.php(44): October\\Rain\\Extension\\Extendable->extendableCall(''update_onSave'', Array)\n#15 [internal function]: October\\Rain\\Extension\\Extendable->__call(''update_onSave'', Array)\n#16 [internal function]: RainLab\\User\\Controllers\\Users->update_onSave(''1'')\n#17 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(487): call_user_func_array(Array, Array)\n#18 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(383): Backend\\Classes\\Controller->runAjaxHandler(''onSave'')\n#19 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(222): Backend\\Classes\\Controller->execAjaxHandlers()\n#20 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(95): Backend\\Classes\\Controller->run(''update'', Array)\n#21 [internal function]: Backend\\Classes\\BackendController->run(''rainlab/user/us...'')\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), ''run'')\n#25 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Backend\\\\Classes...'', ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#36 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#38 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#44 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}\n\nNext exception ''Illuminate\\Database\\QueryException'' with message ''SQLSTATE[42S22]: Column not found: 1054 Unknown column ''iu_DOB'' in ''field list'' (SQL: update `users` set `updated_at` = 2015-06-03 01:07:49, `phone` = , `company` = , `street_addr` = , `city` = , `zip` = , `surname` = , `iu_gender` = unknown, `iu_job` = , `iu_about` = , `iu_webpage` = , `iu_blog` = , `iu_facebook` = , `iu_twitter` = , `iu_skype` = , `iu_icq` = , `iu_comment` = , `iu_DOB` = 1955-08-30 where `id` = 1)'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:624\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''update `users` ...'', Array, Object(Closure))\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(387): Illuminate\\Database\\Connection->run(''update `users` ...'', Array, Object(Closure))\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(332): Illuminate\\Database\\Connection->affectingStatement(''update `users` ...'', Array)\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php(1740): Illuminate\\Database\\Connection->update(''update `users` ...'', Array)\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(288): Illuminate\\Database\\Query\\Builder->update(Array)\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1544): Illuminate\\Database\\Eloquent\\Builder->update(Array)\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(1477): Illuminate\\Database\\Eloquent\\Model->performUpdate(Object(October\\Rain\\Database\\Builder), Array)\n#7 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Model.php(1068): Illuminate\\Database\\Eloquent\\Model->save(Array)\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Model.php(1097): October\\Rain\\Database\\Model->saveInternal(NULL, Array)\n#9 C:\\lamp\\www\\october\\modules\\backend\\behaviors\\FormController.php(261): October\\Rain\\Database\\Model->save(NULL, ''h7mi4Au3fT1SsWf...'')\n#10 [internal function]: Backend\\Behaviors\\FormController->update_onSave(''1'')\n#11 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(296): call_user_func_array(Array, Array)\n#12 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\Extendable.php(44): October\\Rain\\Extension\\Extendable->extendableCall(''update_onSave'', Array)\n#13 [internal function]: October\\Rain\\Extension\\Extendable->__call(''update_onSave'', Array)\n#14 [internal function]: RainLab\\User\\Controllers\\Users->update_onSave(''1'')\n#15 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(487): call_user_func_array(Array, Array)\n#16 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(383): Backend\\Classes\\Controller->runAjaxHandler(''onSave'')\n#17 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(222): Backend\\Classes\\Controller->execAjaxHandlers()\n#18 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(95): Backend\\Classes\\Controller->run(''update'', Array)\n#19 [internal function]: Backend\\Classes\\BackendController->run(''rainlab/user/us...'')\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), ''run'')\n#23 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#27 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Backend\\\\Classes...'', ''run'')\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#34 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#36 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#42 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#59 {main}', NULL, '2015-06-02 15:07:50', '2015-06-02 15:07:50'),
(15, 'error', 'exception ''Symfony\\Component\\Yaml\\Exception\\ParseException'' with message ''A YAML file cannot contain tabs as indentation at line 3 (near "		- Created Industry Table").'' in C:\\lamp\\www\\october\\vendor\\symfony\\yaml\\Symfony\\Component\\Yaml\\Parser.php:77\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Parse\\Yaml.php(22): Symfony\\Component\\Yaml\\Parser->parse(''1.0.1: First ve...'')\n#1 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Parse\\Yaml.php(33): October\\Rain\\Parse\\Yaml->parse(''1.0.1: First ve...'')\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(210): October\\Rain\\Parse\\Yaml->parseFile(''C:/lamp/www/oct...'')\n#3 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(234): Illuminate\\Support\\Facades\\Facade::__callStatic(''parseFile'', Array)\n#4 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(234): October\\Rain\\Support\\Facades\\Yaml::parseFile(''C:/lamp/www/oct...'')\n#5 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(201): System\\Classes\\VersionManager->getFileVersions(''ServiceMe.Indus...'')\n#6 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(81): System\\Classes\\VersionManager->getLatestFileVersion(''ServiceMe.Indus...'')\n#7 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Industries\\Plugin))\n#8 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Indus...'')\n#9 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#10 [internal function]: System\\Console\\OctoberUp->fire()\n#11 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#12 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#13 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#14 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#15 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#16 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#17 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 {main}', NULL, '2015-06-02 16:53:55', '2015-06-02 16:53:55'),
(16, 'error', 'exception ''PDOException'' with message ''SQLSTATE[42000]: Syntax error or access violation: 1072 Key column ''industry_id'' doesn''t exist in table'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:362\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(362): PDOStatement->execute(Array)\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(616): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(Object(Illuminate\\Database\\MySqlConnection), ''alter table `se...'', Array)\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''alter table `se...'', Array, Object(Closure))\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''alter table `se...'', Array, Object(Closure))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''alter table `se...'')\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#9 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#10 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.2'', ''create_companie...'')\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.2'', Array)\n#14 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#15 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#16 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#17 [internal function]: System\\Console\\OctoberUp->fire()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 {main}\n\nNext exception ''Illuminate\\Database\\QueryException'' with message ''SQLSTATE[42000]: Syntax error or access violation: 1072 Key column ''industry_id'' doesn''t exist in table (SQL: alter table `serviceme_companies_companies` add constraint serviceme_companies_companies_industry_id_foreign foreign key (`industry_id`) references `serviceme_industries_industries` (`id`))'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:624\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''alter table `se...'', Array, Object(Closure))\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''alter table `se...'', Array, Object(Closure))\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''alter table `se...'')\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#6 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#7 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#9 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#10 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.2'', ''create_companie...'')\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.2'', Array)\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#14 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#15 [internal function]: System\\Console\\OctoberUp->fire()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#17 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#18 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', NULL, '2015-06-02 16:56:59', '2015-06-02 16:56:59');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(17, 'error', 'exception ''PDOException'' with message ''SQLSTATE[42S01]: Base table or view already exists: 1050 Table ''serviceme_companies_companies'' already exists'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:362\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(362): PDOStatement->execute(Array)\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(616): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(Object(Illuminate\\Database\\MySqlConnection), ''create table `s...'', Array)\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''create table `s...'', Array, Object(Closure))\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''create table `s...'', Array, Object(Closure))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''create table `s...'')\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#9 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#10 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.2'', ''create_companie...'')\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.2'', Array)\n#14 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#15 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#16 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#17 [internal function]: System\\Console\\OctoberUp->fire()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 {main}\n\nNext exception ''Illuminate\\Database\\QueryException'' with message ''SQLSTATE[42S01]: Base table or view already exists: 1050 Table ''serviceme_companies_companies'' already exists (SQL: create table `serviceme_companies_companies` (`id` int unsigned not null auto_increment primary key, `name` varchar(255) not null, `trading_name` varchar(255) not null, `address` varchar(255) not null, `department` varchar(255) not null, `url` varchar(255) not null, `city` varchar(255) not null, `postcode` varchar(255) not null, `state` varchar(255) not null, `country` varchar(255) not null, `logo` varchar(255) not null, `telephone` varchar(255) not null, `email` varchar(255) not null, `main_contact` varchar(255) not null, `created_at` timestamp default 0 not null, `updated_at` timestamp default 0 not null) default character set utf8 collate utf8_unicode_ci engine = InnoDB)'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:624\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''create table `s...'', Array, Object(Closure))\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''create table `s...'', Array, Object(Closure))\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''create table `s...'')\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#6 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#7 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(30): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#9 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#10 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.2'', ''create_companie...'')\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.2'', Array)\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#14 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#15 [internal function]: System\\Console\\OctoberUp->fire()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#17 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#18 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', NULL, '2015-06-02 16:57:32', '2015-06-02 16:57:32'),
(18, 'error', 'exception ''PDOException'' with message ''SQLSTATE[HY000]: General error: 1005 Can''t create table `october`.`#sql-20a8_23d` (errno: 150 "Foreign key constraint is incorrectly formed")'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:362\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(362): PDOStatement->execute(Array)\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(616): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(Object(Illuminate\\Database\\MySqlConnection), ''alter table `se...'', Array)\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''alter table `se...'', Array, Object(Closure))\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''alter table `se...'', Array, Object(Closure))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''alter table `se...'')\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#9 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#10 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.3'', ''create_companie...'')\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.3'', Array)\n#14 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#15 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#16 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#17 [internal function]: System\\Console\\OctoberUp->fire()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 {main}\n\nNext exception ''Illuminate\\Database\\QueryException'' with message ''SQLSTATE[HY000]: General error: 1005 Can''t create table `october`.`#sql-20a8_23d` (errno: 150 "Foreign key constraint is incorrectly formed") (SQL: alter table `serviceme_companies_companies` add constraint serviceme_companies_companies_industry_id_foreign foreign key (`industry_id`) references `serviceme_industries_industries` (`id`))'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:624\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''alter table `se...'', Array, Object(Closure))\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''alter table `se...'', Array, Object(Closure))\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''alter table `se...'')\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#6 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#7 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#9 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#10 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.3'', ''create_companie...'')\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.3'', Array)\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#14 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#15 [internal function]: System\\Console\\OctoberUp->fire()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#17 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#18 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', NULL, '2015-06-02 17:00:23', '2015-06-02 17:00:23'),
(19, 'error', 'exception ''PDOException'' with message ''SQLSTATE[42000]: Syntax error or access violation: 1075 Incorrect table definition; there can be only one auto column and it must be defined as a key'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:362\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(362): PDOStatement->execute(Array)\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(616): Illuminate\\Database\\Connection->Illuminate\\Database\\{closure}(Object(Illuminate\\Database\\MySqlConnection), ''create table `s...'', Array)\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''create table `s...'', Array, Object(Closure))\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''create table `s...'', Array, Object(Closure))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''create table `s...'')\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#7 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#9 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#10 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.3'', ''create_companie...'')\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.3'', Array)\n#14 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#15 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#16 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#17 [internal function]: System\\Console\\OctoberUp->fire()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#26 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#27 {main}\n\nNext exception ''Illuminate\\Database\\QueryException'' with message ''SQLSTATE[42000]: Syntax error or access violation: 1075 Incorrect table definition; there can be only one auto column and it must be defined as a key (SQL: create table `serviceme_companies_companies` (`id` int unsigned not null auto_increment primary key, `name` varchar(255) not null, `trading_name` varchar(255) not null, `address` varchar(255) not null, `department` varchar(255) not null, `url` varchar(255) not null, `city` varchar(255) not null, `postcode` varchar(255) not null, `state` varchar(255) not null, `country` varchar(255) not null, `logo` varchar(255) not null, `telephone` varchar(255) not null, `email` varchar(255) not null, `main_contact` varchar(255) not null, `industry_id` int unsigned not null auto_increment primary key, `created_at` timestamp default 0 not null, `updated_at` timestamp default 0 not null) default character set utf8 collate utf8_unicode_ci engine = InnoDB)'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php:624\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(580): Illuminate\\Database\\Connection->runQueryCallback(''create table `s...'', Array, Object(Closure))\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Connection.php(363): Illuminate\\Database\\Connection->run(''create table `s...'', Array, Object(Closure))\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Blueprint.php(63): Illuminate\\Database\\Connection->statement(''create table `s...'')\n#3 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(188): Illuminate\\Database\\Schema\\Blueprint->build(Object(Illuminate\\Database\\MySqlConnection), Object(Illuminate\\Database\\Schema\\Grammars\\MySqlGrammar))\n#4 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Schema\\Builder.php(131): Illuminate\\Database\\Schema\\Builder->build(Object(Illuminate\\Database\\Schema\\Blueprint))\n#5 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Support\\Facades\\Facade.php(213): Illuminate\\Database\\Schema\\Builder->create(''serviceme_compa...'', Object(Closure))\n#6 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Facade::__callStatic(''create'', Array)\n#7 C:\\lamp\\www\\october\\plugins\\serviceme\\companies\\updates\\create_companies_table.php(31): Illuminate\\Support\\Facades\\Schema::create(''serviceme_compa...'', Object(Closure))\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Updater.php(31): ServiceMe\\Companies\\Updates\\CreateCompaniesTable->up()\n#9 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(354): October\\Rain\\Database\\Updater->setUp(''C:/lamp/www/oct...'')\n#10 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(120): System\\Classes\\VersionManager->applyDatabaseScript(''ServiceMe.Compa...'', ''1.0.3'', ''create_companie...'')\n#11 C:\\lamp\\www\\october\\modules\\system\\classes\\VersionManager.php(92): System\\Classes\\VersionManager->applyPluginUpdate(''ServiceMe.Compa...'', ''1.0.3'', Array)\n#12 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(442): System\\Classes\\VersionManager->updatePlugin(Object(ServiceMe\\Companies\\Plugin))\n#13 C:\\lamp\\www\\october\\modules\\system\\classes\\UpdateManager.php(140): System\\Classes\\UpdateManager->updatePlugin(''ServiceMe.Compa...'')\n#14 C:\\lamp\\www\\october\\modules\\system\\console\\OctoberUp.php(34): System\\Classes\\UpdateManager->update()\n#15 [internal function]: System\\Console\\OctoberUp->fire()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Container\\Container.php(523): call_user_func_array(Array, Array)\n#17 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(115): Illuminate\\Container\\Container->call(Array)\n#18 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Command\\Command.php(253): Illuminate\\Console\\Command->execute(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#19 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\illuminate\\console\\Command.php(101): Symfony\\Component\\Console\\Command\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#20 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(874): Illuminate\\Console\\Command->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#21 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(195): Symfony\\Component\\Console\\Application->doRunCommand(Object(System\\Console\\OctoberUp), Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#22 C:\\lamp\\www\\october\\plugins\\flynsarmy\\idehelper\\vendor\\symfony\\console\\Symfony\\Component\\Console\\Application.php(126): Symfony\\Component\\Console\\Application->doRun(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Console\\Kernel.php(94): Symfony\\Component\\Console\\Application->run(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#24 C:\\lamp\\www\\october\\artisan(36): Illuminate\\Foundation\\Console\\Kernel->handle(Object(Symfony\\Component\\Console\\Input\\ArgvInput), Object(Symfony\\Component\\Console\\Output\\ConsoleOutput))\n#25 {main}', NULL, '2015-06-02 17:01:40', '2015-06-02 17:01:40'),
(20, 'error', 'exception ''Twig_Error_Syntax'' with message ''Unknown tag name "compnonent". Did you mean "component" in "C:\\lamp\\www\\october/themes/serviceme/pages/opp.htm" at line 1'' in C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php:182\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(95): Twig_Parser->subparse(NULL, false)\n#1 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(543): Twig_Parser->parse(Object(Twig_TokenStream))\n#2 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(595): Twig_Environment->parse(Object(Twig_TokenStream))\n#3 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(335): Twig_Environment->compileSource(''{% compnonent ''...'', ''C:\\\\lamp\\\\www\\\\oct...'')\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(369): Twig_Environment->loadTemplate(''C:\\\\lamp\\\\www\\\\oct...'')\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''opp'')\n#7 [internal function]: Cms\\Classes\\CmsController->run(''opp'')\n#8 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#9 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#10 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#11 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#12 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#13 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#15 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#17 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#24 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#26 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#32 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#44 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#49 {main}', NULL, '2015-06-03 12:08:32', '2015-06-03 12:08:32');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(21, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''Class '' Acme\\Crm\\Models\\Opportunity'' not found'' in C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php:113\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(42): Cms\\Widgets\\ComponentList->getData()\n#4 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\_sidepanel.htm(69): Cms\\Widgets\\ComponentList->render()\n#5 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#6 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\Controller->makeFileContents()\n#7 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\index.htm(5): Backend\\Classes\\Controller->makePartial()\n#8 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#9 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(79): Backend\\Classes\\Controller->makeFileContents()\n#10 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(337): Backend\\Classes\\Controller->makeView()\n#11 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(240): Backend\\Classes\\Controller->execPageAction()\n#12 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(78): Backend\\Classes\\Controller->run()\n#13 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Backend\\Classes\\BackendController->run()\n#14 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#15 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#16 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#19 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#20 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#52 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#53 C:\\lamp\\www\\october\\index.php(0): {main}()\n#54 {main}', NULL, '2015-06-04 18:42:32', '2015-06-04 18:42:32'),
(22, 'error', 'exception ''BadMethodCallException'' with message ''Call to undefined method October\\Rain\\Database\\QueryBuilder::componentDetails()'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php:1999\nStack trace:\n#0 [internal function]: Illuminate\\Database\\Query\\Builder->__call(''componentDetail...'', Array)\n#1 [internal function]: October\\Rain\\Database\\QueryBuilder->componentDetails()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(933): call_user_func_array(Array, Array)\n#3 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Builder.php(131): Illuminate\\Database\\Eloquent\\Builder->__call(''componentDetail...'', Array)\n#4 [internal function]: October\\Rain\\Database\\Builder->__call(''componentDetail...'', Array)\n#5 [internal function]: October\\Rain\\Database\\Builder->componentDetails()\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(3362): call_user_func_array(Array, Array)\n#7 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(309): Illuminate\\Database\\Eloquent\\Model->__call(''componentDetail...'', Array)\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Model.php(394): October\\Rain\\Database\\Model->extendableCall(''componentDetail...'', Array)\n#9 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(119): October\\Rain\\Database\\Model->__call(''componentDetail...'', Array)\n#10 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(119): Acme\\Crm\\Models\\Opportunity->componentDetails()\n#11 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(42): Cms\\Widgets\\ComponentList->getData()\n#12 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\_sidepanel.htm(69): Cms\\Widgets\\ComponentList->render()\n#13 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#14 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\Controller->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#15 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\index.htm(5): Backend\\Classes\\Controller->makePartial(''sidepanel'')\n#16 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#17 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(79): Backend\\Classes\\Controller->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'')\n#18 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(337): Backend\\Classes\\Controller->makeView(''index'')\n#19 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(240): Backend\\Classes\\Controller->execPageAction(''index'', Array)\n#20 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(78): Backend\\Classes\\Controller->run(''index'', Array)\n#21 [internal function]: Backend\\Classes\\BackendController->run(''cms'')\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), ''run'')\n#25 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Backend\\\\Classes...'', ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#36 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#38 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#44 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}', NULL, '2015-06-04 18:43:02', '2015-06-04 18:43:02'),
(23, 'error', 'exception ''BadMethodCallException'' with message ''Call to undefined method October\\Rain\\Database\\QueryBuilder::componentDetails()'' in C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Query\\Builder.php:1999\nStack trace:\n#0 [internal function]: Illuminate\\Database\\Query\\Builder->__call(''componentDetail...'', Array)\n#1 [internal function]: October\\Rain\\Database\\QueryBuilder->componentDetails()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Builder.php(933): call_user_func_array(Array, Array)\n#3 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Builder.php(131): Illuminate\\Database\\Eloquent\\Builder->__call(''componentDetail...'', Array)\n#4 [internal function]: October\\Rain\\Database\\Builder->__call(''componentDetail...'', Array)\n#5 [internal function]: October\\Rain\\Database\\Builder->componentDetails()\n#6 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Database\\Eloquent\\Model.php(3362): call_user_func_array(Array, Array)\n#7 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Extension\\ExtendableTrait.php(309): Illuminate\\Database\\Eloquent\\Model->__call(''componentDetail...'', Array)\n#8 C:\\lamp\\www\\october\\vendor\\october\\rain\\src\\Database\\Model.php(394): October\\Rain\\Database\\Model->extendableCall(''componentDetail...'', Array)\n#9 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(119): October\\Rain\\Database\\Model->__call(''componentDetail...'', Array)\n#10 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(119): Acme\\Crm\\Models\\Opportunity->componentDetails()\n#11 C:\\lamp\\www\\october\\modules\\cms\\widgets\\ComponentList.php(42): Cms\\Widgets\\ComponentList->getData()\n#12 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\_sidepanel.htm(69): Cms\\Widgets\\ComponentList->render()\n#13 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#14 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\Controller->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'', Array)\n#15 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\index.htm(5): Backend\\Classes\\Controller->makePartial(''sidepanel'')\n#16 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): include(''C:\\\\lamp\\\\www\\\\oct...'')\n#17 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(79): Backend\\Classes\\Controller->makeFileContents(''C:\\\\lamp\\\\www\\\\oct...'')\n#18 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(337): Backend\\Classes\\Controller->makeView(''index'')\n#19 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(240): Backend\\Classes\\Controller->execPageAction(''index'', Array)\n#20 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(78): Backend\\Classes\\Controller->run(''index'', Array)\n#21 [internal function]: Backend\\Classes\\BackendController->run(''cms'')\n#22 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#24 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), ''run'')\n#25 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#26 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#29 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Backend\\Classes\\BackendController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#33 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Backend\\\\Classes...'', ''run'')\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#35 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#36 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#38 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#44 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#56 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#60 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#61 {main}', NULL, '2015-06-04 18:46:05', '2015-06-04 18:46:05'),
(24, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''('', expecting identifier (T_STRING)'' in C:\\lamp\\www\\october\\plugins\\acme\\crm\\components\\LeadsList.php:26\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\ComponentManager.php(206): October\\Rain\\Support\\ClassLoader::load()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\ComponentManager.php(206): spl_autoload_call()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\ComponentManager.php(206): class_exists()\n#6 C:\\lamp\\www\\october\\modules\\cms\\formwidgets\\Components.php(44): Cms\\Classes\\ComponentManager->makeComponent()\n#7 C:\\lamp\\www\\october\\modules\\cms\\formwidgets\\Components.php(24): Cms\\FormWidgets\\Components->listComponents()\n#8 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field_widget.htm(5): Cms\\FormWidgets\\Components->render()\n#9 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#10 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#11 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(247): Backend\\Classes\\WidgetBase->makePartial()\n#12 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field.htm(19): Backend\\Widgets\\Form->renderFieldElement()\n#13 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#14 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#15 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#16 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#17 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#18 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form_fields.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#19 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#20 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#21 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_section.htm(17): Backend\\Classes\\WidgetBase->makePartial()\n#22 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#23 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#24 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form.htm(3): Backend\\Classes\\WidgetBase->makePartial()\n#25 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#26 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#27 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#28 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#29 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#30 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(214): Backend\\Classes\\WidgetBase->makePartial()\n#31 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\_form_page.htm(10): Backend\\Widgets\\Form->render()\n#32 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#33 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\Controller->makeFileContents()\n#34 C:\\lamp\\www\\october\\modules\\cms\\controllers\\Index.php(136): Backend\\Classes\\Controller->makePartial()\n#35 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(487): Cms\\Controllers\\Index->index_onOpenTemplate()\n#36 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(487): call_user_func_array:{C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php:487}()\n#37 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(383): Backend\\Classes\\Controller->runAjaxHandler()\n#38 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(222): Backend\\Classes\\Controller->execAjaxHandlers()\n#39 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(78): Backend\\Classes\\Controller->run()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Backend\\Classes\\BackendController->run()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#46 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#61 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#62 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#63 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#64 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#65 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#66 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#67 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#68 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#69 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#70 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#71 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#72 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#73 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#74 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#75 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#76 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#77 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#78 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#79 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#80 C:\\lamp\\www\\october\\index.php(0): {main}()\n#81 {main}', NULL, '2015-06-04 18:56:09', '2015-06-04 18:56:09');
INSERT INTO `system_event_logs` (`id`, `level`, `message`, `details`, `created_at`, `updated_at`) VALUES
(25, 'error', 'exception ''Symfony\\Component\\Debug\\Exception\\FatalErrorException'' with message ''syntax error, unexpected ''('', expecting identifier (T_STRING)'' in C:\\lamp\\www\\october\\plugins\\acme\\crm\\components\\LeadsList.php:26\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(131): Symfony\\Component\\Debug\\Exception\\FatalErrorException->__construct()\n#1 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(116): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->fatalExceptionFromError()\n#2 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Bootstrap\\HandleExceptions.php(0): Illuminate\\Foundation\\Bootstrap\\HandleExceptions->handleShutdown()\n#3 C:\\lamp\\www\\october\\modules\\cms\\classes\\ComponentManager.php(206): October\\Rain\\Support\\ClassLoader::load()\n#4 C:\\lamp\\www\\october\\modules\\cms\\classes\\ComponentManager.php(206): spl_autoload_call()\n#5 C:\\lamp\\www\\october\\modules\\cms\\classes\\ComponentManager.php(206): class_exists()\n#6 C:\\lamp\\www\\october\\modules\\cms\\formwidgets\\Components.php(44): Cms\\Classes\\ComponentManager->makeComponent()\n#7 C:\\lamp\\www\\october\\modules\\cms\\formwidgets\\Components.php(24): Cms\\FormWidgets\\Components->listComponents()\n#8 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field_widget.htm(5): Cms\\FormWidgets\\Components->render()\n#9 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#10 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#11 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(247): Backend\\Classes\\WidgetBase->makePartial()\n#12 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field.htm(19): Backend\\Widgets\\Form->renderFieldElement()\n#13 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#14 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#15 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_field-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#16 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#17 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#18 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form_fields.htm(2): Backend\\Classes\\WidgetBase->makePartial()\n#19 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#20 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#21 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_section.htm(17): Backend\\Classes\\WidgetBase->makePartial()\n#22 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#23 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#24 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form.htm(3): Backend\\Classes\\WidgetBase->makePartial()\n#25 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#26 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#27 C:\\lamp\\www\\october\\modules\\backend\\widgets\\form\\partials\\_form-container.htm(8): Backend\\Classes\\WidgetBase->makePartial()\n#28 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#29 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\WidgetBase->makeFileContents()\n#30 C:\\lamp\\www\\october\\modules\\backend\\widgets\\Form.php(214): Backend\\Classes\\WidgetBase->makePartial()\n#31 C:\\lamp\\www\\october\\modules\\cms\\controllers\\index\\_form_page.htm(10): Backend\\Widgets\\Form->render()\n#32 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(206): ()\n#33 C:\\lamp\\www\\october\\modules\\system\\traits\\ViewMaker.php(68): Backend\\Classes\\Controller->makeFileContents()\n#34 C:\\lamp\\www\\october\\modules\\cms\\controllers\\Index.php(136): Backend\\Classes\\Controller->makePartial()\n#35 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(487): Cms\\Controllers\\Index->index_onOpenTemplate()\n#36 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(487): call_user_func_array:{C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php:487}()\n#37 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(383): Backend\\Classes\\Controller->runAjaxHandler()\n#38 C:\\lamp\\www\\october\\modules\\backend\\classes\\Controller.php(222): Backend\\Classes\\Controller->execAjaxHandlers()\n#39 C:\\lamp\\www\\october\\modules\\backend\\classes\\BackendController.php(78): Backend\\Classes\\Controller->run()\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): Backend\\Classes\\BackendController->run()\n#41 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php:246}()\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction()\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call()\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}()\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#46 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle()\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then()\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack()\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch()\n#53 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher()\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run()\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}()\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#57 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#58 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#59 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then()\n#60 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack()\n#61 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute()\n#62 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch()\n#63 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}()\n#64 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:141}()\n#65 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#66 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle()\n#67 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#68 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle()\n#69 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#70 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle()\n#71 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#72 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle()\n#73 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#74 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle()\n#75 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}()\n#76 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func:{C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php:101}()\n#77 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then()\n#78 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter()\n#79 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle()\n#80 C:\\lamp\\www\\october\\index.php(0): {main}()\n#81 {main}', NULL, '2015-06-04 18:56:24', '2015-06-04 18:56:24'),
(26, 'error', 'exception ''Twig_Error_Syntax'' with message ''Unexpected end of template in "C:\\lamp\\www\\october/plugins/acme/crm/components/leadslist/default.htm" at line 13'' in C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\TokenStream.php:60\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\TokenParser\\For.php(48): Twig_TokenStream->next()\n#1 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(187): Twig_TokenParser_For->parse(Object(Twig_Token))\n#2 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(95): Twig_Parser->subparse(NULL, false)\n#3 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(543): Twig_Parser->parse(Object(Twig_TokenStream))\n#4 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(595): Twig_Environment->parse(Object(Twig_TokenStream))\n#5 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(335): Twig_Environment->compileSource(''<p>This is the ...'', ''C:\\\\lamp\\\\www\\\\oct...'')\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(879): Twig_Environment->loadTemplate(''C:\\\\lamp\\\\www\\\\oct...'')\n#7 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(957): Cms\\Classes\\Controller->renderPartial(''LeadsList::defa...'', Array, false)\n#8 C:\\lamp\\www\\october\\modules\\cms\\twig\\Extension.php(138): Cms\\Classes\\Controller->renderComponent(''LeadsList'', Array)\n#9 C:\\lamp\\www\\october\\storage\\cms\\twig\\b7\\2d\\1d468935134cd16313478bdec500ea519907116628f81fb9d497e96ad425.php(20): Cms\\Twig\\Extension->componentFunction(''LeadsList'', Array)\n#10 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(313): __TwigTemplate_b72d1d468935134cd16313478bdec500ea519907116628f81fb9d497e96ad425->doDisplay(Array, Array)\n#11 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(287): Twig_Template->displayWithErrorHandling(Array, Array)\n#12 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(298): Twig_Template->display(Array)\n#13 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(370): Twig_Template->render(Array)\n#14 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''opp'')\n#16 [internal function]: Cms\\Classes\\CmsController->run(''opp'')\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#20 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#22 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#33 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#35 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#41 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#58 {main}', NULL, '2015-06-04 19:25:45', '2015-06-04 19:25:45'),
(27, 'error', 'exception ''Twig_Error_Syntax'' with message ''Unexpected end of template in "C:\\lamp\\www\\october/plugins/acme/crm/components/leadslist/default.htm" at line 13'' in C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\TokenStream.php:60\nStack trace:\n#0 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\TokenParser\\For.php(48): Twig_TokenStream->next()\n#1 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(187): Twig_TokenParser_For->parse(Object(Twig_Token))\n#2 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Parser.php(95): Twig_Parser->subparse(NULL, false)\n#3 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(543): Twig_Parser->parse(Object(Twig_TokenStream))\n#4 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(595): Twig_Environment->parse(Object(Twig_TokenStream))\n#5 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Environment.php(335): Twig_Environment->compileSource(''<p>This is the ...'', ''C:\\\\lamp\\\\www\\\\oct...'')\n#6 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(879): Twig_Environment->loadTemplate(''C:\\\\lamp\\\\www\\\\oct...'')\n#7 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(957): Cms\\Classes\\Controller->renderPartial(''LeadsList::defa...'', Array, false)\n#8 C:\\lamp\\www\\october\\modules\\cms\\twig\\Extension.php(138): Cms\\Classes\\Controller->renderComponent(''LeadsList'', Array)\n#9 C:\\lamp\\www\\october\\storage\\cms\\twig\\b7\\2d\\1d468935134cd16313478bdec500ea519907116628f81fb9d497e96ad425.php(20): Cms\\Twig\\Extension->componentFunction(''LeadsList'', Array)\n#10 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(313): __TwigTemplate_b72d1d468935134cd16313478bdec500ea519907116628f81fb9d497e96ad425->doDisplay(Array, Array)\n#11 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(287): Twig_Template->displayWithErrorHandling(Array, Array)\n#12 C:\\lamp\\www\\october\\vendor\\twig\\twig\\lib\\Twig\\Template.php(298): Twig_Template->display(Array)\n#13 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(370): Twig_Template->render(Array)\n#14 C:\\lamp\\www\\october\\modules\\cms\\classes\\Controller.php(208): Cms\\Classes\\Controller->runPage(Object(Cms\\Classes\\Page))\n#15 C:\\lamp\\www\\october\\modules\\cms\\classes\\CmsController.php(47): Cms\\Classes\\Controller->run(''opp'')\n#16 [internal function]: Cms\\Classes\\CmsController->run(''opp'')\n#17 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Controller.php(246): call_user_func_array(Array, Array)\n#18 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(162): Illuminate\\Routing\\Controller->callAction(''run'', Array)\n#19 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(107): Illuminate\\Routing\\ControllerDispatcher->call(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), ''run'')\n#20 [internal function]: Illuminate\\Routing\\ControllerDispatcher->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#21 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#22 C:\\lamp\\www\\october\\plugins\\qub\\clockwork\\vendor\\itsgoingd\\clockwork\\Clockwork\\Support\\Laravel\\ClockworkMiddleware.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#23 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Clockwork\\Support\\Laravel\\ClockworkMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#24 C:\\lamp\\www\\october\\plugins\\alxy\\captcha\\middleware\\CaptchaMiddleware.php(51): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#25 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Alxy\\Captcha\\Middleware\\CaptchaMiddleware->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#26 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#27 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#28 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(108): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#29 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\ControllerDispatcher.php(67): Illuminate\\Routing\\ControllerDispatcher->callWithinStack(Object(Cms\\Classes\\CmsController), Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''run'')\n#30 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(204): Illuminate\\Routing\\ControllerDispatcher->dispatch(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request), ''Cms\\\\Classes\\\\Cms...'', ''run'')\n#31 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Route.php(134): Illuminate\\Routing\\Route->runWithCustomDispatcher(Object(Illuminate\\Http\\Request))\n#32 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(701): Illuminate\\Routing\\Route->run(Object(Illuminate\\Http\\Request))\n#33 [internal function]: Illuminate\\Routing\\Router->Illuminate\\Routing\\{closure}(Object(Illuminate\\Http\\Request))\n#34 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#35 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#36 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#37 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(703): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#38 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(670): Illuminate\\Routing\\Router->runRouteWithinStack(Object(Illuminate\\Routing\\Route), Object(Illuminate\\Http\\Request))\n#39 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Routing\\Router.php(628): Illuminate\\Routing\\Router->dispatchToRoute(Object(Illuminate\\Http\\Request))\n#40 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(214): Illuminate\\Routing\\Router->dispatch(Object(Illuminate\\Http\\Request))\n#41 [internal function]: Illuminate\\Foundation\\Http\\Kernel->Illuminate\\Foundation\\Http\\{closure}(Object(Illuminate\\Http\\Request))\n#42 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(141): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#43 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\View\\Middleware\\ShareErrorsFromSession.php(55): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#44 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\View\\Middleware\\ShareErrorsFromSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#45 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Session\\Middleware\\StartSession.php(61): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#46 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Session\\Middleware\\StartSession->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#47 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse.php(36): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#48 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\AddQueuedCookiesToResponse->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#49 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Cookie\\Middleware\\EncryptCookies.php(40): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#50 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Cookie\\Middleware\\EncryptCookies->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#51 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode.php(42): Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#52 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(125): Illuminate\\Foundation\\Http\\Middleware\\CheckForMaintenanceMode->handle(Object(Illuminate\\Http\\Request), Object(Closure))\n#53 [internal function]: Illuminate\\Pipeline\\Pipeline->Illuminate\\Pipeline\\{closure}(Object(Illuminate\\Http\\Request))\n#54 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Pipeline\\Pipeline.php(101): call_user_func(Object(Closure), Object(Illuminate\\Http\\Request))\n#55 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(115): Illuminate\\Pipeline\\Pipeline->then(Object(Closure))\n#56 C:\\lamp\\www\\october\\vendor\\laravel\\framework\\src\\Illuminate\\Foundation\\Http\\Kernel.php(84): Illuminate\\Foundation\\Http\\Kernel->sendRequestThroughRouter(Object(Illuminate\\Http\\Request))\n#57 C:\\lamp\\www\\october\\index.php(44): Illuminate\\Foundation\\Http\\Kernel->handle(Object(Illuminate\\Http\\Request))\n#58 {main}', NULL, '2015-06-04 19:26:21', '2015-06-04 19:26:21');

-- --------------------------------------------------------

--
-- Table structure for table `system_files`
--

CREATE TABLE IF NOT EXISTS `system_files` (
  `id` int(10) unsigned NOT NULL,
  `disk_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `file_size` int(11) NOT NULL,
  `content_type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `field` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attachment_type` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `is_public` tinyint(1) NOT NULL DEFAULT '1',
  `sort_order` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_files`
--

INSERT INTO `system_files` (`id`, `disk_name`, `file_name`, `file_size`, `content_type`, `title`, `description`, `field`, `attachment_id`, `attachment_type`, `is_public`, `sort_order`, `created_at`, `updated_at`) VALUES
(1, '55428b6d4425d031778535.jpg', 'invoice.jpg', 47454, 'image/jpeg', NULL, NULL, 'background_img', '1', 'Renatio\\DynamicPDF\\Models\\PDFLayout', 1, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_layouts`
--

CREATE TABLE IF NOT EXISTS `system_mail_layouts` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `content_css` text COLLATE utf8_unicode_ci,
  `is_locked` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_mail_layouts`
--

INSERT INTO `system_mail_layouts` (`id`, `name`, `code`, `content_html`, `content_text`, `content_css`, `is_locked`, `created_at`, `updated_at`) VALUES
(1, 'Default', 'default', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n    </body>\n</html>', '{{ content|raw }}', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2015-05-30 18:57:49', '2015-05-30 18:57:49'),
(2, 'System', 'system', '<html>\n    <head>\n        <style type="text/css" media="screen">\n            {{ css|raw }}\n        </style>\n    </head>\n    <body>\n        {{ content|raw }}\n        <hr />\n        <p>This is an automatic message. Please do not reply to it.</p>\n    </body>\n</html>', '{{ content|raw }}\n\n\n---\nThis is an automatic message. Please do not reply to it.', 'a, a:hover {\n    text-decoration: none;\n    color: #0862A2;\n    font-weight: bold;\n}\n\ntd, tr, th, table {\n    padding: 0px;\n    margin: 0px;\n}\n\np {\n    margin: 10px 0;\n}', 1, '2015-05-30 18:57:49', '2015-05-30 18:57:49');

-- --------------------------------------------------------

--
-- Table structure for table `system_mail_templates`
--

CREATE TABLE IF NOT EXISTS `system_mail_templates` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `content_html` text COLLATE utf8_unicode_ci,
  `content_text` text COLLATE utf8_unicode_ci,
  `layout_id` int(11) DEFAULT NULL,
  `is_custom` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_parameters`
--

CREATE TABLE IF NOT EXISTS `system_parameters` (
  `id` int(10) unsigned NOT NULL,
  `namespace` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `group` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `item` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `value` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_parameters`
--

INSERT INTO `system_parameters` (`id`, `namespace`, `group`, `item`, `value`) VALUES
(1, 'system', 'update', 'count', '0'),
(2, 'system', 'core', 'hash', '"ea16f5eb43b1b45ae07429cd2ae27ed2"'),
(3, 'system', 'core', 'build', '"261"'),
(4, 'system', 'update', 'retry', '1433565743'),
(5, 'system', 'theme', 'history', '{"RainLab.Vanilla":"rainlab-vanilla"}');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_history`
--

CREATE TABLE IF NOT EXISTS `system_plugin_history` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `type` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=339 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_plugin_history`
--

INSERT INTO `system_plugin_history` (`id`, `code`, `type`, `version`, `detail`, `created_at`) VALUES
(1, 'RainLab.Pages', 'comment', '1.0.1', 'Implemented the static pages management and the Static Page component.', '2015-05-30 18:59:39'),
(2, 'RainLab.Pages', 'comment', '1.0.2', 'Fixed the page preview URL.', '2015-05-30 18:59:39'),
(3, 'RainLab.Pages', 'comment', '1.0.3', 'Implemented menus.', '2015-05-30 18:59:39'),
(4, 'RainLab.Pages', 'comment', '1.0.4', 'Implemented the content block management and placeholder support.', '2015-05-30 18:59:39'),
(5, 'RainLab.Pages', 'comment', '1.0.5', 'Added support for the Sitemap plugin.', '2015-05-30 18:59:40'),
(6, 'RainLab.Pages', 'comment', '1.0.6', 'Minor updates to the internal API.', '2015-05-30 18:59:40'),
(7, 'RainLab.Pages', 'comment', '1.0.7', 'Added the Snippets feature.', '2015-05-30 18:59:40'),
(8, 'RainLab.Pages', 'comment', '1.0.8', 'Minor improvements to the code.', '2015-05-30 18:59:40'),
(9, 'RainLab.Pages', 'comment', '1.0.9', 'Fixes issue where Snippet tab is missing from the Partials form.', '2015-05-30 18:59:40'),
(10, 'RainLab.Pages', 'comment', '1.0.10', 'Add translations for various locales.', '2015-05-30 18:59:40'),
(11, 'RainLab.Pages', 'comment', '1.0.11', 'Fixes issue where placeholders tabs were missing from Page form.', '2015-05-30 18:59:40'),
(12, 'RainLab.Pages', 'comment', '1.0.12', 'Implement Media Manager support.', '2015-05-30 18:59:40'),
(13, 'RainLab.User', 'script', '1.0.1', 'create_users_table.php', '2015-05-30 18:59:52'),
(14, 'RainLab.User', 'script', '1.0.1', 'create_throttle_table.php', '2015-05-30 18:59:52'),
(15, 'RainLab.User', 'script', '1.0.1', 'create_states_table.php', '2015-05-30 18:59:53'),
(16, 'RainLab.User', 'script', '1.0.1', 'create_countries_table.php', '2015-05-30 18:59:54'),
(17, 'RainLab.User', 'comment', '1.0.1', 'Initialize plugin.', '2015-05-30 18:59:54'),
(18, 'RainLab.User', 'script', '1.0.2', 'seed_all_tables.php', '2015-05-30 19:00:07'),
(19, 'RainLab.User', 'comment', '1.0.2', 'Add seed data for countries and states.', '2015-05-30 19:00:07'),
(20, 'RainLab.User', 'comment', '1.0.3', 'Translated hard-coded text to language strings.', '2015-05-30 19:00:07'),
(21, 'RainLab.User', 'comment', '1.0.4', 'Improvements to user-interface for Location manager.', '2015-05-30 19:00:07'),
(22, 'RainLab.User', 'script', '1.0.5', 'users_add_contact_details.php', '2015-05-30 19:00:08'),
(23, 'RainLab.User', 'comment', '1.0.5', 'Added contact details for users.', '2015-05-30 19:00:08'),
(24, 'RainLab.User', 'script', '1.0.6', 'create_mail_blockers_table.php', '2015-05-30 19:00:09'),
(25, 'RainLab.User', 'comment', '1.0.6', 'Added Mail Blocker utility so users can block specific mail templates.', '2015-05-30 19:00:09'),
(26, 'RainLab.User', 'comment', '1.0.7', 'Adds default country and state fields to Settings page.', '2015-05-30 19:00:09'),
(27, 'RainLab.User', 'comment', '1.0.8', 'Updated the Settings page.', '2015-05-30 19:00:09'),
(28, 'RainLab.User', 'comment', '1.0.9', 'Adds new welcome mail message for users and administrators.', '2015-05-30 19:00:09'),
(29, 'RainLab.User', 'comment', '1.0.10', 'Adds administrator-only activation mode.', '2015-05-30 19:00:09'),
(30, 'RainLab.User', 'script', '1.0.11', 'users_add_login_column.php', '2015-05-30 19:00:10'),
(31, 'RainLab.User', 'comment', '1.0.11', 'Users now have an optional login field that defaults to the email field.', '2015-05-30 19:00:10'),
(32, 'RainLab.User', 'script', '1.0.12', 'users_rename_login_to_username.php', '2015-05-30 19:00:11'),
(33, 'RainLab.User', 'comment', '1.0.12', 'Create a dedicated setting for choosing the login mode.', '2015-05-30 19:00:11'),
(34, 'RainLab.User', 'comment', '1.0.13', 'Minor fix to the Account sign in logic.', '2015-05-30 19:00:11'),
(35, 'RainLab.User', 'comment', '1.0.14', 'Minor improvements to the code.', '2015-05-30 19:00:11'),
(36, 'RainLab.User', 'script', '1.0.15', 'users_add_surname.php', '2015-05-30 19:00:12'),
(37, 'RainLab.User', 'comment', '1.0.15', 'Adds last name column to users table (surname).', '2015-05-30 19:00:12'),
(38, 'RainLab.User', 'comment', '1.0.16', 'Require permissions for settings page too.', '2015-05-30 19:00:12'),
(39, 'Indikator.Backend', 'comment', '1.0.0', 'First version of Backend Plus.', '2015-05-30 19:01:17'),
(40, 'Indikator.Backend', 'comment', '1.0.1', 'Fixed the update count issue.', '2015-05-30 19:01:17'),
(41, 'Indikator.Backend', 'comment', '1.0.2', 'Added Last logins widget.', '2015-05-30 19:01:17'),
(42, 'Indikator.Backend', 'comment', '1.0.3', 'Added RSS viewer widget.', '2015-05-30 19:01:17'),
(43, 'Indikator.Backend', 'comment', '1.0.4', 'Minor improvements and bugfix.', '2015-05-30 19:01:17'),
(44, 'Indikator.Backend', 'comment', '1.0.5', 'Added Random images widget.', '2015-05-30 19:01:17'),
(45, 'Indikator.Backend', 'comment', '1.0.6', 'Added virtual keyboard option.', '2015-05-30 19:01:17'),
(46, 'Indikator.Backend', 'script', '1.1.0', 'Improving the Random images widget with slideshow.', '2015-05-30 19:01:17'),
(47, 'Indikator.Backend', 'script', '1.1.0', 'Added Turkish translation (thanks to mahony0).', '2015-05-30 19:01:18'),
(48, 'Indikator.Backend', 'script', '1.1.0', 'Fixed the URL path issue by virtual keyboard.', '2015-05-30 19:01:18'),
(49, 'Indikator.Backend', 'comment', '1.1.0', 'Added Lorem ipsum components (image and text).', '2015-05-30 19:01:18'),
(50, 'Indikator.Backend', 'comment', '1.1.1', 'Hide the "Find more themes" link.', '2015-05-30 19:01:18'),
(51, 'Indikator.Backend', 'comment', '1.1.2', 'Added German translation.', '2015-05-30 19:01:18'),
(52, 'Indikator.Backend', 'comment', '1.1.3', 'The widgets work on localhost too.', '2015-05-30 19:01:18'),
(53, 'Indikator.Backend', 'comment', '1.1.4', 'Added Spanish translation (thanks to jh2odo).', '2015-05-30 19:01:18'),
(54, 'Indikator.Backend', 'comment', '1.2.0', 'All features are working on the whole backend.', '2015-05-30 19:01:18'),
(55, 'Indikator.Backend', 'comment', '1.2.1', 'Rounded profile image is optional in top menu.', '2015-05-30 19:01:18'),
(56, 'Indikator.Backend', 'comment', '1.2.2', 'Fixed the authenticated user bug.', '2015-05-30 19:01:18'),
(57, 'Indikator.Backend', 'comment', '1.2.3', 'Hide the Media menu optional in top menu.', '2015-05-30 19:01:18'),
(58, 'Indikator.Backend', 'comment', '1.2.4', 'Minor improvements and bugfix.', '2015-05-30 19:01:18'),
(59, 'Indikator.Backend', 'comment', '1.2.5', 'Renamed the name of backend widgets.', '2015-05-30 19:01:18'),
(60, 'BenFreke.MenuManager', 'script', '1.0.1', 'create_menus_table.php', '2015-05-30 19:01:47'),
(61, 'BenFreke.MenuManager', 'comment', '1.0.1', 'First version of MenuManager', '2015-05-30 19:01:48'),
(62, 'BenFreke.MenuManager', 'comment', '1.0.2', 'Added active state to menu; Added ability to select active menu item; Added controllable depth to component', '2015-05-30 19:01:48'),
(63, 'BenFreke.MenuManager', 'comment', '1.0.3', 'Made it possible for menu items to not link anywhere; Put a check in so the active node must be a child of the parentNode', '2015-05-30 19:01:48'),
(64, 'BenFreke.MenuManager', 'comment', '1.0.4', 'Fixed bug where re-ordering stopped working', '2015-05-30 19:01:48'),
(65, 'BenFreke.MenuManager', 'comment', '1.0.5', 'Moved link creation code into the model in preparation for external links; Brought list item class creation into the model; Fixed typo with default menu class', '2015-05-30 19:01:48'),
(66, 'BenFreke.MenuManager', 'comment', '1.0.6', 'Removed NestedSetModel, thanks @daftspunk', '2015-05-30 19:01:48'),
(67, 'BenFreke.MenuManager', 'script', '1.1.0', 'add_is_external_field.php', '2015-05-30 19:01:49'),
(68, 'BenFreke.MenuManager', 'script', '1.1.0', 'add_link_target_field.php', '2015-05-30 19:01:49'),
(69, 'BenFreke.MenuManager', 'comment', '1.1.0', 'Added ability to link to external sites. Thanks @adisos', '2015-05-30 19:01:49'),
(70, 'BenFreke.MenuManager', 'script', '1.1.1', 'add_enabled_parameters_query_fields.php', '2015-05-30 19:01:50'),
(71, 'BenFreke.MenuManager', 'comment', '1.1.1', 'Added ability to enable/disable individual menu links; Added ability for url parameters & query string; Fixed issue of "getLinkHref()" pulling through full page url with parameters rather than the ACTUAL page url', '2015-05-30 19:01:50'),
(72, 'BenFreke.MenuManager', 'comment', '1.1.2', 'Reformatted code for better maintainability and better practises', '2015-05-30 19:01:50'),
(73, 'BenFreke.MenuManager', 'comment', '1.1.3', 'Fixed bug that prevented multiple components displaying', '2015-05-30 19:01:50'),
(74, 'BenFreke.MenuManager', 'comment', '1.2.0', 'Fixed validation and fields bug; Added list classes', '2015-05-30 19:01:50'),
(75, 'BenFreke.MenuManager', 'comment', '1.3.0', 'Added translation ability thanks to @alxy', '2015-05-30 19:01:50'),
(76, 'BenFreke.MenuManager', 'comment', '1.3.1', 'JSON validation of parameters added; Correct active menu now being set based on parameters; PR sent by @whsol, thanks!', '2015-05-30 19:01:50'),
(77, 'BenFreke.MenuManager', 'comment', '1.3.2', 'Fix for param check that is breaking active node lookup. Thanks @alxy', '2015-05-30 19:01:50'),
(78, 'BenFreke.MenuManager', 'comment', '1.3.3', 'Fix for JSON comment having single quotes. Thanks @adisos', '2015-05-30 19:01:51'),
(79, 'BenFreke.MenuManager', 'comment', '1.3.4', 'Fix for JSON validation not firing', '2015-05-30 19:01:51'),
(80, 'BenFreke.MenuManager', 'script', '1.4.0', 'fix_menu_table.php', '2015-05-30 19:01:53'),
(81, 'BenFreke.MenuManager', 'comment', '1.4.0', 'Fix for POST operations. PR by @matissjanis, TR translations (@mahony0) and permission registration (@nnmer)', '2015-05-30 19:01:53'),
(82, 'BenFreke.MenuManager', 'comment', '1.4.1', 'Fixed bug caused by deleting needed method of Menu class. Thanks @MatissJA', '2015-05-30 19:01:53'),
(83, 'BenFreke.MenuManager', 'comment', '1.4.2', 'Fixed bug with URLs not saving correctly', '2015-05-30 19:01:53'),
(84, 'RainLab.Editable', 'comment', '1.0.1', 'First version of Editable', '2015-05-30 19:02:11'),
(85, 'RainLab.Editable', 'comment', '1.0.2', 'Minor security update', '2015-05-30 19:02:11'),
(86, 'RainLab.Editable', 'comment', '1.0.3', 'Content save error fix', '2015-05-30 19:02:11'),
(87, 'RainLab.Editable', 'comment', '1.0.4', 'Fixed references to Redactor''s "get" and "destroy" methods', '2015-05-30 19:02:11'),
(88, 'RainLab.Editable', 'comment', '1.0.5', 'Fixed button css issue', '2015-05-30 19:02:11'),
(89, 'ShahiemSeymor.Roles', 'script', '1.0.1', 'create_table.php', '2015-05-30 19:02:36'),
(90, 'ShahiemSeymor.Roles', 'comment', '1.0.1', 'First version', '2015-05-30 19:02:36'),
(91, 'ShahiemSeymor.Roles', 'comment', '1.0.2', 'Renamed New Role to New Group', '2015-05-30 19:02:36'),
(92, 'ShahiemSeymor.Roles', 'comment', '1.0.3', 'Bug fixes (Auth check) Added Delete buttons Permissions on Role List view Removed sidebar', '2015-05-30 19:02:36'),
(93, 'ShahiemSeymor.Roles', 'comment', '1.0.4', 'Bug fixed, user permission method can handle arrays (see documentation)', '2015-05-30 19:02:36'),
(94, 'ShahiemSeymor.Roles', 'script', '1.0.5', 'add_default_and_description.php', '2015-05-30 19:02:37'),
(95, 'ShahiemSeymor.Roles', 'script', '1.0.5', 'add_dates.php', '2015-05-30 19:02:38'),
(96, 'ShahiemSeymor.Roles', 'comment', '1.0.5', 'Added default group checkbox (roles) and description field', '2015-05-30 19:02:38'),
(97, 'ShahiemSeymor.Roles', 'comment', '1.0.6', 'Fixed permission bug & Assign users in default groups', '2015-05-30 19:02:38'),
(98, 'ShahiemSeymor.Roles', 'comment', '1.0.7', 'Update for RC', '2015-05-30 19:02:38'),
(99, 'ShahiemSeymor.Roles', 'comment', '1.0.8', 'Update for RC(2)', '2015-05-30 19:02:38'),
(100, 'ShahiemSeymor.Roles', 'comment', '1.0.9', 'Code cleanup &  hasRole by UserId (see documentation)', '2015-05-30 19:02:38'),
(101, 'Mey.Breadcrumbs', 'comment', '1.0.1', 'First version of Breadcrumbs', '2015-05-30 19:02:53'),
(102, 'Mey.Breadcrumbs', 'comment', '1.0.2', 'Update how the menu works', '2015-05-30 19:02:53'),
(103, 'Mey.Breadcrumbs', 'comment', '1.0.3', 'Add the option to set the crumb title using a DOM element that lives on the page. This is helpful for pages that use :slug type routing.', '2015-05-30 19:02:53'),
(104, 'Mey.Breadcrumbs', 'comment', '1.0.4', 'Pages are now sorted by title in the dropdown menu in the breadcrumbs tab.', '2015-05-30 19:02:54'),
(105, 'Mey.Breadcrumbs', 'comment', '1.0.5', 'Update to fix the page sorting issue. Pages now sort alphabetically in the dropdown menu. Also a better icon choice.', '2015-05-30 19:02:54'),
(106, 'Mey.Breadcrumbs', 'comment', '1.0.6', 'Internal updates and bug fixes.', '2015-05-30 19:02:54'),
(107, 'Mey.Breadcrumbs', 'comment', '1.0.7', 'Bug fix for those who use element titles. Now no error will be thrown if the element does not exist on the page.', '2015-05-30 19:02:54'),
(108, 'Mey.Breadcrumbs', 'comment', '1.0.8', 'Updated menu to be much more logical. Also gave some more context to he menu dropdown.', '2015-05-30 19:02:54'),
(109, 'ShahiemSeymor.Maintenance', 'comment', '1.0.1', 'First version', '2015-05-30 19:03:43'),
(110, 'ShahiemSeymor.Maintenance', 'comment', '1.0.2', 'Bug fixed (Route), Added form widget (Maintenance information), Added rules', '2015-05-30 19:03:43'),
(111, 'ShahiemSeymor.Maintenance', 'comment', '1.0.3', 'Added formwidget (ckeditor and codeeditor) and backend changes.', '2015-05-30 19:03:43'),
(112, 'ShahiemSeymor.Maintenance', 'comment', '1.0.4', 'Removed required ckeditor', '2015-05-30 19:03:43'),
(113, 'ShahiemSeymor.Maintenance', 'comment', '1.0.5', 'Bug fixed (route problem), new colorpicker, Required asterisk', '2015-05-30 19:03:43'),
(114, 'ShahiemSeymor.Maintenance', 'comment', '1.0.6', 'Removed require ckeditor', '2015-05-30 19:03:43'),
(115, 'ShahiemSeymor.Maintenance', 'comment', '1.0.7', 'Added preview button, Bug fixes', '2015-05-30 19:03:43'),
(116, 'ShahiemSeymor.Maintenance', 'comment', '1.0.8', 'Code cleanup, added title field', '2015-05-30 19:03:43'),
(117, 'ShahiemSeymor.Maintenance', 'comment', '1.0.9', 'Code cleanup, Removed colorpicker formwidget, replace it with the default codepicker.Change the default content editor to richeditor', '2015-05-30 19:03:43'),
(140, 'Bedard.Debugbar', 'comment', '1.0.1', 'First version of Debugbar', '2015-05-30 19:04:37'),
(141, 'Bedard.Debugbar', 'comment', '1.0.2', 'Debugbar facade aliased (Alxy)', '2015-05-30 19:04:37'),
(142, 'LaminSanneh.FantasticFaq', 'comment', '1.0.1', 'First version of FantasticFaq', '2015-05-30 19:04:52'),
(143, 'LaminSanneh.FantasticFaq', 'script', '1.0.2', 'create_faq_groups_table.php', '2015-05-30 19:04:52'),
(144, 'LaminSanneh.FantasticFaq', 'script', '1.0.2', 'create_questions_table.php', '2015-05-30 19:04:53'),
(145, 'LaminSanneh.FantasticFaq', 'comment', '1.0.2', 'Create FaqGroups and Questions tables', '2015-05-30 19:04:53'),
(146, 'LaminSanneh.FantasticFaq', 'comment', '1.0.3', 'Updated Plugin Menu to have active class', '2015-05-30 19:04:53'),
(147, 'LaminSanneh.FantasticFaq', 'comment', '1.0.4', 'Updated backend menu icon', '2015-05-30 19:04:53'),
(148, 'LaminSanneh.FantasticFaq', 'comment', '1.0.5', 'Register Permission for user management', '2015-05-30 19:04:54'),
(149, 'LaminSanneh.FantasticFaq', 'comment', '1.0.6', 'Fixed upgrade/broken changes bug introduced by laravel 5 upgrade', '2015-05-30 19:04:54'),
(150, 'LaminSanneh.FantasticFaq', 'script', '1.0.7', 'group_id_is_nullable.php', '2015-05-30 19:04:54'),
(151, 'LaminSanneh.FantasticFaq', 'comment', '1.0.7', 'Fixing FOREIGN KEY error when removing FAQ question from FAQ group by making group_id nullable', '2015-05-30 19:04:54'),
(152, 'LaminSanneh.FantasticFaq', 'comment', '1.0.8', 'Update Readme File', '2015-05-30 19:04:54'),
(153, 'LaminSanneh.FantasticFaq', 'comment', '1.1.0', 'Changed answer editor from textarea to richeditor', '2015-05-30 19:04:55'),
(154, 'RainLab.Twitter', 'comment', '1.0.1', 'Initialize plugin.', '2015-05-30 19:05:10'),
(155, 'RainLab.Twitter', 'comment', '1.0.2', 'Adds Tweet Button, Follow Button, Embed Tweet and Embed Timeline components.', '2015-05-30 19:05:10'),
(156, 'RainLab.Twitter', 'comment', '1.0.3', 'Minor improvements to the code.', '2015-05-30 19:05:10'),
(157, 'Alxy.Facebook', 'comment', '1.0.1', 'First version of Facebook', '2015-05-30 19:05:30'),
(158, 'Algad.Facebook', 'comment', '1.0.1', 'First version of Facebook Components plugin for October CMS', '2015-05-30 19:05:44'),
(159, 'Flynsarmy.IdeHelper', 'comment', '1.0.1', 'First version of IdeHelper', '2015-05-30 19:06:06'),
(160, 'Flynsarmy.IdeHelper', 'script', '1.0.2', 'initial_gen.php', '2015-05-30 19:06:07'),
(161, 'Flynsarmy.IdeHelper', 'comment', '1.0.2', 'Auto-gen helpers', '2015-05-30 19:06:07'),
(162, 'RainLab.Blog', 'script', '1.0.1', 'create_posts_table.php', '2015-05-30 19:06:35'),
(163, 'RainLab.Blog', 'script', '1.0.1', 'create_categories_table.php', '2015-05-30 19:06:36'),
(164, 'RainLab.Blog', 'script', '1.0.1', 'seed_all_tables.php', '2015-05-30 19:06:37'),
(165, 'RainLab.Blog', 'comment', '1.0.1', 'Initialize plugin.', '2015-05-30 19:06:37'),
(166, 'RainLab.Blog', 'script', '1.0.2', 'create_posts_content_html.php', '2015-05-30 19:06:38'),
(167, 'RainLab.Blog', 'comment', '1.0.2', 'Added the processed HTML content column to the posts table.', '2015-05-30 19:06:38'),
(168, 'RainLab.Blog', 'comment', '1.0.3', 'Category component has been merged with Posts component.', '2015-05-30 19:06:38'),
(169, 'RainLab.Blog', 'comment', '1.0.4', 'Improvements to the Posts list management UI.', '2015-05-30 19:06:38'),
(170, 'RainLab.Blog', 'comment', '1.0.5', 'Removes the Author column from blog post list.', '2015-05-30 19:06:38'),
(171, 'RainLab.Blog', 'comment', '1.0.6', 'Featured images now appear in the Post component.', '2015-05-30 19:06:38'),
(172, 'RainLab.Blog', 'comment', '1.0.7', 'Added support for the Static Pages menus.', '2015-05-30 19:06:38'),
(173, 'RainLab.Blog', 'comment', '1.0.8', 'Added total posts to category list.', '2015-05-30 19:06:38'),
(174, 'RainLab.Blog', 'comment', '1.0.9', 'Added support for the Sitemap plugin.', '2015-05-30 19:06:38'),
(175, 'RainLab.Blog', 'comment', '1.0.10', 'Added permission to prevent users from seeing posts they did not create.', '2015-05-30 19:06:38'),
(176, 'RainLab.Blog', 'comment', '1.0.11', 'Deprecate "idParam" component property in favour of "slug" property.', '2015-05-30 19:06:38'),
(177, 'RainLab.Blog', 'comment', '1.0.12', 'Fixes issue where images cannot be uploaded caused by latest Markdown library.', '2015-05-30 19:06:38'),
(178, 'RainLab.Blog', 'comment', '1.0.13', 'Fixes problem with providing pages to Sitemap and Pages plugins.', '2015-05-30 19:06:39'),
(179, 'Bedard.BlogTags', 'script', '1.0.1', 'create_tags_table.php', '2015-05-30 19:06:42'),
(180, 'Bedard.BlogTags', 'comment', '1.0.1', 'First version of Blog Tags Extension', '2015-05-30 19:06:42'),
(181, 'Bedard.BlogTags', 'comment', '1.0.2', 'Minor fix', '2015-05-30 19:06:42'),
(182, 'Bedard.BlogTags', 'comment', '1.1.0', 'Added optional pagination to the blogTagSearch component.', '2015-05-30 19:06:42'),
(183, 'Bedard.BlogTags', 'comment', '1.1.1', 'Bug fix', '2015-05-30 19:06:42'),
(184, 'Bedard.BlogTags', 'comment', '1.1.2', 'Replace deprecated method', '2015-05-30 19:06:42'),
(185, 'Bedard.BlogTags', 'comment', '1.2.0', 'Upgrades for RC, and adds several new features.', '2015-05-30 19:06:42'),
(186, 'Bedard.BlogTags', 'comment', '1.2.1', 'Removed getters to make plugin more accessible.', '2015-05-30 19:06:42'),
(187, 'Qub.Clockwork', 'comment', '1.0.0', 'First version of plugin', '2015-05-30 19:07:02'),
(188, 'Qub.Clockwork', 'comment', '1.0.1', 'Twig functions and some changes', '2015-05-30 19:07:02'),
(189, 'Indikator.User', 'comment', '1.0.0', 'First version of User Plus.', '2015-05-30 19:07:21'),
(190, 'Indikator.User', 'script', '1.0.1', 'add_profile_fields_to_users_table.php', '2015-05-30 19:07:22'),
(191, 'Indikator.User', 'comment', '1.0.1', 'Added profile fields to users table.', '2015-05-30 19:07:22'),
(192, 'Indikator.User', 'comment', '1.0.2', 'Added German language.', '2015-05-30 19:07:22'),
(193, 'Indikator.User', 'comment', '1.0.3', 'Minor improvements and bugfix.', '2015-05-30 19:07:22'),
(194, 'Indikator.User', 'script', '1.0.4', 'remove_first_and_last_names.php', '2015-05-30 19:07:23'),
(195, 'Indikator.User', 'comment', '1.0.4', 'Remove the first and the last name.', '2015-05-30 19:07:23'),
(196, 'Indikator.User', 'comment', '1.0.5', 'Added French language.', '2015-05-30 19:07:24'),
(197, 'Romanov.Flashmessage', 'script', '1.0.1', 'Run table migrations', '2015-05-30 19:07:49'),
(198, 'Romanov.Flashmessage', 'script', '1.0.1', 'create_settings_table.php', '2015-05-30 19:07:50'),
(199, 'Romanov.Flashmessage', 'comment', '1.0.1', 'First version of flashmessage', '2015-05-30 19:07:50'),
(204, 'Renatio.DynamicPDF', 'script', '1.0.1', 'create_pdf_layouts_table.php', '2015-05-30 19:09:03'),
(205, 'Renatio.DynamicPDF', 'script', '1.0.1', 'create_pdf_templates_table.php', '2015-05-30 19:09:04'),
(206, 'Renatio.DynamicPDF', 'script', '1.0.1', 'seed_pdf_layouts_table.php', '2015-05-30 19:09:04'),
(207, 'Renatio.DynamicPDF', 'script', '1.0.1', 'seed_pdf_templates_table.php', '2015-05-30 19:09:04'),
(208, 'Renatio.DynamicPDF', 'comment', '1.0.1', 'Initialize plugin.', '2015-05-30 19:09:04'),
(209, 'Bedard.Resimg', 'comment', '1.0.1', 'First version of Resimg', '2015-05-30 19:09:26'),
(210, 'Bedard.Resimg', 'comment', '1.0.2', 'Adds getResponsiveSrcset(), getResponsiveImage(), and adds support for non-default sizes.', '2015-05-30 19:09:26'),
(211, 'Bedard.Resimg', 'comment', '1.0.3', 'Fixed bug where getResponsiveImage() would crash if the target image was larger than the source.', '2015-05-30 19:09:26'),
(215, 'Alxy.Captcha', 'comment', '1.0.1', 'First version of Captcha', '2015-05-30 19:10:22'),
(216, 'CGGStudio.Loading', 'comment', '1.0.1', 'First version', '2015-05-30 19:10:41'),
(217, 'CGGStudio.Loading', 'comment', '1.0.2', 'Added Russian language', '2015-05-30 19:10:41'),
(218, 'CGGStudio.Loading', 'comment', '1.0.3', 'Fix backgroundcolor', '2015-05-30 19:10:41'),
(219, 'RainLab.Sitemap', 'comment', '1.0.1', 'First version of Sitemap', '2015-05-30 19:10:55'),
(220, 'RainLab.Sitemap', 'script', '1.0.2', 'create_definitions_table.php', '2015-05-30 19:10:56'),
(221, 'RainLab.Sitemap', 'comment', '1.0.2', 'Create definitions table', '2015-05-30 19:10:56'),
(222, 'RainLab.Sitemap', 'comment', '1.0.3', 'Minor improvements to the code.', '2015-05-30 19:10:56'),
(223, 'RainLab.Sitemap', 'comment', '1.0.4', 'Fixes issue where correct headers not being sent.', '2015-05-30 19:10:56'),
(224, 'RainLab.GoogleAnalytics', 'comment', '1.0.1', 'Initialize plugin', '2015-05-30 19:11:20'),
(225, 'RainLab.GoogleAnalytics', 'comment', '1.0.2', 'Fixed a minor bug in the Top Pages widget', '2015-05-30 19:11:21'),
(226, 'RainLab.GoogleAnalytics', 'comment', '1.0.3', 'Minor improvements to the code', '2015-05-30 19:11:21'),
(227, 'Responsiv.DishSmith', 'script', '1.0.1', 'create_tables.php', '2015-06-01 14:21:27'),
(228, 'Responsiv.DishSmith', 'comment', '1.0.1', 'Initialize plugin', '2015-06-01 14:21:27'),
(229, 'RainLab.Forum', 'script', '1.0.1', 'create_channels_table.php', '2015-06-02 12:34:34'),
(230, 'RainLab.Forum', 'script', '1.0.1', 'create_posts_table.php', '2015-06-02 12:34:35'),
(231, 'RainLab.Forum', 'script', '1.0.1', 'create_topics_table.php', '2015-06-02 12:34:41'),
(232, 'RainLab.Forum', 'script', '1.0.1', 'create_members_table.php', '2015-06-02 12:34:42'),
(233, 'RainLab.Forum', 'script', '1.0.1', 'seed_all_tables.php', '2015-06-02 12:34:44'),
(234, 'RainLab.Forum', 'comment', '1.0.1', 'First version of Forum', '2015-06-02 12:34:44'),
(235, 'RainLab.Forum', 'script', '1.0.2', 'create_topic_watches_table.php', '2015-06-02 12:34:46'),
(236, 'RainLab.Forum', 'comment', '1.0.2', 'Add unread flags to topics', '2015-06-02 12:34:46'),
(237, 'RainLab.Forum', 'script', '1.0.3', 'members_add_mod_and_ban.php', '2015-06-02 12:34:46'),
(238, 'RainLab.Forum', 'comment', '1.0.3', 'Users can now be made moderators or be banned', '2015-06-02 12:34:46'),
(239, 'RainLab.Forum', 'script', '1.0.4', 'channels_add_hidden_and_moderated.php', '2015-06-02 12:34:47'),
(240, 'RainLab.Forum', 'comment', '1.0.4', 'Channels can now be hidden or moderated', '2015-06-02 12:34:47'),
(241, 'RainLab.Forum', 'script', '1.0.5', 'add_embed_code.php', '2015-06-02 12:34:50'),
(242, 'RainLab.Forum', 'comment', '1.0.5', 'Introduced topic and channel embedding', '2015-06-02 12:34:50'),
(243, 'RainLab.Forum', 'script', '1.0.6', 'create_channel_watches_table.php', '2015-06-02 12:34:52'),
(244, 'RainLab.Forum', 'comment', '1.0.6', 'Add unread flags to channels', '2015-06-02 12:34:52'),
(245, 'RainLab.Forum', 'script', '1.0.7', 'create_topic_followers_table.php', '2015-06-02 12:34:53'),
(246, 'RainLab.Forum', 'comment', '1.0.7', 'Forum members can now follow topics', '2015-06-02 12:34:53'),
(247, 'RainLab.Forum', 'comment', '1.0.8', 'Added Channel name to the Topics component view', '2015-06-02 12:34:53'),
(248, 'RainLab.Forum', 'comment', '1.0.9', 'Updated the Settings page', '2015-06-02 12:34:53'),
(249, 'RainLab.Forum', 'comment', '1.0.10', 'Users can now report spammers who can be banned by moderators.', '2015-06-02 12:34:53'),
(250, 'RainLab.Forum', 'comment', '1.0.11', 'Users can now quote other posts.', '2015-06-02 12:34:53'),
(251, 'RainLab.Forum', 'comment', '1.0.12', 'Improve support for CDN asset hosting.', '2015-06-02 12:34:53'),
(252, 'RainLab.Forum', 'comment', '1.0.13', 'Fixes a bug where channels cannot be selected in the Embed component inspector.', '2015-06-02 12:34:53'),
(253, 'ServiceMe.Companies', 'comment', '1.0.1', 'First version of Companies', '2015-06-02 16:53:54'),
(254, 'ServiceMe.Industries', 'comment', '1.0.1', 'First version of Industries', '2015-06-02 16:54:19'),
(255, 'ServiceMe.Industries', 'script', '1.0.2', 'create_industries_table.php', '2015-06-02 16:54:19'),
(256, 'ServiceMe.Industries', 'comment', '1.0.2', 'Created Industry Table', '2015-06-02 16:54:19'),
(257, 'ServiceMe.UserOffers', 'comment', '1.0.1', 'First version of UserOffers', '2015-06-02 16:54:20'),
(258, 'ServiceMe.Companies', 'script', '1.0.2', 'create_companies_table.php', '2015-06-02 16:58:00'),
(259, 'ServiceMe.Companies', 'comment', '1.0.2', 'Created Companies Table', '2015-06-02 16:58:00'),
(260, 'ServiceMe.Companies', 'script', '1.0.3', 'create_companies_table.php', '2015-06-02 17:02:38'),
(261, 'ServiceMe.Companies', 'comment', '1.0.3', 'Added industry_id', '2015-06-02 17:02:38'),
(262, 'Acme.Crm', 'comment', '1.0.1', 'First version of CRM plugin', '2015-06-02 17:10:17'),
(263, 'Acme.Crm', 'script', '1.0.2', 'create_contacts_table.php', '2015-06-02 17:10:17'),
(264, 'Acme.Crm', 'script', '1.0.2', 'create_notes_table.php', '2015-06-02 17:10:18'),
(265, 'Acme.Crm', 'script', '1.0.2', 'create_offerings_table.php', '2015-06-02 17:10:19'),
(266, 'Acme.Crm', 'script', '1.0.2', 'create_opportunities_table.php', '2015-06-02 17:10:21'),
(267, 'Acme.Crm', 'script', '1.0.2', 'create_statuses_table.php', '2015-06-02 17:10:22'),
(268, 'Acme.Crm', 'comment', '1.0.2', 'Create base database tables', '2015-06-02 17:10:22'),
(269, 'Acme.Crm', 'script', '1.0.3', 'seed_all_tables.php', '2015-06-02 17:10:22'),
(270, 'Acme.Crm', 'comment', '1.0.3', 'Seeding all tables', '2015-06-02 17:10:23'),
(271, 'Indikator.Backend', 'comment', '1.2.6', 'Improved the automatic search focus.', '2015-06-02 17:11:09'),
(272, 'DMA.Friends', 'script', '1.0.1', 'create_activities_table.php', '2015-06-05 15:38:17'),
(273, 'DMA.Friends', 'script', '1.0.1', 'create_activity_logs_table.php', '2015-06-05 15:38:18'),
(274, 'DMA.Friends', 'script', '1.0.1', 'create_badges_table.php', '2015-06-05 15:38:18'),
(275, 'DMA.Friends', 'script', '1.0.1', 'create_locations_table.php', '2015-06-05 15:38:19'),
(276, 'DMA.Friends', 'script', '1.0.1', 'create_rewards_table.php', '2015-06-05 15:38:19'),
(277, 'DMA.Friends', 'script', '1.0.1', 'create_steps_table.php', '2015-06-05 15:38:20'),
(278, 'DMA.Friends', 'script', '1.0.1', 'create_usermetas_table.php', '2015-06-05 15:38:21'),
(279, 'DMA.Friends', 'comment', '1.0.1', 'Creating basic schema', '2015-06-05 15:38:21'),
(280, 'DMA.Friends', 'script', '1.0.2', 'create_user_badges_table.php', '2015-06-05 15:38:22'),
(281, 'DMA.Friends', 'script', '1.0.2', 'create_user_steps_table.php', '2015-06-05 15:38:24'),
(282, 'DMA.Friends', 'script', '1.0.2', 'create_user_rewards_table.php', '2015-06-05 15:38:27'),
(283, 'DMA.Friends', 'comment', '1.0.2', 'Create relations between content types', '2015-06-05 15:38:27'),
(284, 'DMA.Friends', 'comment', '1.0.3', 'NA', '2015-06-05 15:38:27'),
(285, 'DMA.Friends', 'comment', '1.0.4', 'NA', '2015-06-05 15:38:27'),
(286, 'DMA.Friends', 'script', '1.0.5', 'create_users_table.php', '2015-06-05 15:38:27'),
(287, 'DMA.Friends', 'comment', '1.0.5', 'Create user table', '2015-06-05 15:38:27'),
(288, 'DMA.Friends', 'script', '1.0.6', 'create_categories_table.php', '2015-06-05 15:38:28'),
(289, 'DMA.Friends', 'comment', '1.0.6', 'Create categories table', '2015-06-05 15:38:28'),
(290, 'DMA.Friends', 'script', '1.0.7', 'update_user_steps_table.php', '2015-06-05 15:38:29'),
(291, 'DMA.Friends', 'comment', '1.0.7', 'Add location id to user_step table', '2015-06-05 15:38:29'),
(292, 'DMA.Friends', 'script', '1.0.8', 'extend_user_table.php', '2015-06-05 15:38:30'),
(293, 'DMA.Friends', 'comment', '1.0.8', 'Move points to user table and migrate points out of metadata table', '2015-06-05 15:38:30'),
(294, 'DMA.Friends', 'script', '1.0.9', 'extend_activity_table.php', '2015-06-05 15:38:31'),
(295, 'DMA.Friends', 'comment', '1.0.9', 'Add the activity_type column to activities', '2015-06-05 15:38:31'),
(296, 'DMA.Friends', 'script', '1.0.10', 'update_activities_table.php', '2015-06-05 15:38:32'),
(297, 'DMA.Friends', 'comment', '1.0.10', 'Add touch column to activities', '2015-06-05 15:38:32'),
(298, 'DMA.Friends', 'script', '1.0.11', 'create_notifications_table.php', '2015-06-05 15:38:32'),
(299, 'DMA.Friends', 'comment', '1.0.11', 'First version of Notifications', '2015-06-05 15:38:32'),
(300, 'DMA.Friends', 'script', '1.0.12', 'add_priority.php', '2015-06-05 15:38:33'),
(301, 'DMA.Friends', 'comment', '1.0.12', 'Add priority field to badges/activities', '2015-06-05 15:38:33'),
(302, 'DMA.Friends', 'script', '1.0.13', 'create_activity_metadata_table.php', '2015-06-05 15:38:34'),
(303, 'DMA.Friends', 'comment', '1.0.13', 'Create Activity Metadata table', '2015-06-05 15:38:34'),
(304, 'DMA.Friends', 'script', '1.0.15', 'create_user_group_table.php', '2015-06-05 15:38:34'),
(305, 'DMA.Friends', 'script', '1.0.15', 'create_users_groups_table.php', '2015-06-05 15:38:36'),
(306, 'DMA.Friends', 'comment', '1.0.15', 'Add user groups', '2015-06-05 15:38:36'),
(307, 'DMA.Friends', 'script', '1.0.16', 'add_location_uuid.php', '2015-06-05 15:38:36'),
(308, 'DMA.Friends', 'comment', '1.0.16', 'Add uuid to location model', '2015-06-05 15:38:36'),
(309, 'DMA.Friends', 'script', '1.0.17', 'add_location_is_authorized.php', '2015-06-05 15:38:37'),
(310, 'DMA.Friends', 'comment', '1.0.17', 'Add is_authorized to location model', '2015-06-05 15:38:37'),
(311, 'DMA.Friends', 'script', '1.0.18', 'add_user_barcode_id.php', '2015-06-05 15:38:38'),
(312, 'DMA.Friends', 'comment', '1.0.18', 'Add barcode_id field to users (NOTE sync user metadata after this upgrade)', '2015-06-05 15:38:38'),
(313, 'DMA.Friends', 'script', '1.0.19', 'add_demographic_metadata.php', '2015-06-05 15:38:39'),
(314, 'DMA.Friends', 'comment', '1.0.19', 'Add demographic info to usermeta table', '2015-06-05 15:38:39'),
(315, 'DMA.Friends', 'script', '1.0.20', 'fix_time_restrictions.php', '2015-06-05 15:38:39'),
(316, 'DMA.Friends', 'comment', '1.0.20', 'Fix time restriction settings on imported data', '2015-06-05 15:38:39'),
(317, 'DMA.Friends', 'script', '1.0.21', 'add_user_group_code.php', '2015-06-05 15:38:39'),
(318, 'DMA.Friends', 'comment', '1.0.21', 'Add user group code', '2015-06-05 15:38:39'),
(319, 'DMA.Friends', 'script', '1.0.23', 'create_bookmarks_table.php', '2015-06-05 15:38:40'),
(320, 'DMA.Friends', 'comment', '1.0.23', 'Add bookmarks table', '2015-06-05 15:38:40'),
(321, 'DMA.Friends', 'script', '1.0.24', 'add_reward_email_options.php', '2015-06-05 15:38:41'),
(322, 'DMA.Friends', 'comment', '1.0.24', 'Add new email options for rewards', '2015-06-05 15:38:41'),
(323, 'DMA.Friends', 'script', '1.0.25', 'add_activity_metadata_session_id.php', '2015-06-05 15:38:42'),
(324, 'DMA.Friends', 'comment', '1.0.25', 'Add activity metadata session id', '2015-06-05 15:38:42'),
(325, 'DMA.Friends', 'script', '1.0.26', 'add_activity_user_index.php', '2015-06-05 15:38:42'),
(326, 'DMA.Friends', 'comment', '1.0.26', 'Add index to user_activity table', '2015-06-05 15:38:42'),
(327, 'DMA.Friends', 'script', '1.0.27', 'add_location_image.php', '2015-06-05 15:38:43'),
(328, 'DMA.Friends', 'comment', '1.0.27', 'Add image to locations', '2015-06-05 15:38:43'),
(329, 'DMA.Friends', 'script', '1.0.28', 'fix_barcodes.php', '2015-06-05 15:38:43'),
(330, 'DMA.Friends', 'comment', '1.0.28', 'Fix barcodes', '2015-06-05 15:38:43'),
(331, 'DMA.Friends', 'script', '1.0.29', 'change_member_number_type.php', '2015-06-05 15:38:45'),
(332, 'DMA.Friends', 'comment', '1.0.29', 'Change data type for member number', '2015-06-05 15:38:45'),
(333, 'DMA.Friends', 'comment', '2.2.0', 'Release v2.2', '2015-06-05 15:38:45'),
(334, 'DMA.Friends', 'comment', '2.3.0', 'Release v2.3', '2015-06-05 15:38:45'),
(335, 'DMA.Friends', 'comment', '2.4.0', 'Release v2.4', '2015-06-05 15:38:45'),
(336, 'DMA.Recommendations', 'comment', '1.0.1', 'First version of recomendations', '2015-06-05 15:38:45'),
(337, 'DMA.Recommendations', 'script', '1.1.0', 'Added Logic to ignore Badges and Activities with priority zero', '2015-06-05 15:38:45'),
(338, 'DMA.Recommendations', 'comment', '1.1.0', 'Added Sticky Recommendation Items', '2015-06-05 15:38:45');

-- --------------------------------------------------------

--
-- Table structure for table `system_plugin_versions`
--

CREATE TABLE IF NOT EXISTS `system_plugin_versions` (
  `id` int(10) unsigned NOT NULL,
  `code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `version` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `is_disabled` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_plugin_versions`
--

INSERT INTO `system_plugin_versions` (`id`, `code`, `version`, `created_at`, `is_disabled`) VALUES
(1, 'RainLab.Pages', '1.0.12', '2015-05-30 18:59:40', 0),
(2, 'RainLab.User', '1.0.16', '2015-05-30 19:00:12', 0),
(3, 'Indikator.Backend', '1.2.6', '2015-06-02 17:11:09', 0),
(4, 'BenFreke.MenuManager', '1.4.2', '2015-05-30 19:01:53', 1),
(5, 'RainLab.Editable', '1.0.5', '2015-05-30 19:02:11', 0),
(6, 'ShahiemSeymor.Roles', '1.0.9', '2015-05-30 19:02:38', 0),
(7, 'Mey.Breadcrumbs', '1.0.8', '2015-05-30 19:02:54', 0),
(8, 'ShahiemSeymor.Maintenance', '1.0.9', '2015-05-30 19:03:43', 0),
(10, 'Bedard.Debugbar', '1.0.2', '2015-05-30 19:04:37', 0),
(11, 'LaminSanneh.FantasticFaq', '1.1.0', '2015-05-30 19:04:55', 0),
(12, 'RainLab.Twitter', '1.0.3', '2015-05-30 19:05:10', 0),
(13, 'Alxy.Facebook', '1.0.1', '2015-05-30 19:05:30', 0),
(14, 'Algad.Facebook', '1.0.1', '2015-05-30 19:05:44', 0),
(15, 'Flynsarmy.IdeHelper', '1.0.2', '2015-05-30 19:06:07', 0),
(16, 'RainLab.Blog', '1.0.13', '2015-05-30 19:06:39', 0),
(17, 'Bedard.BlogTags', '1.2.1', '2015-05-30 19:06:42', 0),
(18, 'Qub.Clockwork', '1.0.1', '2015-05-30 19:07:02', 0),
(19, 'Indikator.User', '1.0.5', '2015-05-30 19:07:24', 0),
(20, 'Romanov.Flashmessage', '1.0.1', '2015-05-30 19:07:50', 0),
(22, 'Renatio.DynamicPDF', '1.0.1', '2015-05-30 19:09:04', 0),
(23, 'Bedard.Resimg', '1.0.3', '2015-05-30 19:09:26', 0),
(25, 'Alxy.Captcha', '1.0.1', '2015-05-30 19:10:22', 0),
(26, 'CGGStudio.Loading', '1.0.3', '2015-05-30 19:10:41', 0),
(27, 'RainLab.Sitemap', '1.0.4', '2015-05-30 19:10:56', 0),
(28, 'RainLab.GoogleAnalytics', '1.0.3', '2015-05-30 19:11:21', 0),
(29, 'Responsiv.DishSmith', '1.0.1', '2015-06-01 14:21:27', 0),
(30, 'RainLab.Forum', '1.0.13', '2015-06-02 12:34:53', 0),
(31, 'ServiceMe.Companies', '1.0.3', '2015-06-02 17:02:38', 0),
(32, 'ServiceMe.Industries', '1.0.2', '2015-06-02 16:54:19', 0),
(33, 'ServiceMe.UserOffers', '1.0.1', '2015-06-02 16:54:20', 0),
(34, 'Acme.Crm', '1.0.3', '2015-06-02 17:10:23', 0),
(35, 'DMA.Friends', '2.4.0', '2015-06-05 15:38:45', 0),
(36, 'DMA.Recommendations', '1.1.0', '2015-06-05 15:38:45', 0);

-- --------------------------------------------------------

--
-- Table structure for table `system_request_logs`
--

CREATE TABLE IF NOT EXISTS `system_request_logs` (
  `id` int(10) unsigned NOT NULL,
  `status_code` int(11) DEFAULT NULL,
  `url` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `referer` text COLLATE utf8_unicode_ci,
  `count` int(11) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_request_logs`
--

INSERT INTO `system_request_logs` (`id`, `status_code`, `url`, `referer`, `count`, `created_at`, `updated_at`) VALUES
(1, 404, 'http://localhost:90/october/test', NULL, 1, '2015-05-30 19:15:55', '2015-05-30 19:15:55'),
(2, 404, 'http://localhost:90/october/para', NULL, 1, '2015-05-30 19:20:56', '2015-05-30 19:20:56'),
(3, 404, 'http://localhost:90/october/parallex/para', NULL, 1, '2015-05-30 19:21:04', '2015-05-30 19:21:04'),
(4, 404, 'http://localhost:90/october/demo/para', NULL, 1, '2015-05-30 19:21:09', '2015-05-30 19:21:09'),
(5, 404, 'http://localhost:90/october/backend', NULL, 1, '2015-06-01 14:17:22', '2015-06-01 14:17:22'),
(6, 404, 'http://localhost:90/october', NULL, 1, '2015-06-01 15:25:46', '2015-06-01 15:25:46'),
(7, 404, 'http://localhost:90/october/assets/css/icons-styles.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:28', '2015-06-01 15:26:49'),
(8, 404, 'http://localhost:90/october/assets/css/rev-settings.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:28', '2015-06-01 15:26:49'),
(9, 404, 'http://localhost:90/october/assets/css/template.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:28', '2015-06-01 15:26:48'),
(10, 404, 'http://localhost:90/october/assets/css/responsive-devices.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:28', '2015-06-01 15:26:49'),
(11, 404, 'http://localhost:90/october/assets/css/bootstrap.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:29', '2015-06-01 15:26:48'),
(12, 404, 'http://localhost:90/october/assets/css/roboto.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:29', '2015-06-01 15:26:49'),
(13, 404, 'http://localhost:90/october/assets/css/updates.css', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:30', '2015-06-01 15:26:50'),
(14, 404, 'http://localhost:90/october/images/logo.png', '["http:\\/\\/localhost:90\\/october\\/"]', 3, '2015-06-01 15:26:31', '2015-06-01 15:32:51'),
(15, 404, 'http://localhost:90/october/images/logo-white.png', '["http:\\/\\/localhost:90\\/october\\/"]', 3, '2015-06-01 15:26:36', '2015-06-01 15:32:52'),
(16, 404, 'http://localhost:90/october/images/footer-logo.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:36', '2015-06-01 15:30:33'),
(17, 404, 'http://localhost:90/october/images/footer-logo2.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:36', '2015-06-01 15:30:34'),
(18, 404, 'http://localhost:90/october/images/info-logo.png', '["http:\\/\\/localhost:90\\/october\\/"]', 3, '2015-06-01 15:26:36', '2015-06-01 15:32:52'),
(19, 404, 'http://localhost:90/october/images/footer-img2.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:36', '2015-06-01 15:30:34'),
(20, 404, 'http://localhost:90/october/images/footer-img.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 15:26:36', '2015-06-01 15:30:34'),
(21, 404, 'http://localhost:90/october/themes/serviceme/assets/images/october.png', '["http:\\/\\/localhost:90\\/october\\/"]', 4, '2015-06-01 15:26:38', '2015-06-02 12:35:45'),
(22, 404, 'http://localhost:90/october/images/slideshow/slide2.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 17, '2015-06-01 16:05:18', '2015-06-01 16:54:24'),
(23, 404, 'http://localhost:90/october/images/slideshow/slide1.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 845, '2015-06-01 16:05:18', '2015-06-01 16:54:21'),
(24, 404, 'http://localhost:90/october/images/slideshow/layer1.png', '["http:\\/\\/localhost:90\\/october\\/"]', 841, '2015-06-01 16:05:18', '2015-06-01 16:54:21'),
(25, 404, 'http://localhost:90/october/images/slideshow/slide3.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 17, '2015-06-01 16:05:19', '2015-06-01 16:54:24'),
(26, 404, 'http://localhost:90/october/images/slideshow/layer2.png', '["http:\\/\\/localhost:90\\/october\\/"]', 16, '2015-06-01 16:05:19', '2015-06-01 16:54:24'),
(27, 404, 'http://localhost:90/october/images/slideshow/slide4.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 15, '2015-06-01 16:05:20', '2015-06-01 16:54:25'),
(28, 404, 'http://localhost:90/october/images/slideshow/layer3.png', '["http:\\/\\/localhost:90\\/october\\/"]', 15, '2015-06-01 16:05:25', '2015-06-01 16:54:25'),
(29, 404, 'http://localhost:90/october/images/projects/img3.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 13, '2015-06-01 16:05:26', '2015-06-01 16:50:07'),
(30, 404, 'http://localhost:90/october/images/projects/img2.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 15, '2015-06-01 16:05:26', '2015-06-01 16:54:25'),
(31, 404, 'http://localhost:90/october/images/projects/img1.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 15, '2015-06-01 16:05:27', '2015-06-01 16:54:24'),
(32, 404, 'http://localhost:90/october/images/projects/img4.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 14, '2015-06-01 16:05:27', '2015-06-01 16:50:08'),
(33, 404, 'http://localhost:90/october/images/mac.png', '["http:\\/\\/localhost:90\\/october\\/"]', 12, '2015-06-01 16:05:28', '2015-06-01 16:50:12'),
(34, 404, 'http://localhost:90/october/images/team/img4.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 11, '2015-06-01 16:05:32', '2015-06-01 16:50:22'),
(35, 404, 'http://localhost:90/october/images/team/img3.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 13, '2015-06-01 16:05:34', '2015-06-01 16:50:21'),
(36, 404, 'http://localhost:90/october/images/team/img2.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 11, '2015-06-01 16:05:34', '2015-06-01 16:50:19'),
(37, 404, 'http://localhost:90/october/images/feedbacks/feedback2.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 13, '2015-06-01 16:05:34', '2015-06-01 16:50:17'),
(38, 404, 'http://localhost:90/october/images/team/img1.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 12, '2015-06-01 16:05:35', '2015-06-01 16:50:18'),
(39, 404, 'http://localhost:90/october/images/phone.png', '["http:\\/\\/localhost:90\\/october\\/"]', 12, '2015-06-01 16:05:41', '2015-06-01 16:50:17'),
(40, 404, 'http://localhost:90/october/images/feedbacks/feedback3.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 13, '2015-06-01 16:05:44', '2015-06-01 16:50:18'),
(41, 404, 'http://localhost:90/october/images/feedbacks/feedback1.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 13, '2015-06-01 16:05:45', '2015-06-01 16:50:17'),
(42, 404, 'http://localhost:90/october/images/projects/img8.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 13, '2015-06-01 16:05:45', '2015-06-01 16:50:12'),
(43, 404, 'http://localhost:90/october/images/projects/img7.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 12, '2015-06-01 16:05:53', '2015-06-01 16:50:12'),
(44, 404, 'http://localhost:90/october/images/projects/img6.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 12, '2015-06-01 16:05:54', '2015-06-01 16:50:12'),
(45, 404, 'http://localhost:90/october/images/projects/img5.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 12, '2015-06-01 16:05:54', '2015-06-01 16:50:11'),
(46, 404, 'http://localhost:90/october/themes/serviceme/assets/fonts/icomoon.eot', '["http:\\/\\/localhost:90\\/october\\/"]', 1, '2015-06-01 16:54:25', '2015-06-01 16:54:25'),
(47, 404, 'http://localhost:90/october/themes/serviceme/assets/images/logo-white@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:18', '2015-06-01 16:59:42'),
(48, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/slide1@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:18', '2015-06-01 16:59:42'),
(49, 404, 'http://localhost:90/october/themes/serviceme/assets/images/info-logo@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:18', '2015-06-01 16:59:42'),
(50, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/layer1@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:18', '2015-06-01 16:59:42'),
(51, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/slide2@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:18', '2015-06-01 16:59:42'),
(52, 404, 'http://localhost:90/october/themes/serviceme/assets/images/logo@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:19', '2015-06-01 16:59:42'),
(53, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/slide3@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:23', '2015-06-01 16:59:47'),
(54, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/layer2@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:23', '2015-06-01 16:59:48'),
(55, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/layer3@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:23', '2015-06-01 16:59:48'),
(56, 404, 'http://localhost:90/october/themes/serviceme/assets/images/slideshow/slide4@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:24', '2015-06-01 16:59:48'),
(57, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img2@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:24', '2015-06-01 16:59:54'),
(58, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img1@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:24', '2015-06-01 16:59:48'),
(59, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img4@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:29', '2015-06-01 16:59:55'),
(60, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img3@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:29', '2015-06-01 16:59:55'),
(61, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img5@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:30', '2015-06-01 16:59:55'),
(62, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img6@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:31', '2015-06-01 16:59:55'),
(63, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img7@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 2, '2015-06-01 16:59:36', '2015-06-01 17:00:04'),
(64, 404, 'http://localhost:90/october/themes/serviceme/assets/images/projects/img8@2x.jpg', '["http:\\/\\/localhost:90\\/october\\/"]', 1, '2015-06-01 17:00:04', '2015-06-01 17:00:04'),
(65, 404, 'http://localhost:90/october/themes/serviceme/assets/images/mac@2x.png', '["http:\\/\\/localhost:90\\/october\\/"]', 1, '2015-06-01 17:00:04', '2015-06-01 17:00:04'),
(66, 404, 'http://localhost:90/october/blog.blade.php', '["http:\\/\\/localhost:90\\/october\\/"]', 1, '2015-06-01 21:06:36', '2015-06-01 21:06:36'),
(67, 404, 'http://localhost:90/october/boxed-slideshow.blade.php', '["http:\\/\\/localhost:90\\/october\\/"]', 1, '2015-06-02 13:24:22', '2015-06-02 13:24:22'),
(68, 404, 'http://localhost:90/october/admin/dma/friends/activities/spinnerDefault.png', '["http:\\/\\/localhost:90\\/october\\/admin\\/dma\\/friends\\/activities\\/create"]', 1, '2015-06-05 15:41:15', '2015-06-05 15:41:15');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE IF NOT EXISTS `system_settings` (
  `id` int(10) unsigned NOT NULL,
  `item` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `value` mediumtext COLLATE utf8_unicode_ci
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `item`, `value`) VALUES
(1, 'user_settings', '{"require_activation":"1","activate_mode":"auto","use_throttle":"1","default_country":"3","default_state":"73","welcome_template":"","login_attribute":"email"}'),
(2, 'algad_facebook_settings', '{"facebook_page":"https:\\/\\/www.facebook.com\\/dazmiller"}'),
(3, 'alxy_facebook_settings', '{"app_id":"2513266311"}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `activation_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `persist_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `reset_password_code` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `permissions` text COLLATE utf8_unicode_ci,
  `is_activated` tinyint(1) NOT NULL DEFAULT '0',
  `activated_at` timestamp NULL DEFAULT NULL,
  `last_login` timestamp NULL DEFAULT NULL,
  `country_id` int(10) unsigned DEFAULT NULL,
  `state_id` int(10) unsigned DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `phone` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `company` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `street_addr` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `surname` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `primary_usergroup` int(11) NOT NULL,
  `iu_gender` varchar(7) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_job` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_about` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_webpage` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_blog` varchar(200) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_facebook` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_twitter` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_skype` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_icq` varchar(8) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_comment` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `iu_DOB` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `points` int(11) NOT NULL DEFAULT '0',
  `points_this_week` int(11) NOT NULL DEFAULT '0',
  `points_today` int(11) NOT NULL DEFAULT '0',
  `barcode_id` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `activation_code`, `persist_code`, `reset_password_code`, `permissions`, `is_activated`, `activated_at`, `last_login`, `country_id`, `state_id`, `created_at`, `updated_at`, `phone`, `company`, `street_addr`, `city`, `zip`, `username`, `surname`, `primary_usergroup`, `iu_gender`, `iu_job`, `iu_about`, `iu_webpage`, `iu_blog`, `iu_facebook`, `iu_twitter`, `iu_skype`, `iu_icq`, `iu_comment`, `iu_DOB`, `points`, `points_this_week`, `points_today`, `barcode_id`) VALUES
(1, '', 'dazmiller@gmail.com', '$2y$10$qxjgAPq3nv21Vcmx99WSvuDc2wjbDhIu8l7GlV2HZmfcHI2545Xi.', NULL, '$2y$10$L9VJw34wGCD6bImGgzoBB.eIwwHaBb4xbVU3WlDVWlEmPZUKkL8Lm', NULL, NULL, 1, '2015-06-01 14:17:02', '2015-06-05 15:53:11', NULL, NULL, '2015-06-01 14:17:01', '2015-06-05 15:53:11', '', '', '', '', '', 'dazmiller@gmail.com', '', 0, 'unknown', '', '', '', '', '', '', '', '', '', '1955-08-30', 0, 0, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_throttle`
--

CREATE TABLE IF NOT EXISTS `user_throttle` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned DEFAULT NULL,
  `ip_address` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `attempts` int(11) NOT NULL DEFAULT '0',
  `last_attempt_at` timestamp NULL DEFAULT NULL,
  `is_suspended` tinyint(1) NOT NULL DEFAULT '0',
  `suspended_at` timestamp NULL DEFAULT NULL,
  `is_banned` tinyint(1) NOT NULL DEFAULT '0',
  `banned_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_throttle`
--

INSERT INTO `user_throttle` (`id`, `user_id`, `ip_address`, `attempts`, `last_attempt_at`, `is_suspended`, `suspended_at`, `is_banned`, `banned_at`) VALUES
(1, 1, '127.0.0.1', 0, NULL, 0, NULL, 0, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acme_crm_contacts`
--
ALTER TABLE `acme_crm_contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `acme_crm_notes`
--
ALTER TABLE `acme_crm_notes`
  ADD PRIMARY KEY (`id`), ADD KEY `acme_crm_notes_opportunity_id_index` (`opportunity_id`), ADD KEY `acme_crm_notes_owner_id_index` (`owner_id`);

--
-- Indexes for table `acme_crm_offerings`
--
ALTER TABLE `acme_crm_offerings`
  ADD PRIMARY KEY (`id`), ADD KEY `acme_crm_offerings_owner_id_index` (`owner_id`);

--
-- Indexes for table `acme_crm_opportunities`
--
ALTER TABLE `acme_crm_opportunities`
  ADD PRIMARY KEY (`id`), ADD KEY `acme_crm_opportunities_status_id_index` (`status_id`);

--
-- Indexes for table `acme_crm_opportunities_contacts`
--
ALTER TABLE `acme_crm_opportunities_contacts`
  ADD PRIMARY KEY (`opportunity_id`,`contact_id`);

--
-- Indexes for table `acme_crm_opportunities_offerings`
--
ALTER TABLE `acme_crm_opportunities_offerings`
  ADD PRIMARY KEY (`opportunity_id`,`offering_id`), ADD KEY `acme_crm_opportunities_offerings_owner_id_index` (`owner_id`);

--
-- Indexes for table `acme_crm_statuses`
--
ALTER TABLE `acme_crm_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `backend_users`
--
ALTER TABLE `backend_users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `login_unique` (`login`), ADD UNIQUE KEY `email_unique` (`email`), ADD KEY `act_code_index` (`activation_code`), ADD KEY `reset_code_index` (`reset_password_code`);

--
-- Indexes for table `backend_users_groups`
--
ALTER TABLE `backend_users_groups`
  ADD PRIMARY KEY (`user_id`,`user_group_id`);

--
-- Indexes for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `name_unique` (`name`), ADD KEY `code_index` (`code`);

--
-- Indexes for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  ADD PRIMARY KEY (`id`), ADD KEY `user_item_index` (`user_id`,`namespace`,`group`,`item`);

--
-- Indexes for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  ADD PRIMARY KEY (`id`), ADD KEY `backend_user_throttle_user_id_index` (`user_id`), ADD KEY `backend_user_throttle_ip_address_index` (`ip_address`);

--
-- Indexes for table `bedard_blogtags_post_tag`
--
ALTER TABLE `bedard_blogtags_post_tag`
  ADD KEY `bedard_blogtags_post_tag_tag_id_post_id_index` (`tag_id`,`post_id`), ADD KEY `bedard_blogtags_post_tag_post_id_foreign` (`post_id`);

--
-- Indexes for table `bedard_blogtags_tags`
--
ALTER TABLE `bedard_blogtags_tags`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `bedard_blogtags_tags_name_unique` (`name`);

--
-- Indexes for table `benfreke_menumanager_menus`
--
ALTER TABLE `benfreke_menumanager_menus`
  ADD PRIMARY KEY (`id`), ADD KEY `benfreke_menumanager_menus_parent_id_index` (`parent_id`);

--
-- Indexes for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  ADD PRIMARY KEY (`id`), ADD KEY `cms_theme_data_theme_index` (`theme`);

--
-- Indexes for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  ADD PRIMARY KEY (`id`), ADD KEY `deferred_bindings_master_type_index` (`master_type`), ADD KEY `deferred_bindings_master_field_index` (`master_field`), ADD KEY `deferred_bindings_slave_type_index` (`slave_type`), ADD KEY `deferred_bindings_slave_id_index` (`slave_id`);

--
-- Indexes for table `dma_friends_activities`
--
ALTER TABLE `dma_friends_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dma_friends_activity_logs`
--
ALTER TABLE `dma_friends_activity_logs`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_activity_logs_user_id_index` (`user_id`), ADD KEY `dma_friends_activity_logs_object_id_index` (`object_id`);

--
-- Indexes for table `dma_friends_activity_metadata`
--
ALTER TABLE `dma_friends_activity_metadata`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_activity_metadata_user_id_index` (`user_id`), ADD KEY `dma_friends_activity_metadata_activity_id_index` (`activity_id`);

--
-- Indexes for table `dma_friends_activity_user`
--
ALTER TABLE `dma_friends_activity_user`
  ADD KEY `dma_friends_activity_user_activity_id_index` (`activity_id`), ADD KEY `dma_friends_activity_user_user_id_index` (`user_id`);

--
-- Indexes for table `dma_friends_badges`
--
ALTER TABLE `dma_friends_badges`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dma_friends_badge_user`
--
ALTER TABLE `dma_friends_badge_user`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_badge_user_badge_id_index` (`badge_id`), ADD KEY `dma_friends_badge_user_user_id_index` (`user_id`), ADD KEY `dma_friends_badge_user_location_id_index` (`location_id`);

--
-- Indexes for table `dma_friends_bookmarks`
--
ALTER TABLE `dma_friends_bookmarks`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_bookmarks_object_id_index` (`object_id`), ADD KEY `dma_friends_bookmarks_object_type_index` (`object_type`), ADD KEY `dma_friends_bookmarks_user_id_index` (`user_id`);

--
-- Indexes for table `dma_friends_categories`
--
ALTER TABLE `dma_friends_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dma_friends_locations`
--
ALTER TABLE `dma_friends_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dma_friends_notification`
--
ALTER TABLE `dma_friends_notification`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dma_friends_rewards`
--
ALTER TABLE `dma_friends_rewards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dma_friends_reward_user`
--
ALTER TABLE `dma_friends_reward_user`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_reward_user_reward_id_index` (`reward_id`), ADD KEY `dma_friends_reward_user_user_id_index` (`user_id`);

--
-- Indexes for table `dma_friends_steps`
--
ALTER TABLE `dma_friends_steps`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_steps_badge_id_index` (`badge_id`), ADD KEY `dma_friends_steps_activity_id_index` (`activity_id`);

--
-- Indexes for table `dma_friends_step_user`
--
ALTER TABLE `dma_friends_step_user`
  ADD PRIMARY KEY (`id`), ADD KEY `dma_friends_step_user_step_id_index` (`step_id`), ADD KEY `dma_friends_step_user_user_id_index` (`user_id`), ADD KEY `dma_friends_step_user_location_id_index` (`location_id`);

--
-- Indexes for table `dma_friends_usermetas`
--
ALTER TABLE `dma_friends_usermetas`
  ADD PRIMARY KEY (`user_id`), ADD KEY `dma_friends_usermetas_user_id_index` (`user_id`), ADD KEY `dma_friends_usermetas_current_member_number_index` (`current_member_number`);

--
-- Indexes for table `dma_friends_users_groups`
--
ALTER TABLE `dma_friends_users_groups`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `dma_friends_users_groups_user_id_group_id_unique` (`user_id`,`group_id`), ADD KEY `dma_friends_users_groups_user_id_index` (`user_id`), ADD KEY `dma_friends_users_groups_group_id_index` (`group_id`);

--
-- Indexes for table `dma_friends_user_groups`
--
ALTER TABLE `dma_friends_user_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laminsanneh_fantasticfaq_faq_groups`
--
ALTER TABLE `laminsanneh_fantasticfaq_faq_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laminsanneh_fantasticfaq_questions`
--
ALTER TABLE `laminsanneh_fantasticfaq_questions`
  ADD PRIMARY KEY (`id`), ADD KEY `laminsanneh_fantasticfaq_questions_group_id_foreign` (`group_id`);

--
-- Indexes for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_blog_categories_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_blog_posts_user_id_index` (`user_id`), ADD KEY `rainlab_blog_posts_slug_index` (`slug`);

--
-- Indexes for table `rainlab_blog_posts_categories`
--
ALTER TABLE `rainlab_blog_posts_categories`
  ADD PRIMARY KEY (`post_id`,`category_id`);

--
-- Indexes for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `rainlab_forum_channels_slug_unique` (`slug`), ADD KEY `rainlab_forum_channels_parent_id_index` (`parent_id`), ADD KEY `rainlab_forum_channels_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_channel_watches`
--
ALTER TABLE `rainlab_forum_channel_watches`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_forum_channel_watches_channel_id_index` (`channel_id`), ADD KEY `rainlab_forum_channel_watches_member_id_index` (`member_id`), ADD KEY `rainlab_forum_channel_watches_count_topics_index` (`count_topics`), ADD KEY `rainlab_forum_channel_watches_watched_at_index` (`watched_at`);

--
-- Indexes for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_forum_members_user_id_index` (`user_id`), ADD KEY `rainlab_forum_members_count_posts_index` (`count_posts`), ADD KEY `rainlab_forum_members_count_topics_index` (`count_topics`), ADD KEY `rainlab_forum_members_last_active_at_index` (`last_active_at`), ADD KEY `rainlab_forum_members_is_moderator_index` (`is_moderator`);

--
-- Indexes for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_forum_posts_topic_id_index` (`topic_id`), ADD KEY `rainlab_forum_posts_member_id_index` (`member_id`);

--
-- Indexes for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `rainlab_forum_topics_slug_unique` (`slug`), ADD KEY `sticky_post_time` (`is_sticky`,`last_post_at`), ADD KEY `rainlab_forum_topics_channel_id_index` (`channel_id`), ADD KEY `rainlab_forum_topics_start_member_id_index` (`start_member_id`), ADD KEY `rainlab_forum_topics_last_post_at_index` (`last_post_at`), ADD KEY `rainlab_forum_topics_is_private_index` (`is_private`), ADD KEY `rainlab_forum_topics_is_locked_index` (`is_locked`), ADD KEY `rainlab_forum_topics_count_posts_index` (`count_posts`), ADD KEY `rainlab_forum_topics_count_views_index` (`count_views`), ADD KEY `rainlab_forum_topics_embed_code_index` (`embed_code`);

--
-- Indexes for table `rainlab_forum_topic_followers`
--
ALTER TABLE `rainlab_forum_topic_followers`
  ADD PRIMARY KEY (`topic_id`,`member_id`);

--
-- Indexes for table `rainlab_forum_topic_watches`
--
ALTER TABLE `rainlab_forum_topic_watches`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_forum_topic_watches_topic_id_index` (`topic_id`), ADD KEY `rainlab_forum_topic_watches_member_id_index` (`member_id`), ADD KEY `rainlab_forum_topic_watches_count_posts_index` (`count_posts`), ADD KEY `rainlab_forum_topic_watches_watched_at_index` (`watched_at`);

--
-- Indexes for table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_sitemap_definitions_theme_index` (`theme`);

--
-- Indexes for table `rainlab_user_countries`
--
ALTER TABLE `rainlab_user_countries`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_user_countries_name_index` (`name`);

--
-- Indexes for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_user_mail_blockers_email_index` (`email`), ADD KEY `rainlab_user_mail_blockers_template_index` (`template`), ADD KEY `rainlab_user_mail_blockers_user_id_index` (`user_id`);

--
-- Indexes for table `rainlab_user_states`
--
ALTER TABLE `rainlab_user_states`
  ADD PRIMARY KEY (`id`), ADD KEY `rainlab_user_states_country_id_index` (`country_id`), ADD KEY `rainlab_user_states_name_index` (`name`);

--
-- Indexes for table `renatio_dynamicpdf_pdf_layouts`
--
ALTER TABLE `renatio_dynamicpdf_pdf_layouts`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `renatio_dynamicpdf_pdf_layouts_code_unique` (`code`);

--
-- Indexes for table `renatio_dynamicpdf_pdf_templates`
--
ALTER TABLE `renatio_dynamicpdf_pdf_templates`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `renatio_dynamicpdf_pdf_templates_code_unique` (`code`), ADD KEY `renatio_dynamicpdf_pdf_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `responsiv_dishsmith_activities`
--
ALTER TABLE `responsiv_dishsmith_activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsiv_dishsmith_dishes`
--
ALTER TABLE `responsiv_dishsmith_dishes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `responsiv_dishsmith_dishes_ingredients`
--
ALTER TABLE `responsiv_dishsmith_dishes_ingredients`
  ADD PRIMARY KEY (`dish_id`,`ingredient_id`);

--
-- Indexes for table `responsiv_dishsmith_ingredients`
--
ALTER TABLE `responsiv_dishsmith_ingredients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `romanov_flashmessage_settings`
--
ALTER TABLE `romanov_flashmessage_settings`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `romanov_flashmessage_settings_title_unique` (`title`);

--
-- Indexes for table `serviceme_companies_companies`
--
ALTER TABLE `serviceme_companies_companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `serviceme_industries_industries`
--
ALTER TABLE `serviceme_industries_industries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD UNIQUE KEY `sessions_id_unique` (`id`);

--
-- Indexes for table `shahiemseymor_assigned_roles`
--
ALTER TABLE `shahiemseymor_assigned_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shahiemseymor_permissions`
--
ALTER TABLE `shahiemseymor_permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shahiemseymor_permission_role`
--
ALTER TABLE `shahiemseymor_permission_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shahiemseymor_roles`
--
ALTER TABLE `shahiemseymor_roles`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `shahiemseymor_roles_name_unique` (`name`);

--
-- Indexes for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  ADD PRIMARY KEY (`id`), ADD KEY `system_event_logs_level_index` (`level`);

--
-- Indexes for table `system_files`
--
ALTER TABLE `system_files`
  ADD PRIMARY KEY (`id`), ADD KEY `system_files_field_index` (`field`), ADD KEY `system_files_attachment_id_index` (`attachment_id`), ADD KEY `system_files_attachment_type_index` (`attachment_type`);

--
-- Indexes for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  ADD PRIMARY KEY (`id`), ADD KEY `system_mail_templates_layout_id_index` (`layout_id`);

--
-- Indexes for table `system_parameters`
--
ALTER TABLE `system_parameters`
  ADD PRIMARY KEY (`id`), ADD KEY `item_index` (`namespace`,`group`,`item`);

--
-- Indexes for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  ADD PRIMARY KEY (`id`), ADD KEY `system_plugin_history_code_index` (`code`), ADD KEY `system_plugin_history_type_index` (`type`);

--
-- Indexes for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  ADD PRIMARY KEY (`id`), ADD KEY `system_plugin_versions_code_index` (`code`);

--
-- Indexes for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`), ADD KEY `system_settings_item_index` (`item`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`), ADD UNIQUE KEY `users_email_unique` (`email`), ADD UNIQUE KEY `users_login_unique` (`username`), ADD KEY `users_activation_code_index` (`activation_code`), ADD KEY `users_reset_password_code_index` (`reset_password_code`), ADD KEY `users_country_id_index` (`country_id`), ADD KEY `users_state_id_index` (`state_id`), ADD KEY `users_login_index` (`username`);

--
-- Indexes for table `user_throttle`
--
ALTER TABLE `user_throttle`
  ADD PRIMARY KEY (`id`), ADD KEY `user_throttle_user_id_index` (`user_id`), ADD KEY `user_throttle_ip_address_index` (`ip_address`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acme_crm_contacts`
--
ALTER TABLE `acme_crm_contacts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `acme_crm_notes`
--
ALTER TABLE `acme_crm_notes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `acme_crm_offerings`
--
ALTER TABLE `acme_crm_offerings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `acme_crm_opportunities`
--
ALTER TABLE `acme_crm_opportunities`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `acme_crm_statuses`
--
ALTER TABLE `acme_crm_statuses`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `backend_access_log`
--
ALTER TABLE `backend_access_log`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `backend_users`
--
ALTER TABLE `backend_users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_groups`
--
ALTER TABLE `backend_user_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_preferences`
--
ALTER TABLE `backend_user_preferences`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `backend_user_throttle`
--
ALTER TABLE `backend_user_throttle`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `bedard_blogtags_tags`
--
ALTER TABLE `bedard_blogtags_tags`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `benfreke_menumanager_menus`
--
ALTER TABLE `benfreke_menumanager_menus`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `cms_theme_data`
--
ALTER TABLE `cms_theme_data`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `deferred_bindings`
--
ALTER TABLE `deferred_bindings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_activities`
--
ALTER TABLE `dma_friends_activities`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dma_friends_activity_logs`
--
ALTER TABLE `dma_friends_activity_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_activity_metadata`
--
ALTER TABLE `dma_friends_activity_metadata`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_badges`
--
ALTER TABLE `dma_friends_badges`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_badge_user`
--
ALTER TABLE `dma_friends_badge_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_bookmarks`
--
ALTER TABLE `dma_friends_bookmarks`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_categories`
--
ALTER TABLE `dma_friends_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_locations`
--
ALTER TABLE `dma_friends_locations`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_notification`
--
ALTER TABLE `dma_friends_notification`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_rewards`
--
ALTER TABLE `dma_friends_rewards`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_reward_user`
--
ALTER TABLE `dma_friends_reward_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_steps`
--
ALTER TABLE `dma_friends_steps`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_step_user`
--
ALTER TABLE `dma_friends_step_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_usermetas`
--
ALTER TABLE `dma_friends_usermetas`
  MODIFY `user_id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `dma_friends_users_groups`
--
ALTER TABLE `dma_friends_users_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `dma_friends_user_groups`
--
ALTER TABLE `dma_friends_user_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laminsanneh_fantasticfaq_faq_groups`
--
ALTER TABLE `laminsanneh_fantasticfaq_faq_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `laminsanneh_fantasticfaq_questions`
--
ALTER TABLE `laminsanneh_fantasticfaq_questions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_blog_categories`
--
ALTER TABLE `rainlab_blog_categories`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_blog_posts`
--
ALTER TABLE `rainlab_blog_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_forum_channels`
--
ALTER TABLE `rainlab_forum_channels`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `rainlab_forum_channel_watches`
--
ALTER TABLE `rainlab_forum_channel_watches`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_members`
--
ALTER TABLE `rainlab_forum_members`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `rainlab_forum_posts`
--
ALTER TABLE `rainlab_forum_posts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_topics`
--
ALTER TABLE `rainlab_forum_topics`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_forum_topic_watches`
--
ALTER TABLE `rainlab_forum_topic_watches`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_sitemap_definitions`
--
ALTER TABLE `rainlab_sitemap_definitions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_user_countries`
--
ALTER TABLE `rainlab_user_countries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=249;
--
-- AUTO_INCREMENT for table `rainlab_user_mail_blockers`
--
ALTER TABLE `rainlab_user_mail_blockers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rainlab_user_states`
--
ALTER TABLE `rainlab_user_states`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=285;
--
-- AUTO_INCREMENT for table `renatio_dynamicpdf_pdf_layouts`
--
ALTER TABLE `renatio_dynamicpdf_pdf_layouts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `renatio_dynamicpdf_pdf_templates`
--
ALTER TABLE `renatio_dynamicpdf_pdf_templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `responsiv_dishsmith_activities`
--
ALTER TABLE `responsiv_dishsmith_activities`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `responsiv_dishsmith_dishes`
--
ALTER TABLE `responsiv_dishsmith_dishes`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `responsiv_dishsmith_ingredients`
--
ALTER TABLE `responsiv_dishsmith_ingredients`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `romanov_flashmessage_settings`
--
ALTER TABLE `romanov_flashmessage_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serviceme_companies_companies`
--
ALTER TABLE `serviceme_companies_companies`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `serviceme_industries_industries`
--
ALTER TABLE `serviceme_industries_industries`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shahiemseymor_assigned_roles`
--
ALTER TABLE `shahiemseymor_assigned_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shahiemseymor_permissions`
--
ALTER TABLE `shahiemseymor_permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `shahiemseymor_permission_role`
--
ALTER TABLE `shahiemseymor_permission_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `shahiemseymor_roles`
--
ALTER TABLE `shahiemseymor_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_event_logs`
--
ALTER TABLE `system_event_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `system_files`
--
ALTER TABLE `system_files`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `system_mail_layouts`
--
ALTER TABLE `system_mail_layouts`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `system_mail_templates`
--
ALTER TABLE `system_mail_templates`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `system_parameters`
--
ALTER TABLE `system_parameters`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `system_plugin_history`
--
ALTER TABLE `system_plugin_history`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=339;
--
-- AUTO_INCREMENT for table `system_plugin_versions`
--
ALTER TABLE `system_plugin_versions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `system_request_logs`
--
ALTER TABLE `system_request_logs`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user_throttle`
--
ALTER TABLE `user_throttle`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `bedard_blogtags_post_tag`
--
ALTER TABLE `bedard_blogtags_post_tag`
ADD CONSTRAINT `bedard_blogtags_post_tag_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `rainlab_blog_posts` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `bedard_blogtags_post_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `bedard_blogtags_tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dma_friends_reward_user`
--
ALTER TABLE `dma_friends_reward_user`
ADD CONSTRAINT `dma_friends_reward_user_reward_id_foreign` FOREIGN KEY (`reward_id`) REFERENCES `dma_friends_rewards` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `dma_friends_reward_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dma_friends_step_user`
--
ALTER TABLE `dma_friends_step_user`
ADD CONSTRAINT `dma_friends_step_user_step_id_foreign` FOREIGN KEY (`step_id`) REFERENCES `dma_friends_steps` (`id`) ON DELETE CASCADE,
ADD CONSTRAINT `dma_friends_step_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `dma_friends_usermetas`
--
ALTER TABLE `dma_friends_usermetas`
ADD CONSTRAINT `dma_friends_usermetas_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `laminsanneh_fantasticfaq_questions`
--
ALTER TABLE `laminsanneh_fantasticfaq_questions`
ADD CONSTRAINT `laminsanneh_fantasticfaq_questions_group_id_foreign` FOREIGN KEY (`group_id`) REFERENCES `laminsanneh_fantasticfaq_faq_groups` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
