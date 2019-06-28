-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 28, 2019 at 02:49 AM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `byahero`
--
CREATE DATABASE IF NOT EXISTS `byahero` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `byahero`;

-- --------------------------------------------------------

--
-- Table structure for table `audits`
--

DROP TABLE IF EXISTS `audits`;
CREATE TABLE IF NOT EXISTS `audits` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `event` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `auditable_id` bigint(20) UNSIGNED NOT NULL,
  `old_values` text COLLATE utf8mb4_unicode_ci,
  `new_values` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audits_auditable_type_auditable_id_index` (`auditable_type`,`auditable_id`),
  KEY `audits_user_id_user_type_index` (`user_id`,`user_type`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `audits`
--

TRUNCATE TABLE `audits`;
--
-- Dumping data for table `audits`
--

INSERT INTO `audits` (`id`, `user_type`, `user_id`, `event`, `auditable_type`, `auditable_id`, `old_values`, `new_values`, `url`, `ip_address`, `user_agent`, `tags`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 10:13:11', '2019-05-17 10:13:11'),
(2, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"timezone\":null,\"last_login_at\":null,\"last_login_ip\":null}', '{\"timezone\":\"America\\/New_York\",\"last_login_at\":\"2019-05-17 18:13:11\",\"last_login_ip\":\"127.0.0.1\"}', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 10:13:11', '2019-05-17 10:13:11'),
(3, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '{\"first_name\":\"Admin\",\"last_name\":\"Istrator\"}', '{\"first_name\":\"Mica\",\"last_name\":\"Victorino\"}', 'http://127.0.0.1:8000/admin/auth/user/1', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 10:17:01', '2019-05-17 10:17:01'),
(4, 'App\\Models\\Auth\\User', 1, 'updated', 'App\\Models\\Auth\\User', 1, '[]', '[]', 'http://127.0.0.1:8000/logout', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:04:56', '2019-05-17 11:04:56'),
(12, NULL, NULL, 'created', 'App\\Models\\Auth\\User', 11, '[]', '{\"first_name\":\"John paul\",\"last_name\":\"Dala\",\"email\":\"jaypeedala31@gmail.com\",\"active\":true,\"confirmed\":false,\"uuid\":\"8fb9fcfd-b654-4b66-89ef-5d22e0c046b6\"}', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:24:05', '2019-05-17 11:24:05'),
(13, 'App\\Models\\Auth\\User', 11, 'updated', 'App\\Models\\Auth\\User', 11, '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:25:34', '2019-05-17 11:25:34'),
(14, 'App\\Models\\Auth\\User', 11, 'updated', 'App\\Models\\Auth\\User', 11, '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:25:35', '2019-05-17 11:25:35'),
(15, NULL, NULL, 'created', 'App\\Models\\Auth\\User', 12, '[]', '{\"first_name\":\"John paul\",\"last_name\":\"Dala\",\"email\":\"jaypeedala31@gmail.com\",\"active\":true,\"confirmed\":false,\"uuid\":\"9344a531-aa6f-4c0d-bcb0-e3032e8579c8\"}', 'http://127.0.0.1:8000/register', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:38:13', '2019-05-17 11:38:13'),
(16, 'App\\Models\\Auth\\User', 12, 'updated', 'App\\Models\\Auth\\User', 12, '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:39:28', '2019-05-17 11:39:28'),
(17, 'App\\Models\\Auth\\User', 12, 'updated', 'App\\Models\\Auth\\User', 12, '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:39:29', '2019-05-17 11:39:29'),
(18, 'App\\Models\\Auth\\User', 12, 'updated', 'App\\Models\\Auth\\User', 12, '[]', '[]', 'http://127.0.0.1:8000/login', '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/74.0.3729.131 Safari/537.36', NULL, '2019-05-17 11:41:16', '2019-05-17 11:41:16');

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

DROP TABLE IF EXISTS `locations`;
CREATE TABLE IF NOT EXISTS `locations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `region` varchar(50) DEFAULT NULL,
  `description` text,
  `upload_path` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `locations`
--

