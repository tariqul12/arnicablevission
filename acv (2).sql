-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2025 at 07:24 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `acv`
--

-- --------------------------------------------------------

--
-- Table structure for table `abouts`
--

CREATE TABLE `abouts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `image1` varchar(255) DEFAULT NULL,
  `image2` varchar(255) DEFAULT NULL,
  `network` int(11) DEFAULT 0,
  `happy_customer` int(11) DEFAULT 0,
  `employee` int(11) DEFAULT 0,
  `awards` int(11) DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `abouts`
--

INSERT INTO `abouts` (`id`, `title`, `description`, `image1`, `image2`, `network`, `happy_customer`, `employee`, `awards`, `created_at`, `updated_at`) VALUES
(1, 'Your Trusted Partner for Seamless Connectivity', '<div class=\"pq-section pq-style-1 text-left\" style=\"margin-bottom: 30px; font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px;\"><p style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; line-height: 1.75; font-family: Rubik, sans-serif;\"><font color=\"#000000\">Yes! You\'ll be able to use your T-Mobile Home Internet to connect your computer, phone, and numerous other devices. Gauge your students’ skill level with the initial test and follow their progress.</font></p><ul class=\"about-list\" style=\"margin-top: 42px; margin-bottom: 29px; display: flex; flex-wrap: wrap; font-family: Rubik, sans-serif;\"><li style=\"margin: 0px 0px 18px; padding: 0px; list-style: none; width: 315px; flex: 0 0 50%; display: flex; align-items: flex-start;\"><font color=\"#000000\">Expert technical team</font></li><li style=\"margin: 0px 0px 18px; padding: 0px; list-style: none; width: 315px; flex: 0 0 50%; display: flex; align-items: flex-start;\"><font color=\"#000000\">Best network</font></li><li style=\"margin: 0px 0px 18px; padding: 0px; list-style: none; width: 315px; flex: 0 0 50%; display: flex; align-items: flex-start;\"><font color=\"#000000\">50+ coverage areas</font></li><li style=\"margin: 0px 0px 18px; padding: 0px; list-style: none; width: 315px; flex: 0 0 50%; display: flex; align-items: flex-start;\"><font color=\"#000000\">24/7 quick support</font></li><li style=\"margin: 0px 0px 18px; padding: 0px; list-style: none; width: 315px; flex: 0 0 50%; display: flex; align-items: flex-start;\"><font color=\"#000000\">Reasonable price packages</font></li><li style=\"margin: 0px 0px 18px; padding: 0px; list-style: none; width: 315px; flex: 0 0 50%; display: flex; align-items: flex-start;\"><font color=\"#000000\">Trusted &amp; recommended</font></li></ul></div>', 'uploads/about-image/3035566.jpg', 'uploads/about-image/25816017.jpg', 23, 300, 30, 10, '2024-08-18 11:20:32', '2025-01-05 00:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `banner_type` int(11) DEFAULT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `title`, `banner_type`, `image`, `created_at`, `updated_at`) VALUES
(1, 'banner', 1, 'uploads/banner-image/34241696.jpg', '2024-12-05 00:16:52', '2025-01-01 21:56:10'),
(2, 'Nostrum excepteur la', 1, 'uploads/banner-image/3173190.png', '2024-12-05 00:18:11', '2025-01-01 21:56:34'),
(3, 'banner', 1, 'uploads/banner-image/31471946.jpg', '2024-12-05 00:20:14', '2025-01-05 00:08:01'),
(4, 'Home Banner', 2, 'uploads/banner-image/49002137.jpg', '2025-01-01 21:57:22', '2025-01-05 00:08:45'),
(5, 'Order Banner', 4, 'uploads/banner-image/27180002.jpg', '2025-01-01 22:06:44', '2025-01-05 00:09:21'),
(6, 'Footer Banner', 5, 'uploads/banner-image/41915327.jpg', '2025-01-01 22:10:23', '2025-01-05 00:09:37'),
(7, 'Contact', 3, 'uploads/banner-image/39947567.jpg', '2025-01-01 22:15:21', '2025-01-05 00:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `benefits`
--

CREATE TABLE `benefits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` longtext NOT NULL,
  `icon` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order_status` tinyint(4) DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `benefits`
--

INSERT INTO `benefits` (`id`, `title`, `description`, `icon`, `image`, `order_status`, `status`, `created_at`, `updated_at`) VALUES
(2, 'Digital Experience', '<ul class=\"pq-fancy-list-box\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><li style=\"list-style: none; padding: 0px; text-align: left; margin: 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Fusce venenatis orci quis varius lobortis.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Duis gravida neque vel placerat molestie.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Sed scelerisque massa quis orci ull</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Pellentesque et ante vel tortor dignissim</li></ul>', 'uploads/benefit-icon/18674099.png', 'uploads/benefit-image/17150973.jpg', NULL, 1, '2024-08-19 10:18:47', '2024-08-19 10:18:47'),
(3, 'Business Planning', '<ul class=\"pq-fancy-list-box\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><li style=\"list-style: none; padding: 0px; text-align: left; margin: 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Duis gravida neque vel placerat molestie.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Sed scelerisque massa quis orci ull</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Fusce venenatis orci quis varius lobortis.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Pellentesque et ante vel tortor dignissim</li></ul>', 'uploads/benefit-icon/7110321.png', 'uploads/benefit-image/4559192.jpg', NULL, 1, '2024-08-19 10:20:06', '2024-08-19 10:20:06'),
(4, 'App Development', '<ul class=\"pq-fancy-list-box\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><li style=\"list-style: none; padding: 0px; text-align: left; margin: 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Etiam dignissim purus in varius porttitor.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Proin vitae tellus mollis tellus maximus.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Integer tempus massa nec pellentesque.</li><li style=\"list-style: none; padding: 0px; text-align: left; margin: 10px 0px 0px; transition: 0.5s ease-in-out;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); margin-right: 5px;\"></span>&nbsp;Pellentesque et ante vel tortor dignissim</li></ul>', 'uploads/benefit-icon/40442862.png', 'uploads/benefit-image/47471109.jpg', NULL, 1, '2024-08-19 10:21:24', '2024-08-19 10:21:24');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `short_description` text NOT NULL,
  `long_description` longtext NOT NULL,
  `image` text NOT NULL,
  `post_date` text NOT NULL,
  `post_timestamp` text NOT NULL,
  `hit_count` int(11) NOT NULL DEFAULT 0,
  `comment_count` int(11) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `user_id`, `title`, `short_description`, `long_description`, `image`, `post_date`, `post_timestamp`, `hit_count`, `comment_count`, `status`, `created_at`, `updated_at`) VALUES
