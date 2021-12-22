-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 22, 2021 at 01:57 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `member_area`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2016_06_01_000001_create_oauth_auth_codes_table', 1),
(4, '2016_06_01_000002_create_oauth_access_tokens_table', 1),
(5, '2016_06_01_000003_create_oauth_refresh_tokens_table', 1),
(6, '2016_06_01_000004_create_oauth_clients_table', 1),
(7, '2016_06_01_000005_create_oauth_personal_access_clients_table', 1),
(8, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(10, '2021_12_14_145538_alter_user_table', 2),
(11, '2021_12_14_153806_alter_trans_h_orders_table', 2),
(12, '2021_12_15_123131_alter_testimoni_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `m_bills`
--

CREATE TABLE `m_bills` (
  `id` int(11) NOT NULL,
  `id_h_orders` int(11) NOT NULL,
  `bukti` text DEFAULT NULL,
  `id_status` int(11) DEFAULT NULL,
  `total_bayar` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_bills`
--

INSERT INTO `m_bills` (`id`, `id_h_orders`, `bukti`, `id_status`, `total_bayar`, `created_at`, `updated_at`) VALUES
(40, 71, 'IMG_20191108_185007.jpg', 3, '5000000', '2021-12-20 19:59:14', '2021-12-21 01:53:48'),
(41, 72, NULL, 3, '20000000', '2021-12-21 01:55:11', '2021-12-21 01:56:49'),
(42, 73, 'Screenshot_2021-12-18-23-51-14-53_d15124677369a076b7f20d8b3d49d7a4.jpg', 4, '5000000', '2021-12-21 02:24:18', '2021-12-21 23:30:28'),
(43, 74, 'Screenshot_2021-12-18-23-51-14-53_d15124677369a076b7f20d8b3d49d7a4.jpg', 2, '20000000', '2021-12-21 02:35:33', '2021-12-21 02:46:10'),
(44, 75, 'IMG-20210921-WA0025.jpg', 1, '3500000', '2021-12-21 07:19:25', '2021-12-21 07:20:25'),
(45, 76, 'IMG-20210921-WA0023.jpg', 1, '5000000', '2021-12-21 07:23:40', '2021-12-21 07:23:51'),
(46, 82, NULL, 1, '5000000', '2021-12-21 08:34:49', '2021-12-21 08:34:49'),
(47, 83, NULL, 1, '20000000', '2021-12-21 09:43:46', '2021-12-21 09:43:46'),
(48, 84, NULL, 1, '5000000', '2021-12-21 09:48:00', '2021-12-21 09:48:00'),
(49, 92, NULL, 1, '5,000,000', '2021-12-21 21:51:11', '2021-12-21 21:51:11'),
(50, 93, 'IMG_20201111_205733.jpg', 1, '3,500,000', '2021-12-21 21:55:04', '2021-12-21 21:56:31');

-- --------------------------------------------------------

--
-- Table structure for table `m_domain`
--

CREATE TABLE `m_domain` (
  `id` int(11) NOT NULL,
  `name` varchar(10) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_domain`
--

INSERT INTO `m_domain` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, '.com', NULL, NULL),
(2, '.co.id', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_notification`
--

CREATE TABLE `m_notification` (
  `id` int(11) NOT NULL,
  `id_h_orders` int(11) DEFAULT NULL,
  `id_customers` int(11) DEFAULT NULL,
  `tittle` text NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_notification`
--

INSERT INTO `m_notification` (`id`, `id_h_orders`, `id_customers`, `tittle`, `description`, `created_at`, `updated_at`) VALUES
(105, NULL, 4, 'Happy Birthday', 'Wish You All The Best', '2021-12-20 12:15:10', '2021-12-20 12:15:10'),
(106, NULL, 6, 'Happy Birthday', 'Wish You All The Best', '2021-12-20 19:31:21', '2021-12-20 19:31:21'),
(107, NULL, 9, 'Happy Birthday', 'Wish You All The Best', '2021-12-20 19:36:25', '2021-12-20 19:36:25'),
(108, 71, 9, 'Domain Expired', 'Your Domain will expired in 1 months', '2021-12-20 20:17:09', '2021-12-20 20:17:09'),
(116, NULL, 32, 'Happy Birthday hehohi', 'Wish You All The Best', '2021-12-21 03:42:08', '2021-12-21 03:42:08'),
(117, NULL, 33, 'Happy Birthday Doni romdoni', 'Wish You All The Best', '2021-12-21 03:42:08', '2021-12-21 03:42:08'),
(118, NULL, 34, 'Happy Birthday doni', 'Wish You All The Best', '2021-12-21 03:42:09', '2021-12-21 03:42:09'),
(119, NULL, 35, 'Happy Birthday Ade Ridwan', 'Wish You All The Best', '2021-12-21 03:42:09', '2021-12-21 03:42:09'),
(120, NULL, 36, 'Happy Birthday Doni Romdoni', 'Wish You All The Best', '2021-12-21 03:42:09', '2021-12-21 03:42:09'),
(121, NULL, 59, 'Happy Birthday hemm', 'Wish You All The Best', '2021-12-22 02:54:56', '2021-12-22 02:54:56'),
(122, NULL, 65, 'Happy Birthday ghgh', 'Wish You All The Best', '2021-12-22 02:56:44', '2021-12-22 02:56:44');

-- --------------------------------------------------------

--
-- Table structure for table `m_price`
--

CREATE TABLE `m_price` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `price` double NOT NULL,
  `description` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_price`
--

INSERT INTO `m_price` (`id`, `name`, `price`, `description`, `created_at`, `updated_at`) VALUES
(1, 'silver', 3500000, 'Perpanjangan Rp. 1.500.000 / Tahun\r\nNama Domain .Com\r\nKapasitas Penyimpanan Data Unlimited\r\nBandwidth Unlimited\r\nDesain Web Sesuai Permintaan\r\nFasilitas Halaman Admin\r\nTraining Halaman Admin\r\n1 Akun Webmail\r\nMaintenance Google Ads 1 Minggu\r\nTraining Optimasi Website', NULL, NULL),
(2, 'gold', 5000000, 'Perpanjangan Rp. 2.500.000 / Tahun\r\nNama Domain .Com\r\nKapasitas Penyimpanan Data Unlimited\r\nBandwidth Unlimited\r\nDesain Web Sesuai Permintaan\r\nFasilitas Halaman Admin\r\nTraining Halaman Admin\r\nAkun Webmail Unlimited\r\nMaintenance Google Ads 1 Bulan\r\nTraining Optimasi Website\r\nTraining Optimasi Media Sosial', NULL, NULL),
(3, 'platinum', 7000000, 'Perpanjangan Rp. 7.000.000 /Tahun\r\nNama Domain .Com dan .Co.Id\r\nKapasitas Penyimpanan Data Unlimited\r\nBandwidth Unlimited\r\nDesain Web Sesuai Permintaan\r\nFasilitas Halaman Admin\r\nTraining dan Modul Halaman Admin\r\nAkun Webmail Unlimited\r\nAkses Login CPanel\r\nMaintenance Google Ads 1 Bulan\r\nTraining Optimasi Website & Media Sosial\r\n', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_status`
--

CREATE TABLE `m_status` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `m_status`
--

INSERT INTO `m_status` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Waiting', NULL, NULL),
(2, 'Active', NULL, NULL),
(3, 'On Progress', NULL, NULL),
(4, 'Finished', NULL, NULL),
(5, 'Failed', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `provider` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `provider`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Laravel Personal Access Client', 'OktimBug4ZU1MbGtADGQDq1PEDBZQrZBwtuiPshu', NULL, 'http://localhost', 1, 0, 0, '2021-12-05 01:46:46', '2021-12-05 01:46:46'),
(2, NULL, 'Laravel Password Grant Client', '7MUcX8tPFXkXId2sNEVOVIuKXL2tXJF4m8x57tTC', 'users', 'http://localhost', 0, 1, 0, '2021-12-05 01:46:46', '2021-12-05 01:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `client_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2021-12-05 01:46:46', '2021-12-05 01:46:46');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `trans_d_orders`
--

CREATE TABLE `trans_d_orders` (
  `id` int(11) NOT NULL,
  `id_h_orders` int(11) NOT NULL,
  `progress` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_d_orders`
--

INSERT INTO `trans_d_orders` (`id`, `id_h_orders`, `progress`, `created_at`, `updated_at`) VALUES
(58, 71, 80, '2021-12-20 19:59:14', '2021-12-21 02:18:52'),
(59, 72, 90, '2021-12-21 01:55:11', '2021-12-21 02:09:12'),
(60, 73, 10, '2021-12-21 02:24:17', '2021-12-21 02:25:38'),
(61, 74, 70, '2021-12-21 02:35:33', '2021-12-21 02:48:15'),
(62, 75, 0, '2021-12-21 07:19:25', '2021-12-21 07:19:25'),
(63, 76, 0, '2021-12-21 07:23:40', '2021-12-21 07:23:40'),
(69, 82, 0, '2021-12-21 08:34:49', '2021-12-21 08:34:49'),
(70, 83, 0, '2021-12-21 09:43:46', '2021-12-21 09:43:46'),
(71, 84, 0, '2021-12-21 09:48:00', '2021-12-21 09:48:00'),
(79, 92, 0, '2021-12-21 21:51:11', '2021-12-21 21:51:11'),
(80, 93, 0, '2021-12-21 21:55:04', '2021-12-21 21:55:04');

-- --------------------------------------------------------

--
-- Table structure for table `trans_h_orders`
--

CREATE TABLE `trans_h_orders` (
  `id` int(11) NOT NULL,
  `project_name` text NOT NULL,
  `id_customers` int(11) NOT NULL,
  `id_price` int(11) NOT NULL,
  `name_domain` varchar(50) NOT NULL,
  `id_domain` int(11) NOT NULL,
  `lama_p` varchar(50) DEFAULT NULL,
  `mulai_p` date DEFAULT NULL,
  `selesai_p` date DEFAULT NULL,
  `lama_domain` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `link_group_wa` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_h_orders`
--

INSERT INTO `trans_h_orders` (`id`, `project_name`, `id_customers`, `id_price`, `name_domain`, `id_domain`, `lama_p`, `mulai_p`, `selesai_p`, `lama_domain`, `created_at`, `updated_at`, `link_group_wa`) VALUES
(71, 'Website Sekolah', 9, 2, 'smanmaju.co.id', 1, '3 bulan', '2021-12-07', '2021-12-21', '2021-12-21', '2021-12-20 19:59:14', '2021-12-21 01:20:50', 'https://chat.whatsapp.com/JfuZaV1Dzhd8AIXobLkQFo'),
(72, 'aabccc', 31, 3, 'ABC.com', 1, '2 bulan', '2021-12-21', '2021-12-21', '2021-12-21', '2021-12-21 01:55:11', '2021-12-21 01:57:49', 'https://chat.whatsapp.com/JfuZaV1Dzhd8AIXobLkQFo'),
(73, 'qwerty', 32, 2, 'qwerty.com', 1, '2 bulan', '2021-12-21', '2021-12-21', '2021-12-21', '2021-12-21 02:24:17', '2021-12-21 02:27:43', 'https://chat.whatsapp.com/JfuZaV1Dzhd8AIXobLkQFo'),
(74, 'fingerprint', 33, 3, 'fingerprint.com', 1, '2 bulan', '2021-12-21', '2021-12-21', '2021-12-21', '2021-12-21 02:35:33', '2021-12-21 02:45:45', 'https://chat.whatsapp.com/JfuZaV1Dzhd8AIXobLkQFo'),
(75, 'bubble', 6, 1, 'bubble.co.id', 2, NULL, NULL, NULL, '2021-12-21', '2021-12-21 07:19:25', '2021-12-21 07:19:25', NULL),
(76, 'Fc', 6, 2, 'FC.co.id', 2, NULL, NULL, NULL, '2021-12-21', '2021-12-21 07:23:40', '2021-12-21 07:23:40', NULL),
(82, 'hhhh', 11, 2, 'www.com', 2, '3 bulan', '2021-04-05', '2021-07-05', '2021-12-21', '2021-12-21 08:34:49', '2021-12-21 08:34:49', 'http://wa.me'),
(83, 'qqq', 6, 3, 'qqq.com', 1, NULL, NULL, NULL, '2021-12-21', '2021-12-21 09:43:46', '2021-12-21 09:43:46', NULL),
(84, 'bbbb', 11, 2, 'www.com', 2, '3 bulan', '2021-04-05', '2021-07-05', '2021-12-21', '2021-12-21 09:48:00', '2021-12-21 09:48:00', 'http://wa.me'),
(92, 'bbbb', 59, 2, 'www.com', 2, '3 bulan', '2021-04-05', '2021-07-05', '2021-12-22', '2021-12-21 21:51:11', '2021-12-21 21:51:11', 'http://wa.me'),
(93, 'ghi', 59, 1, 'ABC.com', 1, NULL, NULL, NULL, '2021-12-22', '2021-12-21 21:55:04', '2021-12-21 21:55:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `trans_h_testimonial`
--

CREATE TABLE `trans_h_testimonial` (
  `id` int(11) NOT NULL,
  `description` text NOT NULL,
  `id_customers` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `status` enum('active','non-active') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `trans_h_testimonial`
--

INSERT INTO `trans_h_testimonial` (`id`, `description`, `id_customers`, `created_at`, `updated_at`, `status`) VALUES
(2, 'nice', 2, NULL, '2021-12-16 21:44:20', 'non-active'),
(3, 'amazing', 3, NULL, '2021-12-16 21:44:28', 'non-active'),
(4, 'wow', 4, NULL, NULL, 'active'),
(5, 'mantap', 5, NULL, NULL, 'active'),
(6, 'Good', 6, NULL, NULL, 'active'),
(7, 'Gila keren banget', 7, NULL, NULL, 'active'),
(8, 'Bbl Bbl Bagus banget lohhh', 8, NULL, NULL, 'active'),
(9, 'Keren', 9, NULL, NULL, 'active'),
(10, 'Tidak mengecewakan', 10, NULL, NULL, 'active'),
(15, 'wahh mantap', 11, '2021-12-17 22:52:42', '2021-12-17 22:52:42', 'active'),
(16, 'hallo', 6, '2021-12-17 23:06:34', '2021-12-17 23:06:34', 'active'),
(17, 'haiii', 6, '2021-12-17 23:10:28', '2021-12-17 23:10:28', 'active'),
(18, 'hahhahaha', 2, '2021-12-18 08:53:08', '2021-12-18 08:53:08', 'active'),
(19, 'yuhuuu', 30, '2021-12-18 23:45:13', '2021-12-18 23:45:13', 'active'),
(20, 'hahahhahahaha', 6, '2021-12-19 04:57:23', '2021-12-19 04:57:23', 'active'),
(21, 'tgl tbl tbl takut buangett lohh', 32, '2021-12-21 02:26:04', '2021-12-21 02:26:04', 'active'),
(22, 'tes', 33, '2021-12-21 02:49:40', '2021-12-21 02:49:40', 'active'),
(23, 'woww', 6, '2021-12-21 07:15:18', '2021-12-21 07:15:18', 'active'),
(24, 'hehe', 6, '2021-12-21 07:15:59', '2021-12-21 07:15:59', 'active'),
(25, 'tes', 6, '2021-12-21 07:17:16', '2021-12-21 07:17:16', 'active'),
(26, 'qwertyuip', 6, '2021-12-21 07:17:48', '2021-12-21 07:17:48', 'non-active'),
(27, 'huhiho', 6, '2021-12-21 07:18:12', '2021-12-21 07:18:12', 'non-active'),
(28, 'hhhhhhhh', 6, '2021-12-21 07:25:09', '2021-12-21 07:25:09', 'non-active'),
(29, 'qeryy', 6, '2021-12-21 07:25:19', '2021-12-21 07:25:19', 'non-active'),
(30, 'wrdygub', 6, '2021-12-21 07:26:42', '2021-12-21 07:26:42', 'non-active');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `fullname` varchar(50) NOT NULL,
  `date_birth` date DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `password` text NOT NULL,
  `gambar` text DEFAULT NULL,
  `status` enum('customer','admin') NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `contact_wa` varchar(50) DEFAULT NULL,
  `address` text DEFAULT NULL,
  `token_fcm` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `fullname`, `date_birth`, `email`, `password`, `gambar`, `status`, `created_at`, `updated_at`, `contact_wa`, `address`, `token_fcm`) VALUES
(1, 'admin', '2000-10-04', 'admin@gmail.com', '12345678', NULL, 'admin', NULL, '2021-12-02 00:00:51', '2147483647', 'Jl. Abcd', ''),
(2, 'royyy', '2001-05-03', 'lin1234@gmail.com', '12345678', 'Capture1.PNG', 'customer', NULL, '2021-12-21 11:27:29', '897654321', 'mnbzxasdfgjklpuytw', ''),
(3, 'fina imut', '2000-11-06', 'fina1234@gmail.com', '12345678', 'IMG_20210713_153013.jpg', 'customer', NULL, '2021-12-20 13:15:56', '2147483647', 'Jl. Ijkl', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(4, 'putri', '2000-12-20', 'putri1234@gmail.com', '12345678', 'IMG_20200918_134751.jpg', 'customer', NULL, '2021-12-20 12:16:48', '2147483647', 'Jl. Mnop', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(5, 'doni', '1998-01-21', 'doni1234@gmail.com', '12345678', NULL, 'customer', NULL, '2021-12-02 00:00:28', '2147483647', 'Jl. Qrst', ''),
(6, 'mutia cimutt', '2000-12-21', 'adikmutia@gmail.com', '12345678', 'IMG_20201111_205733.jpg', 'customer', NULL, '2021-12-21 12:07:02', '2147483647896', 'Jlqwetyevdime', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(7, 'ibrahim', '1966-05-14', 'ibrahim@gmail.com', '12345678', NULL, 'customer', NULL, NULL, '2147483647', 'Jl. Aaaaaaaa', ''),
(8, 'Salmi', '1968-09-09', 'salmi09@gmail.com', '12345678', 'IMG_20201111_205733.jpg', 'customer', NULL, '2021-12-21 03:36:43', '2147483647', 'Jl. Bbbbbbbbb', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(9, 'I.S. Azizah', '1998-12-21', 'azizah@gmail.com', '12345678', 'IMG_20210911_233840.jpg', 'customer', NULL, '2021-12-20 19:58:10', '2147483647', 'Jl. Ccccccc', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(10, 'aderidwan', '2002-12-02', 'aderidwan@gmail.com', '12345678', NULL, 'customer', NULL, NULL, '2147483647', 'Jl. Dddddddd', ''),
(11, 'hahha', '2021-12-01', 'hahaha@gmail.com', '12345678', NULL, 'customer', NULL, NULL, '1234567819', 'hahhahha', ''),
(30, 'sahaaa', '2006-12-04', 'saha@gmail.com', '12345678', NULL, 'customer', '2021-12-18 23:43:39', '2021-12-18 23:44:19', '1234', 'qwertyu', ''),
(31, 'aaaa', '2021-12-01', 'aaa@gmail.com', '12345678', NULL, 'customer', '2021-12-20 20:11:12', '2021-12-22 00:10:15', '12345678', 'Jl.abcd', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(32, 'hehohi', '2021-12-21', 'haha@gmail.com', '12345678', 'IMG20211220160524.jpg', 'customer', '2021-12-21 02:22:21', '2021-12-21 02:23:53', '98654321', 'jl.mnbvx', 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(34, 'doni', '2021-12-21', 'doni123456@gmail.com', '123457889', NULL, 'customer', '2021-12-21 03:22:54', '2021-12-21 03:22:54', NULL, NULL, NULL),
(35, 'Ade Ridwan', '2021-12-21', 'sukun024@gmail.com', '12345678e', NULL, 'customer', '2021-12-21 03:27:57', '2021-12-21 03:28:05', NULL, NULL, 'eVqwk8QLTOykofkAVlF5Dn:APA91bE7LVsGiZhADd_yAZ5eyHcMITtDuDZ0KzJz2Vne0SL6vgoVJYjNqYAmqDdw9DcSY_1u4S8cXB2kQRiMQfivoRZ0CHJ2MJ2hiB_ef_MzBoNAOIDrvY3QcDuYE15u7ZMjK0JzwZJp'),
(50, 'lin', '2021-12-21', 'lin124@gmail.com', '$2y$10$5PdOfh5wlqK4/Q6PCSwRAOzelgu.7jpdDHsuXVlQ.JgFr90ZO/ZJC', NULL, 'customer', '2021-12-21 08:57:31', '2021-12-21 08:57:31', NULL, NULL, NULL),
(51, 'no', '2021-12-21', 'no1@gmail.com', 'no1', NULL, 'customer', '2021-12-21 08:58:55', '2021-12-21 08:59:05', NULL, NULL, 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(52, 'asdf', '2021-12-21', 'asdf@gmail.com', '$2y$10$4zldai61k71aMVj5jG1p1eupSa.LasNPrcYuEUBAE/22lxv5/6a16', NULL, 'customer', '2021-12-21 09:21:32', '2021-12-21 09:21:32', NULL, NULL, NULL),
(53, 'lalalala', '2000-10-04', 'lala1234@gmail.com', '$2y$10$Ony/VDe8pelsJbkzwqOQEO4XeljrBlW1Da81pnHkSkUHOV67AymA.', NULL, 'customer', '2021-12-21 09:31:17', '2021-12-21 09:31:17', NULL, NULL, NULL),
(56, 'yyyy', '2021-12-10', 'yyyy123@gmail.com', '12345678', NULL, 'customer', '2021-12-21 19:57:12', '2021-12-21 19:57:32', NULL, NULL, 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(58, 'ssss', '2021-12-09', 'sssss@gmail.com', '$2y$10$pda81.Sch8DkO2RD/RU4R.vfSI1X1QM/tjF9gLLZUOZEZ4/5ZTSmq', NULL, 'customer', '2021-12-21 20:13:02', '2021-12-21 20:13:02', NULL, NULL, NULL),
(59, 'hemm', '2021-12-22', 'hemm@gmail.com', '$2y$10$lacSztAgTJzAExeWO5Rl..bSXw6iXpE505L7q/jNJTvwQ0cQzgJrW', NULL, 'customer', '2021-12-21 20:48:09', '2021-12-21 20:50:31', NULL, NULL, 'fXqirkeqSyqmpmHO9w3GRZ:APA91bG8qoqbI0yL0ooyzdDvsH89KaDkKJ7Fkwqqx0_dqdFdD-KUdETULdMo_-5dYVsvZ-2R0_kl9xhs5ODoOhyJTruvbqm78tCNz9f_-Jkk4iy2gf2M6zqDfSwGAToZHedFFevWireQ'),
(64, 'lalalala', '2000-10-04', 'test@gmail.com', '$2y$10$cfUKdJPYOV7X/Ho4sGWtP.la8i9OrDpDYgDgLkMCifpEhTOZWk.9y', NULL, 'customer', '2021-12-22 01:56:30', '2021-12-22 01:56:30', NULL, NULL, NULL),
(65, 'ghgh', '2021-12-22', 'ghgh12@gmail.com', '$2y$10$Y6oVVdNSvdEr3XIKZiiT/.aNhuyydPrvxE5Pro4L8RBovm4.xlQAm', NULL, 'customer', '2021-12-22 02:45:42', '2021-12-22 02:56:37', NULL, NULL, 'du4CbOrVREqdLgwqTw3e4B:APA91bGcZxpjRDqdQt09rWszvS1URXXo8zKtM1GI-2W8_yBtmnABbL2kxdXUGr14Ip4b_nSdX7wuAQiHWTaIUye-hq855cB6Wo9A0ZEg2qV2yETXLPak2K0ii-QtanuvEMmhDRIRfkju');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_bills`
--
ALTER TABLE `m_bills`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_h_orders` (`id_h_orders`),
  ADD KEY `id_status` (`id_status`);

--
-- Indexes for table `m_domain`
--
ALTER TABLE `m_domain`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_notification`
--
ALTER TABLE `m_notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_h_orders` (`id_h_orders`),
  ADD KEY `id_customers` (`id_customers`);

--
-- Indexes for table `m_price`
--
ALTER TABLE `m_price`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_status`
--
ALTER TABLE `m_status`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_auth_codes_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `trans_d_orders`
--
ALTER TABLE `trans_d_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_h_orders` (`id_h_orders`);

--
-- Indexes for table `trans_h_orders`
--
ALTER TABLE `trans_h_orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customers` (`id_customers`),
  ADD KEY `id_price` (`id_price`),
  ADD KEY `id_domain` (`id_domain`);

--
-- Indexes for table `trans_h_testimonial`
--
ALTER TABLE `trans_h_testimonial`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_customers` (`id_customers`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_bills`
--
ALTER TABLE `m_bills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `m_domain`
--
ALTER TABLE `m_domain`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `m_notification`
--
ALTER TABLE `m_notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `m_price`
--
ALTER TABLE `m_price`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `m_status`
--
ALTER TABLE `m_status`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `trans_d_orders`
--
ALTER TABLE `trans_d_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `trans_h_orders`
--
ALTER TABLE `trans_h_orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `trans_h_testimonial`
--
ALTER TABLE `trans_h_testimonial`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_bills`
--
ALTER TABLE `m_bills`
  ADD CONSTRAINT `m_bills_ibfk_1` FOREIGN KEY (`id_h_orders`) REFERENCES `trans_h_orders` (`id`),
  ADD CONSTRAINT `m_bills_ibfk_2` FOREIGN KEY (`id_status`) REFERENCES `m_status` (`id`);

--
-- Constraints for table `m_notification`
--
ALTER TABLE `m_notification`
  ADD CONSTRAINT `m_notification_ibfk_1` FOREIGN KEY (`id_h_orders`) REFERENCES `trans_h_orders` (`id`),
  ADD CONSTRAINT `m_notification_ibfk_2` FOREIGN KEY (`id_customers`) REFERENCES `user` (`id`);

--
-- Constraints for table `trans_d_orders`
--
ALTER TABLE `trans_d_orders`
  ADD CONSTRAINT `trans_d_orders_ibfk_1` FOREIGN KEY (`id_h_orders`) REFERENCES `trans_h_orders` (`id`);

--
-- Constraints for table `trans_h_orders`
--
ALTER TABLE `trans_h_orders`
  ADD CONSTRAINT `trans_h_orders_ibfk_1` FOREIGN KEY (`id_customers`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `trans_h_orders_ibfk_2` FOREIGN KEY (`id_price`) REFERENCES `m_price` (`id`),
  ADD CONSTRAINT `trans_h_orders_ibfk_3` FOREIGN KEY (`id_domain`) REFERENCES `m_domain` (`id`);

--
-- Constraints for table `trans_h_testimonial`
--
ALTER TABLE `trans_h_testimonial`
  ADD CONSTRAINT `trans_h_testimonial_ibfk_1` FOREIGN KEY (`id_customers`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
