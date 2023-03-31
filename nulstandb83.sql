-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 22, 2022 at 02:31 PM
-- Server version: 5.7.34-log
-- PHP Version: 7.4.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `nulstandb83`
--

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `comments`
--

INSERT INTO `comments` (`id`, `user_id`, `post_id`, `parent_id`, `body`, `created_at`, `updated_at`) VALUES
(86, 1, 33, NULL, '656+6', '2022-05-22 06:25:41', '2022-05-22 06:25:41');

-- --------------------------------------------------------

--
-- Table structure for table `contents`
--

CREATE TABLE `contents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `embed_id` int(11) DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body` text COLLATE utf8mb4_unicode_ci,
  `extra` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contents`
--

INSERT INTO `contents` (`id`, `post_id`, `embed_id`, `type`, `body`, `extra`) VALUES
(45, 15, NULL, 'header', 'erereer', 'h1'),
(46, 15, NULL, 'text', 'ererrer', NULL),
(159, 33, NULL, 'header', 'OK', 'h1');

-- --------------------------------------------------------

--
-- Table structure for table `embeds`
--

CREATE TABLE `embeds` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `short_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `embedcode` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `follows`
--

CREATE TABLE `follows` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `following_user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `likeables`
--

CREATE TABLE `likeables` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `likeable_id` int(11) NOT NULL,
  `likeable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_27_164832_create_posts_table', 1),
(4, '2017_02_07_192701_create_tags_table', 1),
(5, '2017_03_02_225611_create_settings_table', 1),
(6, '2017_04_15_101613_create_likeables_table', 1),
(7, '2017_11_19_014703_create_contents_table', 1),
(8, '2017_12_17_122210_create_embeds_table', 1),
(9, '2018_02_17_092039_create_pages_table', 1),
(10, '2019_08_19_000000_create_failed_jobs_table', 1),
(11, '2021_01_20_152153_add_desc_to_tags_table', 1),
(12, '2021_02_07_120322_add_role_to_users_table', 1),
(13, '2021_08_27_135739_add_extra_to_contents_table', 1),
(14, '2021_09_06_143549_create_comments_table', 1),
(15, '2021_09_13_114735_create_notifications_table', 1),
(16, '2021_11_16_105347_add_counter_to_posts_table', 1),
(17, '2021_11_30_104702_add_cover_to_users_table', 1),
(18, '2021_12_04_110609_create_follows_table', 1),
(19, '2019_11_13_052521_create_ac_messages_table', 2),
(20, '2019_11_13_052522_create_ac_profiles_table', 2),
(21, '2019_11_13_052524_create_ac_guests_messages_table', 2),
(22, '2019_11_13_052525_create_ac_guests_table', 2),
(23, '2019_11_13_052526_create_ac_groupchat_table', 2),
(24, '2019_11_13_052527_create_ac_contacts_table', 2),
(25, '2019_11_13_052528_create_ac_blocked_table', 2),
(26, '2019_11_13_052529_create_ac_users_messages_table', 2),
(27, '2020_01_22_052530_modify_message_to_messages', 2);

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint(20) UNSIGNED NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `page_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `page_content` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_live` tinyint(1) NOT NULL DEFAULT '1',
  `post_instant` varchar(51) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_color` varchar(91) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_desc` text COLLATE utf8mb4_unicode_ci,
  `post_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_slug` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_media` text COLLATE utf8mb4_unicode_ci,
  `post_video` text COLLATE utf8mb4_unicode_ci,
  `video_url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `edit_id` int(11) DEFAULT NULL,
  `media_alt` text COLLATE utf8mb4_unicode_ci,
  `counter` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `post_live`, `post_instant`, `post_color`, `post_desc`, `post_title`, `post_slug`, `post_media`, `post_video`, `video_url`, `created_at`, `updated_at`, `edit_id`, `media_alt`, `counter`) VALUES