TRUNCATE TABLE `locations`;
--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `name`, `region`, `description`, `upload_path`, `created_at`, `updated_at`) VALUES
(1, 'cebu', 'visayas', NULL, NULL, '2019-06-22 04:21:06', '2019-06-22 04:37:31'),
(2, 'ilocos', 'luzon', NULL, NULL, '2019-06-22 04:21:06', '2019-06-22 04:37:34'),
(3, 'Davao', 'mindanao', 'Test', '', '2019-06-26 13:04:25', NULL),
(4, 'Bicol', 'luzon', 'Test', 'byahero-locations-2019-06-27_1561593984.jpg', '2019-06-27 00:06:24', NULL),
(5, 'Leyte', 'luzon', 'Test', 'byahero-locations-2019-06-28_1561682104.png', '2019-06-28 00:35:04', NULL),
(6, 'Zamboanga', 'mindanao', 'TEst', 'byahero-locations-2019-06-28_1561682230.png', '2019-06-28 00:37:10', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

DROP TABLE IF EXISTS `packages`;
CREATE TABLE IF NOT EXISTS `packages` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tour_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `packages`
--

TRUNCATE TABLE `packages`;
--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `tour_id`, `name`, `description`, `updated_at`, `created_at`) VALUES
(1, 1, 'Cebu City Tour + Temple of Leah', 'HIGHLIGHTS:\r\nMagellan’s Cross\r\nBasilica Minor del Sto. Nino\r\nFort San Pedro\r\nCebu Heritage Monument\r\nYap Santiago Ancestral House\r\nFuente Osmena Circle, Capitol Building (Running Tour)\r\nTaoist Temple\r\nBuffet lunch restaurant (PLS REFER TABLE)\r\nTemple of Leah\r\n\r\nTOUR INCLUSIONS:\r\nPrivate car/van with Fuel and driver\r\nBuffet lunch/dinner\r\nDOT English Tour Guide\r\nAll Entrance fees', '2019-06-27 05:07:08', '2019-06-22 08:42:54'),
(2, 1, 'Mactan Island Hopping (Exclusive)', 'TOUR INCLUSIONS:\r\nRound trip private transfers from Mactan Airport/Mandaue city/Cebu city accommodation to destinations and v.v\r\nFuel and driver\r\nSet lunch with 1 round drinks\r\nTour Coordinator/tour facilitator\r\nEntrance fees\r\nBoat fees\r\nIsland hopping to Nalusuan and Hilutungan\r\n\r\nEXCLUSIONS:\r\nSnorkelling Gear\r\nBread for fishfeeding\r\nOthers not mentioned', '2019-06-27 05:07:13', '2019-06-22 08:42:54'),
(3, 1, 'Oslob Whale Shark Adventure + Tumalog Falls (Exclusive)', 'TOUR INCLUSIONS:\r\nRound trip private transfers from Mactan Airport/Mandaue City/Cebu city accommodation to destinations and v.v\r\nFuel and driver\r\nSet lunch with 1 round drinks\r\nLocal Tour Coordinator/facilitator at the activity area\r\nEntrance fees for Whaleshark ( viewing & snorkeling)\r\nEncounter with the whale shark\r\nSide trip to Tumalog falls or At Oslob Cuartel\r\nTumalog FallsEntrance fee\r\nSnorkeling mask and goggles\r\nLife vest', '2019-06-27 05:07:16', '2019-06-22 08:42:54'),
(4, 1, 'Oslob Whale Shark Adventure + Badian Canyoneering (Exclusive)', 'Round trip private transfers from Mactan Airport/Mandaue city/Cebu city accommodation to destinations and v.v\r\nFuel and driver\r\nSet lunch with 1 round drinks\r\nTour Coordinator/Facilitator at the activity area\r\nBoat fees?All entrance fees\r\nLifevest\r\nBadian Canyoneering with gears\r\nHelmet, Lifevest, Aqua Shoes, Common Dry bag', '2019-06-27 05:07:19', '2019-06-22 08:42:54'),
(5, 1, 'Moalboal Island Hopping (Exclusive)', 'TOUR INCLUSIONS:\r\nRound trip private transfers from Mactan Airport/Mandaue city/Cebu city accommodation to destinations and v.v\r\nFuel and driver\r\nLocal tour Guide only at the activity area\r\nBoat fees\r\nBoat man\r\nSet Lunch with 1 round of drinks\r\nLife vest\r\nSnorkeling gear\r\nIsland hopping to Pescador Island with Sardines Run\r\nWatching Sea Turtle', '2019-06-27 05:07:22', '2019-06-22 08:42:54'),
(6, 3, 'teest', 'asdad', '2019-06-27 05:07:25', '2019-06-27 04:45:20'),
(7, 7, 'Package 1', 'Test', NULL, '2019-06-28 00:43:10');