(1, '4', 'App Promotes Sales & Profits In It Solutions', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p><div class=\"pq-blog-single-info\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word;\">Provide Exclusive Solutions</h2><p style=\"margin-bottom: 0px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p></div>', 'uploads/blog-image/38315432.jpg', '2024-08-07', '1722988800', 0, 0, 1, '2024-08-07 13:47:16', '2024-08-07 13:47:16'),
(2, '4', 'In Depth Industry & Ecosystem Analysis', 'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit', '<p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p><div class=\"pq-blog-single-info\" style=\"color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word;\">Provide Exclusive Solutions</h2><p style=\"margin-bottom: 0px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p></div>', 'uploads/blog-image/33944838.jpg', '2024-08-09', '1723161600', 0, 0, 0, '2024-08-07 13:49:17', '2024-08-08 23:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'BSD', 'Bsd', 'uploads/brand-image/19875379.png', 1, '2025-01-01 22:35:08', '2025-01-01 22:35:53'),
(2, 'Network', 'Network', 'uploads/brand-image/32694080.png', 1, '2025-01-01 22:37:47', '2025-01-01 22:37:47'),
(3, 'Borcelle', 'kjgdd', 'uploads/brand-image/5292061.png', 1, '2025-01-01 22:38:10', '2025-01-01 22:38:10'),
(4, 'Stream Studio', 'Stream Studio', 'uploads/brand-image/45925412.png', 1, '2025-01-01 22:38:33', '2025-01-01 22:38:33'),
(5, 'Cybornet', 'Cybornet', 'uploads/brand-image/13541869.png', 1, '2025-01-01 22:38:58', '2025-01-01 22:38:58'),
(6, 'Smart Home', 'Smart Home', 'uploads/brand-image/18358959.png', 1, '2025-01-01 22:39:14', '2025-01-01 22:39:14'),
(7, 'Borcell', NULL, 'uploads/brand-image/13200970.png', 1, '2025-01-01 22:39:29', '2025-01-01 22:39:29'),
(8, 'Mobile Shop', NULL, 'uploads/brand-image/9062964.png', 1, '2025-01-01 22:39:50', '2025-01-01 22:39:50'),
(9, 'Wireless', NULL, 'uploads/brand-image/26403966.png', 1, '2025-01-01 22:40:03', '2025-01-01 22:40:03');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('c525a5357e97fef8d3db25841c86da1a', 'i:1;', 1735789346),
('c525a5357e97fef8d3db25841c86da1a:timer', 'i:1735789346;', 1735789346),
('eef95f658febcee12b41ea8ec1bace29', 'i:1;', 1736056971),
('eef95f658febcee12b41ea8ec1bace29:timer', 'i:1736056971;', 1736056971);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `icon` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `home_status` tinyint(4) NOT NULL DEFAULT 1,
  `order_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `icon`, `status`, `home_status`, `order_status`, `created_at`, `updated_at`) VALUES
(3, 'Sound System', 'Networking Service\r\nCC Camera\r\nCOMPUTER ACCESSORIES\r\nPabx System\r\nSound System\r\nAttendance Device\r\nOnline Software Solution\r\nHardware Maintenance', 'uploads/category-image/49058360.jpg', 'uploads/category-icon/3591474.png', 1, 1, 1, '2024-08-10 09:27:13', '2024-12-07 00:59:49'),
(4, 'Pabx System', 'Networking Service\r\nCC Camera\r\nCOMPUTER ACCESSORIES\r\nPabx System\r\nSound System\r\nAttendance Device\r\nOnline Software Solution\r\nHardware Maintenance', 'uploads/category-image/32156718.jpg', 'uploads/category-icon/27978232.png', 1, 1, 1, '2024-08-10 09:29:11', '2024-12-07 00:59:40'),
(5, '24/7 Customer Support', 'Our Support team is Available Anable Anytime to Help You With Any with Any Service Related Issues.', 'uploads/category-image/29562404.jpg', 'uploads/category-icon/7937998.png', 1, 1, 1, '2024-08-10 09:30:44', '2024-12-31 23:01:31'),
(6, 'Affordable Packages', 'Choose from a range of budget-friendly packages designed to fit every need and budget.', 'uploads/category-image/33028174.jpg', 'uploads/category-icon/24383686.png', 1, 1, 1, '2024-08-10 09:36:20', '2024-12-31 22:59:17'),
(7, 'High-Speed Internet', 'Experience lightning-fast internet speeds, perfect for streaming, gaming, and working from home.', 'uploads/category-image/1791618.png', 'uploads/category-icon/21483241.png', 1, 1, 1, '2024-08-10 09:38:48', '2024-12-31 22:58:07');

-- --------------------------------------------------------

--
-- Table structure for table `clients`
--

CREATE TABLE `clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `message` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `clients`
--

INSERT INTO `clients` (`id`, `name`, `message`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cora Gordon', 'r randomised words which don\'t look even slightly believable. If you are going to use a passage of Lorem Ipsum, you need to be sure there isn\'t anything embarrassing hidden in the middle of text. All the Lorem Ipsum generators on the Internet tend to repeat predefined chunks as necessary, making this the first true generator on the Internet. It uses a dictiona', 'uploads/client-image/30913435.png', 1, '2025-01-01 23:13:15', '2025-01-01 23:26:55'),
(2, 'Lillith Logan', 'um is that it has a more-or-less normal distribution of letters, as opposed to using \'Content here, content here\', making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for \'lo', 'uploads/client-image/17910140.jpg', 1, '2025-01-01 23:13:48', '2025-01-01 23:26:42'),
(3, 'Tariqul Islam', 'orem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also th', 'uploads/client-image/30823901.jpg', 1, '2025-01-01 23:24:48', '2025-01-01 23:24:48'),
(4, 'Shakir', 'orum\" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, \"Lorem ipsum dolor sit amet..\", comes from a line in section 1.10.32.', 'uploads/client-image/22660040.jpg', 1, '2025-01-01 23:27:26', '2025-01-01 23:27:26');

-- --------------------------------------------------------

--
-- Table structure for table `comments`
--

CREATE TABLE `comments` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `companies`
--

CREATE TABLE `companies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `company_name` text NOT NULL,
  `slogan` text NOT NULL,
  `contact_phone` varchar(255) DEFAULT NULL,
  `support_phone` varchar(255) DEFAULT NULL,
  `contact_email` varchar(255) DEFAULT NULL,
  `support_email` varchar(255) DEFAULT NULL,
  `office_hour` varchar(255) DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `twitter_link` text DEFAULT NULL,
  `linkedin_link` text DEFAULT NULL,
  `youtube_link` text DEFAULT NULL,
  `instagram_link` text DEFAULT NULL,
  `google_map_api_link` text DEFAULT NULL,
  `android_app_image` text DEFAULT NULL,
  `android_app_url` text DEFAULT NULL,
  `ios_app_image` text DEFAULT NULL,
  `ios_app_url` text DEFAULT NULL,
  `company_address` text DEFAULT NULL,
  `company_footer_text` text DEFAULT NULL,
  `company_footer_text_bottom` text DEFAULT NULL,
  `logo_jpg` text DEFAULT NULL,
  `logo_png` text DEFAULT NULL,
  `favicon` text DEFAULT NULL,
  `title` text DEFAULT NULL,
  `payment_method_image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `companies`
--

INSERT INTO `companies` (`id`, `company_name`, `slogan`, `contact_phone`, `support_phone`, `contact_email`, `support_email`, `office_hour`, `facebook_link`, `twitter_link`, `linkedin_link`, `youtube_link`, `instagram_link`, `google_map_api_link`, `android_app_image`, `android_app_url`, `ios_app_image`, `ios_app_url`, `company_address`, `company_footer_text`, `company_footer_text_bottom`, `logo_jpg`, `logo_png`, `favicon`, `title`, `payment_method_image`, `created_at`, `updated_at`) VALUES
(1, 'arni cable vission', 'arni cable vission', '0130000000', '0130000000', 'mshimul591@gmail.com', 'support@acv.com', '10 am to 5pm', 'https://www.facebook.com/', 'https://www.twitter.com/', 'https://www.linkedin.com/', 'https://www.youtube.com/', 'https://www.instagram.com/', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3649.5582491070145!2d90.41438375412949!3d23.834302681386827!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3755c65e93a4d239%3A0xba1cd57bfe6a48c8!2sBangladesh%20Software%20Development!5e0!3m2!1sen!2sbd!4v1735705362072!5m2!1sen!2sbd', 'uploads/company-image/33033045.jpg', NULL, 'uploads/company-image/26510247.jpg', NULL, 'road 17, Nikonjo 2, Dhaka 1230', NULL, NULL, 'uploads/company-image/15154856.png', 'uploads/company-image/8862430.png', 'uploads/company-image/34524601.png', 'arni cable vission', 'uploads/company-image/11775696.jpg', '2024-08-07 01:12:17', '2024-12-31 22:44:51');

-- --------------------------------------------------------

--
-- Table structure for table `consultations`
--

CREATE TABLE `consultations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `package_id` int(11) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `consultations`
--

INSERT INTO `consultations` (`id`, `package_id`, `name`, `email`, `mobile`, `address`, `message`, `created_at`, `updated_at`) VALUES
(2, 1, 'Tariqul Islam', 'shimul@gmail.com', '01303863704', NULL, 'This is message', '2024-08-29 06:32:13', '2024-08-29 06:32:13'),
(3, 3, 'Mia Rosario', 'byri@mailinator.com', '73', 'Molestiae deleniti n', NULL, '2024-12-07 03:37:02', '2024-12-07 03:37:02'),
(4, 3, 'Jerome Boone', 'zyqezezuw@mailinator.com', '75', 'Aut quam commodo ess', NULL, '2024-12-07 04:06:05', '2024-12-07 04:06:05'),
(5, 3, 'tariqul', 'tariqul@gmail.com', '01303863702', 'Dhaka', NULL, '2024-12-07 04:28:47', '2024-12-07 04:28:47'),
(6, 3, 'tariqul', 'tariqul@gmail.com', '01303863702', 'Dhaka', NULL, '2024-12-07 04:44:13', '2024-12-07 04:44:13'),
(7, 3, 'Bruce Ryan', 'dugyd@mailinator.com', '51', 'Omnis sit alias qui', NULL, '2024-12-07 04:46:43', '2024-12-07 04:46:43'),
(8, 3, 'Aurelia Mckay', 'ragexipinu@mailinator.com', '79', 'Error quibusdam vita', NULL, '2024-12-07 04:51:05', '2024-12-07 04:51:05'),
(9, 3, 'tariqul', 'tariqul@gmail.com', '01303863702', 'basa number:47 road number:17,nikonjo 2', NULL, '2024-12-07 21:46:38', '2024-12-07 21:46:38'),
(10, 4, 'Melanie Marshall', 'becoxerof@mailinator.com', '63', 'Qui accusamus hic si', NULL, '2024-12-15 01:53:34', '2024-12-15 01:53:34'),
(11, 3, 'Salvador Harding', 'gopymavit@mailinator.com', '30', 'Repellendus Ab exer', NULL, '2024-12-15 02:25:03', '2024-12-15 02:25:03'),
(12, 3, 'Damian Estes', 'qitiqa@mailinator.com', '65', 'Fugiat quis officia', NULL, '2024-12-17 00:40:29', '2024-12-17 00:40:29'),
(13, 3, 'Mallory Gomez', 'fiqevyxivu@mailinator.com', '97', 'Doloribus dolore sim', NULL, '2024-12-17 00:42:16', '2024-12-17 00:42:16'),
(14, 1, 'Shakir', 'sakir@gmail.com', '0193249434', 'dhaka', NULL, '2024-12-17 00:46:19', '2024-12-17 00:46:19'),
(15, 3, 'rrrrrrrrrrrrr', 'r@gmail.com', '01222222222222', 'Dhaka', NULL, '2024-12-17 00:49:28', '2024-12-17 00:49:28'),
(16, 5, 'Christine Ayers', 'tiki@mailinator.com', NULL, 'Reprehenderit harum', NULL, '2025-01-01 03:46:26', '2025-01-01 03:46:26'),
(17, 4, 'tariqul', 'tariqul@gmail.com', NULL, 'Dhaka nikonjo', NULL, '2025-01-01 03:49:28', '2025-01-01 03:49:28'),
(18, 5, 'Lyle Mccall', 'warejoge@mailinator.com', '013434235434', 'Deleniti quas aut te', NULL, '2025-01-01 03:51:17', '2025-01-01 03:51:17'),
(19, 2, 'Kylie Santos', 'zigemipixo@mailinator.com', '01303863702', 'Dicta ullamco id id', NULL, '2025-01-01 23:50:36', '2025-01-01 23:50:36');

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `name`, `email`, `phone`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(1, 'shimul', 'tariqul@gmail.com', '57474', 'dhdghdghdf', 'fdhfhbdfgbs', '2024-08-12 05:26:44', '2024-08-12 05:26:44'),
(2, 'Tariqul Islam', 'tariqul@gmail.com', '01303863702', 'Web design', 'This is my Message', '2024-08-12 05:28:19', '2024-08-12 05:28:19'),
(3, 'Eric', 'nefybegi@mailinator.com', '47', 'Broadband Connection', 'Aperiam libero occae', '2024-12-07 21:55:31', '2024-12-07 21:55:31'),
(4, 'Zelda Guerra', 'biryxe@mailinator.com', '+1 (518) 658-2708', 'Duis voluptatibus cu', NULL, '2025-01-01 03:24:04', '2025-01-01 03:24:04'),
(5, 'Zelenia Warner', 'conamajiw@mailinator.com', '+1 (986) 434-9808', 'Incididunt culpa dui', 'Et ab atque enim nul', '2025-01-01 03:24:50', '2025-01-01 03:24:50');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `frequents`
--

CREATE TABLE `frequents` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question` text DEFAULT NULL,
  `answare` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `frequents`
--

INSERT INTO `frequents` (`id`, `question`, `answare`, `created_at`, `updated_at`) VALUES
(1, 'Molestiae', 'Totam iure repellend', '2024-12-04 00:11:05', '2024-12-04 00:12:37'),
(2, 'Accusantium est poss', 'Consequatur culpa', '2024-12-04 00:11:14', '2024-12-04 00:11:14');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2022_10_26_133431_create_roles_table', 1),
(5, '2022_10_26_133512_create_role_routes_table', 1),
(6, '2022_10_30_144110_create_user_role_table', 1),
(7, '2024_06_14_183912_add_two_factor_columns_to_users_table', 1),
(8, '2024_06_14_184013_create_personal_access_tokens_table', 1),
(9, '2024_06_16_111052_create_categories_table', 2),
(10, '2024_06_16_111825_create_blogs_table', 3),
(12, '2024_08_02_044116_create_services_table', 4),
(13, '2024_08_02_174403_create_other_images_table', 5),
(14, '2024_08_06_063445_create_companies_table', 6),
(15, '2024_08_07_183404_create_contacts_table', 7),
(16, '2024_08_09_053936_create_comments_table', 8),
(17, '2024_08_11_081443_create_sliders_table', 9),
(18, '2024_08_11_081938_create_whychooses_table', 9),
(19, '2024_08_11_082000_create_projects_table', 9),
(22, '2024_08_18_154922_create_abouts_table', 10),
(23, '2024_08_18_155032_create_benefits_table', 10),
(24, '2024_08_29_121158_create_consultations_table', 11),
(26, '2024_12_04_033937_create_packages_table', 12),
(27, '2024_11_23_070013_create_frequents_table', 13),
(28, '2024_12_05_035539_create_policies_table', 14),
(29, '2024_12_05_040902_create_t_conditions_table', 15),
(30, '2024_12_05_044017_create_banners_table', 16),
(31, '2025_01_02_042719_create_brands_table', 17),
(32, '2025_01_02_050405_create_clients_table', 18),
(33, '2025_01_02_050414_create_teams_table', 18);

-- --------------------------------------------------------

--
-- Table structure for table `other_images`
--

CREATE TABLE `other_images` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `image` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `other_images`
--

INSERT INTO `other_images` (`id`, `service_id`, `image`, `created_at`, `updated_at`) VALUES
(14, 1, 'uploads/other-image/45887034.png', '2024-08-10 10:14:10', '2024-08-10 10:14:10'),
(15, 1, 'uploads/other-image/41508808.jpg', '2024-08-10 10:14:10', '2024-08-10 10:14:10'),
(16, 1, 'uploads/other-image/31934465.jpg', '2024-08-10 10:14:10', '2024-08-10 10:14:10'),
(17, 2, 'uploads/other-image/47018380.webp', '2024-08-10 10:23:18', '2024-08-10 10:23:18'),
(18, 2, 'uploads/other-image/45940557.webp', '2024-08-10 10:23:18', '2024-08-10 10:23:18'),
(19, 2, 'uploads/other-image/41338153.jpg', '2024-08-10 10:23:18', '2024-08-10 10:23:18'),
(32, 7, 'uploads/other-image/15434726.jpg', '2025-01-05 00:19:03', '2025-01-05 00:19:03'),
(33, 7, 'uploads/other-image/9678019.jpg', '2025-01-05 00:19:03', '2025-01-05 00:19:03'),
(34, 7, 'uploads/other-image/26434782.jpg', '2025-01-05 00:19:03', '2025-01-05 00:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `packages`
--

CREATE TABLE `packages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `sub_title` varchar(255) DEFAULT NULL,
  `speed` varchar(255) DEFAULT NULL,
  `download_speed` varchar(255) DEFAULT NULL,
  `up_speed` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `packages`
--

INSERT INTO `packages` (`id`, `title`, `sub_title`, `speed`, `download_speed`, `up_speed`, `price`, `description`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Pakage-1', 'Get you Pakage-1 Package', '10', '10', '26', '500', '<p style=\"text-align: center; font-size: 13.4px;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Youtube 100 MB</font></span></p><p style=\"text-align: center; font-size: 13.4px;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Facebook 100 MB</font></span></p><p style=\"text-align: center; font-size: 13.4px;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">FTP 100 MB</font></span></p><p style=\"text-align: center; font-size: 13.4px;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Support 24/7</font></span></p>', 1, '2024-12-03 22:13:22', '2024-12-31 23:57:39'),
(2, 'Pakage-2', 'Get you Pakage-2 Package', '12', '12', '7', '600', '<p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Youtube 100 MB</font></span></p><p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Facebook 100 MB</font></span></p><p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">FTP 100 MB</font></span></p><p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Support 24/7</font></span></p>', 1, '2024-12-03 22:21:47', '2024-12-31 23:58:31'),
(3, 'Pakage-3', 'Get you Pakage-3 Package', '15', '43', '84', '700', '<p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Youtube 100 MB</font></span></p><p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Facebook 100 MB</font></span></p><p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">FTP 100 MB</font></span></p><p style=\"font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Support 24/7</font></span></p>', 1, '2024-12-04 00:52:23', '2024-12-31 23:58:45'),
(4, 'Pakage-4', 'Get you Pakage-4 Package', '18', '18', '100', '800', '<p style=\"color: rgb(73, 80, 87); font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\" style=\"\">Youtube 100 MB</font></span></p><p style=\"color: rgb(73, 80, 87); font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Facebook 100 MB</font></span></p><p style=\"color: rgb(73, 80, 87); font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">FTP 100 MB</font></span></p><p style=\"color: rgb(73, 80, 87); font-size: 13.4px; text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\" style=\"\">Support 24/7</font></span></p>', 1, '2024-12-04 00:55:28', '2024-12-31 23:59:22'),
(5, 'Package-5', 'Get you Pakage-5 Package', '20', '20', '20', '2000', '<p style=\"font-size: 13.4px; color: rgb(73, 80, 87); text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Youtube 100 MB</font></span></p><p style=\"font-size: 13.4px; color: rgb(73, 80, 87); text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Facebook 100 MB</font></span></p><p style=\"font-size: 13.4px; color: rgb(73, 80, 87); text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">FTP 100 MB</font></span></p><p style=\"font-size: 13.4px; color: rgb(73, 80, 87); text-align: center;\"><span style=\"font-weight: bolder;\"><font color=\"#ffffff\">Support 24/7</font></span></p>', 1, '2025-01-01 02:56:16', '2025-01-01 02:58:45');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `policies`
--

CREATE TABLE `policies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, 'This is policy', '2024-12-04 22:07:27', '2024-12-04 22:07:44');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `url` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `title`, `description`, `image`, `url`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Cement b2b', '<p>THis is description</p>', 'uploads/project-image/35280241.jpg', 'cementb2b.com', 1, '2024-08-11 05:33:05', '2024-08-20 01:58:14'),
(2, 'Professional Services', '<div class=\"col-lg-12\" style=\"flex-basis: auto; width: 1300px; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><h2 class=\"pq-portfolio-single-title\" style=\"margin: 30px 0px 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word;\">The Challenge &amp; Solution</h2><p style=\"margin-bottom: 30px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors now use Lorem Ipsum as their default model text, and a search for ‘lorem ipsum’ will uncover many web sites still in their infancy. Various versions have evolved over the years, sometimes by accident, sometimes on purpose.</p></div><div class=\"col-lg-6\" style=\"flex-basis: auto; width: 650px; max-width: 100%; padding-right: calc(var(--bs-gutter-x) * .5); padding-left: calc(var(--bs-gutter-x) * .5); margin-top: var(--bs-gutter-y); color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\"><ul class=\"pq-list-check\" style=\"margin-bottom: 1em; list-style-position: initial; list-style-image: initial;\"><li class=\"pq-list-item\" style=\"list-style: inherit;\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Proin convallis quam sed purus tincidunt, non sagittis arcu volutpat.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Vestibulum non tellus sit amet magna eleifend lobortis nec in tortor.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;Pellentesque convallis urna vitae velit facilisis fermentum.</li><li class=\"pq-list-item\" style=\"list-style: inherit; margin-top: calc(7.5px); padding-bottom: calc(7.5px);\"><span class=\"ion ion-android-done-all\" style=\"color: var(--primary-color); width: 1.25em; height: 1em;\"></span>&nbsp;In a tortor ornare, gravida magna ac, pharetra augue.</li></ul></div>', 'uploads/project-image/5675771.jpg', 'https://youtu.be/iHhbPS_fsz4?si=0GEimTt6Sba0e5d4', 1, '2024-08-20 02:07:27', '2024-08-20 02:07:27'),
(3, 'Data Protection', '<h2 class=\"pq-portfolio-single-title\" style=\"margin: 30px 0px 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Overview &amp; Challenge</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English. Many desktop publishing packages and web page editors nowuncover many web sites still in their infancy.</p>', 'uploads/project-image/10729782.jpg', 'cementb2b.com', 1, '2024-08-20 02:09:53', '2024-08-20 02:09:53'),
(4, 'Business Production', '<h4 class=\"title\" style=\"scrollbar-width: thin; outline: none; -webkit-font-smoothing: antialiased; margin-top: 0px; margin-bottom: 0px; font-weight: 700; color: var(--primary-title); font-size: 40px; font-family: &quot;DM Sans&quot;, sans-serif; text-transform: capitalize; background-color: rgb(255, 255, 255);\">Get The Best Travel Experience With Travello</h4><p class=\"pera\" style=\"scrollbar-width: thin; outline: none; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 0px; color: rgb(75, 80, 81); font-family: &quot;DM Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px; background-color: rgb(255, 255, 255);\">Travel is a transformative and enriching experience that allows individuals to explore new destinations, cultures, and landscapes. It is a fundamental human activity that has been practiced for centuries and continues to be a source of joy, learning, and personal growth.</p><p class=\"pera\" style=\"scrollbar-width: thin; outline: none; -webkit-font-smoothing: antialiased; margin-top: 18px; margin-bottom: 0px; color: rgb(75, 80, 81); font-family: &quot;DM Sans&quot;, sans-serif; hyphens: auto; line-height: 1.6; font-size: 16px; background-color: rgb(255, 255, 255);\">Travel is a transformative and enriching experience that allows individuals to explore new destinations, cultures.</p>', 'uploads/project-image/43183438.jpg', 'cementb2b.com', 1, '2024-08-20 02:11:14', '2024-08-20 02:11:14'),
(5, 'Best IT Practices', '<p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry’s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.</p><blockquote style=\"margin-bottom: 30px; background: var(--white-color); padding: 15px 30px; border-radius: 0px; border-left: 5px solid var(--primary-color); color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; font-style: normal;\"><p style=\"margin-bottom: 0px;\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.<br><span style=\"font-weight: 600; font-family: var(--title-fonts); color: var(--primary-color); font-style: italic; text-transform: uppercase;\">– Michal Smart&nbsp;</span></p></blockquote>', 'uploads/project-image/8371074.jpg', 'cementb2b.com', 1, '2024-08-20 02:12:23', '2024-08-20 02:12:23'),
(6, 'Virtual Reality', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p>', 'uploads/project-image/44095568.jpg', 'cementb2b.com', 1, '2024-08-20 02:14:43', '2024-08-20 02:14:43'),
(7, 'Security Analysis', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p>', 'uploads/project-image/38019561.jpg', 'cementb2b.com', 1, '2024-08-20 02:15:22', '2024-08-20 02:15:22'),
(8, 'Problem Solutions', '<h2 class=\"pq-blog-single-title\" style=\"margin-right: 0px; margin-bottom: 0px; margin-left: 0px; font-weight: 600; line-height: 44px; font-size: 36px; font-family: var(--title-fonts); color: var(--dark-color); text-transform: capitalize; overflow-wrap: break-word; background-color: rgb(255, 255, 255);\">Success Your Technology</h2><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magnaaliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi utaliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit.</p><p style=\"margin-bottom: 30px; color: rgb(97, 97, 97); font-family: &quot;Nunito Sans&quot;, sans-serif; font-size: 16px; background-color: rgb(255, 255, 255);\">It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout. The point of using Lorem Ipsum is that it has a more-or-less normal distribution of letters, as opposed to using ‘Content here, content here’, making it look like readable English.</p>', 'uploads/project-image/24979060.jpg', 'cementb2b.com', 1, '2024-08-20 02:15:57', '2024-08-20 02:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'well', '2024-06-15 11:09:51', '2024-06-15 11:09:51'),
(2, 'Manager', 'well', '2024-06-15 11:10:30', '2024-06-15 11:10:30'),
(3, 'Super Admin', 'Main Admin', '2024-06-17 13:56:00', '2024-06-17 13:56:00');

-- --------------------------------------------------------

--
-- Table structure for table `role_routes`
--

CREATE TABLE `role_routes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `route_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_routes`
--

INSERT INTO `role_routes` (`id`, `role_id`, `role_name`, `route_name`, `created_at`, `updated_at`) VALUES
(3, 2, 'Manager', 'category.store', '2024-06-15 11:10:30', '2024-06-15 11:10:30'),
(34, 3, 'Super Admin', 'login', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(35, 3, 'Super Admin', 'two-factor.login', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(36, 3, 'Super Admin', 'livewire.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(37, 3, 'Super Admin', 'home', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(38, 3, 'Super Admin', 'about', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(39, 3, 'Super Admin', 'contact', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(40, 3, 'Super Admin', 'role.add', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(41, 3, 'Super Admin', 'role.new', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(42, 3, 'Super Admin', 'role.manage', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(43, 3, 'Super Admin', 'role.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(44, 3, 'Super Admin', 'role.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(45, 3, 'Super Admin', 'role.delete', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(46, 3, 'Super Admin', 'user.add', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(47, 3, 'Super Admin', 'user.new', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(48, 3, 'Super Admin', 'user.manage', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(49, 3, 'Super Admin', 'user.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(50, 3, 'Super Admin', 'user.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(51, 3, 'Super Admin', 'user.delete', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(52, 3, 'Super Admin', 'category.index', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(53, 3, 'Super Admin', 'category.create', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(54, 3, 'Super Admin', 'category.store', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(55, 3, 'Super Admin', 'category.show', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(56, 3, 'Super Admin', 'category.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(57, 3, 'Super Admin', 'category.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(58, 3, 'Super Admin', 'category.destroy', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(59, 3, 'Super Admin', 'blog.index', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(60, 3, 'Super Admin', 'blog.create', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(61, 3, 'Super Admin', 'blog.store', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(62, 3, 'Super Admin', 'blog.show', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(63, 3, 'Super Admin', 'blog.edit', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(64, 3, 'Super Admin', 'blog.update', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(65, 3, 'Super Admin', 'blog.destroy', '2024-06-17 14:02:00', '2024-06-17 14:02:00'),
(66, 1, 'Admin', 'category.index', '2024-06-18 00:01:12', '2024-06-18 00:01:12'),
(67, 1, 'Admin', 'category.create', '2024-06-18 00:01:12', '2024-06-18 00:01:12');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `short_description` text DEFAULT NULL,
  `long_description` longtext DEFAULT NULL,
  `meta_title` text DEFAULT NULL,
  `meta_description` text DEFAULT NULL,
  `search_keyword` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `feather_status` tinyint(4) NOT NULL DEFAULT 1,
  `home_status` tinyint(4) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `order_status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `title`, `category_id`, `short_description`, `long_description`, `meta_title`, `meta_description`, `search_keyword`, `image`, `feather_status`, `home_status`, `status`, `order_status`, `created_at`, `updated_at`) VALUES
(1, 'Broadband Internet Provider', 4, 'Broadband Internet Provider', '<span style=\"color: rgb(153, 153, 153); font-family: &quot;Fira Sans&quot;, sans-serif; font-size: 14px; background-color: rgb(255, 255, 255);\">Amber IT is not simply another link in the chain of voice and data supply in the Bangladesh. Our pioneering spirit is evidenced by the creation of a national, fully resilient, MPLS network and the continuous testing and adoption of emerging communications platforms. As a result, we have earned the reputation of a communications provider whose focus is on solidly addressing businesses\' communications requirements.</span>', 'meta1', 'description1', 'isp,', 'uploads/service-image/15332976.png', 1, 1, 1, 1, '2024-08-10 10:14:10', '2024-12-06 22:35:10'),
(2, 'Three tech companies eyeing nuclear power for AI energy', 4, 'Three tech companies eyeing nuclear power for AI energy', '<p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 18px; line-height: 26px; color: rgb(102, 102, 102); border: 0px; padding: 0px; vertical-align: baseline; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">Edge computing is a allowing IT to deliver insight-enabled business benefits that drive new revenue streams, enhance customer engagement, accelerate innovation and make life easier and more efficient for employees, partners and others across their supply chains and ecosystems.</p><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 18px; line-height: 26px; color: rgb(102, 102, 102); border: 0px; padding: 0px; vertical-align: baseline; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\">In this article, we look at how four digital game changers across different industries are leveraging insights, actions and intelligence from the edge to deliver unprecedented value at the bottom line.</p><div class=\"nativeAdContainer\" data-adtn=\"1\" style=\"border: 0px; font-size: 16px; margin: 0px; padding: 0px; vertical-align: baseline; position: absolute; z-index: 2; width: 300px; right: 40px; top: 180px; color: rgb(50, 50, 50); font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><div id=\"div-gpt-ad-1452889091374-1\" data-google-query-id=\"CMyqxPDqlIoDFe6IrAIdJhUzpg\" style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\"><div id=\"google_ads_iframe_/3618/mcrst_1__container__\" style=\"border: 0pt none; margin: 0px; padding: 0px; vertical-align: baseline; width: 300px; height: 0px;\"></div></div></div><p style=\"margin-right: 0px; margin-bottom: 30px; margin-left: 0px; font-size: 18px; line-height: 26px; color: rgb(102, 102, 102); border: 0px; padding: 0px; vertical-align: baseline; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><span style=\"font-weight: 700; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; font-family: NHaasGroteskTXW01-75Bd, Helvetica, Arial, sans-serif;\"><a class=\"m-exitLink\" href=\"https://www.arubanetworks.com/customerstories/\" target=\"_blank\" rel=\"nofollow noopener\" style=\"color: rgb(0, 179, 172); transition: color 0.2s; border: 0px; margin: 0px; padding: 0px; vertical-align: baseline; cursor: pointer;\">Tractor Supply Company</a></span>&nbsp;(TSC) is the largest operator of rural lifestyle stores in the U.S. with more than 1,600 retail outlets serving 150 million shoppers each year. TSC turned to edge computing powered by wireless networking to deliver a better, faster and more data-driven experience for customers and employees. A major factor in supporting the edge has been a high-speed Wi-Fi network powered by HPE Aruba solutions, including Aruba Instant Access Points (IAPs), AirWave Network Management, and the Piloting Aruba Beacons and Asset Tracking solution. With advanced Wi-Fi connectivity, the company was able to modernize its store network infrastructure within 10 weeks—averaging 160 stores per week. High-speed connectivity to the edge has empowered each store with a wide range of new business capabilities, including:</p><ul style=\"margin-bottom: 30px; padding-left: 20px; border: 0px; font-size: 18px; vertical-align: baseline; list-style: disc; color: rgb(102, 102, 102); line-height: 26px; font-family: &quot;NeueHaasGroteskText W01&quot;, Helvetica, Arial, sans-serif; background-color: rgb(255, 255, 255);\"><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Mobile point of sale, with “buy online, pick up in store” applications.</li><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Faster location of inventory, pickups and checkouts with enhanced customer engagement through real-time, data-driven experiences.</li><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Contactless check-in experiences integrating precautions such as a temperature-check kiosk.</li><li style=\"border: 0px; margin: 0px; padding: 0px; vertical-align: baseline;\">Improvements in process efficiencies with mobile and internet of things (IoT) technologies.</li></ul>', 'meta', 'description', 'dssd', 'uploads/service-image/9785646.jpg', 1, 1, 1, 1, '2024-08-10 10:23:18', '2024-12-06 22:37:04'),
(7, 'Vulnerability Monitoring', 3, 'Scans your servers and firewalls for more than 60,000 known security issues and exploits and provides you with useful information and recommendations on how to make your systems and servers more secure.', '<p class=\"desc\" style=\"margin: 15px 0px; padding: 0px; font-size: 18px; line-height: 26px; font-family: Lato, arial, sans-serif;\"><font color=\"#000000\">Web security is one of the most important aspects of any online business strategy as almost all websites are constantly targeted by third parties trying to gain exposure or collect sensitive data.</font></p><p class=\"desc\" style=\"margin: 15px 0px; padding: 0px; font-size: 18px; line-height: 26px; font-family: Lato, arial, sans-serif;\"><font color=\"#000000\">Our&nbsp;<span style=\"margin: 0px; padding: 0px; font-weight: bolder;\">Network Vulnerability Monitoring</span>&nbsp;will scan your servers and firewalls for more than 60,000 known security issues and exploits and will provide you with useful information and recommendations on how to make your systems and servers more secure.</font></p><div class=\"key-features\" style=\"margin: 40px 0px; padding: 0px; font-family: Lato, arial, sans-serif; font-size: 16px;\"><h2 style=\"margin-right: 0px; margin-bottom: 25px; margin-left: 0px; padding: 0px; line-height: 1.2; font-size: 24px;\"><font color=\"#000000\">Features</font></h2><ul class=\"features-list\" style=\"margin-bottom: 1rem; font-size: 14px;\"><li style=\"background-image: url(&quot;/images/icon-arrow-list.png&quot;); background-position: 0px 3px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 20px 0px 0px; padding: 0px 0px 0px 30px;\"><h3 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.2; font-size: 18px;\"><font color=\"#000000\">No need to install any software on your side</font></h3><font color=\"#000000\">All tests are done remotely and simulate the scans that real attackers do. The results are available within minutes.</font></li><li style=\"background-image: url(&quot;/images/icon-arrow-list.png&quot;); background-position: 0px 3px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 20px 0px 0px; padding: 0px 0px 0px 30px;\"><h3 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.2; font-size: 18px;\"><font color=\"#000000\">Able to check basically all operating systems</font></h3><font color=\"#000000\">Windows, Mac, Linux, Solaris, BSD, Cisco iOS, IBM iSeries are all supported. The different tests are updated daily and when new vulnerabilities are found, they are added and tested for.</font></li><li style=\"background-image: url(&quot;/images/icon-arrow-list.png&quot;); background-position: 0px 3px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 20px 0px 0px; padding: 0px 0px 0px 30px;\"><h3 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.2; font-size: 18px;\"><font color=\"#000000\">All databases are supported as well</font></h3><font color=\"#000000\">Oracle, SQL Server, MySQL, DB2, etc. Web applications are also tested for vulnerabilities (web servers and web services)</font></li><li style=\"background-image: url(&quot;/images/icon-arrow-list.png&quot;); background-position: 0px 3px; background-size: initial; background-repeat: no-repeat; background-attachment: initial; background-origin: initial; background-clip: initial; margin: 20px 0px 0px; padding: 0px 0px 0px 30px;\"><h3 style=\"margin-right: 0px; margin-left: 0px; padding: 0px; line-height: 1.2; font-size: 18px;\"><font color=\"#000000\">We can detect compromised systems</font></h3><font color=\"#000000\">We scan for most known backdoors, viruses and malware that leave your system vulnerable to attacks from outside your network.</font></li></ul></div>', 'asfdgdf', 'adsfgre', 'sadfsd', 'uploads/service-image/6661624.jpg', 1, 1, 1, 1, '2025-01-05 00:19:03', '2025-01-05 00:19:03');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('D2E3Jhe4nGLEQtZct2vOo0BsOs3t1E9ik9RcUfXL', 4, '::1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoieHR2VDFtUVh3aUd0RDBIeFBxa0pFWXV6M1Fja1kzMVE0WUJRdUlxOSI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6NDQ6Imh0dHA6Ly9sb2NhbGhvc3QvYWN2L3B1YmxpYy9zZXJ2aWNlL2RldGFpbC83Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czozOiJ1cmwiO2E6MDp7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjQ7czoyMToicGFzc3dvcmRfaGFzaF9zYW5jdHVtIjtzOjYwOiIkMnkkMTIkWHc2Y29wdzlRL2FoSWV4NUxvcnk2TzJ1M0NxZm5JWVVCWFMyTWp0ZnE0aTBuY2tCOWNEVlciO30=', 1736058194);

-- --------------------------------------------------------

--
-- Table structure for table `sliders`
--

CREATE TABLE `sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `service_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text DEFAULT NULL,
  `image` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sliders`
--

INSERT INTO `sliders` (`id`, `service_id`, `title`, `description`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'Server & Network Monitoring', 'Looks after your servers and network devices from multiple locations around the world as often as every minute,', 'uploads/slider-image/15842039.jpg', 1, '2024-08-11 03:03:15', '2025-01-05 00:04:11'),
(2, 2, 'Uptime Monitoring', 'Continuously monitor the availability and performance of your website, server, or network to ensure it is up and running without any issues.', 'uploads/slider-image/17651084.jpg', 1, '2024-08-11 05:57:00', '2025-01-05 00:06:23'),
(3, 1, 'Webpage Monitoring', 'Ensures your website delivers the proper page content to the users, and that its download speed is within the industry standards.', 'uploads/slider-image/31281303.jpg', 1, '2024-08-11 05:58:24', '2025-01-05 00:05:34'),
(4, 1, 'Web Transaction Monitoring', 'Detects any issue related to the transactions on your website, so you can minimize the downtime and be the first to know when an issue has occured', 'uploads/slider-image/2662005.jpg', 1, '2024-08-11 05:59:07', '2025-01-05 00:06:08');

-- --------------------------------------------------------

--
-- Table structure for table `teams`
--

CREATE TABLE `teams` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `designation` text DEFAULT NULL,
  `facebook_link` text DEFAULT NULL,
  `linkedin_link` text DEFAULT NULL,
  `image` text DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `teams`
--

INSERT INTO `teams` (`id`, `name`, `designation`, `facebook_link`, `linkedin_link`, `image`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Allegra Haley', 'Voluptatem animi q', 'Hic dolor aute ex el', 'Sunt voluptatum offi', 'uploads/team-image/36029802.jpg', 1, '2025-01-01 23:14:35', '2025-01-01 23:30:04'),
(2, 'Chadwick Barron', 'Ut ullamco quia dolo', 'Est totam dolorem m', 'Rerum unde hic id of', 'uploads/team-image/48852123.jpg', 1, '2025-01-01 23:17:47', '2025-01-01 23:29:55'),
(3, 'Alamin', 'software engineer', 'https://www.facebook.com', 'https://www.linkedin.com', 'uploads/team-image/30590953.jpg', 1, '2025-01-01 23:31:43', '2025-01-01 23:31:43'),
(4, 'Tariqul', 'software engineer', 'https://www.facebook.com/', 'https://www.linkedin.com/', 'uploads/team-image/35149912.jpg', 1, '2025-01-01 23:32:20', '2025-01-01 23:34:09'),
(5, 'Mahmud', 'senior software engineer', 'https://www.facebook.com', 'https://www.linkedin.com/', 'uploads/team-image/23970029.jpg', 1, '2025-01-01 23:33:48', '2025-01-01 23:33:48');

-- --------------------------------------------------------

--
-- Table structure for table `t_conditions`
--

CREATE TABLE `t_conditions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_conditions`
--

INSERT INTO `t_conditions` (`id`, `description`, `created_at`, `updated_at`) VALUES
(1, '<p>Tram and Condition</p>', '2024-12-04 22:18:45', '2024-12-04 22:19:02');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `two_factor_secret` text DEFAULT NULL,
  `two_factor_recovery_codes` text DEFAULT NULL,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint(20) UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super Admin', 'admin@admin.com', NULL, '$2y$12$9h4Faup4QTar/odJ3gGJ0.r.g7U4E3TtwbVQrOMrdxZA.mj8L.Eg.', NULL, NULL, NULL, NULL, NULL, NULL, '2024-06-14 12:45:35', '2024-06-14 12:45:35'),
(2, 'User One', 'userone@gmail.com', NULL, '$2y$12$PxeDPj7DtqY2SLE42boNPOwzJjgDKAEK3lAMIr7KCkSWJsE7nhE4a', NULL, NULL, NULL, NULL, NULL, 'uploads/user-images/20873774.png', '2024-06-15 13:19:52', '2024-06-15 13:19:52'),
(3, 'User Two', 'usertwo@gmail.com', NULL, '$2y$12$VxkxABGIXz8VaHGwDHqXTOjeg9/3fAjAOZ8ZkWYyOnS/D6qy.kVUu', NULL, NULL, NULL, NULL, NULL, 'uploads/user-images/44035166.png', '2024-06-15 13:20:31', '2024-06-15 13:20:31'),
(4, 'admin', 'admin@gmail.com', NULL, '$2y$12$Xw6copw9Q/ahIex5Lory6O2u3CqfnIYUBXS2Mjtfq4i0nckB9cDVW', NULL, NULL, NULL, NULL, NULL, NULL, '2024-08-06 00:24:52', '2024-08-06 00:24:52');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, NULL, NULL),
(2, 3, 2, NULL, NULL),
(3, 1, 3, NULL, NULL),
(4, 4, 3, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `whychooses`
--

CREATE TABLE `whychooses` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `icon` text NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `whychooses`
--

INSERT INTO `whychooses` (`id`, `icon`, `title`, `description`, `status`, `created_at`, `updated_at`) VALUES
(2, 'uploads/whychoose-icon/30732086.png', 'High Quality Hardware', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration in…', 1, '2024-08-11 04:50:03', '2024-08-11 04:50:03'),
(3, 'uploads/whychoose-icon/48737372.png', 'Dedicated 24\\7 Support', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration in…', 1, '2024-08-11 04:51:37', '2024-08-20 01:40:02'),
(4, 'uploads/whychoose-icon/10995380.png', 'Money-back Guarantee', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration', 1, '2024-08-20 01:41:23', '2024-08-20 01:41:23'),
(5, 'uploads/whychoose-icon/15827183.png', 'Agile and Fast Working', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration i', 1, '2024-08-20 01:42:34', '2024-08-20 01:42:34'),
(6, 'uploads/whychoose-icon/29823271.png', 'Some Apps are Free', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration in', 1, '2024-08-20 01:43:31', '2024-08-20 01:43:31'),
(7, 'uploads/whychoose-icon/5747201.png', 'High Level of Usability', 'There are many variaons of passages Lorem Ipsum available, but majority have suffered alteration', 1, '2024-08-20 01:44:45', '2024-08-20 01:44:45');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `abouts`
--
ALTER TABLE `abouts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `benefits`
--
ALTER TABLE `benefits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `brands_name_unique` (`name`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_name_unique` (`name`);

--
-- Indexes for table `clients`
--
ALTER TABLE `clients`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `clients_name_unique` (`name`);

--
-- Indexes for table `comments`
--
ALTER TABLE `comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companies`
--
ALTER TABLE `companies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `consultations`
--
ALTER TABLE `consultations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `frequents`
--
ALTER TABLE `frequents`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `other_images`
--
ALTER TABLE `other_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `packages`
--
ALTER TABLE `packages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `policies`
--
ALTER TABLE `policies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_routes`
--
ALTER TABLE `role_routes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `sliders`
--
ALTER TABLE `sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teams`
--
ALTER TABLE `teams`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `teams_name_unique` (`name`);

--
-- Indexes for table `t_conditions`
--
ALTER TABLE `t_conditions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `whychooses`
--
ALTER TABLE `whychooses`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `abouts`
--
ALTER TABLE `abouts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `benefits`
--
ALTER TABLE `benefits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `clients`
--
ALTER TABLE `clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comments`
--
ALTER TABLE `comments`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `companies`
--
ALTER TABLE `companies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `consultations`
--
ALTER TABLE `consultations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `frequents`
--
ALTER TABLE `frequents`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `other_images`
--
ALTER TABLE `other_images`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `packages`
--
ALTER TABLE `packages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `role_routes`
--
ALTER TABLE `role_routes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sliders`
--
ALTER TABLE `sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `teams`
--
ALTER TABLE `teams`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `t_conditions`
--
ALTER TABLE `t_conditions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `whychooses`
--
ALTER TABLE `whychooses`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
