-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 09, 2022 at 12:33 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shi`
--

-- --------------------------------------------------------

--
-- Table structure for table `albumns`
--

CREATE TABLE `albumns` (
  `id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `albumns`
--

INSERT INTO `albumns` (`id`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, '2022-11-07 21:08:34', '2022-11-07 21:08:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `audit_logs`
--

CREATE TABLE `audit_logs` (
  `id` bigint UNSIGNED NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `subject_id` bigint UNSIGNED DEFAULT NULL,
  `subject_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `properties` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `host` varchar(46) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `audit_logs`
--

INSERT INTO `audit_logs` (`id`, `description`, `subject_id`, `subject_type`, `user_id`, `properties`, `host`, `created_at`, `updated_at`) VALUES
(1, 'audit:created', 1, 'App\\Models\\Category#1', 1, '{\"name\":\"hot\",\"updated_at\":\"2022-11-07 15:55:39\",\"created_at\":\"2022-11-07 15:55:39\",\"id\":1}', '45.41.104.181', '2022-11-07 20:55:39', '2022-11-07 20:55:39'),
(2, 'audit:created', 2, 'App\\Models\\Category#2', 1, '{\"name\":\"romatic\",\"updated_at\":\"2022-11-07 15:55:49\",\"created_at\":\"2022-11-07 15:55:49\",\"id\":2}', '45.41.104.181', '2022-11-07 20:55:49', '2022-11-07 20:55:49'),
(3, 'audit:created', 3, 'App\\Models\\Category#3', 1, '{\"name\":\"gexy\",\"updated_at\":\"2022-11-07 15:56:00\",\"created_at\":\"2022-11-07 15:56:00\",\"id\":3}', '45.41.104.181', '2022-11-07 20:56:00', '2022-11-07 20:56:00'),
(4, 'audit:created', 4, 'App\\Models\\Category#4', 1, '{\"name\":\"cuckldo\",\"updated_at\":\"2022-11-07 15:56:13\",\"created_at\":\"2022-11-07 15:56:13\",\"id\":4}', '45.41.104.181', '2022-11-07 20:56:13', '2022-11-07 20:56:13'),
(5, 'audit:created', 5, 'App\\Models\\Category#5', 1, '{\"name\":\"BL\",\"updated_at\":\"2022-11-07 16:00:09\",\"created_at\":\"2022-11-07 16:00:09\",\"id\":5}', '45.41.104.181', '2022-11-07 21:00:09', '2022-11-07 21:00:09'),
(6, 'audit:created', 1, 'App\\Models\\Tag#1', 1, '{\"name\":\"a tag\",\"updated_at\":\"2022-11-07 16:00:30\",\"created_at\":\"2022-11-07 16:00:30\",\"id\":1}', '45.41.104.181', '2022-11-07 21:00:30', '2022-11-07 21:00:30'),
(7, 'audit:created', 2, 'App\\Models\\Tag#2', 1, '{\"name\":\"b tag\",\"updated_at\":\"2022-11-07 16:00:37\",\"created_at\":\"2022-11-07 16:00:37\",\"id\":2}', '45.41.104.181', '2022-11-07 21:00:37', '2022-11-07 21:00:37'),
(8, 'audit:created', 3, 'App\\Models\\Tag#3', 1, '{\"name\":\"c tag\",\"updated_at\":\"2022-11-07 16:00:44\",\"created_at\":\"2022-11-07 16:00:44\",\"id\":3}', '45.41.104.181', '2022-11-07 21:00:44', '2022-11-07 21:00:44'),
(9, 'audit:created', 4, 'App\\Models\\Tag#4', 1, '{\"name\":\"d tag\",\"updated_at\":\"2022-11-07 16:01:25\",\"created_at\":\"2022-11-07 16:01:25\",\"id\":4}', '45.41.104.181', '2022-11-07 21:01:25', '2022-11-07 21:01:25'),
(10, 'audit:created', 5, 'App\\Models\\Tag#5', 1, '{\"name\":\"e tag\",\"updated_at\":\"2022-11-07 16:01:33\",\"created_at\":\"2022-11-07 16:01:33\",\"id\":5}', '45.41.104.181', '2022-11-07 21:01:33', '2022-11-07 21:01:33'),
(11, 'audit:created', 1, 'App\\Models\\Post#1', 1, '{\"title\":\"post 1\",\"slug\":\"https:\\/\\/www.youtube.com\\/watch?v=gVJ4cFURjxg\",\"description\":\"1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=gVJ4cFURjxg\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=gVJ4cFURjxg\",\"category_id\":\"1\",\"updated_at\":\"2022-11-07 16:05:12\",\"created_at\":\"2022-11-07 16:05:12\",\"id\":1,\"cover\":null,\"media\":[]}', '45.41.104.181', '2022-11-07 21:05:12', '2022-11-07 21:05:12'),
(12, 'audit:created', 2, 'App\\Models\\Post#2', 1, '{\"title\":\"post 2\",\"slug\":\"https:\\/\\/www.youtube.com\\/watch?v=-LhS8D4nqng\",\"description\":\"1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=-LhS8D4nqng\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=-LhS8D4nqng\",\"category_id\":\"2\",\"updated_at\":\"2022-11-07 16:08:16\",\"created_at\":\"2022-11-07 16:08:16\",\"id\":2,\"cover\":null,\"media\":[]}', '45.41.104.181', '2022-11-07 21:08:16', '2022-11-07 21:08:16'),
(13, 'audit:created', 1, 'App\\Models\\Albumn#1', 1, '{\"updated_at\":\"2022-11-07 16:08:34\",\"created_at\":\"2022-11-07 16:08:34\",\"id\":1,\"photo\":null,\"media\":[]}', '45.41.104.181', '2022-11-07 21:08:34', '2022-11-07 21:08:34'),
(14, 'audit:created', 3, 'App\\Models\\Post#3', 1, '{\"title\":\"post 3\",\"slug\":\"youtube.com\\/watch?v=0PLHVzteHRY\",\"description\":\"1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.\",\"download_link\":\"youtube.com\\/watch?v=0PLHVzteHRY\",\"preview_link\":\"youtube.com\\/watch?v=0PLHVzteHRY\",\"category_id\":\"4\",\"updated_at\":\"2022-11-07 16:09:36\",\"created_at\":\"2022-11-07 16:09:36\",\"id\":3,\"cover\":null,\"media\":[]}', '45.41.104.181', '2022-11-07 21:09:37', '2022-11-07 21:09:37'),
(15, 'audit:created', 4, 'App\\Models\\Post#4', 1, '{\"title\":\"post4\",\"slug\":\"https:\\/\\/www.youtube.com\\/watch?v=C9N9nbSJiV8&list=RDMM&start_radio=1&rv=0PLHVzteHRY\",\"description\":\"1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=C9N9nbSJiV8&list=RDMM&start_radio=1&rv=0PLHVzteHRY\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=C9N9nbSJiV8&list=RDMM&start_radio=1&rv=0PLHVzteHRY\",\"category_id\":\"3\",\"updated_at\":\"2022-11-07 16:13:01\",\"created_at\":\"2022-11-07 16:13:01\",\"id\":4,\"cover\":null,\"media\":[]}', '45.41.104.181', '2022-11-07 21:13:01', '2022-11-07 21:13:01'),
(16, 'audit:created', 5, 'App\\Models\\Post#5', 1, '{\"title\":\"post 5\",\"slug\":\"https:\\/\\/www.youtube.com\\/watch?v=FRv7lBYFY2g&list=RDMM&index=2\",\"description\":\"1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=FRv7lBYFY2g&list=RDMM&index=2\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=FRv7lBYFY2g&list=RDMM&index=2\",\"category_id\":\"5\",\"updated_at\":\"2022-11-07 16:18:01\",\"created_at\":\"2022-11-07 16:18:01\",\"id\":5,\"cover\":null,\"media\":[]}', '45.41.104.181', '2022-11-07 21:18:01', '2022-11-07 21:18:01'),
(17, 'audit:created', 6, 'App\\Models\\Post#6', 1, '{\"title\":\"post6\",\"slug\":\"dfasl;f;lasdfa\",\"description\":\"<p>1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=ZZoJoz5Grg0&list=RDMM&index=3\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=ZZoJoz5Grg0&list=RDMM&index=3\",\"category_id\":\"4\",\"updated_at\":\"2022-11-07 16:33:58\",\"created_at\":\"2022-11-07 16:33:58\",\"id\":6,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:33:58', '2022-11-07 21:33:58'),
(18, 'audit:created', 7, 'App\\Models\\Post#7', 1, '{\"title\":\"post7\",\"slug\":\"afasdfsadkofn fkasdnfodsa\",\"description\":\"<p>1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=Hh7thboZNoU&list=RDMM&index=4\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=Hh7thboZNoU&list=RDMM&index=4\",\"category_id\":\"1\",\"updated_at\":\"2022-11-07 16:34:49\",\"created_at\":\"2022-11-07 16:34:49\",\"id\":7,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:34:49', '2022-11-07 21:34:49'),
(19, 'audit:created', 8, 'App\\Models\\Post#8', 1, '{\"title\":\"post8\",\"slug\":\"asfsd kfaklsdfklasdfasdf\",\"description\":\"<p>1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=VJoGjNuql4g&list=RDMM&index=16\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=VJoGjNuql4g&list=RDMM&index=16\",\"category_id\":\"5\",\"updated_at\":\"2022-11-07 16:35:29\",\"created_at\":\"2022-11-07 16:35:29\",\"id\":8,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:35:29', '2022-11-07 21:35:29'),
(20, 'audit:created', 9, 'App\\Models\\Post#9', 1, '{\"title\":\"post9\",\"slug\":\"snvskj slkjfhakjdfssdkfnkja  sandfjsdj;afasdkfja  fasfshdkjfhkjashfpopasfb hskjf hkjash\",\"description\":\"<p>The Cloudflare WARP client allows individuals and organizations to have a faster, more secure, and more private experience online. The WARP client sits between your device and the Internet, and has several connection modes to better suit different needs.<\\/p><p>If you are looking for the enterprise version of WARP, refer to the <a href=\\\"https:\\/\\/developers.cloudflare.com\\/cloudflare-one\\/connections\\/connect-devices\\/warp\\/\\\">Cloudflare Zero Trust documentation<\\/a>.<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=31Oz3xIwenE&list=RDuE_YNKADt7M&index=3\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=31Oz3xIwenE&list=RDuE_YNKADt7M&index=3\",\"category_id\":\"2\",\"updated_at\":\"2022-11-07 16:36:52\",\"created_at\":\"2022-11-07 16:36:52\",\"id\":9,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:36:52', '2022-11-07 21:36:52'),
(21, 'audit:created', 10, 'App\\Models\\Post#10', 1, '{\"title\":\"post10\",\"slug\":\"asmfkl skldfklasdjkfl;aj\",\"description\":null,\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=9CZgp0plxt8&list=RDuE_YNKADt7M&index=3\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=9CZgp0plxt8&list=RDuE_YNKADt7M&index=3\",\"category_id\":\"4\",\"updated_at\":\"2022-11-07 16:37:34\",\"created_at\":\"2022-11-07 16:37:34\",\"id\":10,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:37:34', '2022-11-07 21:37:34'),
(22, 'audit:created', 11, 'App\\Models\\Post#11', 1, '{\"title\":\"post11\",\"slug\":\"fklnskafjiosjadfjasoipdjf\",\"description\":\"<p>skldfnasdnfns faiosjdfijasdiu fuisdfusaudhfuihsauidfhasdhfuhasuidfhui aufuihfuiashdufhsudhfuhsdufhuiashfuihsdufiusdhfasdfhuashufhashfhuashfuiahsufhushfuihsaufusdhfuhasufhshfuhasufhuhfuufhuisahf<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=kffacxfA7G4&list=RDuE_YNKADt7M&index=12\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=kffacxfA7G4&list=RDuE_YNKADt7M&index=12\",\"category_id\":\"4\",\"updated_at\":\"2022-11-07 16:38:33\",\"created_at\":\"2022-11-07 16:38:33\",\"id\":11,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:38:33', '2022-11-07 21:38:33'),
(23, 'audit:created', 12, 'App\\Models\\Post#12', 1, '{\"title\":\"post12\",\"slug\":\"vfj sfksdkfjakljf fjak jfkladjfk lsajdif\",\"description\":\"<p>f asoifjiodaiofjiodjfioasdifioasifiofioaiodfioaifiadjfiiaifijdif ioifioasifoaisodfpsadfioasd<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=OYdQBiGrdfo&list=RDuE_YNKADt7M&index=11\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=OYdQBiGrdfo&list=RDuE_YNKADt7M&index=11\",\"category_id\":\"4\",\"updated_at\":\"2022-11-07 16:39:43\",\"created_at\":\"2022-11-07 16:39:43\",\"id\":12,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:39:43', '2022-11-07 21:39:43'),
(24, 'audit:created', 13, 'App\\Models\\Post#13', 1, '{\"title\":\"post13\",\"slug\":\"sfkdfl kjak dkfjaldfklakfjkljaskldfjkasdjkfjksdjlkfja\",\"description\":\"<p>&nbsp;fdjaksdjfkljadff &nbsp;fafasfahsdfhsadufhui ash f aiofsdhf jkasdjk hdskjfh &nbsp;hs kdfhjaksdhfk ahsdfhad fhiuad<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13\",\"category_id\":\"4\",\"updated_at\":\"2022-11-07 16:41:59\",\"created_at\":\"2022-11-07 16:41:59\",\"id\":13,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:41:59', '2022-11-07 21:41:59'),
(25, 'audit:created', 14, 'App\\Models\\Post#14', 1, '{\"title\":\"post14\",\"slug\":\"sfj afa sdfuashdfuihasdf fhfasfuhsud fuisadh fhausdhfuiashduif fausd fuhasuidfhas\",\"description\":\"<p>df jsda fashdfjkds h hfsajhfkjashdk hasf asdhfjdshfhsdfhsdfhashdfahsad hdsahkjhaskj<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13\",\"category_id\":\"5\",\"updated_at\":\"2022-11-07 16:43:52\",\"created_at\":\"2022-11-07 16:43:52\",\"id\":14,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:43:52', '2022-11-07 21:43:52'),
(26, 'audit:created', 15, 'App\\Models\\Post#15', 1, '{\"title\":\"post16\",\"slug\":\"asdf dsfasfasdf sadfsadfasdfasdfsadfasdsadfasdfasdfasdfasdfasdfasdfasdf\",\"description\":\"<p>fsaf fasfasfsdfsdfsdfasf fsadf dfas sfasdfasdfasdfasdfasf sdfasdfasfasfasfasdfasdfasdfasdfasdfasf<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=v6e5YPqhfEQ&list=RDuE_YNKADt7M&index=16\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=v6e5YPqhfEQ&list=RDuE_YNKADt7M&index=16\",\"category_id\":\"2\",\"updated_at\":\"2022-11-07 16:47:24\",\"created_at\":\"2022-11-07 16:47:24\",\"id\":15,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:47:24', '2022-11-07 21:47:24'),
(27, 'audit:created', 16, 'App\\Models\\Post#16', 1, '{\"title\":\"post17\",\"slug\":\"flkgjksgkjfdgsfg hgsgshkfglks fgsfhgkf\",\"description\":\"<p><strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum<\\/strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<\\/p>\",\"download_link\":\"https:\\/\\/www.youtube.com\\/watch?v=2ET4VgCpJ2k&list=RDuE_YNKADt7M&index=14\",\"preview_link\":\"https:\\/\\/www.youtube.com\\/watch?v=2ET4VgCpJ2k&list=RDuE_YNKADt7M&index=14\",\"category_id\":\"2\",\"updated_at\":\"2022-11-07 16:48:51\",\"created_at\":\"2022-11-07 16:48:51\",\"id\":16,\"cover\":null,\"media\":[]}', '8.38.147.65', '2022-11-07 21:48:51', '2022-11-07 21:48:51');

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'hot', '2022-11-07 20:55:39', '2022-11-07 20:55:39', NULL),
(2, 'romatic', '2022-11-07 20:55:49', '2022-11-07 20:55:49', NULL),
(3, 'gexy', '2022-11-07 20:56:00', '2022-11-07 20:56:00', NULL),
(4, 'cuckldo', '2022-11-07 20:56:13', '2022-11-07 20:56:13', NULL),
(5, 'BL', '2022-11-07 21:00:09', '2022-11-07 21:00:09', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  `uuid` char(36) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `collection_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `file_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `mime_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `conversions_disk` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` bigint UNSIGNED NOT NULL,
  `manipulations` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `custom_properties` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `generated_conversions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `responsive_images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `order_column` int UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `model_type`, `model_id`, `uuid`, `collection_name`, `name`, `file_name`, `mime_type`, `disk`, `conversions_disk`, `size`, `manipulations`, `custom_properties`, `generated_conversions`, `responsive_images`, `order_column`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\Post', 1, 'afd792a9-71f3-497a-a1f1-9a5622f3884b', 'cover', '63692cb2315e7_bibi-never-gonna-come-down-bibis-version-music-video-20211216', '63692cb2315e7_bibi-never-gonna-come-down-bibis-version-music-video-20211216.jpeg', 'image/jpeg', 'public', 'public', 456136, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 1, '2022-11-07 21:05:12', '2022-11-07 21:05:13'),
(2, 'App\\Models\\Albumn', 1, 'd3230a4b-3ce4-45a7-97ad-38cb5beaedee', 'photo', '63692d812a78f_maxresdefault', '63692d812a78f_maxresdefault.jpg', 'image/jpeg', 'public', 'public', 98111, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 2, '2022-11-07 21:08:34', '2022-11-07 21:08:34'),
(3, 'App\\Models\\Post', 3, 'f24fe101-b245-4380-af4a-108d7435e7b4', 'cover', '63692dbadb8cf_maxresdefault', '63692dbadb8cf_maxresdefault.jpg', 'image/jpeg', 'public', 'public', 98111, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 3, '2022-11-07 21:09:37', '2022-11-07 21:09:37'),
(4, 'App\\Models\\Post', 4, '7241d900-9193-4f8b-82b4-74704dbb1903', 'cover', '63692e8ca26dd_maxresdefault', '63692e8ca26dd_maxresdefault.jpg', 'image/jpeg', 'public', 'public', 98111, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 4, '2022-11-07 21:13:01', '2022-11-07 21:13:02'),
(5, 'App\\Models\\Post', 5, '042b2c06-dd09-495a-a548-7052569dcccd', 'cover', '63692faf52540_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420', '63692faf52540_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420.jpeg', 'image/jpeg', 'public', 'public', 30265, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 5, '2022-11-07 21:18:01', '2022-11-07 21:18:01'),
(6, 'App\\Models\\Post', 6, 'c38813b3-b1cd-4eb5-8835-6bd5e9f88a0f', 'cover', '6369336fe256e_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420', '6369336fe256e_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420.jpeg', 'image/jpeg', 'public', 'public', 30265, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 6, '2022-11-07 21:33:58', '2022-11-07 21:33:58'),
(7, 'App\\Models\\Post', 7, 'fe6fc398-0733-4ed9-b564-346273998034', 'cover', '636933a2369b7_maxresdefault (1)', '636933a2369b7_maxresdefault-(1).jpg', 'image/jpeg', 'public', 'public', 81495, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 7, '2022-11-07 21:34:49', '2022-11-07 21:34:49'),
(8, 'App\\Models\\Post', 8, '6b6358f3-de5c-4d9d-9b1d-b7f6c734b758', 'cover', '636933cd69459_20210512_seoulbeats_Bibi-1-1-1152x600', '636933cd69459_20210512_seoulbeats_Bibi-1-1-1152x600.png', 'image/png', 'public', 'public', 583129, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 8, '2022-11-07 21:35:29', '2022-11-07 21:35:29'),
(9, 'App\\Models\\Post', 9, 'f895ea3d-ed4d-405c-a296-5a8dc82b0313', 'cover', '6369341e4043f_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420', '6369341e4043f_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420.jpeg', 'image/jpeg', 'public', 'public', 30265, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 9, '2022-11-07 21:36:52', '2022-11-07 21:36:53'),
(10, 'App\\Models\\Post', 10, '70422677-a08a-4c92-b9a8-577f2e872fbb', 'cover', '6369344a057f2_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420', '6369344a057f2_bfc0a670-e0bc-11ec-80c0-317b355b84aa_800_420.jpeg', 'image/jpeg', 'public', 'public', 30265, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 10, '2022-11-07 21:37:34', '2022-11-07 21:37:34'),
(11, 'App\\Models\\Post', 11, '60169827-ce11-480b-b25e-a54bf745c27f', 'cover', '636934858b02f_maxresdefault (1)', '636934858b02f_maxresdefault-(1).jpg', 'image/jpeg', 'public', 'public', 81495, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 11, '2022-11-07 21:38:33', '2022-11-07 21:38:33'),
(12, 'App\\Models\\Post', 12, '26589cb8-aa87-45df-99bc-3f1ae3dc9231', 'cover', '636934cc4d024_20210512_seoulbeats_Bibi-1-1-1152x600', '636934cc4d024_20210512_seoulbeats_Bibi-1-1-1152x600.png', 'image/png', 'public', 'public', 583129, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 12, '2022-11-07 21:39:43', '2022-11-07 21:39:43'),
(13, 'App\\Models\\Post', 13, 'd9af06ae-1e96-4441-83c7-60b4f6bb6110', 'cover', '63693553cb7cc_maxresdefault', '63693553cb7cc_maxresdefault.jpg', 'image/jpeg', 'public', 'public', 98111, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 13, '2022-11-07 21:41:59', '2022-11-07 21:41:59'),
(14, 'App\\Models\\Post', 14, '43673ff5-d8a9-4682-bd0a-d6fe64aa3dea', 'cover', '636935c52aa64_maxresdefault', '636935c52aa64_maxresdefault.jpg', 'image/jpeg', 'public', 'public', 98111, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 14, '2022-11-07 21:43:52', '2022-11-07 21:43:53'),
(15, 'App\\Models\\Post', 15, 'a148e3af-960c-47a9-92de-08d69cbcbf34', 'cover', '636936965daf8_bibi-never-gonna-come-down-bibis-version-music-video-20211216', '636936965daf8_bibi-never-gonna-come-down-bibis-version-music-video-20211216.jpeg', 'image/jpeg', 'public', 'public', 456136, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 15, '2022-11-07 21:47:24', '2022-11-07 21:47:24'),
(16, 'App\\Models\\Post', 16, '125d3dff-a241-4925-a307-925cd1a071a1', 'cover', '636936ef1c2ef_maxresdefault', '636936ef1c2ef_maxresdefault.jpg', 'image/jpeg', 'public', 'public', 98111, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 16, '2022-11-07 21:48:51', '2022-11-07 21:48:51'),
(17, 'App\\Models\\Post', 2, '0d145c42-d5f6-45b8-9cd8-95395824c300', 'cover', '636b76d6adf64_Capasdfture', '636b76d6adf64_Capasdfture.PNG', 'image/png', 'public', 'public', 1693190, '[]', '[]', '{\"thumb\":true,\"preview\":true}', '[]', 17, '2022-11-09 03:16:00', '2022-11-09 03:16:01'),
(23, 'App\\Models\\Slide', 1, '9e776990-93bb-4247-99d3-f2732dc88d4d', 'slide', 'Web 1366 – 2', '636b9ad08976b-slide', 'image/png', 'public', 'public', 258915, '[]', '[]', '[]', '[]', 21, '2022-11-09 05:49:28', '2022-11-09 05:49:28');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2022_09_10_000001_create_audit_logs_table', 1),
(4, '2022_09_10_000002_create_media_table', 1),
(5, '2022_09_10_000003_create_permissions_table', 1),
(6, '2022_09_10_000004_create_roles_table', 1),
(7, '2022_09_10_000005_create_users_table', 1),
(8, '2022_09_10_000006_create_posts_table', 1),
(9, '2022_09_10_000007_create_categories_table', 1),
(10, '2022_09_10_000008_create_books_table', 1),
(11, '2022_09_10_000009_create_tags_table', 1),
(12, '2022_09_10_000010_create_albumns_table', 1),
(13, '2022_09_10_000011_create_permission_role_pivot_table', 1),
(14, '2022_09_10_000012_create_role_user_pivot_table', 1),
(15, '2022_09_10_000013_create_post_tag_pivot_table', 1),
(16, '2022_09_10_000014_add_relationship_fields_to_posts_table', 1),
(17, '2022_09_10_000015_add_relationship_fields_to_books_table', 1),
(18, '2022_11_09_103913_create_slides_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'user_management_access', NULL, NULL, NULL),
(2, 'permission_create', NULL, NULL, NULL),
(3, 'permission_edit', NULL, NULL, NULL),
(4, 'permission_show', NULL, NULL, NULL),
(5, 'permission_delete', NULL, NULL, NULL),
(6, 'permission_access', NULL, NULL, NULL),
(7, 'role_create', NULL, NULL, NULL),
(8, 'role_edit', NULL, NULL, NULL),
(9, 'role_show', NULL, NULL, NULL),
(10, 'role_delete', NULL, NULL, NULL),
(11, 'role_access', NULL, NULL, NULL),
(12, 'user_create', NULL, NULL, NULL),
(13, 'user_edit', NULL, NULL, NULL),
(14, 'user_show', NULL, NULL, NULL),
(15, 'user_delete', NULL, NULL, NULL),
(16, 'user_access', NULL, NULL, NULL),
(17, 'audit_log_show', NULL, NULL, NULL),
(18, 'audit_log_access', NULL, NULL, NULL),
(19, 'post_management_access', NULL, NULL, NULL),
(20, 'post_create', NULL, NULL, NULL),
(21, 'post_edit', NULL, NULL, NULL),
(22, 'post_show', NULL, NULL, NULL),
(23, 'post_delete', NULL, NULL, NULL),
(24, 'post_access', NULL, NULL, NULL),
(25, 'category_create', NULL, NULL, NULL),
(26, 'category_edit', NULL, NULL, NULL),
(27, 'category_show', NULL, NULL, NULL),
(28, 'category_delete', NULL, NULL, NULL),
(29, 'category_access', NULL, NULL, NULL),
(30, 'book_management_access', NULL, NULL, NULL),
(31, 'book_create', NULL, NULL, NULL),
(32, 'book_edit', NULL, NULL, NULL),
(33, 'book_show', NULL, NULL, NULL),
(34, 'book_delete', NULL, NULL, NULL),
(35, 'book_access', NULL, NULL, NULL),
(36, 'tag_create', NULL, NULL, NULL),
(37, 'tag_edit', NULL, NULL, NULL),
(38, 'tag_show', NULL, NULL, NULL),
(39, 'tag_delete', NULL, NULL, NULL),
(40, 'tag_access', NULL, NULL, NULL),
(41, 'albumn_management_access', NULL, NULL, NULL),
(42, 'albumn_create', NULL, NULL, NULL),
(43, 'albumn_edit', NULL, NULL, NULL),
(44, 'albumn_show', NULL, NULL, NULL),
(45, 'albumn_delete', NULL, NULL, NULL),
(46, 'albumn_access', NULL, NULL, NULL),
(47, 'profile_password_edit', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `role_id` bigint UNSIGNED NOT NULL,
  `permission_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`role_id`, `permission_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(1, 6),
(1, 7),
(1, 8),
(1, 9),
(1, 10),
(1, 11),
(1, 12),
(1, 13),
(1, 14),
(1, 15),
(1, 16),
(1, 17),
(1, 18),
(1, 19),
(1, 20),
(1, 21),
(1, 22),
(1, 23),
(1, 24),
(1, 25),
(1, 26),
(1, 27),
(1, 28),
(1, 29),
(1, 30),
(1, 31),
(1, 32),
(1, 33),
(1, 34),
(1, 35),
(1, 36),
(1, 37),
(1, 38),
(1, 39),
(1, 40),
(1, 41),
(1, 42),
(1, 43),
(1, 44),
(1, 45),
(1, 46),
(1, 47),
(2, 17),
(2, 18),
(2, 19),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(2, 30),
(2, 31),
(2, 32),
(2, 33),
(2, 34),
(2, 35),
(2, 36),
(2, 37),
(2, 38),
(2, 39),
(2, 40),
(2, 41),
(2, 42),
(2, 43),
(2, 44),
(2, 45),
(2, 46),
(2, 47);

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `download_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_link` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `category_id` bigint UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `slug`, `description`, `download_link`, `preview_link`, `created_at`, `updated_at`, `deleted_at`, `category_id`) VALUES
(1, 'post 1', 'https://www.youtube.com/watch?v=gVJ4cFURjxg', '1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.', 'https://www.youtube.com/watch?v=gVJ4cFURjxg', 'https://www.youtube.com/watch?v=gVJ4cFURjxg', '2022-11-07 21:05:12', '2022-11-07 21:05:12', NULL, 1),
(2, 'post 2', 'https://www.youtube.com/watch?v=-LhS8D4nqng', '1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.', 'https://www.youtube.com/watch?v=-LhS8D4nqng', 'https://www.youtube.com/watch?v=-LhS8D4nqng', '2022-11-07 21:08:16', '2022-11-07 21:08:16', NULL, 2),
(3, 'post 3', 'youtube.com/watch?v=0PLHVzteHRY', '1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.', 'youtube.com/watch?v=0PLHVzteHRY', 'youtube.com/watch?v=0PLHVzteHRY', '2022-11-07 21:09:36', '2022-11-07 21:09:36', NULL, 4),
(4, 'post4', 'https://www.youtube.com/watch?v=C9N9nbSJiV8&list=RDMM&start_radio=1&rv=0PLHVzteHRY', '1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.', 'https://www.youtube.com/watch?v=C9N9nbSJiV8&list=RDMM&start_radio=1&rv=0PLHVzteHRY', 'https://www.youtube.com/watch?v=C9N9nbSJiV8&list=RDMM&start_radio=1&rv=0PLHVzteHRY', '2022-11-07 21:13:01', '2022-11-07 21:13:01', NULL, 3),
(5, 'post 5', 'https://www.youtube.com/watch?v=FRv7lBYFY2g&list=RDMM&index=2', '1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.', 'https://www.youtube.com/watch?v=FRv7lBYFY2g&list=RDMM&index=2', 'https://www.youtube.com/watch?v=FRv7lBYFY2g&list=RDMM&index=2', '2022-11-07 21:18:01', '2022-11-07 21:18:01', NULL, 5),
(6, 'post6', 'dfasl;f;lasdfa', '<p>1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.</p>', 'https://www.youtube.com/watch?v=ZZoJoz5Grg0&list=RDMM&index=3', 'https://www.youtube.com/watch?v=ZZoJoz5Grg0&list=RDMM&index=3', '2022-11-07 21:33:58', '2022-11-07 21:33:58', NULL, 4),
(7, 'post7', 'afasdfsadkofn fkasdnfodsa', '<p>1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.</p>', 'https://www.youtube.com/watch?v=Hh7thboZNoU&list=RDMM&index=4', 'https://www.youtube.com/watch?v=Hh7thboZNoU&list=RDMM&index=4', '2022-11-07 21:34:49', '2022-11-07 21:34:49', NULL, 1),
(8, 'post8', 'asfsd kfaklsdfklasdfasdf', '<p>1.1.1.1 with WARP replaces the connection between your device and the Internet with a modern, optimized, protocol.</p>', 'https://www.youtube.com/watch?v=VJoGjNuql4g&list=RDMM&index=16', 'https://www.youtube.com/watch?v=VJoGjNuql4g&list=RDMM&index=16', '2022-11-07 21:35:29', '2022-11-07 21:35:29', NULL, 5),
(9, 'post9', 'snvskj slkjfhakjdfssdkfnkja  sandfjsdj;afasdkfja  fasfshdkjfhkjashfpopasfb hskjf hkjash', '<p>The Cloudflare WARP client allows individuals and organizations to have a faster, more secure, and more private experience online. The WARP client sits between your device and the Internet, and has several connection modes to better suit different needs.</p><p>If you are looking for the enterprise version of WARP, refer to the <a href=\"https://developers.cloudflare.com/cloudflare-one/connections/connect-devices/warp/\">Cloudflare Zero Trust documentation</a>.</p>', 'https://www.youtube.com/watch?v=31Oz3xIwenE&list=RDuE_YNKADt7M&index=3', 'https://www.youtube.com/watch?v=31Oz3xIwenE&list=RDuE_YNKADt7M&index=3', '2022-11-07 21:36:52', '2022-11-07 21:36:52', NULL, 2),
(10, 'post10', 'asmfkl skldfklasdjkfl;aj', NULL, 'https://www.youtube.com/watch?v=9CZgp0plxt8&list=RDuE_YNKADt7M&index=3', 'https://www.youtube.com/watch?v=9CZgp0plxt8&list=RDuE_YNKADt7M&index=3', '2022-11-07 21:37:34', '2022-11-07 21:37:34', NULL, 4),
(11, 'post11', 'fklnskafjiosjadfjasoipdjf', '<p>skldfnasdnfns faiosjdfijasdiu fuisdfusaudhfuihsauidfhasdhfuhasuidfhui aufuihfuiashdufhsudhfuhsdufhuiashfuihsdufiusdhfasdfhuashufhashfhuashfuiahsufhushfuihsaufusdhfuhasufhshfuhasufhuhfuufhuisahf</p>', 'https://www.youtube.com/watch?v=kffacxfA7G4&list=RDuE_YNKADt7M&index=12', 'https://www.youtube.com/watch?v=kffacxfA7G4&list=RDuE_YNKADt7M&index=12', '2022-11-07 21:38:33', '2022-11-07 21:38:33', NULL, 4),
(12, 'post12', 'vfj sfksdkfjakljf fjak jfkladjfk lsajdif', '<p>f asoifjiodaiofjiodjfioasdifioasifiofioaiodfioaifiadjfiiaifijdif ioifioasifoaisodfpsadfioasd</p>', 'https://www.youtube.com/watch?v=OYdQBiGrdfo&list=RDuE_YNKADt7M&index=11', 'https://www.youtube.com/watch?v=OYdQBiGrdfo&list=RDuE_YNKADt7M&index=11', '2022-11-07 21:39:43', '2022-11-07 21:39:43', NULL, 4),
(13, 'post13', 'sfkdfl kjak dkfjaldfklakfjkljaskldfjkasdjkfjksdjlkfja', '<p>&nbsp;fdjaksdjfkljadff &nbsp;fafasfahsdfhsadufhui ash f aiofsdhf jkasdjk hdskjfh &nbsp;hs kdfhjaksdhfk ahsdfhad fhiuad</p>', 'https://www.youtube.com/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13', 'https://www.youtube.com/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13', '2022-11-07 21:41:59', '2022-11-07 21:41:59', NULL, 4),
(14, 'post14', 'sfj afa sdfuashdfuihasdf fhfasfuhsud fuisadh fhausdhfuiashduif fausd fuhasuidfhas', '<p>df jsda fashdfjkds h hfsajhfkjashdk hasf asdhfjdshfhsdfhsdfhashdfahsad hdsahkjhaskj</p>', 'https://www.youtube.com/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13', 'https://www.youtube.com/watch?v=23FOuRFnOcQ&list=RDuE_YNKADt7M&index=13', '2022-11-07 21:43:52', '2022-11-07 21:43:52', NULL, 5),
(15, 'post16', 'asdf dsfasfasdf sadfsadfasdfasdfsadfasdsadfasdfasdfasdfasdfasdfasdfasdf', '<p>fsaf fasfasfsdfsdfsdfasf fsadf dfas sfasdfasdfasdfasdfasf sdfasdfasfasfasfasdfasdfasdfasdfasdfasf</p>', 'https://www.youtube.com/watch?v=v6e5YPqhfEQ&list=RDuE_YNKADt7M&index=16', 'https://www.youtube.com/watch?v=v6e5YPqhfEQ&list=RDuE_YNKADt7M&index=16', '2022-11-07 21:47:24', '2022-11-07 21:47:24', NULL, 2),
(16, 'post17', 'flkgjksgkjfdgsfg hgsgshkfglks fgsfhgkf', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.<strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'https://www.youtube.com/watch?v=2ET4VgCpJ2k&list=RDuE_YNKADt7M&index=14', 'https://www.youtube.com/watch?v=2ET4VgCpJ2k&list=RDuE_YNKADt7M&index=14', '2022-11-07 21:48:51', '2022-11-07 21:48:51', NULL, 2);

-- --------------------------------------------------------

--
-- Table structure for table `post_tag`
--

CREATE TABLE `post_tag` (
  `post_id` bigint UNSIGNED NOT NULL,
  `tag_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `post_tag`
--

INSERT INTO `post_tag` (`post_id`, `tag_id`) VALUES
(1, 1),
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 2),
(2, 4),
(3, 2),
(4, 1),
(4, 3),
(4, 4),
(5, 1),
(5, 2),
(5, 3),
(6, 2),
(6, 4),
(7, 2),
(7, 5),
(8, 3),
(8, 5),
(9, 2),
(9, 5),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(11, 1),
(11, 2),
(11, 3),
(11, 4),
(11, 5),
(12, 3),
(12, 5),
(13, 1),
(13, 2),
(13, 3),
(13, 4),
(13, 5),
(14, 1),
(14, 2),
(14, 3),
(14, 4),
(14, 5),
(15, 1),
(15, 2),
(15, 3),
(15, 4),
(15, 5),
(16, 1),
(16, 2),
(16, 3),
(16, 4),
(16, 5);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `title`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', NULL, NULL, NULL),
(2, 'User', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `role_user`
--

CREATE TABLE `role_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_user`
--

INSERT INTO `role_user` (`user_id`, `role_id`) VALUES
(1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `slides`
--

CREATE TABLE `slides` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slides`
--

INSERT INTO `slides` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'slide 1', '2022-11-09 05:46:28', '2022-11-09 05:46:28');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'a tag', '2022-11-07 21:00:30', '2022-11-07 21:00:30', NULL),
(2, 'b tag', '2022-11-07 21:00:37', '2022-11-07 21:00:37', NULL),
(3, 'c tag', '2022-11-07 21:00:44', '2022-11-07 21:00:44', NULL),
(4, 'd tag', '2022-11-07 21:01:25', '2022-11-07 21:01:25', NULL),
(5, 'e tag', '2022-11-07 21:01:33', '2022-11-07 21:01:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` datetime DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin', 'admin@admin.com', NULL, '$2y$10$mrAlTcuf2XEQ.zXPc6wcaOfO9Xu8RQhfi0dhdI6/zLp026ky/h9U2', NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albumns`
--
ALTER TABLE `albumns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `audit_logs`
--
ALTER TABLE `audit_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_fk_7292400` (`category_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_uuid_unique` (`uuid`),
  ADD KEY `media_model_type_model_id_index` (`model_type`,`model_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD KEY `role_id_fk_7292331` (`role_id`),
  ADD KEY `permission_id_fk_7292331` (`permission_id`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `posts_title_unique` (`title`),
  ADD UNIQUE KEY `posts_slug_unique` (`slug`),
  ADD KEY `category_fk_7292399` (`category_id`);

--
-- Indexes for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD KEY `post_id_fk_7292398` (`post_id`),
  ADD KEY `tag_id_fk_7292398` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_user`
--
ALTER TABLE `role_user`
  ADD KEY `user_id_fk_7292340` (`user_id`),
  ADD KEY `role_id_fk_7292340` (`role_id`);

--
-- Indexes for table `slides`
--
ALTER TABLE `slides`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albumns`
--
ALTER TABLE `albumns`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `audit_logs`
--
ALTER TABLE `audit_logs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `slides`
--
ALTER TABLE `slides`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `category_fk_7292400` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_id_fk_7292331` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_id_fk_7292331` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `category_fk_7292399` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`);

--
-- Constraints for table `post_tag`
--
ALTER TABLE `post_tag`
  ADD CONSTRAINT `post_id_fk_7292398` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `tag_id_fk_7292398` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_user`
--
ALTER TABLE `role_user`
  ADD CONSTRAINT `role_id_fk_7292340` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_id_fk_7292340` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