(33, 1, 1, NULL, 'bg-primary', 'ReadyForVPSReadyForVPS', 'ReadyForVPS', 'readyforvps', '1653200316.png', NULL, NULL, '2022-05-22 06:18:42', '2022-05-22 06:29:45', NULL, NULL, 9);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` int(11) NOT NULL,
  `tag_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `site_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_desc` text COLLATE utf8mb4_unicode_ci,
  `site_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `allow_comments` tinyint(1) NOT NULL DEFAULT '0',
  `allow_users` tinyint(1) NOT NULL DEFAULT '0',
  `check_cont` tinyint(1) NOT NULL DEFAULT '0',
  `site_logo` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo.png',
  `site_extra` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `home_link` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pop_link` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cat_link` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `arch_link` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `search_link` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `login_link` varchar(41) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_ads` text COLLATE utf8mb4_unicode_ci,
  `page_ads` text COLLATE utf8mb4_unicode_ci,
  `between_ads` text COLLATE utf8mb4_unicode_ci,
  `fb_publishing` tinyint(1) NOT NULL DEFAULT '0',
  `fb_theme` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'default',
  `fb_ads_code` text COLLATE utf8mb4_unicode_ci,
  `fb_page_token` text COLLATE utf8mb4_unicode_ci,
  `amp_ad_server` tinyint(1) NOT NULL DEFAULT '0',
  `amp_adscode` text COLLATE utf8mb4_unicode_ci,
  `footer` text COLLATE utf8mb4_unicode_ci,
  `site_analytic` text COLLATE utf8mb4_unicode_ci,
  `site_instant` tinyint(1) NOT NULL DEFAULT '0',
  `site_activation` varchar(15) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `site_logo_light` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'logo-dark.png',
  `theme` varchar(41) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'dark'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_name`, `site_desc`, `site_title`, `allow_comments`, `allow_users`, `check_cont`, `site_logo`, `site_extra`, `home_link`, `pop_link`, `cat_link`, `arch_link`, `search_link`, `login_link`, `post_ads`, `page_ads`, `between_ads`, `fb_publishing`, `fb_theme`, `fb_ads_code`, `fb_page_token`, `amp_ad_server`, `amp_adscode`, `footer`, `site_analytic`, `site_instant`, `site_activation`, `site_logo_light`, `theme`) VALUES
(1, 'ReadyForVPS', 'ReadyForVPS', 'ReadyForVPS', 0, 0, 1, 'logo.png', NULL, 'Home', 'Popular', 'Categories', 'Archives', 'Search', 'Login', NULL, NULL, NULL, 0, 'default', NULL, NULL, 0, NULL, '<p>ReadyForVPS</p>', NULL, 1, '866444', 'logo-dark.png', 'dark');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_media` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `color` varchar(31) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `desc` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `User-Groups`
--

CREATE TABLE `User-Groups` (
  `name` varchar(9) NOT NULL,
  `ID` int(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `User-Groups`
--

INSERT INTO `User-Groups` (`name`, `ID`) VALUES
('group', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `social_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(32) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'defaultuser.png',
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `website` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `instagram` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `role` varchar(21) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cover` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'defaultcover.png',
  `homepage` tinyint(1) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `social_id`, `username`, `name`, `email`, `email_verified_at`, `avatar`, `password`, `website`, `facebook`, `twitter`, `instagram`, `linkedin`, `remember_token`, `created_at`, `updated_at`, `role`, `cover`, `homepage`, `status`) VALUES
(1, NULL, 'admin', 'admin', 'a@a.com', NULL, '1653200238.png', '$2y$10$rhEMVr1n99Hfd6WHpDxy6ucy5WnylwDoflfRTcVBoD0ocs9bz/VtK', NULL, NULL, NULL, NULL, NULL, 'SZKi2BofwodWlrtjl92TgtmdWrrLg1GhokncFPRwHsuUW1cb8r0UI5mJQs9D', '2022-04-19 16:30:58', '2022-05-22 06:17:18', 'super-admin', '1653200238.png', 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contents`
--
ALTER TABLE `contents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `embeds`
--
ALTER TABLE `embeds`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `follows`
--
ALTER TABLE `follows`
  ADD PRIMARY KEY (`user_id`,`following_user_id`),
  ADD KEY `follows_following_user_id_foreign` (`following_user_id`);

--
-- Indexes for table `likeables`
--
ALTER TABLE `likeables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`id`),
  ADD KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD PRIMARY KEY (`post_id`,`tag_id`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`);

--
-- Indexes for table `User-Groups`
--
ALTER TABLE `User-Groups`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=87;

--
-- AUTO_INCREMENT for table `contents`
--
ALTER TABLE `contents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT for table `embeds`
--
ALTER TABLE `embeds`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `likeables`
--
ALTER TABLE `likeables`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `User-Groups`
--
ALTER TABLE `User-Groups`
  MODIFY `ID` int(9) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `follows`
--
ALTER TABLE `follows`
  ADD CONSTRAINT `follows_following_user_id_foreign` FOREIGN KEY (`following_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `follows_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