-- --------------------------------------------------------

--
-- Table structure for table `packages_pax`
--

DROP TABLE IF EXISTS `packages_pax`;
CREATE TABLE IF NOT EXISTS `packages_pax` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `package_id` int(11) NOT NULL,
  `pax` int(11) NOT NULL,
  `amount` double NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `packages_pax`
--

TRUNCATE TABLE `packages_pax`;
--
-- Dumping data for table `packages_pax`
--

INSERT INTO `packages_pax` (`id`, `package_id`, `pax`, `amount`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 4550, '2019-06-22 08:56:39', '0000-00-00 00:00:00'),
(2, 1, 2, 2615, '2019-06-22 08:56:39', '0000-00-00 00:00:00'),
(3, 1, 3, 2053, '2019-06-22 08:56:39', '0000-00-00 00:00:00'),
(4, 1, 4, 1773, '2019-06-22 08:56:39', '0000-00-00 00:00:00'),
(5, 1, 5, 1604, '2019-06-22 08:56:39', '0000-00-00 00:00:00'),
(6, 6, 4, 1200, '2019-06-27 04:45:20', '0000-00-00 00:00:00'),
(7, 6, 1, 4000, '2019-06-27 04:45:20', '0000-00-00 00:00:00'),
(8, 6, 2, 2300, '2019-06-27 04:45:20', '0000-00-00 00:00:00'),
(13, 3, 1, 3000, '2019-06-27 05:13:53', '0000-00-00 00:00:00'),
(14, 3, 2, 2000, '2019-06-27 05:13:53', '0000-00-00 00:00:00'),
(15, 7, 1, 3000, '2019-06-28 00:43:10', '0000-00-00 00:00:00'),
(16, 7, 2, 2000, '2019-06-28 00:43:10', '0000-00-00 00:00:00'),
(17, 7, 3, 1500, '2019-06-28 00:43:10', '0000-00-00 00:00:00'),
(18, 7, 4, 1000, '2019-06-28 00:44:30', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `password_histories`
--

DROP TABLE IF EXISTS `password_histories`;
CREATE TABLE IF NOT EXISTS `password_histories` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `password_histories_user_id_foreign` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_histories`
--

TRUNCATE TABLE `password_histories`;
--
-- Dumping data for table `password_histories`
--

INSERT INTO `password_histories` (`id`, `user_id`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, '$2y$10$qtnD5FOZgDugLCzp46ZDqeqi4mPDRLMbVZ4ihy5CEEy/wdd/QmwPi', '2019-05-17 10:10:46', '2019-05-17 10:10:46'),
(2, 2, '$2y$10$qKUr2NOpEf1YnbautKwRceUYXIoeyAbUFL9jeOzUowq79l4maQ75S', '2019-05-17 10:10:46', '2019-05-17 10:10:46'),
(3, 3, '$2y$10$PyxbNneC7QqnOCrBGv/ZE.jofhJYeG9uWo5KSasy96qKGLcpVIXx.', '2019-05-17 10:10:47', '2019-05-17 10:10:47'),
(12, 12, '$2y$10$QrlJwCqlEH19.0eIAS94/umBsvJfYwTzk3IlR6N.tdu1PEUvLTkdC', '2019-05-17 11:38:13', '2019-05-17 11:38:13');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `password_resets`
--

TRUNCATE TABLE `password_resets`;
--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('jaypeedala31@gmail.com', '$2y$10$0A8sUh9oBlF/CG1JE5VjxuFVvJReOqE2pMSKOvUUBmnpX/X6sowvq', '2019-05-17 12:23:41');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  UNIQUE KEY `sessions_id_unique` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `sessions`
--

TRUNCATE TABLE `sessions`;
-- --------------------------------------------------------

--
-- Table structure for table `testimonials`
--

DROP TABLE IF EXISTS `testimonials`;
CREATE TABLE IF NOT EXISTS `testimonials` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL DEFAULT '0',
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `comment` text NOT NULL,
  `rate` double NOT NULL,
  `is_anonymous` tinyint(4) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `testimonials`
--

TRUNCATE TABLE `testimonials`;
--
-- Dumping data for table `testimonials`
--

INSERT INTO `testimonials` (`id`, `user_id`, `first_name`, `last_name`, `contact`, `email`, `comment`, `rate`, `is_anonymous`, `status`, `created_at`, `updated_at`) VALUES
(1, 0, 'Mica', 'Victorino', NULL, 'admin@admin.com', 'Test', 5, 1, 0, '2019-06-27 06:25:28', '2019-06-27 07:53:49'),
(2, 0, 'Mica', 'Victorino', NULL, 'admin@admin.com', 'Huwaaw', 0, 1, 0, '2019-06-27 06:43:38', '2019-06-27 07:53:47'),
(3, 0, 'Mica', 'Victorino', NULL, 'admin@admin.com', 'qweqweqweqw', 5, 1, 1, '2019-06-27 07:55:49', '2019-06-27 07:56:37'),
(4, 0, 'JM', 'Urgelles', '09999999999', 'jmurgelles@gmail.com', 'Test Rating', 4, 1, 1, '2019-06-28 00:46:14', '2019-06-28 00:46:40');

-- --------------------------------------------------------

--
-- Table structure for table `tours`
--

DROP TABLE IF EXISTS `tours`;
CREATE TABLE IF NOT EXISTS `tours` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `location_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `pax` int(11) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` text,
  `upload_path` text,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `tours`
--

TRUNCATE TABLE `tours`;
--
-- Dumping data for table `tours`
--

INSERT INTO `tours` (`id`, `location_id`, `name`, `pax`, `price`, `description`, `upload_path`, `created_at`, `updated_at`) VALUES
(1, 1, 'CEBU OPTIONAL TOURS', 5, 1604, NULL, NULL, '2019-06-22 08:40:34', '2019-06-22 08:57:24'),
(2, 1, 'MALAPASCUA ISLAND TOUR', 5, 1352, NULL, NULL, '2019-06-22 08:40:34', '0000-00-00 00:00:00'),
(3, 4, 'Mayon Tour', NULL, NULL, '', 'byahero-tours-2019-06-27_1561594463.jpg', '2019-06-27 00:14:23', '2019-06-27 01:09:57'),
(4, 3, 'TEst', NULL, NULL, '', 'byahero-tours-2019-06-27_1561597143.jpg', '2019-06-27 00:59:03', '2019-06-27 01:10:02'),
(5, 2, 'Sample', 5, 3333, '', 'byahero-tours-2019-06-27_1561597191.png', '2019-06-27 00:59:51', '2019-06-27 01:12:05'),
(6, 3, 'Another 1', 4, 9000, '', 'byahero-tours-2019-06-27_1561597913.png', '2019-06-27 01:11:53', '0000-00-00 00:00:00'),
(7, 6, 'Sample Tour', 5, 4500, '', 'byahero-tours-2019-06-28_1561682474.png', '2019-06-28 00:41:14', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tours_id` int(11) NOT NULL,
  `packages_id` int(11) DEFAULT NULL,
  `packages_pax_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `amount` double NOT NULL,
  `pax` double NOT NULL,
  `travel_date` date NOT NULL,
  `rate` int(11) DEFAULT NULL,
  `comment` text,
  `is_review` tinyint(4) NOT NULL DEFAULT '0',
  `upload_path` text,
  `payment_status` tinyint(4) NOT NULL DEFAULT '0',
  `is_rejected` tinyint(4) DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Truncate table before insert `transactions`
--

TRUNCATE TABLE `transactions`;
--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tours_id`, `packages_id`, `packages_pax_id`, `user_id`, `amount`, `pax`, `travel_date`, `rate`, `comment`, `is_review`, `upload_path`, `payment_status`, `is_rejected`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 2, 1, 2615, 2, '2020-02-10', NULL, NULL, 0, 'byahero-payment-2019-06-28_1561680222.jpg', 2, 0, '2019-06-24 05:20:02', '2019-06-28 00:03:43'),
(2, 1, 1, 2, 1, 2615, 2, '2020-02-02', NULL, NULL, 0, 'byahero-payment-2019-06-26_1561551907.PNG', 1, 0, '2019-06-24 05:30:05', '2019-06-26 12:25:21'),
(3, 1, 1, 2, 1, 2615, 2, '2020-03-03', NULL, NULL, 0, 'byahero-payment-2019-06-28_1561677703.jpg', 0, 0, '2019-06-27 23:17:46', '2019-06-27 23:21:43'),
(4, 1, 1, 3, 15, 2053, 3, '2019-08-10', NULL, NULL, 0, 'byahero-payment-2019-06-28_1561681298.jpg', 1, 1, '2019-06-27 23:49:08', '2019-06-28 00:23:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT 'user',
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'gravatar',
  `avatar_location` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_changed_at` timestamp NULL DEFAULT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `marital_status` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `contact_no` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tel_no` varchar(30) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `province` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `confirmation_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `timezone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login_at` timestamp NULL DEFAULT NULL,
  `last_login_ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `to_be_logged_out` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Truncate table before insert `users`
--

TRUNCATE TABLE `users`;
--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `uuid`, `role`, `first_name`, `last_name`, `email`, `avatar_type`, `avatar_location`, `password`, `password_changed_at`, `username`, `birthday`, `marital_status`, `gender`, `contact_no`, `tel_no`, `address`, `city`, `province`, `zip`, `active`, `confirmation_code`, `confirmed`, `timezone`, `last_login_at`, `last_login_ip`, `to_be_logged_out`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'bca04613-3677-4f6d-b065-a6280348377d', 'admin', 'Mica', 'Victorino', 'admin@admin.com', 'gravatar', NULL, '$2y$10$3u6fX1hjLRtI/Nzhaj82BOA2A0ZQSQz9yMa0XGPrD3h0o5qKAwhLm', NULL, 'msvictorino', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '2a372fa2e2dd3510adf642b91a5fe6af', 1, 'America/New_York', '2019-05-17 10:13:11', '127.0.0.1', 0, 'WcNPlRRtnBABmmVP3aJOxKWjskoICTi8TQzCWluN5RFi4Q3p4X9f8MpmUU3T', '2019-05-17 10:10:46', '2019-05-17 10:17:01', NULL),
(2, '9e4750a6-9962-431b-9324-e2314983f17f', 'user', 'Backend', 'User', 'executive@executive.com', 'gravatar', NULL, '$2y$10$3u6fX1hjLRtI/Nzhaj82BOA2A0ZQSQz9yMa0XGPrD3h0o5qKAwhLm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'cda5cf052a7a185a8f6679d7b32bc7c9', 1, NULL, NULL, NULL, 0, NULL, '2019-05-17 10:10:46', '2019-05-17 10:10:46', NULL),
(3, 'd2b9eeae-4e49-4b6b-b069-ade5b66c775b', 'user', 'Default', 'User', 'user@user.com', 'gravatar', NULL, '$2y$10$3u6fX1hjLRtI/Nzhaj82BOA2A0ZQSQz9yMa0XGPrD3h0o5qKAwhLm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, 'f9fc6470c33cb877c544666870dc56bf', 1, NULL, NULL, NULL, 0, NULL, '2019-05-17 10:10:46', '2019-05-17 10:10:46', NULL),
(12, '9344a531-aa6f-4c0d-bcb0-e3032e8579c8', 'user', 'John paul', 'Dala', 'jaypeedala01@gmail.com', 'gravatar', NULL, '$2y$10$3u6fX1hjLRtI/Nzhaj82BOA2A0ZQSQz9yMa0XGPrD3h0o5qKAwhLm', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '112b50086ef65627cb0c51daddc268b8', 0, NULL, NULL, NULL, 0, 'pbqoKtATrZPa15nl0AYCKjN3IMHahXSLkLSyoHpIzifbvv4UVvomuOCvl0ye', '2019-05-17 11:38:12', '2019-05-17 11:38:12', NULL),
(15, '09557223-bc6b-487a-9902-b05905dafe93', 'user', 'JM', 'Urgelles', 'jmurgelles@gmail.com', 'gravatar', NULL, '$2y$10$WdLBMWPVqdTGB/rzH7VVeuEhaYnPXP9Bl3meDygl0qck6aASyhAE.', NULL, 'jmurgelles', '1998-11-11', 'married', 'female', '09999999999', '', 'FEU Tech', 'Antipolo', '', '1905', 1, NULL, 0, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
