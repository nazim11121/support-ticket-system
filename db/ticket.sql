-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Sep 27, 2024 at 03:24 PM
-- Server version: 8.3.0
-- PHP Version: 8.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ticket`
--

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

DROP TABLE IF EXISTS `districts`;
CREATE TABLE IF NOT EXISTS `districts` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `division_id` int NOT NULL,
  `name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `bn_name` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lat` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lon` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` bigint UNSIGNED DEFAULT NULL,
  `updated_by` bigint UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `division_id`, `name`, `bn_name`, `lat`, `lon`, `url`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 1, 'Comilla', 'কুমিল্লা', '23.4682747', '91.1788135', 'www.comilla.gov.bd', NULL, NULL, NULL, NULL),
(2, 1, 'Feni', 'ফেনী', '23.023231', '91.3840844', 'www.feni.gov.bd', NULL, NULL, NULL, NULL),
(3, 1, 'Brahmanbaria', 'ব্রাহ্মণবাড়িয়া', '23.9570904', '91.1119286', 'www.brahmanbaria.gov.bd', NULL, NULL, NULL, NULL),
(4, 1, 'Rangamati', 'রাঙ্গামাটি', '22.65561018', '92.17541121', 'www.rangamati.gov.bd', NULL, NULL, NULL, NULL),
(5, 1, 'Noakhali', 'নোয়াখালী', '22.869563', '91.099398', 'www.noakhali.gov.bd', NULL, NULL, NULL, NULL),
(6, 1, 'Chandpur', 'চাঁদপুর', '23.2332585', '90.6712912', 'www.chandpur.gov.bd', NULL, NULL, NULL, NULL),
(7, 1, 'Lakshmipur', 'লক্ষ্মীপুর', '22.942477', '90.841184', 'www.lakshmipur.gov.bd', NULL, NULL, NULL, NULL),
(8, 1, 'Chattogram', 'চট্টগ্রাম', '22.335109', '91.834073', 'www.chittagong.gov.bd', NULL, NULL, NULL, NULL),
(9, 1, 'Coxsbazar', 'কক্সবাজার', '21.44315751', '91.97381741', 'www.coxsbazar.gov.bd', NULL, NULL, NULL, NULL),
(10, 1, 'Khagrachhari', 'খাগড়াছড়ি', '23.119285', '91.984663', 'www.khagrachhari.gov.bd', NULL, NULL, NULL, NULL),
(11, 1, 'Bandarban', 'বান্দরবান', '22.1953275', '92.2183773', 'www.bandarban.gov.bd', NULL, NULL, NULL, NULL),
(12, 2, 'Sirajganj', 'সিরাজগঞ্জ', '24.4533978', '89.7006815', 'www.sirajganj.gov.bd', NULL, NULL, NULL, NULL),
(13, 2, 'Pabna', 'পাবনা', '23.998524', '89.233645', 'www.pabna.gov.bd', NULL, NULL, NULL, NULL),
(14, 2, 'Bogura', 'বগুড়া', '24.8465228', '89.377755', 'www.bogra.gov.bd', NULL, NULL, NULL, NULL),
(15, 2, 'Rajshahi', 'রাজশাহী', '24.37230298', '88.56307623', 'www.rajshahi.gov.bd', NULL, NULL, NULL, NULL),
(16, 2, 'Natore', 'নাটোর', '24.420556', '89.000282', 'www.natore.gov.bd', NULL, NULL, NULL, NULL),
(17, 2, 'Joypurhat', 'জয়পুরহাট', '25.09636876', '89.04004280', 'www.joypurhat.gov.bd', NULL, NULL, NULL, NULL),
(18, 2, 'Chapainawabganj', 'চাঁপাইনবাবগঞ্জ', '24.5965034', '88.2775122', 'www.chapainawabganj.gov.bd', NULL, NULL, NULL, NULL),
(19, 2, 'Naogaon', 'নওগাঁ', '24.83256191', '88.92485205', 'www.naogaon.gov.bd', NULL, NULL, NULL, NULL),
(20, 3, 'Jashore', 'যশোর', '23.16643', '89.2081126', 'www.jessore.gov.bd', NULL, NULL, NULL, NULL),
(21, 3, 'Satkhira', 'সাতক্ষীরা', NULL, NULL, 'www.satkhira.gov.bd', NULL, NULL, NULL, NULL),
(22, 3, 'Meherpur', 'মেহেরপুর', '23.762213', '88.631821', 'www.meherpur.gov.bd', NULL, NULL, NULL, NULL),
(23, 3, 'Narail', 'নড়াইল', '23.172534', '89.512672', 'www.narail.gov.bd', NULL, NULL, NULL, NULL),
(24, 3, 'Chuadanga', 'চুয়াডাঙ্গা', '23.6401961', '88.841841', 'www.chuadanga.gov.bd', NULL, NULL, NULL, NULL),
(25, 3, 'Kushtia', 'কুষ্টিয়া', '23.901258', '89.120482', 'www.kushtia.gov.bd', NULL, NULL, NULL, NULL),
(26, 3, 'Magura', 'মাগুরা', '23.487337', '89.419956', 'www.magura.gov.bd', NULL, NULL, NULL, NULL),
(27, 3, 'Khulna', 'খুলনা', '22.815774', '89.568679', 'www.khulna.gov.bd', NULL, NULL, NULL, NULL),
(28, 3, 'Bagerhat', 'বাগেরহাট', '22.651568', '89.785938', 'www.bagerhat.gov.bd', NULL, NULL, NULL, NULL),
(29, 3, 'Jhenaidah', 'ঝিনাইদহ', '23.5448176', '89.1539213', 'www.jhenaidah.gov.bd', NULL, NULL, NULL, NULL),
(30, 4, 'Jhalakathi', 'ঝালকাঠি', NULL, NULL, 'www.jhalakathi.gov.bd', NULL, NULL, NULL, NULL),
(31, 4, 'Patuakhali', 'পটুয়াখালী', '22.3596316', '90.3298712', 'www.patuakhali.gov.bd', NULL, NULL, NULL, NULL),
(32, 4, 'Pirojpur', 'পিরোজপুর', NULL, NULL, 'www.pirojpur.gov.bd', NULL, NULL, NULL, NULL),
(33, 4, 'Barisal', 'বরিশাল', NULL, NULL, 'www.barisal.gov.bd', NULL, NULL, NULL, NULL),
(34, 4, 'Bhola', 'ভোলা', '22.685923', '90.648179', 'www.bhola.gov.bd', NULL, NULL, NULL, NULL),
(35, 4, 'Barguna', 'বরগুনা', NULL, NULL, 'www.barguna.gov.bd', NULL, NULL, NULL, NULL),
(36, 5, 'Sylhet', 'সিলেট', '24.8897956', '91.8697894', 'www.sylhet.gov.bd', NULL, NULL, NULL, NULL),
(37, 5, 'Moulvibazar', 'মৌলভীবাজার', '24.482934', '91.777417', 'www.moulvibazar.gov.bd', NULL, NULL, NULL, NULL),
(38, 5, 'Habiganj', 'হবিগঞ্জ', '24.374945', '91.41553', 'www.habiganj.gov.bd', NULL, NULL, NULL, NULL),
(39, 5, 'Sunamganj', 'সুনামগঞ্জ', '25.0658042', '91.3950115', 'www.sunamganj.gov.bd', NULL, NULL, NULL, NULL),
(40, 6, 'Narsingdi', 'নরসিংদী', '23.932233', '90.71541', 'www.narsingdi.gov.bd', NULL, NULL, NULL, NULL),
(41, 6, 'Gazipur', 'গাজীপুর', '24.0022858', '90.4264283', 'www.gazipur.gov.bd', NULL, NULL, NULL, NULL),
(42, 6, 'Shariatpur', 'শরীয়তপুর', NULL, NULL, 'www.shariatpur.gov.bd', NULL, NULL, NULL, NULL),
(43, 6, 'Narayanganj', 'নারায়ণগঞ্জ', '23.63366', '90.496482', 'www.narayanganj.gov.bd', NULL, NULL, NULL, NULL),
(44, 6, 'Tangail', 'টাঙ্গাইল', '24.26361358', '89.91794786', 'www.tangail.gov.bd', NULL, NULL, NULL, NULL),
(45, 6, 'Kishoreganj', 'কিশোরগঞ্জ', '24.444937', '90.776575', 'www.kishoreganj.gov.bd', NULL, NULL, NULL, NULL),
(46, 6, 'Manikganj', 'মানিকগঞ্জ', NULL, NULL, 'www.manikganj.gov.bd', NULL, NULL, NULL, NULL),
(47, 6, 'Dhaka', 'ঢাকা', '23.7115253', '90.4111451', 'www.dhaka.gov.bd', NULL, NULL, NULL, NULL),
(48, 6, 'Munshiganj', 'মুন্সিগঞ্জ', NULL, NULL, 'www.munshiganj.gov.bd', NULL, NULL, NULL, NULL),
(49, 6, 'Rajbari', 'রাজবাড়ী', '23.7574305', '89.6444665', 'www.rajbari.gov.bd', NULL, NULL, NULL, NULL),
(50, 6, 'Madaripur', 'মাদারীপুর', '23.164102', '90.1896805', 'www.madaripur.gov.bd', NULL, NULL, NULL, NULL),
(51, 6, 'Gopalganj', 'গোপালগঞ্জ', '23.0050857', '89.8266059', 'www.gopalganj.gov.bd', NULL, NULL, NULL, NULL),
(52, 6, 'Faridpur', 'ফরিদপুর', '23.6070822', '89.8429406', 'www.faridpur.gov.bd', NULL, NULL, NULL, NULL),
(53, 7, 'Panchagarh', 'পঞ্চগড়', '26.3411', '88.5541606', 'www.panchagarh.gov.bd', NULL, NULL, NULL, NULL),
(54, 7, 'Dinajpur', 'দিনাজপুর', '25.6217061', '88.6354504', 'www.dinajpur.gov.bd', NULL, NULL, NULL, NULL),
(55, 7, 'Lalmonirhat', 'লালমনিরহাট', NULL, NULL, 'www.lalmonirhat.gov.bd', NULL, NULL, NULL, NULL),
(56, 7, 'Nilphamari', 'নীলফামারী', '25.931794', '88.856006', 'www.nilphamari.gov.bd', NULL, NULL, NULL, NULL),
(57, 7, 'Gaibandha', 'গাইবান্ধা', '25.328751', '89.528088', 'www.gaibandha.gov.bd', NULL, NULL, NULL, NULL),
(58, 7, 'Thakurgaon', 'ঠাকুরগাঁও', '26.0336945', '88.4616834', 'www.thakurgaon.gov.bd', NULL, NULL, NULL, NULL),
(59, 7, 'Rangpur', 'রংপুর', '25.7558096', '89.244462', 'www.rangpur.gov.bd', NULL, NULL, NULL, NULL),
(60, 7, 'Kurigram', 'কুড়িগ্রাম', '25.805445', '89.636174', 'www.kurigram.gov.bd', NULL, NULL, NULL, NULL),
(61, 8, 'Sherpur', 'শেরপুর', '25.0204933', '90.0152966', 'www.sherpur.gov.bd', NULL, NULL, NULL, NULL),
(62, 8, 'Mymensingh', 'ময়মনসিংহ', '24.7465670', '90.4072093', 'www.mymensingh.gov.bd', NULL, NULL, NULL, NULL),
(63, 8, 'Jamalpur', 'জামালপুর', '24.937533', '89.937775', 'www.jamalpur.gov.bd', NULL, NULL, NULL, NULL),
(64, 8, 'Netrokona', 'নেত্রকোণা', '24.870955', '90.727887', 'www.netrokona.gov.bd', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

DROP TABLE IF EXISTS `divisions`;
CREATE TABLE IF NOT EXISTS `divisions` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `bn_name` varchar(25) NOT NULL,
  `url` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `bn_name`, `url`) VALUES
(1, 'Chattagram', 'চট্টগ্রাম', 'www.chittagongdiv.gov.bd'),
(2, 'Rajshahi', 'রাজশাহী', 'www.rajshahidiv.gov.bd'),
(3, 'Khulna', 'খুলনা', 'www.khulnadiv.gov.bd'),
(4, 'Barisal', 'বরিশাল', 'www.barisaldiv.gov.bd'),
(5, 'Sylhet', 'সিলেট', 'www.sylhetdiv.gov.bd'),
(6, 'Dhaka', 'ঢাকা', 'www.dhakadiv.gov.bd'),
(7, 'Rangpur', 'রংপুর', 'www.rangpurdiv.gov.bd'),
(8, 'Mymensingh', 'ময়মনসিংহ', 'www.mymensinghdiv.gov.bd');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `interests`
--

DROP TABLE IF EXISTS `interests`;
CREATE TABLE IF NOT EXISTS `interests` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `bank_name` varchar(255) DEFAULT NULL,
  `period` varchar(255) DEFAULT NULL,
  `percentage` varchar(255) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `interests`
--

INSERT INTO `interests` (`id`, `bank_name`, `period`, `percentage`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'DBBL', '3', '2.5', 1, 1, '2022-12-07 06:34:09', '2022-12-07 07:04:11'),
(3, 'DBBL', '6', '4', 1, 1, '2022-12-07 07:04:26', '2022-12-07 07:04:26'),
(4, 'DBBL', '12', '5.5', 1, 1, '2022-12-07 07:04:44', '2022-12-07 07:04:44'),
(5, 'SCB', '3', '4', 1, 1, '2022-12-07 07:04:59', '2022-12-07 07:04:59'),
(6, 'SCB', '6', '5', 1, 1, '2022-12-07 07:05:10', '2022-12-07 07:05:10'),
(7, 'SCB', '12', '6', 1, 1, '2022-12-07 07:05:18', '2022-12-07 07:05:18'),
(8, 'EBL', '3', '3', 1, 1, '2022-12-07 07:05:32', '2022-12-07 07:05:32'),
(9, 'EBL', '6', '4', 1, 1, '2022-12-07 07:05:41', '2022-12-07 07:05:41'),
(10, 'EBL', '12', '5', 1, 1, '2022-12-07 07:05:48', '2022-12-07 07:05:48');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=274 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(225, '2014_10_12_000000_create_users_table', 2),
(226, '2014_10_12_100000_create_password_resets_table', 2),
(227, '2014_10_12_200000_add_two_factor_columns_to_users_table', 2),
(228, '2019_08_19_000000_create_failed_jobs_table', 2),
(229, '2019_12_14_000001_create_personal_access_tokens_table', 2),
(230, '2022_10_22_140735_create_costings_table', 2),
(231, '2022_10_23_041859_create_categories_table', 2),
(232, '2022_10_23_051220_create_inventories_table', 2),
(233, '2022_10_27_164559_create_expenses_table', 2),
(234, '2022_10_28_040532_create_vendors_table', 2),
(235, '2022_10_30_065616_create_clients_table', 2),
(236, '2022_11_01_043837_create_employees_table', 2),
(237, '2022_11_02_033600_create_bank_cashes_table', 2),
(238, '2022_11_02_041249_create_sells_table', 2),
(239, '2022_11_02_170557_create_ledger_types_table', 2),
(240, '2022_11_02_170731_create_ledger_groups_table', 2),
(241, '2022_11_02_170755_create_ledger_names_table', 2),
(242, '2022_11_03_164659_create_expense_heads_table', 2),
(243, '2022_11_03_164826_create_income_heads_table', 2),
(244, '2022_11_06_032331_create_products_table', 2),
(245, '2022_11_17_050809_create_costing_inventories_table', 2),
(246, '2022_11_23_063744_create_salaries_table', 2),
(247, '2022_11_24_085350_create_profits_table', 2),
(248, '2022_11_30_190450_create_sessions_table', 2),
(223, '2022_12_03_173448_create_permission_tables', 1),
(224, '2022_12_03_175259_create_product-lists_table', 1),
(249, '2022_12_05_064014_create_product_lists_table', 2),
(250, '2022_12_05_181535_create_sliders_table', 3),
(251, '2022_12_05_181709_create_faqs_table', 3),
(252, '2022_12_05_182504_create_products_table', 4),
(253, '2022_12_07_120200_create_interests_table', 5),
(258, '2023_08_06_175149_create_universities_table', 9),
(257, '2023_08_06_164701_create_hospitals_table', 9),
(261, '2023_08_08_073715_create_groups_table', 12),
(259, '2023_08_09_172203_create_events_table', 10),
(260, '2023_08_12_174609_create_registrations_table', 11),
(264, '2023_08_18_165725_create_facilities_table', 14),
(263, '2023_08_18_145640_create_blood_banks_table', 13),
(265, '2023_09_06_080124_create_blood_requests_table', 15),
(266, '2023_09_08_062618_create_request_responses_table', 16),
(267, '2023_09_15_184318_create_withdraw_requests_table', 17),
(268, '2023_09_21_175846_create_unused_products_table', 18),
(271, '2023_09_21_175932_create_health_cards_table', 19),
(272, '2023_09_22_044705_create_term_conditions_table', 20),
(273, '2024_09_26_202621_create_tickets_table', 21);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `model_type` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `model_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\Models\\User', 1),
(1, 'App\\Models\\User', 2),
(1, 'App\\Models\\User', 3),
(5, 'App\\Models\\User', 33),
(5, 'App\\Models\\User', 34),
(5, 'App\\Models\\User', 35),
(5, 'App\\Models\\User', 36),
(5, 'App\\Models\\User', 37),
(5, 'App\\Models\\User', 38),
(5, 'App\\Models\\User', 39),
(5, 'App\\Models\\User', 40),
(5, 'App\\Models\\User', 41),
(5, 'App\\Models\\User', 42),
(5, 'App\\Models\\User', 43),
(5, 'App\\Models\\User', 44),
(5, 'App\\Models\\User', 45),
(5, 'App\\Models\\User', 46),
(5, 'App\\Models\\User', 47),
(5, 'App\\Models\\User', 48),
(5, 'App\\Models\\User', 49),
(5, 'App\\Models\\User', 50),
(5, 'App\\Models\\User', 51),
(5, 'App\\Models\\User', 52),
(5, 'App\\Models\\User', 53),
(5, 'App\\Models\\User', 54),
(5, 'App\\Models\\User', 55),
(5, 'App\\Models\\User', 56),
(5, 'App\\Models\\User', 57),
(5, 'App\\Models\\User', 58),
(5, 'App\\Models\\User', 59),
(5, 'App\\Models\\User', 60),
(5, 'App\\Models\\User', 61),
(5, 'App\\Models\\User', 62),
(5, 'App\\Models\\User', 63),
(5, 'App\\Models\\User', 64),
(5, 'App\\Models\\User', 65),
(5, 'App\\Models\\User', 66),
(5, 'App\\Models\\User', 67),
(5, 'App\\Models\\User', 68),
(5, 'App\\Models\\User', 69),
(5, 'App\\Models\\User', 70),
(5, 'App\\Models\\User', 71),
(5, 'App\\Models\\User', 72),
(5, 'App\\Models\\User', 73),
(5, 'App\\Models\\User', 74),
(5, 'App\\Models\\User', 75),
(5, 'App\\Models\\User', 76),
(5, 'App\\Models\\User', 77),
(5, 'App\\Models\\User', 78),
(5, 'App\\Models\\User', 79),
(5, 'App\\Models\\User', 80),
(5, 'App\\Models\\User', 81),
(5, 'App\\Models\\User', 82),
(5, 'App\\Models\\User', 83),
(5, 'App\\Models\\User', 84),
(5, 'App\\Models\\User', 85),
(5, 'App\\Models\\User', 86),
(5, 'App\\Models\\User', 87),
(5, 'App\\Models\\User', 88),
(5, 'App\\Models\\User', 89),
(5, 'App\\Models\\User', 90),
(5, 'App\\Models\\User', 91),
(5, 'App\\Models\\User', 92),
(5, 'App\\Models\\User', 93),
(5, 'App\\Models\\User', 94),
(5, 'App\\Models\\User', 95),
(5, 'App\\Models\\User', 96),
(5, 'App\\Models\\User', 97),
(5, 'App\\Models\\User', 98),
(5, 'App\\Models\\User', 99),
(5, 'App\\Models\\User', 100),
(5, 'App\\Models\\User', 101),
(5, 'App\\Models\\User', 102),
(5, 'App\\Models\\User', 103),
(5, 'App\\Models\\User', 104),
(5, 'App\\Models\\User', 105),
(5, 'App\\Models\\User', 106),
(5, 'App\\Models\\User', 107),
(5, 'App\\Models\\User', 108),
(5, 'App\\Models\\User', 109),
(5, 'App\\Models\\User', 110),
(5, 'App\\Models\\User', 111),
(5, 'App\\Models\\User', 112),
(5, 'App\\Models\\User', 113),
(5, 'App\\Models\\User', 114),
(5, 'App\\Models\\User', 115),
(5, 'App\\Models\\User', 116),
(5, 'App\\Models\\User', 117),
(5, 'App\\Models\\User', 118),
(5, 'App\\Models\\User', 119),
(5, 'App\\Models\\User', 120),
(5, 'App\\Models\\User', 121),
(5, 'App\\Models\\User', 122),
(5, 'App\\Models\\User', 123),
(5, 'App\\Models\\User', 124),
(5, 'App\\Models\\User', 125),
(5, 'App\\Models\\User', 126),
(5, 'App\\Models\\User', 127),
(5, 'App\\Models\\User', 128),
(5, 'App\\Models\\User', 129),
(5, 'App\\Models\\User', 130),
(5, 'App\\Models\\User', 131),
(5, 'App\\Models\\User', 132),
(5, 'App\\Models\\User', 133),
(5, 'App\\Models\\User', 134),
(5, 'App\\Models\\User', 135),
(5, 'App\\Models\\User', 136),
(5, 'App\\Models\\User', 137),
(5, 'App\\Models\\User', 138),
(5, 'App\\Models\\User', 139),
(5, 'App\\Models\\User', 140),
(5, 'App\\Models\\User', 141),
(5, 'App\\Models\\User', 142),
(5, 'App\\Models\\User', 143),
(5, 'App\\Models\\User', 144),
(5, 'App\\Models\\User', 145),
(5, 'App\\Models\\User', 146),
(6, 'App\\Models\\User', 5);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=89 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(2, 'role-create', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(3, 'role-edit', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(4, 'role-delete', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(5, 'permission-list', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(6, 'permission-create', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(7, 'permission-edit', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(8, 'permission-delete', 'web', '2022-12-05 00:59:12', '2022-12-05 00:59:12'),
(9, 'dashboard', 'web', NULL, NULL),
(10, 'view-dashboard', 'web', '2023-09-02 00:39:08', '2023-09-02 00:39:08'),
(11, 'view-role', 'web', '2023-09-02 00:39:08', '2023-09-02 00:39:08'),
(12, 'view-permission', 'web', '2023-09-02 00:39:08', '2023-09-02 00:39:08'),
(13, 'view-users', 'web', '2023-09-02 00:39:08', '2023-09-02 00:39:08'),
(14, 'view-role-permission', 'web', '2023-09-15 22:56:09', '2023-09-15 22:56:09'),
(15, 'view-profile', 'web', '2023-09-15 22:56:09', '2023-09-15 22:56:09'),
(16, 'view-settings', 'web', '2023-09-15 22:56:09', '2023-09-15 22:56:09'),
(17, 'user-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(18, 'user-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(19, 'user-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(20, 'user-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(21, 'profile-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(22, 'settings-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(23, 'view-slider', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(24, 'slider-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(25, 'slider-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(26, 'slider-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(27, 'slider-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(28, 'view-donor', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(29, 'donor-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(30, 'donor-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(31, 'donor-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(32, 'donor-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(33, 'view-blood-request', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(34, 'blood-request-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(35, 'blood-request-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(36, 'blood-request-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(37, 'blood-request-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(38, 'response-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(39, 'view-withdraw', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(40, 'withdraw-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(41, 'withdraw-form', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(42, 'withdraw-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(43, 'withdraw-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(44, 'view-health-card', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(45, 'health-card-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(46, 'health-card-apply', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(47, 'health-card-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(48, 'health-card-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(49, 'view-unused-product', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(50, 'unused-product-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(51, 'unused-product-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(52, 'unused-product-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(53, 'unused-product-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(54, 'view-hospital', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(55, 'hospital-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(56, 'hospital-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(57, 'hospital-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(58, 'hospital-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(59, 'view-university', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(60, 'university-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(61, 'university-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(62, 'university-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(63, 'university-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(64, 'view-group', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(65, 'group-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(66, 'group-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(67, 'group-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(68, 'group-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(69, 'view-ticket', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(70, 'ticket-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(71, 'ticket-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(72, 'ticket-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(73, 'ticket-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(74, 'view-facilities', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(75, 'facilities-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(76, 'facilities-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(77, 'facilities-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(78, 'facilities-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(79, 'view-blood-bank', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(80, 'blood-bank-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(81, 'blood-bank-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(82, 'blood-bank-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(83, 'blood-bank-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(84, 'view-terms-conditions', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(85, 'terms-conditions-list', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(86, 'terms-conditions-add', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(87, 'terms-conditions-edit', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58'),
(88, 'terms-conditions-delete', 'web', '2023-10-07 07:59:58', '2023-10-07 07:59:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM AUTO_INCREMENT=146 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 3, 'authToken', '0f0ba5729c64d62e4f6ed715468cec7da69b67b6849899a98b2be3c707bc677c', '[\"*\"]', NULL, '2023-08-19 00:07:22', '2023-08-19 00:07:22'),
(2, 'App\\Models\\User', 3, 'authToken', '2c6f056c5486d1aaf4031f22506e1cad60fca9ae1be0f50257bc574a56c17d4b', '[\"*\"]', NULL, '2023-08-19 00:08:52', '2023-08-19 00:08:52'),
(3, 'App\\Models\\User', 3, 'authToken', 'cf81b9ae5f1958bc9de77eaca02c48cf286e4166f211530b133822b3e8f5f3fc', '[\"*\"]', NULL, '2023-08-19 00:30:43', '2023-08-19 00:30:43'),
(4, 'App\\Models\\User', 3, 'authToken', '60882dc863137a50e86270a32acea4491d028a86da8b307246d6309171c77c76', '[\"*\"]', NULL, '2023-08-19 00:31:51', '2023-08-19 00:31:51'),
(5, 'App\\Models\\User', 2, 'authToken', 'a1d56dd4201d46bd32efc568cdebb1bddc841f23ddba077f86db96871ef60232', '[\"*\"]', NULL, '2023-08-19 00:42:54', '2023-08-19 00:42:54'),
(6, 'App\\Models\\User', 2, 'authToken', '8bf2b55638a08fec11b8f6b530df671e513a3b38e902f7fbd740e74861bc6110', '[\"*\"]', NULL, '2023-08-19 00:45:47', '2023-08-19 00:45:47'),
(7, 'App\\Models\\User', 2, 'authToken', 'd061f4b390ec453a46335256841ca9f017cd7c6f7c8bb5106dfb53123ae50f20', '[\"*\"]', NULL, '2023-08-19 00:46:56', '2023-08-19 00:46:56'),
(8, 'App\\Models\\User', 2, 'authToken', '99c554bcda904fe9472827ae5d1cbbee3212217ff7b4b8910ad428686e85a6ce', '[\"*\"]', NULL, '2023-08-19 00:47:15', '2023-08-19 00:47:15'),
(9, 'App\\Models\\User', 2, 'authToken', '07736e6a61a1bee13c9fb5616d59ab204c5d748eb4539f963f0a6ecaafed2302', '[\"*\"]', NULL, '2023-08-19 00:48:10', '2023-08-19 00:48:10'),
(10, 'App\\Models\\User', 2, 'authToken', 'ec2cb249331603bcf5f025bcc4a05c11648b70572d8f0621d949c82091918c49', '[\"*\"]', NULL, '2023-08-19 00:50:31', '2023-08-19 00:50:31'),
(11, 'App\\Models\\User', 2, 'authToken', 'd68512800a06650a9c48c4c9386f2b70e1105db697d59262429e568d3ad9f72f', '[\"*\"]', NULL, '2023-08-19 00:51:20', '2023-08-19 00:51:20'),
(12, 'App\\Models\\User', 3, 'MyAppToken', '211f2f14c0a006d40d65e56b1c96f604e4b14ddcecac8d05a993b45fc829297f', '[\"*\"]', NULL, '2023-09-02 09:17:50', '2023-09-02 09:17:50'),
(13, 'App\\Models\\User', 3, 'MyAppToken', '445569cf9621ff38ea4e4569a119751cfc7e4952d871c8356b860ede33f4d9be', '[\"*\"]', NULL, '2023-09-02 09:18:41', '2023-09-02 09:18:41'),
(14, 'App\\Models\\User', 3, 'MyAppToken', '99f5acd84f9233d8a22bfe3c86711c6cbeb14060bcdc00128fdf059ce9e8957c', '[\"*\"]', NULL, '2023-09-02 09:22:03', '2023-09-02 09:22:03'),
(15, 'App\\Models\\User', 3, 'MyAppToken', '35fa8f3e495894c744982c42c8fd62f1e5b8343f2e194d28f9a3afc40380da63', '[\"*\"]', '2023-09-02 10:25:39', '2023-09-02 09:53:07', '2023-09-02 10:25:39'),
(16, 'App\\Models\\User', 3, 'MyAppToken', '1b6149b71db4005347058224866c5f3557a1f3d22c0ccd00b05e470ccf4a7fd9', '[\"*\"]', NULL, '2023-09-02 10:08:49', '2023-09-02 10:08:49'),
(17, 'App\\Models\\User', 3, 'MyAppToken', 'c0ae3eafb1b338165a5eeba052203170717419eb4c0cc93ec7d2c492c459b5be', '[\"*\"]', '2023-09-17 13:16:10', '2023-09-02 10:25:28', '2023-09-17 13:16:10'),
(18, 'App\\Models\\User', 4, 'MyAppToken', '1bb3183f11f1d77c7f62b510b543ab5d396892bf199fce2127663a34db113f02', '[\"*\"]', '2023-09-17 13:29:28', '2023-09-17 13:21:11', '2023-09-17 13:29:28'),
(19, 'App\\Models\\User', 6, 'MyAppToken', '4c57d5e560f32a6894a646eb4fb5ab03c895c7630fb9c0cffd340766722ee8ff', '[\"*\"]', '2023-10-20 00:12:19', '2023-10-20 00:06:07', '2023-10-20 00:12:19'),
(20, 'App\\Models\\User', 6, 'MyAppToken', 'c06cbee01a3fdb8e10b961ee5f900673063fb8177f065437df3cf333ce66cd8f', '[\"*\"]', NULL, '2023-10-20 00:12:19', '2023-10-20 00:12:19'),
(21, 'App\\Models\\User', 6, 'MyAppToken', '35dfd1d3164d9b517785fb8484064ced03c9abf20cb48d59b732e52c861d51ae', '[\"*\"]', '2023-10-20 00:14:56', '2023-10-20 00:12:19', '2023-10-20 00:14:56'),
(22, 'App\\Models\\User', 6, 'MyAppToken', 'd4b29693131f5c44e0706ce530e76d2f2189f6b005752eaa79330470c75137f0', '[\"*\"]', NULL, '2023-10-20 00:14:55', '2023-10-20 00:14:55'),
(23, 'App\\Models\\User', 6, 'MyAppToken', 'c3e22c5e6951f5a3e68d667fcd3932fe758c4563d45a1c42c477783be1bb8c78', '[\"*\"]', '2023-10-20 00:16:01', '2023-10-20 00:14:56', '2023-10-20 00:16:01'),
(24, 'App\\Models\\User', 6, 'MyAppToken', '33f94f1b60721c2dcb2a6b83ad4259774dca1fa9ad735a5aaa69bc155b18288a', '[\"*\"]', '2023-10-20 00:38:52', '2023-10-20 00:15:59', '2023-10-20 00:38:52'),
(25, 'App\\Models\\User', 6, 'MyAppToken', '26d559f6c3399ecef8c6285aa2b82822245a092591d91abb5cf8e8ec3928f03f', '[\"*\"]', NULL, '2023-10-20 00:38:52', '2023-10-20 00:38:52'),
(26, 'App\\Models\\User', 6, 'MyAppToken', '8d0fb83334f64f23cbcd722e3386573e3251ae52c919a35bd38c446abc9b8cf6', '[\"*\"]', '2023-10-20 00:40:16', '2023-10-20 00:38:52', '2023-10-20 00:40:16'),
(27, 'App\\Models\\User', 6, 'MyAppToken', '89a7c34b1e43b4053140f13c9ceff8f18943bbd0d50254066995f74ebed2fd71', '[\"*\"]', NULL, '2023-10-20 00:40:16', '2023-10-20 00:40:16'),
(28, 'App\\Models\\User', 6, 'MyAppToken', '4c7783633fe71a2cda5c535b0deede1d1866071425853d809bee5b5ab1629293', '[\"*\"]', '2023-10-20 00:52:33', '2023-10-20 00:40:16', '2023-10-20 00:52:33'),
(29, 'App\\Models\\User', 6, 'MyAppToken', '2b693a8daa3957a97f81ce8dbb05073fd9a7be446042ddfa19d7a39b1ca879fc', '[\"*\"]', NULL, '2023-10-20 00:52:28', '2023-10-20 00:52:28'),
(30, 'App\\Models\\User', 6, 'MyAppToken', '9493ef35a2689ca06508a49241bd3e3e1e278d1c7df2e509ef13bc0e7bca4d60', '[\"*\"]', '2023-10-20 00:53:23', '2023-10-20 00:52:29', '2023-10-20 00:53:23'),
(31, 'App\\Models\\User', 6, 'MyAppToken', '4a2bfd3bdaddee4b5e7e7ff07f4823c61031aa95313d299cb2ef0195e738a271', '[\"*\"]', NULL, '2023-10-20 00:53:20', '2023-10-20 00:53:20'),
(32, 'App\\Models\\User', 6, 'MyAppToken', '03ad0390167ff57eae68123212954835fe22e2e23fa9829ae1d8a900078c260f', '[\"*\"]', '2023-10-20 00:55:26', '2023-10-20 00:53:21', '2023-10-20 00:55:26'),
(33, 'App\\Models\\User', 6, 'MyAppToken', '7e79296711dd0981f5435f9bd6557b57dd42f2cc33b9bb37138204c000a48685', '[\"*\"]', NULL, '2023-10-20 00:55:26', '2023-10-20 00:55:26'),
(34, 'App\\Models\\User', 6, 'MyAppToken', '21ed0811b0e33e41831abddfb3ed02c5fc06f458f4e0f7cdb927e9e584fb9857', '[\"*\"]', '2023-10-20 00:56:46', '2023-10-20 00:55:26', '2023-10-20 00:56:46'),
(35, 'App\\Models\\User', 6, 'MyAppToken', '095b1f9e0494d39d90649b82a0cc3db7a2edef5de910b36cf223bbceccb1aee5', '[\"*\"]', NULL, '2023-10-20 00:56:44', '2023-10-20 00:56:44'),
(36, 'App\\Models\\User', 6, 'MyAppToken', 'ce322f3316d6c93b1d2e98b81ba7c3e165e2de120e33361dc4d1958d32b127e5', '[\"*\"]', '2023-10-20 00:57:28', '2023-10-20 00:56:49', '2023-10-20 00:57:28'),
(37, 'App\\Models\\User', 6, 'MyAppToken', 'b5856f247fc6e06b633c09ebd2f60f0d7f504d6ce7489fb9eb0b4da1c2ed24db', '[\"*\"]', NULL, '2023-10-20 00:57:23', '2023-10-20 00:57:23'),
(38, 'App\\Models\\User', 6, 'MyAppToken', '6a30eaad3e2098cb2bc09ad524cf92b8d29a511aef1b2a9edbe1896d3cb96c1f', '[\"*\"]', '2023-10-20 00:58:43', '2023-10-20 00:57:25', '2023-10-20 00:58:43'),
(39, 'App\\Models\\User', 6, 'MyAppToken', '2bcd70ab869c9f5fecb64946d2639cd75585dac57989415dd73f1c75ce57b432', '[\"*\"]', '2023-10-20 01:00:30', '2023-10-20 00:58:43', '2023-10-20 01:00:30'),
(40, 'App\\Models\\User', 6, 'MyAppToken', '0deb7f4036b528932bfdbf9b738590938fe87e6e4fc0df0fb2f65bfa24411111', '[\"*\"]', NULL, '2023-10-20 00:58:43', '2023-10-20 00:58:43'),
(41, 'App\\Models\\User', 6, 'MyAppToken', 'a0202d6a314cd692d9ae10c6f182f9dc1c2a5548f7a6afcc849f190886b9ee4a', '[\"*\"]', NULL, '2023-10-20 01:00:30', '2023-10-20 01:00:30'),
(42, 'App\\Models\\User', 6, 'MyAppToken', '0b8a1f38474e040f900f8abab4d05163de718ca4bdb8b5dde232843531284527', '[\"*\"]', '2023-10-20 01:09:09', '2023-10-20 01:00:30', '2023-10-20 01:09:09'),
(43, 'App\\Models\\User', 6, 'MyAppToken', '1c059c37ef8cdf61a04ed399c8d7cfc9d93070cec95419703204e69ea7d554ea', '[\"*\"]', '2023-10-20 01:28:55', '2023-10-20 01:09:09', '2023-10-20 01:28:55'),
(44, 'App\\Models\\User', 6, 'MyAppToken', '79a0d3a112ffc061c1dd4070006c06dd763b1407abcd9b5021b69c3972fd74f3', '[\"*\"]', NULL, '2023-10-20 01:09:09', '2023-10-20 01:09:09'),
(45, 'App\\Models\\User', 6, 'MyAppToken', '0527cf855d2db8ba2cf27d92305a1fe52f50ed762c2a22d62764e485fc5fdcc7', '[\"*\"]', '2023-10-20 03:50:30', '2023-10-20 01:29:48', '2023-10-20 03:50:30'),
(46, 'App\\Models\\User', 6, 'MyAppToken', 'e78cb097c4658ce2e7d81514191900844e5ed63b8eef6a6c027f74e26750472f', '[\"*\"]', NULL, '2023-10-20 01:29:48', '2023-10-20 01:29:48'),
(47, 'App\\Models\\User', 6, 'MyAppToken', '886e23204eed998b0cdf5d2345482f95a243e3b1e1811842ee55b3e531e76ce7', '[\"*\"]', NULL, '2023-10-20 03:50:30', '2023-10-20 03:50:30'),
(48, 'App\\Models\\User', 6, 'MyAppToken', '5eddfef89e721704a2df2de9b8f3119f64a4769bee31eff43914fe3631716514', '[\"*\"]', '2023-10-20 09:11:18', '2023-10-20 03:50:30', '2023-10-20 09:11:18'),
(49, 'App\\Models\\User', 6, 'MyAppToken', '267454b1bb107ee821d87e4201a666aebfb2c31e9fa2a898b981e9a379e66257', '[\"*\"]', NULL, '2023-10-20 09:11:10', '2023-10-20 09:11:10'),
(50, 'App\\Models\\User', 6, 'MyAppToken', '899ecf24277c787bda45241d7093775d907b07c43c6fd15895de2d2424c228d7', '[\"*\"]', '2023-10-20 09:14:03', '2023-10-20 09:11:14', '2023-10-20 09:14:03'),
(51, 'App\\Models\\User', 6, 'MyAppToken', '173270cd65888f6c1fb3a42c783629bc871bdce150771bbf8e3dfd24418d0044', '[\"*\"]', NULL, '2023-10-20 09:14:02', '2023-10-20 09:14:02'),
(52, 'App\\Models\\User', 6, 'MyAppToken', '06cfdd6f66b7e87b6ea5f266c8698fa62a5d4efbe8b7013805e760655524e98a', '[\"*\"]', NULL, '2023-10-20 09:14:03', '2023-10-20 09:14:03'),
(53, 'App\\Models\\User', 6, 'MyAppToken', '67c58e5b75c29710a2aa6157344286f7e1bfdec7711e4459df8af6a00268b2b6', '[\"*\"]', '2023-10-20 09:56:26', '2023-10-20 09:56:25', '2023-10-20 09:56:26'),
(54, 'App\\Models\\User', 6, 'MyAppToken', '978b57359977bebd851274c10578ed540f841c4864abf288790024093bef55ef', '[\"*\"]', '2023-10-20 22:56:49', '2023-10-20 11:17:43', '2023-10-20 22:56:49'),
(55, 'App\\Models\\User', 4, 'MyAppToken', 'b3a568884bf0398f9e1c72d84e103d5ba4b461d1734875f42606cbe2315f32c8', '[\"*\"]', '2023-10-20 21:05:25', '2023-10-20 15:51:32', '2023-10-20 21:05:25'),
(56, 'App\\Models\\User', 4, 'MyAppToken', '81e4984fe441ac123ad48d0181a7a9c1b2168652cb6c6f7786dcbf455c24aa1b', '[\"*\"]', '2023-11-16 01:13:28', '2023-10-20 21:05:25', '2023-11-16 01:13:28'),
(57, 'App\\Models\\User', 4, 'MyAppToken', 'e94fe1623ffb2392eae14e3a761c5f7eda8fdc16b33f1514e36ef0acb500661b', '[\"*\"]', NULL, '2023-10-20 21:05:25', '2023-10-20 21:05:25'),
(58, 'App\\Models\\User', 6, 'MyAppToken', 'adbc04628151a01908932381145b9383d82ff9489e25874c3e3147f54f22647f', '[\"*\"]', '2023-10-20 22:40:58', '2023-10-20 22:32:27', '2023-10-20 22:40:58'),
(59, 'App\\Models\\User', 6, 'MyAppToken', '00235756040eed1bcbd81ec532773a2e0c9de2e1d901f349a7fa809392c7fbdd', '[\"*\"]', NULL, '2023-10-20 22:40:58', '2023-10-20 22:40:58'),
(60, 'App\\Models\\User', 6, 'MyAppToken', '46d4817b64af23ca042b57870a6623115e49b28b52e05acc0c7c6fbf88c9a4c4', '[\"*\"]', NULL, '2023-10-20 22:40:58', '2023-10-20 22:40:58'),
(61, 'App\\Models\\User', 6, 'MyAppToken', 'c28b4aae1a6deeaa1917e3e9ec7d60b0f10aee2000953f0f39a36fe3ffa03cbe', '[\"*\"]', '2023-10-20 22:48:52', '2023-10-20 22:48:44', '2023-10-20 22:48:52'),
(62, 'App\\Models\\User', 6, 'MyAppToken', 'b2cfdc1c097a83aff798325085dc4bdc604823c3b8bf127c6225db75c9730b5b', '[\"*\"]', '2023-10-21 10:48:03', '2023-10-20 22:56:49', '2023-10-21 10:48:03'),
(63, 'App\\Models\\User', 6, 'MyAppToken', 'c748b6159ebb0a2e2e7bcd89874763e16257fdc3c8f66ae7dffea4f0bd81f855', '[\"*\"]', NULL, '2023-10-20 22:56:49', '2023-10-20 22:56:49'),
(64, 'App\\Models\\User', 6, 'MyAppToken', '7b2fc09bb62510bf2d1e2fbfc53a70eaa0c7867ebff1da5f2186ae5d87a6349f', '[\"*\"]', NULL, '2023-10-21 10:47:55', '2023-10-21 10:47:55'),
(65, 'App\\Models\\User', 6, 'MyAppToken', '8edbd230639e5dd8cedaad8ad4981bb61287923aa7111448b35c4fc7d6528a81', '[\"*\"]', '2023-10-22 23:07:27', '2023-10-21 10:48:03', '2023-10-22 23:07:27'),
(66, 'App\\Models\\User', 9, 'MyAppToken', '021a574f87d368e9618920fcc887541acd76ec4fd858391815efd8a19366529c', '[\"*\"]', '2023-10-29 12:23:37', '2023-10-22 06:47:46', '2023-10-29 12:23:37'),
(67, 'App\\Models\\User', 6, 'MyAppToken', 'a3262201d4498701c8a26a1b5beb09f3e98d9e95b7d2bc08f10ddb312d7a3f0d', '[\"*\"]', NULL, '2023-10-22 10:30:45', '2023-10-22 10:30:45'),
(68, 'App\\Models\\User', 6, 'MyAppToken', '9974f18e6c6fdfe838a361a7cf4ea222726fcdf0c932da7e9e155bc11ba3016c', '[\"*\"]', '2023-10-22 10:34:57', '2023-10-22 10:30:45', '2023-10-22 10:34:57'),
(69, 'App\\Models\\User', 6, 'MyAppToken', 'f652acef2c508c5ec07ae6e407d913f6150076ee9007f6d634b154ac527d6ea2', '[\"*\"]', '2023-10-29 09:45:11', '2023-10-22 11:34:21', '2023-10-29 09:45:11'),
(70, 'App\\Models\\User', 6, 'MyAppToken', '65c8c9100be06953dfa953ce241de9695053b62bcf6f4865d8673135ab38530e', '[\"*\"]', NULL, '2023-10-22 23:07:27', '2023-10-22 23:07:27'),
(71, 'App\\Models\\User', 6, 'MyAppToken', '7af7b144b2e5f65ffb29deb10f211787729ccd29123aac3c4de92341dfa2e0c3', '[\"*\"]', NULL, '2023-10-22 23:07:27', '2023-10-22 23:07:27'),
(72, 'App\\Models\\User', 6, 'MyAppToken', '3e78bd60f06b32325295eefaaa1acda2d47052a6f3e1f9547402b300917edc10', '[\"*\"]', '2023-11-03 06:04:15', '2023-10-22 23:23:04', '2023-11-03 06:04:15'),
(73, 'App\\Models\\User', 6, 'MyAppToken', '0614b6d8a565a6a43156b5de5bdf3474531810b08fb44ba48d5a3322d7bae75f', '[\"*\"]', NULL, '2023-10-29 09:45:11', '2023-10-29 09:45:11'),
(74, 'App\\Models\\User', 6, 'MyAppToken', 'fe166c79985d32f2dd7f024972dbe04e563bf338d08b0a2247109b130f883a35', '[\"*\"]', '2023-10-29 11:07:28', '2023-10-29 09:45:11', '2023-10-29 11:07:28'),
(75, 'App\\Models\\User', 6, 'MyAppToken', 'f307de6446ba5e14fc2e31ee23831f4e40f3b2252f39cb8161ff26fd1114eef1', '[\"*\"]', '2023-11-05 13:07:32', '2023-10-29 11:07:28', '2023-11-05 13:07:32'),
(76, 'App\\Models\\User', 6, 'MyAppToken', 'bec6997912f944dc53053ffcd99978506658aaf9507a9c731b27767015c2310e', '[\"*\"]', NULL, '2023-10-29 11:07:28', '2023-10-29 11:07:28'),
(77, 'App\\Models\\User', 9, 'MyAppToken', '8d559706cab9fe0c602bceb6091338bbe00e4c960d84c33bf183ffe8acb229d9', '[\"*\"]', NULL, '2023-10-29 12:23:37', '2023-10-29 12:23:37'),
(78, 'App\\Models\\User', 9, 'MyAppToken', '0ddec28877f03d22ac00160be8752a3209283f7e2bd4bdd8362d2858ab41c363', '[\"*\"]', NULL, '2023-10-29 12:23:37', '2023-10-29 12:23:37'),
(79, 'App\\Models\\User', 6, 'MyAppToken', 'ca3dfaf0867debf4e47c994165d58e241c4a1ef6baa10a38511ca62a8c5ae355', '[\"*\"]', NULL, '2023-10-29 21:35:41', '2023-10-29 21:35:41'),
(80, 'App\\Models\\User', 6, 'MyAppToken', '4046d1d0b13d3808dd7d77600bde40ca7943c81dd5949c69c69ce2190552bc81', '[\"*\"]', NULL, '2023-11-03 06:04:15', '2023-11-03 06:04:15'),
(81, 'App\\Models\\User', 6, 'MyAppToken', '3305cdaca269900891d06442fc92132cd775f332b6d78795c3cbd35496da4709', '[\"*\"]', '2023-11-03 06:06:05', '2023-11-03 06:04:15', '2023-11-03 06:06:05'),
(82, 'App\\Models\\User', 6, 'MyAppToken', 'ab996f747ceefaa549ca7834f6556ee617a3ecc5219aeafd58f26897467a085e', '[\"*\"]', '2023-11-13 11:29:03', '2023-11-05 13:07:32', '2023-11-13 11:29:03'),
(83, 'App\\Models\\User', 6, 'MyAppToken', 'e16cb0834686bd5850337c8663428981e6d2badd176e42ec218333af1f155de3', '[\"*\"]', NULL, '2023-11-05 13:07:32', '2023-11-05 13:07:32'),
(84, 'App\\Models\\User', 6, 'MyAppToken', 'bec06e5b7130b7afe24bc5218183eefcb35195c08cb651037ccc28cacf914ef6', '[\"*\"]', NULL, '2023-11-13 11:29:03', '2023-11-13 11:29:03'),
(85, 'App\\Models\\User', 6, 'MyAppToken', 'aaca81c4fa11a901bc66a716705a9992f7d4c1669481ddfaf604bb7111ab797a', '[\"*\"]', '2023-11-13 12:03:31', '2023-11-13 11:29:03', '2023-11-13 12:03:31'),
(86, 'App\\Models\\User', 6, 'MyAppToken', '42cda5fa7be6679379f975d002253434ca2974f13fbf97e4ff1ed411ab8dce2d', '[\"*\"]', NULL, '2023-11-13 12:03:31', '2023-11-13 12:03:31'),
(87, 'App\\Models\\User', 6, 'MyAppToken', '5f96e8f5143195ed29d16604ee5bb70d6dd461c7908ac72751725e60e775214d', '[\"*\"]', '2023-11-13 12:23:57', '2023-11-13 12:03:31', '2023-11-13 12:23:57'),
(88, 'App\\Models\\User', 6, 'MyAppToken', '03c0c3c152a033da508d78f10deb81df0d2d49ac32a62f011bdc7a47342fdcf4', '[\"*\"]', NULL, '2023-11-13 12:23:57', '2023-11-13 12:23:57'),
(89, 'App\\Models\\User', 6, 'MyAppToken', '989d959a60445ab80abe65ecf3e66ca1c5f49be07780a138aad4c0890075ad2f', '[\"*\"]', '2023-11-13 12:25:29', '2023-11-13 12:23:57', '2023-11-13 12:25:29'),
(90, 'App\\Models\\User', 6, 'MyAppToken', '112ffde4bb181a6237da375302f094a67d2159bfc321b79ecd58db965af72b16', '[\"*\"]', NULL, '2023-11-13 12:25:29', '2023-11-13 12:25:29'),
(91, 'App\\Models\\User', 6, 'MyAppToken', '8e6aea008b795254da00a1c91db63a5c3ef727f19750359748e97b9bea38383b', '[\"*\"]', '2023-12-13 04:25:18', '2023-11-13 12:25:29', '2023-12-13 04:25:18'),
(92, 'App\\Models\\User', 6, 'MyAppToken', '8668d3d34848df0cd7b4812cd34ab257cbbc26a18faa08fab9e0b29bec82ec05', '[\"*\"]', '2023-11-13 12:29:23', '2023-11-13 12:28:16', '2023-11-13 12:29:23'),
(93, 'App\\Models\\User', 6, 'MyAppToken', '161cf79132d58dc9b00d7fc22d0d72e00642756c66915e918e32019712bced7e', '[\"*\"]', '2023-11-15 07:54:55', '2023-11-15 07:35:28', '2023-11-15 07:54:55'),
(94, 'App\\Models\\User', 6, 'MyAppToken', 'dc350bdfaac1d1b0bd0559ad5f574240c7ed16dfef42f908fa80487966e8ff61', '[\"*\"]', NULL, '2023-11-15 07:54:55', '2023-11-15 07:54:55'),
(95, 'App\\Models\\User', 6, 'MyAppToken', 'bdaa59d6ead24514dece05433dfb5440528474b15ea8c4d41ba179a7ed75eaa2', '[\"*\"]', NULL, '2023-11-15 07:54:55', '2023-11-15 07:54:55'),
(96, 'App\\Models\\User', 6, 'MyAppToken', '89c2bab4a1f3f71be9d225025943721ac1773cd4271c7c5a3ee7df9d76cf78b9', '[\"*\"]', '2023-11-15 08:13:32', '2023-11-15 08:09:13', '2023-11-15 08:13:32'),
(97, 'App\\Models\\User', 6, 'MyAppToken', '29b95a9fbf1076c09b6b50bb2d2592b1447643bea3c3062900ee547fb6f75231', '[\"*\"]', NULL, '2023-11-15 08:13:32', '2023-11-15 08:13:32'),
(98, 'App\\Models\\User', 6, 'MyAppToken', 'e2fd04aef025fc6c633f341aa6bbea3b120297a5cb8bb52763fb441608c48f8e', '[\"*\"]', '2023-11-15 08:16:46', '2023-11-15 08:13:33', '2023-11-15 08:16:46'),
(99, 'App\\Models\\User', 6, 'MyAppToken', '7919abd599e24595fc7a1dc5af4ca767acda00e1d9000302bddc332ea39f2bb1', '[\"*\"]', '2023-11-15 08:41:29', '2023-11-15 08:16:46', '2023-11-15 08:41:29'),
(100, 'App\\Models\\User', 6, 'MyAppToken', '68632d059bb70f67317e002cbe1cc0949b124ee148f0f56e28f8064db2e8c201', '[\"*\"]', NULL, '2023-11-15 08:16:46', '2023-11-15 08:16:46'),
(101, 'App\\Models\\User', 6, 'MyAppToken', '09be0beb1f422c8aa69e95649aec6d7e521c40d5ee0b97c552d9220e12712dfd', '[\"*\"]', NULL, '2023-11-15 08:41:23', '2023-11-15 08:41:23'),
(102, 'App\\Models\\User', 6, 'MyAppToken', '4c275890ad018a94254f933e25a9552b2ab15fc42bc9f1b78ea563748471940c', '[\"*\"]', '2023-11-15 09:18:13', '2023-11-15 08:41:23', '2023-11-15 09:18:13'),
(103, 'App\\Models\\User', 6, 'MyAppToken', 'd92fe637ceb939105774c55b5cf549463247355be40ccc67635c0d1212c77a0f', '[\"*\"]', NULL, '2023-11-15 09:18:13', '2023-11-15 09:18:13'),
(104, 'App\\Models\\User', 6, 'MyAppToken', '6c2d18023d6870e521ad90241a7af2ce76ec5e8debf699fd9a24342654f0fb25', '[\"*\"]', '2023-11-16 00:18:18', '2023-11-15 09:18:13', '2023-11-16 00:18:18'),
(105, 'App\\Models\\User', 6, 'MyAppToken', '6d191f2ef4605866396a48e1db7d34ea1fcdd594d47c6b442a039ad1fdbfb4ba', '[\"*\"]', NULL, '2023-11-16 00:18:17', '2023-11-16 00:18:17'),
(106, 'App\\Models\\User', 6, 'MyAppToken', 'aa04077e136873c746458cba1622158e4d3d18754b6bfd27a9871142654fccc8', '[\"*\"]', '2023-11-16 00:26:30', '2023-11-16 00:18:17', '2023-11-16 00:26:30'),
(107, 'App\\Models\\User', 6, 'MyAppToken', 'b3bebec13e4724a34240935673a3b4098a8570f331e00d970606346a6979df26', '[\"*\"]', NULL, '2023-11-16 00:26:30', '2023-11-16 00:26:30'),
(108, 'App\\Models\\User', 6, 'MyAppToken', '9b25ad640a2a09f15d6adaf8d7e259b48c7c2c1d7e18215b3171db3f36b04ced', '[\"*\"]', '2023-11-16 00:33:05', '2023-11-16 00:26:30', '2023-11-16 00:33:05'),
(109, 'App\\Models\\User', 6, 'MyAppToken', '0ca3b1e51b3dd0c81cc17ed1adfb39b4b5c3c7e697e2054bd55920cb2d6b690e', '[\"*\"]', NULL, '2023-11-16 00:33:04', '2023-11-16 00:33:04'),
(110, 'App\\Models\\User', 6, 'MyAppToken', '54348401010331a21cb22021d4f96a88a43468aefc01b2fcf7145d7b85f57736', '[\"*\"]', '2023-11-16 00:38:59', '2023-11-16 00:33:04', '2023-11-16 00:38:59'),
(111, 'App\\Models\\User', 6, 'MyAppToken', '161a04b4186f987881a6fec6bcb42b5c7f048e63cdccba7243e15e8bdd120ec5', '[\"*\"]', NULL, '2023-11-16 00:38:58', '2023-11-16 00:38:58'),
(112, 'App\\Models\\User', 6, 'MyAppToken', '934a9ed73f9c558291527996756096ae4a743b83d78010660521f9f3d9c61972', '[\"*\"]', '2023-11-16 00:40:04', '2023-11-16 00:39:05', '2023-11-16 00:40:04'),
(113, 'App\\Models\\User', 6, 'MyAppToken', '13503e883cd19bfebfb52ccf0e641dd30e18e8e579e89280b6de90d0b294c6fa', '[\"*\"]', NULL, '2023-11-16 00:40:00', '2023-11-16 00:40:00'),
(114, 'App\\Models\\User', 6, 'MyAppToken', '53dfb1d96278d8f3c976fd8f2a7d342e1278fb620f60e40e5950580d7f9cdcb4', '[\"*\"]', '2023-11-16 00:41:19', '2023-11-16 00:40:02', '2023-11-16 00:41:19'),
(115, 'App\\Models\\User', 6, 'MyAppToken', '53ff521aea5657e9ebfc56a6841e8aaa5cd943acbf5121a7d6192533804591c5', '[\"*\"]', NULL, '2023-11-16 00:41:19', '2023-11-16 00:41:19'),
(116, 'App\\Models\\User', 6, 'MyAppToken', '5e9636778cff71b55dba67ebc40b3a52ccf766e804dfb0f4c7a3d774e9c1cf84', '[\"*\"]', '2023-11-16 00:50:54', '2023-11-16 00:41:20', '2023-11-16 00:50:54'),
(117, 'App\\Models\\User', 4, 'MyAppToken', '1e7742706456b1cf5e5a0bc30dacedbca9a1d900f5da2eba8c48223fd0d5f4dd', '[\"*\"]', '2024-03-03 22:12:50', '2023-11-16 01:13:29', '2024-03-03 22:12:50'),
(118, 'App\\Models\\User', 4, 'MyAppToken', 'ca9f83b789e3e0647293582a957ca090ce621a3b81dbd270a8ca3f5903871f0e', '[\"*\"]', NULL, '2023-11-16 01:13:29', '2023-11-16 01:13:29'),
(119, 'App\\Models\\User', 6, 'MyAppToken', '60406ad3ae3c9773434d5b5d4ccc4b480a286e553037ac5c91d3834632ae9a1c', '[\"*\"]', '2023-11-29 07:08:59', '2023-11-29 07:02:55', '2023-11-29 07:08:59'),
(120, 'App\\Models\\User', 4, 'MyAppToken', 'f1efe92a7ae9c27713b235c23445ca1f236f578799e27a6cb8705caa4976f2f7', '[\"*\"]', '2023-11-29 23:08:14', '2023-11-29 23:08:13', '2023-11-29 23:08:14'),
(121, 'App\\Models\\User', 6, 'MyAppToken', '1693c83e9836353bb22cfa1930715b7178630d06424ba91adbaf870abb10ad0d', '[\"*\"]', '2024-01-11 03:54:12', '2023-11-30 02:42:00', '2024-01-11 03:54:12'),
(122, 'App\\Models\\User', 4, 'MyAppToken', '0f28bf699d45e6fcead880155e3ce1a338565bdd95b00edbc4ffee4a2d113644', '[\"*\"]', '2023-12-01 11:13:20', '2023-12-01 11:12:52', '2023-12-01 11:13:20'),
(123, 'App\\Models\\User', 13, 'MyAppToken', 'c4f23e1dd604e3c066b113db209b619c8c0c8e8a2ccadff537f65b6255f8ca1e', '[\"*\"]', '2023-12-06 09:51:05', '2023-12-06 09:46:40', '2023-12-06 09:51:05'),
(124, 'App\\Models\\User', 6, 'MyAppToken', '87cd83562c1d3da97ca2623ddddf5a2c4d28f72213378347e6f20e502bb20b14', '[\"*\"]', '2023-12-25 10:16:51', '2023-12-13 04:25:19', '2023-12-25 10:16:51'),
(125, 'App\\Models\\User', 6, 'MyAppToken', 'f7db2d78ada69f3699c44b2d1c32123c5019b956102c096ce0b6145a9d0d7850', '[\"*\"]', NULL, '2023-12-13 04:25:19', '2023-12-13 04:25:19'),
(126, 'App\\Models\\User', 14, 'MyAppToken', '50fa59d883246e42a2fc1c1387c7233627b30dc8f56d81af84b4929edb38e422', '[\"*\"]', '2023-12-17 00:37:53', '2023-12-17 00:37:52', '2023-12-17 00:37:53'),
(127, 'App\\Models\\User', 10, 'MyAppToken', '22ade2b0e2963e8b9956960e9b609bcabc927cc387b26c29b46877ee402d2ce3', '[\"*\"]', '2023-12-17 08:49:32', '2023-12-17 08:49:31', '2023-12-17 08:49:32'),
(128, 'App\\Models\\User', 6, 'MyAppToken', '1b44c40ab519c14958b2e41b74d605ec87d78e69814048330d5bdb691409b89d', '[\"*\"]', NULL, '2023-12-25 10:16:51', '2023-12-25 10:16:51'),
(129, 'App\\Models\\User', 6, 'MyAppToken', 'be735939c9fd6714219ac188dc67c1517b20eac49864cf6cc44c46be74798950', '[\"*\"]', '2024-01-19 14:22:29', '2023-12-25 10:16:51', '2024-01-19 14:22:29'),
(130, 'App\\Models\\User', 4, 'MyAppToken', '3453610449e72b16e38836a44df285078f2237771b217786f43116dc5777d2f1', '[\"*\"]', '2024-01-08 01:05:00', '2024-01-08 01:04:58', '2024-01-08 01:05:00'),
(131, 'App\\Models\\User', 6, 'MyAppToken', '811106c4a8b5814f77602543cc5ba6fcdaf75ec1f829ece4be8d4b3d525da14f', '[\"*\"]', NULL, '2024-01-11 03:54:13', '2024-01-11 03:54:13'),
(132, 'App\\Models\\User', 6, 'MyAppToken', '127268018ae8de6e22c22612aae7c19f2005470bcceb7860120ca238f9d75e25', '[\"*\"]', '2024-01-19 21:19:50', '2024-01-11 03:54:13', '2024-01-19 21:19:50'),
(133, 'App\\Models\\User', 6, 'MyAppToken', '866a72c8d6ee503ff3092b214bef58d1305038bcf4a055a1372ae729fa9d8c88', '[\"*\"]', NULL, '2024-01-19 14:22:30', '2024-01-19 14:22:30'),
(134, 'App\\Models\\User', 6, 'MyAppToken', '87838db226401f98ff51acd8127e748970bc7c0c48f107d6dc8b1451533e6584', '[\"*\"]', NULL, '2024-01-19 14:22:30', '2024-01-19 14:22:30'),
(135, 'App\\Models\\User', 6, 'MyAppToken', 'e891a91160a01c639718d96b15ee101bf7b12ad799730bca57f6ebda49c74ade', '[\"*\"]', '2024-03-30 03:13:49', '2024-01-19 21:19:50', '2024-03-30 03:13:49'),
(136, 'App\\Models\\User', 6, 'MyAppToken', '53d9f895a5c039dce6d2c8c4c08a4b9c9586b3c004431cf12148a440995c15d2', '[\"*\"]', NULL, '2024-01-19 21:19:51', '2024-01-19 21:19:51'),
(137, 'App\\Models\\User', 4, 'MyAppToken', '49c9b7f750190b419c06a6f963f15e511e5137a685f329447392777fddf584ac', '[\"*\"]', '2024-01-24 20:29:03', '2024-01-24 20:29:00', '2024-01-24 20:29:03'),
(138, 'App\\Models\\User', 4, 'MyAppToken', '3c02dd1f7a1cf322d3c91083f0f13583aec67219e255df68c9fc6ac14cf1ca86', '[\"*\"]', '2024-01-31 06:18:36', '2024-01-31 06:18:02', '2024-01-31 06:18:36'),
(139, 'App\\Models\\User', 4, 'MyAppToken', 'c587a00deab11abf7b1ec099d967a27c7acf42da7be375e69c3ca614931775b3', '[\"*\"]', NULL, '2024-01-31 06:18:34', '2024-01-31 06:18:34'),
(140, 'App\\Models\\User', 4, 'MyAppToken', '91cde100c8a929cb1c29ab4cf27d450a719c4c47c69b36f0aded76bbb97cae2d', '[\"*\"]', '2024-01-31 06:20:06', '2024-01-31 06:18:34', '2024-01-31 06:20:06'),
(141, 'App\\Models\\User', 4, 'MyAppToken', '2ae9b005ccbfd580eec32bb84f71c69074e73d9e620e49cb749f624c26720afa', '[\"*\"]', '2024-02-26 10:18:19', '2024-02-26 10:17:47', '2024-02-26 10:18:19'),
(142, 'App\\Models\\User', 4, 'MyAppToken', '7b9b6e8c27faba89b3977a75bf682361a3cf83d16aea6003a8ed01ed7274f328', '[\"*\"]', '2024-03-03 22:15:03', '2024-03-03 22:12:51', '2024-03-03 22:15:03'),
(143, 'App\\Models\\User', 4, 'MyAppToken', '1cf0639c7bb50643cabfc14df3e43f2c45b2afa59fba6ee27fe06c367c1a293a', '[\"*\"]', NULL, '2024-03-03 22:12:51', '2024-03-03 22:12:51'),
(144, 'App\\Models\\User', 4, 'MyAppToken', '819eb62433d343a7af862b5d323ac7c6fc8d5947a8a88e735e970d0863062455', '[\"*\"]', '2024-06-22 20:27:20', '2024-06-22 20:26:32', '2024-06-22 20:27:20'),
(145, 'App\\Models\\User', 4, 'MyAppToken', 'e1869b3be930eccec66910b0750fcd2b01ced527a159662ddb81b7bdece36a9a', '[\"*\"]', '2024-07-19 19:23:28', '2024-07-19 19:21:06', '2024-07-19 19:23:28');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) DEFAULT NULL,
  `category` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `image` varchar(191) DEFAULT NULL,
  `description` text,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `category`, `price`, `image`, `description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy s5-', '1', '46000', 'product-1.jpg', NULL, 1, 1, '2022-12-06 22:28:52', '2022-12-07 09:59:09'),
(2, 'LG Leon 2015', '1', '400.00', 'product-3.jpg', NULL, 1, 1, '2022-12-06 22:53:50', '2022-12-06 23:07:52'),
(3, 'Sony microsoft', '1', '200.00', 'product-4.jpg', NULL, 1, 1, '2022-12-06 22:55:04', '2022-12-06 23:07:59'),
(4, 'iPhone 6', '1', '1200.00', 'product-5.jpg', NULL, 1, 1, '2022-12-06 22:55:35', '2022-12-06 23:08:10'),
(5, 'Samsung gallaxy note 4', '1', '400.00', 'product-6.jpg', NULL, 1, 1, '2022-12-06 22:56:12', '2022-12-06 23:08:23');

-- --------------------------------------------------------

--
-- Table structure for table `profits`
--

DROP TABLE IF EXISTS `profits`;
CREATE TABLE IF NOT EXISTS `profits` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `income_date` varchar(255) NOT NULL,
  `income_head` varchar(255) DEFAULT NULL,
  `giver` varchar(255) DEFAULT NULL,
  `voucher_no` varchar(255) DEFAULT NULL,
  `amount` varchar(255) DEFAULT NULL,
  `source` varchar(255) DEFAULT NULL,
  `attachment` varchar(255) DEFAULT NULL,
  `payment_note` text,
  `description` text,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

DROP TABLE IF EXISTS `registrations`;
CREATE TABLE IF NOT EXISTS `registrations` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `donate_check` varchar(255) DEFAULT NULL,
  `last_donate_date` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(255) NOT NULL,
  `user_id` varchar(191) DEFAULT NULL,
  `password` varchar(191) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `birth_date` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `division_id` varchar(255) DEFAULT NULL,
  `district_id` varchar(255) DEFAULT NULL,
  `thana_id` varchar(255) DEFAULT NULL,
  `occupation` varchar(255) DEFAULT NULL,
  `university_id` varchar(255) DEFAULT NULL,
  `hospital_id` varchar(255) DEFAULT NULL,
  `refer_id` varchar(255) DEFAULT NULL,
  `interested_work` varchar(255) DEFAULT NULL,
  `group_check` varchar(255) DEFAULT NULL,
  `group_id` varchar(255) DEFAULT NULL,
  `agree` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `live_address_check` int DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `address_latitude` varchar(255) DEFAULT NULL,
  `address_longitude` varchar(255) DEFAULT NULL,
  `weight` varchar(11) DEFAULT NULL,
  `height` varchar(11) DEFAULT NULL,
  `nid_no` varchar(17) DEFAULT NULL,
  `facebook_id` varchar(191) DEFAULT NULL,
  `instagram_id` varchar(191) DEFAULT NULL,
  `youtube_id` varchar(191) DEFAULT NULL,
  `linkedIn_id` varchar(191) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `card_id` varchar(11) DEFAULT NULL,
  `profile` varchar(11) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=149 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `registrations`
--

INSERT INTO `registrations` (`id`, `donate_check`, `last_donate_date`, `first_name`, `last_name`, `email`, `mobile`, `user_id`, `password`, `blood_group`, `birth_date`, `age`, `gender`, `division_id`, `district_id`, `thana_id`, `occupation`, `university_id`, `hospital_id`, `refer_id`, `interested_work`, `group_check`, `group_id`, `agree`, `image`, `live_address_check`, `address`, `address_latitude`, `address_longitude`, `weight`, `height`, `nid_no`, `facebook_id`, `instagram_id`, `youtube_id`, `linkedIn_id`, `status`, `card_id`, `profile`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '1', '2023-07-01', 'Nazim', 'Uddin', 'admin@gmail.com', '01738305885', 'SBDSU885310307', '$2y$10$TiDgM6HRzCeM1wDnWwqe.eRw6UfBGqNieXmgeEzfNw.IOdFBCpW8a', 'B+', '1995-08-01', '27', 'Male', '2', '18', '366', 'Student', '1', '1', 'admin5885', '1', '1', '1', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', 2, 2, '2023-08-12 12:54:15', '2023-10-03 10:04:38'),
(2, '1', NULL, 'Faridul', 'Alam', 'faridul.info.bd@gmail.com', '01710248241', 'SBDSU32241030241', '$2y$10$.4IAsQZnzOSwzTb4aCKgOe3s0sZJT78eDIR5qoV.MBzgYY4aTdGMe', 'B+', '1991-10-03', '32', 'Male', '6', '47', '525', 'Businessmen', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', 'default.jpg', 1, '11 Mirpur Road, Dhaka, Bangladesh', '23.7780882', '90.3602909', '65', '5\'6', NULL, 'www.facebook.om/chadtara123', NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2023-10-03 11:02:42', '2024-01-29 04:06:51'),
(7, 'no', NULL, 'md. ikramur', 'rahman', 'ikram.irs@gmail.com', '01610404111', 'SBDSU33111224605', '$2y$10$dF.kGQ1HwWNtSdXfxNgcRuJcn51mbgPKAHwJ96Bd9e5oNjcq4Qe0O', 'A+', '1990-07-26', '33', 'Male', '6', '47', '525', 'Service', '-1', '1712', 'SBDSU32241030241', 'yes', 'no', '-1', 'yes', NULL, NULL, 'Pallabi, Dhaka, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-10-22 06:46:05', '2023-10-22 06:46:05'),
(4, 'no', '2023-09-14', 'Md Mostafizur', 'Rahman', 'mostafiz1713.official@gmail.com', '01736464767', 'SBDSU28767200542', '$2y$10$MNi5/hlV7guZ8xqMcXaujO18OaUBJv9qw5L/wf3Z5omFDL3Pnnhem', 'A+', '1995-08-17', '28', 'Male', '2', '18', '366', 'Service', '-1', '800', 'SBDSU32241030241', 'yes', 'yes', '1', 'yes', NULL, NULL, 'Nawabganj Sadar , Chapainawabganj, Rajshahi', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-10-20 00:05:43', '2023-10-20 00:05:43'),
(5, '1', NULL, 'Foujia', 'Akther', 'foujia1713@gmail.com', '01794965544', 'SBDSU26544205132', '$2y$10$YnEn0QCesL42wRj.g7xH9.CSXx4Pyd9Jht6JMBmnkMkregMkGAY12', 'O+', '1997-08-13', '26', 'Female', '7', '54', '405', 'Unemployed', NULL, '10363', 'SBDSU32241030241', '0', '0', NULL, '1', NULL, NULL, NULL, '0', '0', '55', '144', NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Donor', NULL, NULL, '2023-10-20 03:51:32', '2023-10-29 11:03:00'),
(6, '1', NULL, 'Syed', 'Alam', 'kikinbo.info@gmail.com', '01970248241', 'SBDSU32241205100', '$2y$10$nIhopbqK338csGOUTJXHY.lJ2fCQlyp0hhU9ENz0h6awzCAOofwnC', 'B+', '1990-12-31', '32', 'Male', '6', '47', '525', 'Service', NULL, '2003', 'SBDSU32241030241', '1', '0', NULL, '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-10-20 12:51:00', '2023-10-20 12:51:00'),
(8, '0', '2023-07-10', 'arman', 'hossain', 'mithun99001@gmail.com', '01753505265', 'SBDSU34265243923', '$2y$10$2zImo8dnAylgNAwIK7y0BOqGYYa1tgd8EdRE6QWX4l5Vb4Uzgmtsi', 'O+', '1989-10-17', '34', 'Male', '6', '47', '525', 'Businessmen', NULL, '15', 'SBDSU32241030241', '1', '0', NULL, '1', '1698155481-WhatsApp-Image-2023-10-23-at-6.27.59-PM.jpeg', NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2023-10-24 07:39:24', '2023-10-29 11:04:48'),
(9, '0', '2023-05-11', 'Mosaddeque Hossain', 'Khan', 'alwaysfamous@gmail.com', '01727588211', 'SBDSU46211052045', '$2y$10$AgMv0kJo.mD37TgLwgGyY.50roJWBzmLC0Z0NmF5nzvofYsrbALqq', 'O+', '1977-04-09', '46', 'Male', '6', '47', '519', 'Businessmen', NULL, '1711', 'SBDSU32241030241', '1', '0', NULL, '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-11-05 00:20:45', '2023-11-05 00:20:45'),
(10, 'no', '2023-07-12', 'Md Nasir Uddin', 'Akon', 'nasiruddin.akon@gmail.com', '01712742169', 'SBDSU33169025755', '$2y$10$Wu4Y./rnKVwTOL8eyIkpjO4552edFmpvS.WWhVMZ7yRWa4GcvVzqi', 'A+', '1990-10-16', '33', 'Male', '4', '33', '12', 'Service', '-1', '12966', 'SBDSU32241030241', 'yes', 'no', '-1', 'yes', NULL, NULL, 'Banaripara , Barisal, Barisal', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-01 23:57:55', '2023-12-01 23:57:55'),
(11, 'no', '2023-12-06', 'Noyon', 'khan', 'hr1990khan@gmail.com', '01675766988', 'SBDSU33988064139', '$2y$10$vZlxhTV06szE.apriyxqtOZaeoelpEqL6XhHKs5qmxITsqL/ZnFmK', 'O+', '1990-01-30', '33', 'Male', '6', '47', '525', 'Service', '-1', '2449', 'SBDSU32241030241', 'yes', 'no', '-1', 'yes', NULL, NULL, 'Pallabi, Dhaka, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2023-12-06 09:41:40', '2023-12-06 09:41:40'),
(12, '1', NULL, 'Dr Firdausi', 'qadri', 'fqadri333@gmail.com', '01711595367', 'SBDSU35367173649', '$2y$10$aI9Gz4tgIsHRvOQSr8nD7OO8J3wb542iWowLsTLAgrl/g4ydFfn.O', 'O+', '1948-01-01', '76', 'Female', '6', '47', '495', 'Service', NULL, '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, 'Badda, Dhaka, Dhaka', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2023-12-17 00:36:49', '2024-01-29 04:10:35'),
(13, NULL, NULL, 'Md. Masud', 'Rana', 'masud1@gmail.com', '01738305889', 'SBDSU27889115431', '$2y$10$V.4jhxeEx7cUd7qHcdSpfuCJd3UXk0uawEZ9tDGzfix2h4ORDwNkG', NULL, '1996-01-01', '27', NULL, '2', '15', '383', NULL, NULL, NULL, NULL, NULL, NULL, '1', '1', 'default.jpg', NULL, 'Rajshahi, Bangladesh', '24.3746497', '88.60036649999999', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-01-11 07:54:31', '2024-01-11 07:54:31'),
(16, '1', NULL, 'Md. Moinul', 'Kader', 'moinul.kader2100@gmail.com', '01611059935', 'SBDSU38935084557', '$2y$10$4GiAmGYJhE9EAUEosXvyFONehM9e7XKn90v3x8.rMhXAYITRS4/dC', 'B+', '1985-12-28', '38', 'Male', '6', '47', '516', 'Service', NULL, '2003', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-02-08 04:45:57', '2024-02-08 04:45:57'),
(19, '0', '2023-11-01', 'Maruf', 'Chowdhury', 'marufmuk@gmail.com', '01719122089', 'SBDSU32089292121', '$2y$10$n3nC3WXqmhjs2GesYtocyeF.ePvmBEll29g0DBqRmxA4fBc3uus/.', 'AB+', '1991-12-10', '32', 'Male', '6', '47', '525', 'Businessmen', '1', '1972', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-02-29 08:21:21', '2024-02-29 08:21:21'),
(18, '1', NULL, 'sabina', 'shahnaz', 'sabinaayush149@gmail.com', '01716599329', 'SBDSU46329185044', '$2y$10$mAYZETlE8B509smV1Q4N8OgNZOWiTunUqRtUSraT8nPlEmgO4mACS', 'O+', '1977-06-30', '46', 'Female', '6', '47', '546', 'Service', NULL, '2', 'SBDSU32241030241', '1', '0', NULL, '1', NULL, 1, '310 Muradpur High School Road, Dhaka, Bangladesh', '23.6943449', '90.4411538', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-02-18 03:50:44', '2024-02-18 03:50:44'),
(20, 'no', NULL, 'Nadim', 'Mahmud', 'nadim.bmbdu@gmail.com', '01571305907', 'SBDSU24907030425', '$2y$10$JOPCnQHhn636pOVIIB3gp.oU/i5HjSLRMociUU4AMgC2j4mOvJBY6', 'B+', '2000-01-02', '24', 'Male', '7', '59', '440', 'Student', '-1', '10486', 'SBDSU32241030241', 'yes', 'no', '-1', 'yes', NULL, NULL, 'Badarganj, Rangpur, Rangpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-03-03 03:04:25', '2024-03-03 03:04:25'),
(21, '1', NULL, 'Shara', 'Chowdhury', 'shara-2018425981@bmb.du.ac.bd', '01775755109', 'SBDSU23109084147', '$2y$10$wJ3OLmZDjcKMkZxkAp3r9.hyc4nC.c9SD02IcAwJPL23ysL9n73Cu', 'B+', '2000-03-17', '23', 'Female', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2024-03-08 08:41:47', '2024-03-08 08:50:37'),
(22, '0', '2024-01-01', 'MD. Ahsan', 'Habib', 'mdahsanhabib067@gmail.com', '01581487977', 'SBDSU23977084514', '$2y$10$uM/J.CDzIFdH9fVGgc2il.GgGraA65peVGvLF9wMKGxNoX4S/zqKO', 'B+', '2000-10-08', '23', 'Male', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2024-03-08 08:45:15', '2024-03-08 08:51:14'),
(23, '1', NULL, 'Habiba Mahjabin', 'Jyoti', 'mahjabinjyoti11@gmail.com', '01304066472', 'SBDSU23472084918', '$2y$10$tuC2VpDYsnpvGNUTPqyOruzWcrNW7sry88a5b96QoU/6xbVvR6wdm', 'B+', '2000-06-25', '23', 'Female', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-03-08 08:49:18', '2024-03-08 08:49:18'),
(24, '1', NULL, 'md. Halim', 'Biswas', 'halimbmb629@gmail.com', '01518664629', 'SBDSU20629081124', '$2y$10$bt0mP1egC6bbmy9E10oo4.qcxKMarToeX7nHID9shf1rc6ZFd3A6q', 'B+', '2003-07-16', '20', 'Male', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-03-08 09:11:24', '2024-03-08 09:11:24'),
(25, '1', NULL, 'Md. Raiyan', 'Hosen', 'mdriyanhosen777@gmail.com', '01706747776', 'SBDSU23776081350', '$2y$10$x0/uDVPGD7s8tvFiCqPIqumvqL6LnTV4hhlOkfnjVisJVc1tKfKx.', 'O-', '2001-03-03', '23', 'Male', '6', '47', '515', 'Student', '7', '1963', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-03-08 09:13:50', '2024-03-08 09:13:50'),
(26, '1', NULL, 'Hasnat', 'Zahin', 'hasnatzahin@gmail.com', '01868554637', 'SBDSU25637081654', '$2y$10$c628SFPa5KlDTYkB.gA25.rr6eWbMDJUkjq.ud7V2BdO2jkt19fmy', 'A+', '1999-01-01', '25', 'Female', '6', '47', '541', 'Student', '7', '2003', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2024-03-08 09:16:54', '2024-05-24 04:14:19'),
(27, 'yes', NULL, 'shahriar', 'shihab', 'shihabshahriar752@gmail.com', '01737544285', 'SBDSU23285074503', '$2y$10$OsT0jwGe0gWJ4ggSm2kS3uGt95fBK8z.DGEeIl0YCgS6bPVumUXSu', 'AB+', '2001-09-13', '23', 'Male', '7', '53', '435', 'Student', '-1', '10315', 'SBDSU32241030241', 'yes', 'no', '-1', 'yes', NULL, NULL, 'Panchagarh Sadar, Panchagarh, Rangpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-07 12:45:04', '2024-05-07 12:45:04'),
(28, 'yes', NULL, 'Itaher Shihab', 'Aion', 'aionanik04@gmail.com', '01773395414', 'SBDSU21414071736', '$2y$10$MdAXogctQpg4DcNHVTiO9.wt5wrjTNAHsQbfqHARM9d72QPXyexWO', 'AB+', '2003-08-16', '21', 'Male', '7', '53', '435', 'Student', '-1', '10725', 'SBDSU32241030241', 'yes', 'no', '-1', 'yes', NULL, NULL, 'Panchagarh Sadar, Panchagarh, Rangpur', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-07 17:17:36', '2024-05-07 17:17:36'),
(29, '1', NULL, 'Umma Habiba', 'Urme', 'ummahabibaurme2020@gmail.com', '01998457522', 'SBDSU25522211453', '$2y$10$YSpLL0QQa807HFuA6axdLucHkAGd.XUujHtmuZxSYzyo2KFT2/0Gm', 'O+', '1998-10-24', '25', 'Female', '6', '47', '531', 'Student', '8', '1134', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-21 09:14:53', '2024-05-21 09:14:53'),
(30, '1', NULL, 'ALAMIN', 'SHORIF', '01869849499alamin@gmail.com', '01869849499', 'SBDSU30499223407', '$2y$10$p2BQkH2ABSDnq/PnYwFukupcrOpk1Lz6ypYdLhZHgb2VBty36gdvS', 'O+', '1994-01-01', '30', 'Male', '6', '47', '525', 'Service', NULL, '1712', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 09:34:07', '2024-05-22 09:34:07'),
(31, '1', NULL, 'MD SAMIM OR', 'ROSHID', 'samimorroshidicddrb@gmail.com', '01711062873', 'SBDSU50873224244', '$2y$10$XDeXJ/vMlaubsiLrGxSIceiqBBAUR8jCit7tDpZlC3.eiO9ih0fvW', 'O+', '1973-10-22', '50', 'Male', '6', '47', '525', 'Service', NULL, '1712', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 09:42:44', '2024-05-22 09:42:44'),
(32, '1', NULL, 'SHORAB', 'HOSSAIN', '01912398383shorab@gmail.com', '01403129223', 'SBDSU35223224628', '$2y$10$4WHBnFz7cEQ2WLoCEek0qONNdI/tub.jsEAgy2Y4Sk/Sjyx1xgZAO', 'O+', '1989-01-01', '35', 'Male', '6', '47', '525', 'Businessmen', NULL, '1712', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 09:46:28', '2024-05-22 09:46:28'),
(33, '0', '2024-02-01', 'MD SHARIFUL', 'ISLAM', '01677040677shariful@gmail.com', '01677040677', 'SBDSU35677225010', '$2y$10$M3sOmR77otmHw1NgnxWKsOb3Pxpzy/FPHZtn7OBoDxsy8Zdmie59W', 'O+', '1989-01-01', '35', 'Male', '6', '47', '525', 'Service', NULL, '1712', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 09:50:10', '2024-05-22 09:50:10'),
(34, '1', NULL, 'MITHILA', 'GHOSH', 'mithila.setu2017@juniv.edu', '01307449622', 'SBDSU25622225815', '$2y$10$e7Vhqd8OjiiM7QmxzZfRE.cbGmc8wlgeRkUj3wv2wymK/MZxA23m6', 'A+', '1999-05-23', '25', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 12:58:15', '2024-05-22 12:58:15'),
(35, '1', NULL, 'TAMANNA', 'TABASSUM', 'moulyhabiba@gmail.com', '01727797442', 'SBDSU23442220317', '$2y$10$k4y0tyR3.TPZMBWmoymyGuBTxS7H4OjCx6CrwieEHR7r6qRiXF3qe', 'O+', '2000-11-10', '23', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:03:17', '2024-05-22 13:03:17'),
(36, '1', NULL, 'MUNIA AKTER', 'MIM', 'munia9356@gmail.com', '01603743186', 'SBDSU20186220534', '$2y$10$QYZjcXJI8tBkKVyfQFLfP.Q5PIPxKmIisgnhBZioVGqHKq5.cmL/K', 'B+', '2003-08-11', '20', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:05:35', '2024-05-22 13:05:35'),
(37, '1', NULL, 'SIMU', 'AKTER', 'simuakter5010@gmail.com', '01315135374', 'SBDSU22374220748', '$2y$10$iW5lHjKu69GgQk3kfp1H6OSrL0H0jfZM9lwhcSuQaNf5/7Y5tJGeS', 'O+', '2002-05-07', '22', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:07:48', '2024-05-22 13:07:48'),
(38, '1', NULL, 'MD ARIF', 'HOSSAIN', 'arifju171@gmail.com', '01765855296', 'SBDSU23296221014', '$2y$10$ZHXWG10aS7YfIlvGP0QIiu5wEO7qIMD4L7hdqAlkRHmAkp8QjaPUu', 'A+', '2001-03-12', '23', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:10:14', '2024-05-22 13:10:14'),
(39, '1', NULL, 'MD ARIFUL', 'ISLAM', 'leoarif9512@gmail.com', '01773051295', 'SBDSU295221203', '$2y$10$K/OYfttgYSZqbOYySdj96e6xgjytM4/Owy0Bl/pHhVrg10fnZ/sx6', 'A+', NULL, NULL, 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:12:03', '2024-05-22 13:12:03'),
(40, '1', NULL, 'MEHEDI', 'HASAN', 'mstsorha01710@gmail.com', '01710089755', 'SBDSU21755221441', '$2y$10$m0KBm8zWjCN1gtwzwmyTzuYjrMIFPdOxNRidcxOApH6JHo3ckH4te', 'B+', '2002-09-15', '21', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:14:41', '2024-05-22 13:14:41'),
(41, '1', NULL, 'TAMANNA', 'TABASSUM', 'tabassumpuspyta@gmail.com', '01775132753', 'SBDSU20753221804', '$2y$10$EhKmF6ivYIXxA3nAZbuFTe0zdZuR8tAsHOyCkSPjNs6.NOq8Eq83y', 'A+', '2003-06-30', '20', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:18:04', '2024-05-22 13:18:04'),
(42, '1', NULL, 'BOHNNY DEM', 'NATH', 'bohnnynath03@gmail.com', '01783717129', 'SBDSU22129221939', '$2y$10$HVgCq9KVovz9AmM24iqRcO9GEoMXypfpoO0oh9a.Oh9MGSeoc.85m', 'O+', '2001-11-14', '22', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:19:39', '2024-05-22 13:19:39'),
(43, '1', NULL, 'MST JEMI', 'KHATUN', 'jemikhetlal98@gmail.com', '01753588594', 'SBDSU25594222402', '$2y$10$OPvA/e7GXsZCatLdahMcguY/YEndKMNi7m.76isUlWlUrJuXEQTzG', 'O+', '1998-08-25', '25', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:24:02', '2024-05-22 13:24:02'),
(44, '1', NULL, 'NOBEN DOPAUL', 'SHANTO', 'nobendo20@gmail.com', '01743652830', 'SBDSU23830222554', '$2y$10$5/hvzgzhayPU5XklNjj6.e8YM0LkiTRHAPkVIQwzvt7wSbmflA/D.', 'A+', '2000-10-20', '23', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:25:54', '2024-05-22 13:25:54'),
(45, '0', '2023-05-01', 'TAMIM', 'IKRAM', 'tamimikra2021@gmail.com', '01756015621', 'SBDSU22621223351', '$2y$10$PYjppEO72uSPmugTp5JLFezqIMHhbyza2A4x92I5y3D5Ho/fgGVv6', 'B+', '2001-10-08', '22', 'Male', '6', '47', '531', 'Student', '8', '1628', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:33:51', '2024-05-22 13:33:51'),
(46, '0', '2024-01-01', 'MD SHAMIM', 'REZA', 'mdshamimreza099@gmail.com', '01303647711', 'SBDSU24711223710', '$2y$10$2w2hWnAg0KNjAzmnBuaPa.iYVFBy7aqJaZ0hZyhpDk7/CMWjW9DLO', 'A+', '1999-06-04', '24', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 13:37:10', '2024-05-22 13:37:10'),
(47, '1', NULL, 'MUZIBUL HAQUE', 'LIMON', 'muzibulhaque11@gmail.com', '01893247591', 'SBDSU21591233355', '$2y$10$S67H4SmlP5NUXMsTPg.9buIE8OeAig6EPuZCnlgwNkc7ESLYf2BnS', 'O+', '2003-01-02', '21', 'Male', '6', '47', '531', 'Student', '8', '1628', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:33:55', '2024-05-22 23:33:55'),
(48, '1', NULL, 'DEBESH GOBINDA', 'PAUL', 'bebeshpaul02may@gmail.com', '01783688341', 'SBDSU22341233629', '$2y$10$HHMSO4EngN3lZFwtqjCu7O2QWrE7kz1aDiW3vOgpzObkcEdQS7y9.', 'O+', '2001-12-26', '22', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:36:29', '2024-05-22 23:36:29'),
(49, '0', '2023-04-01', 'NAZMUL HASAN', 'SAKIB', 'nhsakib888@gmail.com', '01905092707', 'SBDSU22707233912', '$2y$10$B7LPITkCzOpjn7FAA985hOMfsLZ7Avkf7cV5DVeYUGRJH7kzF0tr2', 'A+', '2001-08-23', '22', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:39:12', '2024-05-22 23:39:12'),
(50, '1', NULL, 'SHARJIN', 'SULTANA', 'sharjinsultana502@gmail.com', '01981842099', 'SBDSU23099234050', '$2y$10$wLpft7AO2hY9NPrRhGyd6OzC8cTovowECZq1nQNE.0H/VTdDPdoZ6', 'O+', '2001-01-15', '23', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:40:50', '2024-05-22 23:40:50'),
(51, '0', '2023-05-10', 'SOBUR AHMED', 'KAJAL', 'kajalni749@gmail.com', '01757572554', 'SBDSU24554234246', '$2y$10$bbrLZeZmwrPB8.YfDrmVe.oapTSw8heY7WTUhCFcxdnapI8q3ySaO', 'O+', '1999-12-26', '24', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:42:46', '2024-05-22 23:42:46'),
(52, '1', NULL, 'MST MARIA JANNAT', 'FERDAUS', 'owasanatjannat123@gmail.com', '01521770239', 'SBDSU21239234447', '$2y$10$/8TnzZKE9itc9aPZaBftt.AQYufflWdXa/3iEgl.nOOlc2w8//Lmm', 'A+', '2002-12-31', '21', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:44:47', '2024-05-22 23:44:47'),
(53, '0', '2024-01-01', 'TARIQUL', 'ISLAM', 'tariqulislam285302@gmail.com', '01877231336', 'SBDSU23336234651', '$2y$10$.ke46PvA82B22d2GKwgvZejdIPDcA0IcbB0wdaIbfDz3FyNriN.3K', 'A+', '2000-11-15', '23', 'Male', '6', '47', '531', 'Student', '8', '1134', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:46:51', '2024-05-22 23:46:51'),
(54, '1', NULL, 'MST. SHAUDA', 'AHMED', 'shauda.amir.ahmed@gmail.com', '01316083467', 'SBDSU24467234901', '$2y$10$BPktvLOLSnFJJGQpBLvyO.fkAhF765753U1HUsHloDsuekSKC6y6y', 'O+', '1999-12-21', '24', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:49:01', '2024-05-22 23:49:01'),
(55, '0', '2024-01-01', 'TANVIR AHAMMED', 'TANUN', 'tanvirtanun@gmail.com', '01743119993', 'SBDSU25993235040', '$2y$10$xyoYb50gc7mqkRMgNQcBsuF0avd9izfagJXyNOjwiskwt5TvMS3XK', 'A+', '1998-12-04', '25', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:50:40', '2024-05-22 23:50:40'),
(56, '1', NULL, 'MOHAMMAD KAWSAR', 'AHMED', 'kawsarahmed2032@gmail.com', '01851266149', 'SBDSU24149235307', '$2y$10$R3zSBC08TKW3qJ3R9OgKiudRImfijvgc1mfVPhEj2ZrJ0AKY.AdQ6', 'B+', '1999-06-15', '24', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:53:07', '2024-05-22 23:53:07'),
(57, '1', NULL, 'SONIYA AKTER', 'SONY', 'soniyaaktersony1999@gmail.com', '01781031619', 'SBDSU24619235645', '$2y$10$P4PVGFBVsV52T4YH9C7sa.4Xmpt3l.L2jylHR6m/81mhphnCG/of2', 'B+', '1999-06-25', '24', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-22 23:56:45', '2024-05-22 23:56:45'),
(58, '1', NULL, 'MARJIA KHAN', 'TRISHA', 'marjiakhantrisha@gmail.com', '01749629452', 'SBDSU21452230256', '$2y$10$53Ev8g0A8YDKk5i/hxVAiu2/3EpmuuGTvVJ5I1dV7U0v.PpO/iYKm', 'O+', '2003-03-15', '21', 'Female', '6', '47', '497', 'Student', '8', '2791', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 00:02:56', '2024-05-23 00:02:56'),
(59, '1', NULL, 'SURIA', 'AKTER', 'suraia164449@gmail.com', '01326569745', 'SBDSU24745230653', '$2y$10$r2sLyQaije1gIlmxQqX6wOFnUQZmTZRe7BvG4g9i1Cm3Q3zDq1WIq', 'B+', '2000-01-01', '24', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 00:06:53', '2024-05-23 00:06:53'),
(60, '1', NULL, 'MOST NOWSIN', 'TASNIM', 'mpwsommoti06@gmai.com', '01705489719', 'SBDSU22719230832', '$2y$10$k1fazPcJniChNlNIZ/GCiOywWzUBa6Au4Hv.z1B.7Y.W5ILmwHp2i', 'O+', '2001-12-05', '22', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 00:08:32', '2024-05-23 00:08:32'),
(61, '0', '2023-12-20', 'S.M. RAHIMUL ISLAM', 'NAHID', 'rahimulno99@gmail.com', '01792931314', 'SBDSU22314231039', '$2y$10$BW8hKLlhjKsC2859jZdoWuWdU0J7XghLET5YseCMp15mVKWMsRRw6', 'AB+', '2002-05-12', '22', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 00:10:39', '2024-05-23 00:10:39'),
(62, '1', NULL, 'TASNIM B.K', 'CHOWDHUURY', 'tasnimchowdhury580@gmail.com', '01785264532', 'SBDSU21532231241', '$2y$10$LmA98B6wyyW2.SAO7Gxiu.GT1JD22WXUlcEdO9B0n7cT8HygVpo9q', 'B+', '2002-11-08', '21', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 00:12:41', '2024-05-23 00:12:41'),
(63, '1', NULL, 'JAYMA JANNAT', 'JUMA', 'jesiajaymaa01@gmail.com', '01876616029', 'SBDSU21029231449', '$2y$10$iyugBETAzKY93cKEbB9keeFPEJTfFxE.Uci/FaI5W2yFD5wwOq2iG', 'O-', '2002-12-07', '21', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 00:14:49', '2024-05-23 00:14:49'),
(64, '1', NULL, 'RUBIYA', 'AFRIN', 'afrinrubaiya9@gmail.com', '01623083853', 'SBDSU24853235721', '$2y$10$ErERMZzqe.Eqx50Hlr.x1Of2jWBa33i2GALhiPSIvcPkZQrPoCFp.', 'O-', '2000-01-01', '24', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 05:57:21', '2024-05-23 05:57:21'),
(65, '1', NULL, 'MD MAHABUR', 'RAHMAN', 'mdmahaburrahman01219@gmail.com', '01319122121', 'SBDSU20121230033', '$2y$10$LR9mci6bRUQunhQg1r2Xcem1I/4fdwf1ohmqkT/Ezh7Y8yQV/zdBC', 'B-', '2003-10-10', '20', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:00:33', '2024-05-23 06:00:33'),
(66, '0', '2024-01-01', 'TASHDIKA MAHDI', 'HOSSAIN', 'tashdikamahdi115@gmail.com', '01723607747', 'SBDSU21747230241', '$2y$10$fjVEAAoxKy2F8omK/g3bB.EhbJ9aHOKoZO8ZZciko7Ceq6PP0Nbma', 'A-', '2002-12-08', '21', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:02:42', '2024-05-23 06:02:42'),
(67, '0', '2023-02-27', 'MD', 'ASHADUZZAMAN', 'mashaduzzamanemon@icloud.com', '01790473804', 'SBDSU24804231327', '$2y$10$l9OL.VKvPcT84DUtCcwZj.OnHXXbXnmcaMTvlpAA8.3Ex9f7XlRY6', 'AB+', '1999-12-08', '24', 'Male', '6', '47', '531', 'Student', '8', '1135', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:13:27', '2024-05-23 06:13:27'),
(68, '1', NULL, 'MST MASURA', 'KHATUN', 'masukamira9@gmail.com', '01782224220', 'SBDSU22220231519', '$2y$10$OJC97zfFUDVq4auux0SPSeRe1E07LLcx/vqkSdtPO3Grpc/3c.y.a', 'AB+', '2001-12-31', '22', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:15:19', '2024-05-23 06:15:19'),
(69, '0', '2023-07-30', 'MD SAIFUL', 'ALAM', 'alamsaiful2002@gmail.com', '01603755127', 'SBDSU21127231715', '$2y$10$RTCz.m9W/bGq77jZSHqSbunyrkUWmzMPMoucTGGKFnSqgBKTKNedy', 'B+', '2003-01-22', '21', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:17:15', '2024-05-23 06:17:15'),
(70, '1', NULL, 'NOUSHIN', 'NOHOR', 'mstsisty8@gmail.com', '01747091976', 'SBDSU20976231853', '$2y$10$vPJ/IBMt3ogq83bJFmUrBuVXQx5u3IFHb9kSwpdPLNhsAQJKJbe3W', 'B+', '2003-08-09', '20', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:18:53', '2024-05-23 06:18:53'),
(71, '1', NULL, 'MOST MARIAM', 'JAMILA', 'mariamjamilamisty99@gmail.com', '01822477397', 'SBDSU22397232131', '$2y$10$a6QbQg6ESYw0okiGun0LYOtejQCi3CyPYiF3fJuZPtOssxQVJHby2', 'O+', '2001-11-16', '22', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:21:31', '2024-05-23 06:21:31'),
(72, '1', NULL, 'SHEIKH HAFSA', 'BOQUL', 'hafsasheikh@gmail.com', '01797732406', 'SBDSU23406232259', '$2y$10$yaQBkW7aIFFGj21NUYNVmOVRpyFSJA6jLTOK/XPfSOhoM3v9cga/m', 'O+', '2000-11-18', '23', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:22:59', '2024-05-23 06:22:59'),
(73, '0', '2023-05-09', 'MD SHAHJALAL AHMED', 'AKASH', 'shahjalalahed692@gmail.com', '01767570876', 'SBDSU23876232556', '$2y$10$VfWR3SDGtiz1Ra9jOHa8V.jbQz.6j1QbitkxhkESm5GSu6w3ed5Sq', 'B+', '2000-05-31', '23', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:25:56', '2024-05-23 06:25:56'),
(74, '1', NULL, 'MD', 'NURNABI', 'mdnurnabiislamemon@gmail.com', '01324195161', 'SBDSU25161232808', '$2y$10$BHHIP9FYsoRi.5poXtkTNeLzGr0jLlq6huJpFJBBxSzrBD1R..gXy', 'B+', '1999-04-12', '25', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:28:09', '2024-05-23 06:28:09'),
(75, '1', NULL, 'SANZIDA', 'AMIN', 'sanjidaamin47@gmail.com', '01630147826', 'SBDSU24826233013', '$2y$10$sot3Mis2PkyN1j3LQnB5EeFYqJtwSYcb6Uz2ecNb8WsF716WByamy', 'B+', '1999-11-08', '24', 'Female', '6', '47', '531', 'Student', '8', '1134', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:30:13', '2024-05-23 06:30:13'),
(76, '1', NULL, 'ANIKA', 'TAHSIN', 'tahsin715@gmail.com', '01621298880', 'SBDSU25880233304', '$2y$10$/KuIN.HLqWdSnoPbLaHmueAHNxqHcBOs1J1pl9y.IcWLemUJWKKsu', 'B+', '1999-04-28', '25', 'Female', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:33:04', '2024-05-23 06:33:04'),
(77, '1', NULL, 'NAUSHAD', 'NAWAJ', 'nishatnawaj873@gmail.com', '01903458033', 'SBDSU22033233521', '$2y$10$OpihJFrLuMMmeK264vR3pO.wYFe1H6jGM7hoVEtpyWwN32EQ7Ou8u', 'O+', '2002-04-06', '22', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:35:21', '2024-05-23 06:35:21'),
(78, '1', NULL, 'MD SHAHRIAR HOSSEN', 'SAYEM', 'mshsayem296@gmail.com', '01829402296', 'SBDSU19296233718', '$2y$10$XM/qMhDDc9vvq5AYFCGifue7fj0ZDizbcc/nvoS36bwD9x8wk71P6', 'A+', '2004-10-15', '19', 'Male', '6', '47', '531', 'Student', '8', '1133', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-23 06:37:18', '2024-05-23 06:37:18'),
(79, '1', NULL, 'SWAPNA', 'AKTER', 'swapnaakter61@gmail.com', '01304215872', 'SBDSU21872241332', '$2y$10$Rm2nCxCyQR1DNtfV.g9ope/MwoWE7WfcTnheriJgU2wzjIuDyOHby', 'O+', '2003-04-08', '21', 'Female', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 00:13:32', '2024-05-24 00:13:32'),
(80, '0', '2023-11-20', 'MD ARAFAT', 'HOSSAIN', 'hossainmohammedarafat@gamil.com', '01630100870', 'SBDSU26870241552', '$2y$10$JT/ByfmRre7QIYGpOrpG1.4RIEno.L/Z.JvpZ6X8EHUOBSCwLg3Qe', 'O+', '1998-01-01', '26', 'Male', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 00:15:52', '2024-05-24 00:15:52'),
(81, '0', '2024-01-01', 'DHURBO', 'CHOWDHURY', 'dhruboc97@gmail.com', '01856292795', 'SBDSU23795241735', '$2y$10$kB8RMPYfQvG6xUCSV3/DDerUfaS4qwttAInwZ58Vha3Oxt/rjddF2', 'O+', '2000-09-16', '23', 'Male', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 00:17:35', '2024-05-24 00:17:35'),
(82, '1', NULL, 'HALIMA', 'AKTER', 'akterhalima707@gmail.com', '01760733391', 'SBDSU24391241918', '$2y$10$oE45nQdD1hm1UEs0FGQTQ..TPH9F/g30S0LhQw7XI0bj0RskbGFKy', 'O+', '1999-08-28', '24', 'Female', '6', '47', '533', 'Student', '7', '943', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, 'Admin', NULL, NULL, '2024-05-24 00:19:18', '2024-05-24 03:13:15'),
(83, '1', NULL, 'SYEDA KASHFIA', 'FATEMA', 'skashfia3@gmail.com', '01619008237', 'SBDSU23237242835', '$2y$10$OYXXPNzVlL4hlvxfPnt4kO1r3HZykFkr0EsOQmk0GOVb5BiUSTp8y', 'A+', '2000-06-06', '23', 'Female', '6', '47', '545', 'Student', '7', '15204', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:28:35', '2024-05-24 03:28:35'),
(84, '0', '2024-01-20', 'KHALID HASAN', 'RAJ', 'khalidhasanr10@gmail.com', '01930718906', 'SBDSU22906243038', '$2y$10$Acua9HXmuCvwMbomEHhaheBH4eMXxdfs1k/4/QaJOuG2NZuJ3wlxe', 'A+', '2001-12-11', '22', 'Male', '6', '47', '499', 'Student', '7', '15203', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:30:38', '2024-05-24 03:30:38'),
(85, '1', NULL, 'LINTA RANI', 'ROY', 'lintarani5544@gmail.com', '01774499820', 'SBDSU24820243214', '$2y$10$zf/7nkzi5wZ0Jz6R3Q29s.yqErdl14a4K5pntQwLQD8qrdY42izcu', 'A+', '1999-09-11', '24', 'Female', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:32:14', '2024-05-24 03:32:14'),
(86, '1', NULL, 'SAMIA AKTER', 'RAISA', 'samiaakterraisadu@gmail.com', '01891753185', 'SBDSU20185243444', '$2y$10$6u.ELICYFET8VkwtgYY52.Bq82sAvdv8wP/HAp9bTU3AMyRrSOnGS', 'B+', '2004-01-15', '20', 'Female', '6', '47', '519', 'Student', '7', '852', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:34:44', '2024-05-24 03:34:44'),
(87, '1', NULL, 'AFRA', 'ANIKA', 'afraanika13021998@gmail.com', '01768346686', 'SBDSU25686243753', '$2y$10$iqfOpj1Us0nN43N5JzafKecOI5PwB1f7cWm.TR0CZ8WEYazPWhUCu', 'A+', '1999-02-13', '25', 'Female', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:37:53', '2024-05-24 03:37:53'),
(88, '1', NULL, 'MUMTAHINA', 'ALAM', 'mumtahina.alam.abha@gmail.com', '01688750952', 'SBDSU24952244040', '$2y$10$v4f8jDLDF.aiUAwL16r4fOXa8JWb6.5DeNnIlERU7QuCPaa3pJWOu', 'A-', '2000-02-03', '24', 'Female', '6', '47', '525', 'Student', '7', '3102', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:40:40', '2024-05-24 03:40:40'),
(89, '1', NULL, 'MD FUAD', 'HOSSAIN', 'fuadhossain121261@gmail.com', '01311861281', 'SBDSU22281244713', '$2y$10$vrcCgvUwdKtlexZOcm/q7.BRSzXoXxW4CBvBKnHCPOWi21G3owrrm', 'O-', '2001-06-05', '22', 'Male', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:47:13', '2024-05-24 03:47:13'),
(90, '1', NULL, 'OMAR', 'FARUK', 'omarfaukrak16602@gmail.com', '01751019132', 'SBDSU24132245054', '$2y$10$NdhgCoKyrLdbKZSvgcHxK.0ppxqmOjWirsmpSo.Pf.rhebiHp50Ru', 'AB+', '1999-12-05', '24', 'Male', '6', '47', '510', 'Student', '7', '1737', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:50:54', '2024-05-24 03:50:54'),
(91, '0', '2021-01-01', 'DEVJANI RAHA', 'KATHA', 'devjaniraha707@gmail.com', '01534339305', 'SBDSU24305245339', '$2y$10$FRHCExvkbUc8hTRmGOrtoeXSQc30VpYqMVtSG/oIVmGfYEyi7X6pO', 'AB+', '2000-04-05', '24', 'Female', '6', '47', '520', 'Student', '7', '203', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:53:39', '2024-05-24 03:53:39'),
(92, '1', NULL, 'SANJIDA AKHTER', 'HIA', 'sanjidahia67@gmail.com', '01798213912', 'SBDSU24912245540', '$2y$10$OjJNtGvOLrgRkwEGYalkDOuBsXsmhaLtKiWsvHM71mRr0L8O9Eo1a', 'A+', '2000-04-18', '24', 'Female', '6', '47', '533', 'Student', '7', '922', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 03:55:40', '2024-05-24 03:55:40'),
(93, '1', NULL, 'MD', 'NISAN', '01993463699n@gmail.com', '01993463699', 'SBDSU30699241736', '$2y$10$I6n70Pe0zFAWAhGdDmurEueRfsKqwgUZdAqyX8T4aC5m/Jt5Liw.a', 'O-', '1994-01-01', '30', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, '1', NULL, NULL, NULL, '2024-05-24 04:17:36', '2024-06-02 22:40:42'),
(94, '1', NULL, 'MD MUNSUR', 'ALAM', '01308656088m@gmail.com', '01308656088', 'SBDSU28088241932', '$2y$10$/vFXHeA5enznMKo9gt/hrOThUxI0o0.lsdgIAeHCGokIyM3SE1Qee', 'B+', '1995-06-01', '28', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 04:19:32', '2024-05-24 04:19:32'),
(95, '1', NULL, 'MD MOHON', 'ALI', '01612251888m@gmail.com', '01612251888', 'SBDSU19888242406', '$2y$10$QkbiyHxUM8ex6tq78PQhre2BMKA/hlcfd3B0NURu7Ld4cxs2iZhdC', 'B+', '2005-01-01', '19', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-24 04:24:06', '2024-05-24 04:24:06'),
(96, '0', '2024-01-01', 'MD JIAUR', 'ROHMAN', '01827706154j@gmail.com', '01827706154', 'SBDSU43154270055', '$2y$10$RIbZywqzHt82dYMlJz7muujlePIukMgGHncfvsAaosTjJAO/rI4m.', 'B+', '1981-01-01', '43', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:00:55', '2024-05-27 13:00:55'),
(97, '0', '2024-01-01', 'MD JAFOR', 'IQBAL', '01912587094J@gmail.com', '01912587094', 'SBDSU39094270308', '$2y$10$.6AsnzcOI3Vtw7DgXO3mj.DtJ0h08syYUyaw7FlmNuPO1EfP4AM0i', 'B+', '1985-01-01', '39', 'Male', '6', '47', '525', 'Businessmen', NULL, '1713', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:03:08', '2024-05-27 13:03:08'),
(98, '0', '2024-01-01', 'HAIDAR', 'HAIDAR', '01687268269h@gmail.com', '01687268269', 'SBDSU48269270602', '$2y$10$PMkWSk/YoGD8ahJdZG/BBeerm3u4CkUYvBdR7BrYbrNyURhPKTW4i', 'B-', '1976-01-01', '48', 'Male', '6', '47', '525', 'Businessmen', NULL, '1711', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:06:02', '2024-05-27 13:06:02'),
(99, '0', '2024-01-01', 'MR', 'REZWONE', '01914361325r@gmail.com', '01914361325', 'SBDSU33325270922', '$2y$10$wVaMD8thhwDT40GvWY.FfOmMyUaI6UNwvJZuITYqCjyORYBkZei2K', 'B+', '1991-01-01', '33', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:09:22', '2024-05-27 13:09:22'),
(100, '1', NULL, 'RUHUL', 'AMIN', '01783332476r@gmail.com', '01783332476', 'SBDSU32476271058', '$2y$10$OxbB/niydel3WqKsQCS//uE9tNhEfoAFug/WcTeDKO8LIlyTI8RUW', 'A+', '1992-01-01', '32', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:10:58', '2024-05-27 13:10:58'),
(101, '1', NULL, 'MD', 'LIMON', '01839199032l@gmail.com', '01839199032', 'SBDSU23032271242', '$2y$10$aB0fR2rqzyzylm0T.Vl9SeR.vmrwgaThMT26CjZg5pX3tP5FOoQWW', 'A+', '2001-01-01', '23', 'Male', '6', '47', '525', 'Service', NULL, '1711', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:12:42', '2024-05-27 13:12:42'),
(102, '1', NULL, 'MD HRIDOY', 'BAPPI', '01851595934b@gmail.com', '01851595934', 'SBDSU32934271601', '$2y$10$JTBVrnU2THn3etRDwnpOgOX3IEoZNvXLc6Cz/cloyPqY7uNUsdF.W', 'A+', '1992-01-01', '32', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:16:01', '2024-05-27 13:16:01'),
(103, '1', NULL, 'MD', 'MUKTAR', '01879556370m@gmail.com', '01879556370', 'SBDSU32370271717', '$2y$10$C1jvMw4L2KiUP9YkdXZ0hupflO8buLT6QE2Co3r9FQryEX7q3Zbi2', 'A+', '1992-01-01', '32', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:17:17', '2024-05-27 13:17:17'),
(104, '1', NULL, 'MD', 'SABUJ', '01610624412s@gmail.com', '01610624412', 'SBDSU26412271851', '$2y$10$uXsUi1t/Vc7r2dERw5bYc.uUFbrDBTgG4xMAKt.Qvc/flUEHD.POq', 'B+', '1997-08-15', '26', 'Male', '6', '47', '525', 'Businessmen', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:18:51', '2024-05-27 13:18:51'),
(105, '1', NULL, 'MD', 'SHAKIL', '01760736104s@gmail.com', '01760736104', 'SBDSU34104272106', '$2y$10$s1bn14.NaBqkxEecaYOCpuC9AQXHXSBXcgIkqindrW5YYbnHZsT06', 'B-', '1990-01-01', '34', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:21:06', '2024-05-27 13:21:06'),
(106, '1', NULL, 'MD', 'NAZMUL', '01798365315n@gmail.com', '01798365315', 'SBDSU37315272257', '$2y$10$d1AcnYlncV5Pf7o.fOhzjOwhRiG4wASETgryMLGls9u.VYWgItksa', 'A+', '1987-01-01', '37', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:22:57', '2024-05-27 13:22:57'),
(107, '1', NULL, 'MD', 'ALAMIN', '01928196954a@gmail.com', '01928196954', 'SBDSU30954272510', '$2y$10$f8gN8eex/ss/zwqPRFJdZ.pioR8w0CEP8u5eYxYS.2axeGIY2HfRG', 'A+', '1994-01-01', '30', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:25:10', '2024-05-27 13:25:10'),
(108, '1', NULL, 'AMIR AHMED', 'RAJU', '01946704393r@gmail.com', '01946704393', 'SBDSU20393272633', '$2y$10$uovvaXPUNUkbF2nVWpgjWOsWy0R233Ea1YL6xHeoaalalzoa.ApK2', 'A+', '2004-01-01', '20', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:26:34', '2024-05-27 13:26:34'),
(109, '1', NULL, 'MD', 'MAHFUZ', '01778682665m@gmail.com', '01778682665', 'SBDSU45665272959', '$2y$10$totb82tbChIZ5dRh9c0RWeahO7SgDJ8yxAdcil7aRpRFqi6J7WAKW', 'B+', '1979-01-01', '45', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:29:59', '2024-05-27 13:29:59'),
(110, '0', '2024-01-01', 'MASUD', 'RANA', '01680679279r@gmail.com', '01680679279', 'SBDSU32279273142', '$2y$10$4tEBu7zgA6RwqiwrFK9mmeA/E.yctQFCtotBCwJEAWyfiOPKseRAu', 'O+', '1992-01-01', '32', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-27 13:31:42', '2024-05-27 13:31:42'),
(111, '1', NULL, 'JUBAIR', 'AHMED', '01611131177j@gmail.com', '01611131177', 'SBDSU29177293533', '$2y$10$xt1uoMgDJ3XF0Irn3MjEv.aMLcbnDGpnnSUqZfSw7/ezzttdounAy', 'O+', '1995-01-01', '29', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:35:34', '2024-05-29 12:35:34'),
(112, '1', NULL, 'JUBAIR', 'AHMED', '01611131177j@gmail.com', '01611131177', 'SBDSU29177293533', '$2y$10$7JJi84rXn03h6thPQl9Fze38hskNdcZNR6ptYHo2S7ETyDgd5q3Fe', 'O+', '1995-01-01', '29', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:35:34', '2024-05-29 12:35:34'),
(113, '1', NULL, 'SANJID', 'KHANDAKAR', '01960341444s@gmail.com', '01960341444', 'SBDSU28444293803', '$2y$10$twCendi.CQNmMf0zXkCNUO23dRfc8vwcTctCG/tT7NAjWjOp1XZ52', 'O+', '1996-01-01', '28', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:38:03', '2024-05-29 12:38:03'),
(114, '1', NULL, 'MRINAL KANTI', 'SARKAR', '01981570500m@gmail.com', '01981570500', 'SBDSU30500294004', '$2y$10$nPKt/VCHBxGiID4XofusfOl4Rbeve7/CxLGqQsnapjpeIaZSqxRJW', 'A+', '1994-01-01', '30', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:40:04', '2024-05-29 12:40:04'),
(115, '1', NULL, 'JANNATUL', 'NESA', '01705203455J@gmail.com', '01705203455', 'SBDSU27455294140', '$2y$10$dfJ2VsbEVCit.FUtVRdNc.F2Fz7hTFOfZROQ25sDrY/5RiMyfWhou', 'AB+', '1997-01-01', '27', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:41:40', '2024-05-29 12:41:40'),
(116, '1', NULL, 'ALFI', 'IQBAL', '01952977747a@gmail.com', '01952977747', 'SBDSU25747294324', '$2y$10$vNvZEDxEhKUL7c9xxBuJ9e4tug3W9DD77LnY0JLKBWsngcVoTv.jO', 'B+', '1999-01-01', '25', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:43:24', '2024-05-29 12:43:24'),
(117, '1', NULL, 'NAYEEM', 'HAWLADER', '01300806873n@gmail.com', '01300806873', 'SBDSU25873294810', '$2y$10$VNMWosQEodtuXO7PB0mbHeIUV3nKp/WonGGrSueiqgyEbv6w2r5EO', 'B+', '1999-01-01', '25', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:48:10', '2024-05-29 12:48:10'),
(118, '1', NULL, 'REZWAN', 'ALI', '01846055136r@gmail.com', '01846055136', 'SBDSU26136295007', '$2y$10$24FKR1ui/7h/L.EVSIhaE.qaU0wr77hsEPmDfQdjvzSwmFCbdJecy', 'O+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:50:07', '2024-05-29 12:50:07');
INSERT INTO `registrations` (`id`, `donate_check`, `last_donate_date`, `first_name`, `last_name`, `email`, `mobile`, `user_id`, `password`, `blood_group`, `birth_date`, `age`, `gender`, `division_id`, `district_id`, `thana_id`, `occupation`, `university_id`, `hospital_id`, `refer_id`, `interested_work`, `group_check`, `group_id`, `agree`, `image`, `live_address_check`, `address`, `address_latitude`, `address_longitude`, `weight`, `height`, `nid_no`, `facebook_id`, `instagram_id`, `youtube_id`, `linkedIn_id`, `status`, `card_id`, `profile`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(119, '1', NULL, 'ABDUR', 'RAHMAN', '01534775803a@gmail.com', '01534775803', 'SBDSU25803295133', '$2y$10$AEK9URLOfZkdxtVAtHEbfuo9nUAIhZtUo4/MjvlWHXFIjKPWz2Qge', 'AB+', '1999-01-01', '25', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:51:33', '2024-05-29 12:51:33'),
(120, '1', NULL, 'OMAR', 'ALI', '01911679634o@gmail.com', '01911679634', 'SBDSU26634295255', '$2y$10$R5Ob1iMniPJr84DcsNKkoeZ0kWqTbNrw3NUAfsJPmsQZtJAijNU/W', 'B+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:52:55', '2024-05-29 12:52:55'),
(121, '1', NULL, 'SANJIDA', 'AKTER', '01878460787s@gmail.com', '01878460787', 'SBDSU24787295448', '$2y$10$xTjdT2I.JSHTaeqHdtrjnupHYR.p67vkkt.LsFWz.xyCa6kvE88Ry', 'B-', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:54:48', '2024-05-29 12:54:48'),
(122, '1', NULL, 'RIMA', 'AKHTER', '01631114493r@gmai.com', '01631114493', 'SBDSU24493295607', '$2y$10$9OShNvvsjAv.dW6UDcJTjOKrd/gesCRGBMoYk4DFXIHGpE23ZZ3U.', 'A+', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 12:56:07', '2024-05-29 12:56:07'),
(123, '1', NULL, 'RABBI', 'ISLAM', '01675615014r@gmail.com', '01675615014', 'SBDSU26014290101', '$2y$10$tfYn4Aq7WCNGPACQSUxuS.GmcUD13kqFijtqFP952zrzDM/3lc1Um', 'AB+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:01:01', '2024-05-29 13:01:01'),
(124, '1', NULL, 'MST', 'HALIMA', '01750361352h@gmail.com', '01750361352', 'SBDSU24352290156', '$2y$10$4G0bXFnUsd/NOvcO07jAl.2RrQg.5Q1U/cVV834HkM4C/qTiHXRsm', 'B+', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:01:56', '2024-05-29 13:01:56'),
(125, '1', NULL, 'PARVIN', 'AKHTER', '01323582648p@gmail.com', '01323582648', 'SBDSU24648290638', '$2y$10$rkAvsJqGwrEbDQsLLvBG1.QAzFcH71tyxZ1XkEMmHRY8DZ/ysWWui', 'O+', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:06:38', '2024-05-29 13:06:38'),
(126, '1', NULL, 'MOHAMMAD', 'ALI', '01648176746m@gmail.com', '01648176746', 'SBDSU27746290837', '$2y$10$/5C3oIgpHDWTXprtE5tsTOf9DXzBGm2OD8/zWlE/YmaxdbwWT3qDu', 'A+', '1997-01-01', '27', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:08:37', '2024-05-29 13:08:37'),
(127, '1', NULL, 'MD', 'MUKTAR', '01879559370m@gmail.com', '01879559370', 'SBDSU29370291146', '$2y$10$TcNdx1YNfqqJtf.thfemg.enwuhbNu/f96qH/wmSeQfSb2QjVDU2q', 'A+', '1995-01-01', '29', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:11:46', '2024-05-29 13:11:46'),
(128, '1', NULL, 'MST', 'HALIMA', '01915787598h@gmail.com', '01915787598', 'SBDSU24598291518', '$2y$10$Oi55KlTHcNnLznmArXqT2O/66Tqs2vM/KgLHLeUanhyx9duJ.cjhu', 'B+', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:15:18', '2024-05-29 13:15:18'),
(129, '1', NULL, 'MD', 'MAHMUDUL', '01756049788m@gmail.com', '01756049788', 'SBDSU23788291814', '$2y$10$vGC6t3ZBx4oVKM8aOo71.e9xczKHyW4cwUz7PTgBhS8xoy8jgfaN6', 'O+', '2001-01-01', '23', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:18:14', '2024-05-29 13:18:14'),
(130, '1', NULL, 'SHAFIQUL', 'ISLAM', '01781385317s@gmail.com', '01781385317', 'SBDSU26317292048', '$2y$10$Vr4lrcbvxrGXBz9qpfC3Oua20a8v9fNC5eA02KCe/UtvWdD0wEu1a', 'B+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:20:48', '2024-05-29 13:20:48'),
(131, '1', NULL, 'MD', 'JAFOR', '01914341240j@gmail.com', '01914341240', 'SBDSU26240292222', '$2y$10$rePdwizbZmc4WYM5rfo9gO3JKyBon7Un9SUubat7AdUT5w0/OtW7.', 'A+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:22:22', '2024-05-29 13:22:22'),
(132, '1', NULL, 'MST', 'LAMIYA', '01952260586L@gmail.com', '01952260586', 'SBDSU24586292349', '$2y$10$sRZvj9JoFpOvqh5bOpmJ5.E077Hba1ukvWhAQnLStsH1iF0IuJ.Tu', 'A+', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:23:49', '2024-05-29 13:23:49'),
(133, '1', NULL, 'MD', 'TUTUL', '01642049890t@gmail.com', '01642049890', 'SBDSU30890292511', '$2y$10$k4ST.oS2fhs82Ubgivn4wuMWe9.r4uv0XFPXIFx9NLBiTIsBfzqKi', 'A+', '1994-01-01', '30', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:25:11', '2024-05-29 13:25:11'),
(134, '1', NULL, 'RAWNAF', 'JAHAN', '01825999971j@gmail.com', '01825999971', 'SBDSU23971292811', '$2y$10$DZpzKhPaYBqPDq8vNhPfK.MoIqpn6tpcdgV8Y/VZZku8jkStMOZzG', 'O+', '2001-01-01', '23', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:28:11', '2024-05-29 13:28:11'),
(135, '1', NULL, 'MD', 'ROCKY', '01902404783r@gmail.com', '01902404783', 'SBDSU25783293013', '$2y$10$mXa2HNoHsBFA5S7dlC3II.FnEQbmhHhUDCJQI4CL8mtbu.DaZ1o..', 'O+', '1999-01-01', '25', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:30:13', '2024-05-29 13:30:13'),
(136, '1', NULL, 'MST', 'RESHMY', '01612949422r@gmail.com', '01612949422', 'SBDSU24422293204', '$2y$10$GucOFxdUUuTvAL/273bQDeBWzWFRUsH2HHTtd.vRyzfKy49SpBtcm', 'A+', '2000-01-01', '24', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:32:04', '2024-05-29 13:32:04'),
(137, '1', NULL, 'MD', 'ANOWAR', '01765512587a@gmail.com', '01765512587', 'SBDSU25587293440', '$2y$10$yKyh.yogKzL.Rm2SOR02u.gOBhcytL8f5zEZASn.xVU4KgKJobLkq', 'B+', '1999-01-01', '25', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-05-29 13:34:40', '2024-05-29 13:34:40'),
(138, '1', NULL, 'MD', 'SIMANTO', '01403391970s@gmail.com', '01403391970', 'SBDSU26970033716', '$2y$10$E3X8eI1HMSYzbf.RDnszsuEMGLRpneErKT0cfZkcjoFDqf.2P7cPG', 'O+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-02 22:37:16', '2024-06-02 22:37:16'),
(139, '1', NULL, 'ROHIMA', 'AKTER', '01996108982r@gmail.com', '01996108982', 'SBDSU25982033818', '$2y$10$WXhrMq1yCu6M./KQbQBdn.1EZXorUojUXcEFktfwcQ2cj/i3VZydC', 'B+', '1999-01-01', '25', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-02 22:38:18', '2024-06-02 22:38:18'),
(140, '1', NULL, 'MD', 'JALAL', '01409030486j@gmail.com', '01409030486', 'SBDSU26486034647', '$2y$10$PMO/G6qazCRU2z1B3hZq5O3Tu81A0sj84PvvhvKUFZqjdq562Mx5i', 'AB+', '1998-01-01', '26', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-02 22:46:47', '2024-06-02 22:46:47'),
(141, '1', NULL, 'AKLIMA', 'AKTER', '01940292470a@gmail.com', '01940292470', 'SBDSU25470035111', '$2y$10$7KI2ByBaubCUDR1LiJ/Z7eOoZJq3nJTgVM211pXnkfuM4QL5vJmky', 'B+', '1999-01-01', '25', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-02 22:51:11', '2024-06-02 22:51:11'),
(142, '1', NULL, 'MD', 'IBRAHIM', '01727274708i@gmail.com', '01727274708', 'SBDSU24708062844', '$2y$10$OCtUttjHx/pysXdD1.91heYMFd2u5zmYaShyTN5c8tVOPs9I.W6be', 'AB+', '2000-01-01', '24', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-06 13:28:44', '2024-06-06 13:28:44'),
(143, '1', NULL, 'AFSARI', 'BEGUM', '01905131863a@gmail.com', '01905131863', 'SBDSU29863062954', '$2y$10$5knx8LJ8q4ACZ4qfC1ESLO5115sXyKYwcypIZM1J53.peHcakGl6G', 'AB+', '1995-01-01', '29', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-06 13:29:54', '2024-06-06 13:29:54'),
(144, '1', NULL, 'ROHIMA', 'AKTER', '01874534553r@gmail.com', '01874534553', 'SBDSU30553063103', '$2y$10$QXgxpne9ocXp/hl6nuq3SOlSKK7U.Boe5rCQkUWmrxsjYDiXR5MxC', 'O+', '1994-01-01', '30', 'Female', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-06 13:31:03', '2024-06-06 13:31:03'),
(145, '1', NULL, 'ROHOM', 'ALI', '01927511924r@gmail.com', '01927511924', 'SBDSU70924063849', '$2y$10$2FqP4PEsJbsoqih9WoyWLu1/1MGjYU/WLSZEWnd/7rLBOqaOeME5W', 'B+', '1954-01-01', '70', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '0', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-06 13:38:49', '2024-06-06 13:38:49'),
(146, '1', NULL, 'MD', 'RANA', '01911175408r@gmail.com', '01911175408', 'SBDSU40408064147', '$2y$10$3g1WmL5VRcO8FURPuEruoe.t0wIU7SFlLdjecsz6UcIfFV9hE8Vsq', 'A+', '1984-01-01', '40', 'Male', '6', '47', '525', 'Service', NULL, '1973', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-06 13:41:47', '2024-06-06 13:41:47'),
(147, '0', NULL, 'Jakir', 'Hossain', 'jakirsuton@gmail.com', '01718739784', 'SBDSU36784121118', '$2y$10$hIOoW0l25MHupFdRGH4xbe8tfMI44rg.swUYtP2ynqu4tDYbwSxfS', 'A+', '1988-03-04', '36', 'Male', '6', '47', '544', 'Service', NULL, '1156', 'SBDSU32241030241', '1', '0', NULL, '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-06-12 04:11:18', '2024-06-12 04:11:18'),
(148, '0', '2024-05-06', 'MD HALIMUR ROSHID', 'MAHIN', 'halimurroshidmahin@gmail.com', '01759426074', 'SBDSU19074030241', '$2y$10$yS8qMImD.sNSnHArmmjxYudq3F5COkAb7dL2ptj9ZBSc4LilSNqgG', 'O+', '2005-06-18', '19', 'Male', '6', '47', '525', 'Student', '10', '1714', 'SBDSU32241030241', '1', '1', '1', '1', NULL, NULL, NULL, '0', '0', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 1, NULL, NULL, NULL, NULL, '2024-09-03 02:02:41', '2024-09-03 02:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `request_responses`
--

DROP TABLE IF EXISTS `request_responses`;
CREATE TABLE IF NOT EXISTS `request_responses` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `request_id` varchar(255) NOT NULL,
  `request_by` varchar(11) DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `donor_id` varchar(11) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `payment_code` varchar(20) DEFAULT NULL,
  `donor_paid_status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `request_responses`
--

INSERT INTO `request_responses` (`id`, `request_id`, `request_by`, `user`, `donor_id`, `status`, `payment_code`, `donor_paid_status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, '3', '4', '6', '4', 1, '203315', 0, 6, 4, '2023-10-22 10:34:56', '2024-02-18 23:16:13'),
(2, '4', '10', '4', '2', 0, NULL, 0, 4, 4, '2023-12-01 11:13:20', '2023-12-01 11:13:20'),
(3, '1', '6', '4', '2', 0, NULL, 0, 4, 4, '2024-03-03 22:15:02', '2024-03-03 22:15:02'),
(4, '4', '10', '147', '147', 0, NULL, 0, 147, 147, '2024-06-12 04:15:48', '2024-06-12 04:15:48'),
(5, '4', '10', '147', '147', 0, NULL, 0, 147, 147, '2024-06-12 04:15:57', '2024-06-12 04:15:57');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `guard_name` varchar(125) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2022-12-05 01:00:38', '2022-12-05 01:00:38'),
(6, 'Customer', 'web', '2023-09-15 22:56:23', '2024-09-26 14:02:07');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(9, 5),
(9, 7),
(10, 1),
(10, 2),
(10, 3),
(10, 4),
(10, 5),
(10, 7),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(15, 5),
(15, 7),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(21, 5),
(21, 7),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(28, 7),
(29, 1),
(29, 7),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(33, 5),
(33, 7),
(34, 1),
(34, 5),
(34, 7),
(35, 1),
(35, 5),
(35, 7),
(36, 1),
(37, 1),
(38, 1),
(38, 5),
(38, 7),
(39, 1),
(40, 1),
(41, 1),
(41, 5),
(41, 7),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(46, 7),
(47, 1),
(48, 1),
(49, 1),
(49, 5),
(50, 1),
(50, 5),
(50, 7),
(51, 1),
(51, 5),
(51, 7),
(52, 1),
(52, 5),
(52, 7),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1),
(61, 1),
(62, 1),
(63, 1),
(64, 1),
(64, 7),
(65, 1),
(65, 7),
(66, 1),
(67, 1),
(68, 1),
(69, 1),
(69, 6),
(70, 1),
(70, 6),
(71, 1),
(71, 6),
(72, 1),
(72, 6),
(73, 1),
(73, 6),
(74, 1),
(75, 1),
(76, 1),
(77, 1),
(78, 1),
(79, 1),
(80, 1),
(81, 1),
(82, 1),
(83, 1),
(84, 1),
(85, 1),
(86, 1),
(87, 1),
(88, 1);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text,
  `payload` longtext NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('l9PAaLYbpBJSlg3rrzAMlGJXdV3r296GSzoghgjd', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiRFY2ZTNTM2JaOVFBTkhjZzVEOWJIR0pzdkx2QTJROUpkekRxa3FKeCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdGlja2V0Ijt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6MjtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3Mjc0NTAzMzA7fX0=', 1727450670),
('qMic4eV3FBrabFNWDilT2rAdLqHe1viqbfrbwSQ1', 2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiRlJETUlNMDRWYlFxV1VwT2NyRmdzemJ2WFl2bDcxSHpLWmZLWGZreCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9kYXNoYm9hcmQiO31zOjUwOiJsb2dpbl93ZWJfNTliYTM2YWRkYzJiMmY5NDAxNTgwZjAxNGM3ZjU4ZWE0ZTMwOTg5ZCI7aToyO3M6NDoiYXV0aCI7YToxOntzOjIxOiJwYXNzd29yZF9jb25maXJtZWRfYXQiO2k6MTcyNzQzMzIyODt9fQ==', 1727442390),
('HodhYUFXSLbITsTO5Xq2w29KCfOWXT0yHU5Q5Pzl', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiN2N6MlhKb3lBUkdRMlZRUzI3S3JRdFh0dWIwSTFVUUdNR1cxSW5JSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3Mjc0MzMzODM7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjM0OiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvYWRtaW4vdGlja2V0Ijt9fQ==', 1727434967),
('4ZHfbWPU5mSymEFFDGS8LH3LdaYRHN72iCTOajpr', 5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/129.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoiUnNQOWJPOHdHVm9xR1ZOakJOZERXYlVXeXlncDlVRnFZWDBKQTNZWCI7czozOiJ1cmwiO2E6MDp7fXM6OToiX3ByZXZpb3VzIjthOjE6e3M6MzoidXJsIjtzOjMxOiJodHRwOi8vMTI3LjAuMC4xOjgwMDAvZGFzaGJvYXJkIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo1MDoibG9naW5fd2ViXzU5YmEzNmFkZGMyYjJmOTQwMTU4MGYwMTRjN2Y1OGVhNGUzMDk4OWQiO2k6NTtzOjQ6ImF1dGgiO2E6MTp7czoyMToicGFzc3dvcmRfY29uZmlybWVkX2F0IjtpOjE3Mjc0NTA1NzE7fX0=', 1727450590);

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
CREATE TABLE IF NOT EXISTS `settings` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `site_title` varchar(255) DEFAULT NULL,
  `site_logo` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci DEFAULT NULL,
  `favicon` varchar(255) DEFAULT NULL,
  `currency_symbol` varchar(11) DEFAULT NULL,
  `footer` varchar(255) DEFAULT NULL,
  `sms_url` varchar(255) DEFAULT NULL,
  `sms_token` varchar(255) DEFAULT NULL,
  `payment_gateway_name` varchar(255) DEFAULT NULL,
  `domain_url` varchar(255) DEFAULT NULL,
  `user` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contact_number` varchar(14) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `address` text,
  `map_address` text,
  `facebook_link` varchar(191) DEFAULT NULL,
  `youtube_link` varchar(191) DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `site_title`, `site_logo`, `favicon`, `currency_symbol`, `footer`, `sms_url`, `sms_token`, `payment_gateway_name`, `domain_url`, `user`, `password`, `contact_number`, `email`, `address`, `map_address`, `facebook_link`, `youtube_link`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'SBDMS - Smart Blood Donor Management System', '1708270126-logo.png', '1699634032-logo.png', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '+8801970248241', 'info@hupbd.org', 'Mirpur 12, Pallabi Dhaka- 1216', NULL, NULL, NULL, 2, 2, '2023-11-10 02:00:43', '2024-02-18 03:28:46');

-- --------------------------------------------------------

--
-- Table structure for table `term_conditions`
--

DROP TABLE IF EXISTS `term_conditions`;
CREATE TABLE IF NOT EXISTS `term_conditions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `term_conditions`
--

INSERT INTO `term_conditions` (`id`, `type`, `title`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'privacy-policy', 'Smart Blood Donor Management System (SBDMS) - Privacy Policy', '<p>Effective Date: 21/10/23</p>\r\n\r\n<p>Welcome to Smart Blood Donor Management System (SBDMS). Protecting your privacy is of paramount importance to us. This Privacy Policy outlines our practices concerning the collection, use, and sharing of your personal information.</p>\r\n\r\n<p>Information Collection:<br />\r\na. Personal Information: Upon registration, we collect your name, contact information, blood type, and location data to facilitate the blood donation process.<br />\r\nb. Activity Data: We may also collect data related to your use of our platform, like search queries, donor interactions, and usage patterns.</p>\r\n\r\n<p>Information Use:<br />\r\nYour personal information is primarily used to connect blood donors and recipients and to ensure a seamless blood donation process.</p>\r\n\r\n<p>Data Protection:<br />\r\nWe have implemented appropriate security measures to protect your data from unauthorized access, accidental loss, and/or destruction.</p>\r\n\r\n<p>Disclosure of Personal Information:<br />\r\nWe pledge not to share your personal data with third parties or the blood recipients without your explicit consent. Exceptions include situations where disclosure is required by law or is necessary for the security and operation of our platform.</p>\r\n\r\n<p>Location-Based Services:<br />\r\nUsing location data, we provide information on the nearest hospitals or blood donation centers. This data is not stored permanently and is only used to offer real-time service facilitation.</p>\r\n\r\n<p>Rights and Choices:<br />\r\na. Access &amp; Corrections: Users can access their personal data and request corrections whenever required.<br />\r\nb. Opt-out: Users can choose not to disclose certain information, but this may limit the platform&#39;s functionality for them.</p>\r\n\r\n<p>Third-Party Services:<br />\r\nOur platform may include links to other websites or services. We are not responsible for their privacy practices. It&#39;s advised to read the privacy policies of any third-party services you access.</p>\r\n\r\n<p>Updates to this Policy:<br />\r\nFrom time to time, we may update our Privacy Policy. Changes will be posted on our platform, and the &ldquo;Effective Date&rdquo; will be updated.</p>\r\n\r\n<p>Contact:<br />\r\nFor any questions or concerns regarding this Privacy Policy, please contact us at [Provide Contact Information].</p>\r\n\r\n<p>By using SBDMS, you acknowledge that you&#39;ve read and agreed to our Privacy Policy. We encourage you to periodically review this policy to be informed about how we are protecting your&nbsp;information.</p>', 1, 2, 2, '2023-10-18 12:34:11', '2023-10-18 12:34:11'),
(2, 'term-condition', 'SBDMS - Terms and Conditions', '<p>Welcome to Smart Blood Donor Management System (SBDMS). Please read the following terms and conditions carefully before using our services:</p>\r\n\r\n<p>Blood Donor Availability: While SBDMS aims to connect blood recipients with donors within 15 to 30 minutes, we cannot guarantee the availability of donors or the exact time frame every time.</p>\r\n\r\n<p>Transportation Fare: SBDMS ensures transportation fare coverage for blood donors. Receipts must be submitted within 48 hours of donation to claim reimbursement.</p>\r\n\r\n<p>Rent Return Option: Should a blood donor wish to return their transportation fare, they can choose to redirect the amount to the blood recipient. This choice will be clearly indicated in the donor&#39;s profile.</p>\r\n\r\n<p>Privacy of Personal Information: We prioritize the privacy of our users. Personal information of blood donors will not be shared with third parties or the blood recipients without explicit consent from the donor.</p>\r\n\r\n<p>Location-Based Donation: SBDMS will provide information on the nearest hospital for blood donation based on the donor&#39;s current location. However, donors have the right to choose their preferred donation center.</p>\r\n\r\n<p>Blood Bank Information: Users can access details of the nearest blood banks. SBDMS is not responsible for the operational hours or stock availability at these blood banks.</p>\r\n\r\n<p>Software Use: All blood donor groups are permitted to use the SBDMS software for free. However, commercial use or replication of our software without permission is strictly prohibited.</p>\r\n\r\n<p>Free Donor Card: Upon successful registration and verification, donors will be provided with a free donor card. This card is non-transferrable.</p>\r\n\r\n<p>AI Doctor Support: Free AI doctor support is available for preliminary health queries. However, this feature is not a substitute for professional medical advice, diagnosis, or treatment. Always seek advice from a qualified healthcare provider regarding any medical condition.</p>\r\n\r\n<p>By using SBDMS, you agree to abide by these terms and conditions. Failure to comply may result in suspension or termination of your access to our services. We reserve the right to update or modify these terms at any time without&nbsp;prior&nbsp;notice.</p>', 1, 2, 2, '2023-10-18 12:34:53', '2023-10-18 12:34:53'),
(3, 'questions', 'Smart Blood Donor Management System (SBDMS) - Frequently Asked Questions (FAQs)', '<p>What is SBDMS?<br />\r\nSBDMS, or Smart Blood Donor Management System, is a digital platform designed to connect blood donors and recipients efficiently and securely.</p>\r\n\r\n<p>How quickly can I find a blood donor through SBDMS?<br />\r\nYou can usually find a suitable blood donor within 15 to 30 minutes using our platform.</p>\r\n\r\n<p>Is there any transportation cost for blood donors?<br />\r\nWe ensure transportation fare for all blood donors. However, donors have the option to return the fare to the blood recipient if they wish.</p>\r\n\r\n<p>Will my personal information be shared?<br />\r\nNo, your personal information will not be shared with anyone else without your consent. We respect and prioritize your privacy.</p>\r\n\r\n<p>How does the system determine the nearest hospital for blood donation?<br />\r\nSBDMS uses real-time location data to identify and provide information on the nearest hospital or blood donation center to the donor.</p>\r\n\r\n<p>How can I get information about the nearest blood bank?<br />\r\nOnce you&#39;re registered and logged into the SBDMS, you&#39;ll have the option to access information about the nearest blood bank based on your location.</p>\r\n\r\n<p>Can any blood donor group use the SBDMS software?<br />\r\nYes, we allow all blood donor groups to utilize our software for free to help foster a supportive and inclusive blood donation community.</p>\r\n\r\n<p>What benefits do I get as a registered donor on SBDMS?<br />\r\nAs a token of appreciation, registered donors receive a free donor card. Additionally, we offer free AI doctor support, helping users understand potential health concerns and directing them to appropriate specialists.</p>\r\n\r\n<p>Is there any AI integration in SBDMS?<br />\r\nYes, SBDMS provides free AI doctor support. This feature can help you recognize potential health issues based on the symptoms you input and guide you to relevant medical specialists.</p>\r\n\r\n<p>How do I ensure my safety and hygiene during the blood donation process?<br />\r\nWhile SBDMS connects donors and recipients, the actual blood donation happens at recognized medical facilities, ensuring that all medical and hygiene standards are maintained.</p>\r\n\r\n<p>I&#39;ve got more questions. How can I contact SBDMS support?<br />\r\nYou can reach out to our support team at [Provide Contact Information]. We&#39;re here to assist you.</p>\r\n\r\n<p>We hope this FAQ addresses your initial queries about SBDMS. For any further information, please explore our platform or get in touch with our&nbsp;support&nbsp;team.</p>', 1, 2, 2, '2023-10-18 12:35:46', '2023-10-18 12:35:46');

-- --------------------------------------------------------

--
-- Table structure for table `thanas`
--

DROP TABLE IF EXISTS `thanas`;
CREATE TABLE IF NOT EXISTS `thanas` (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `district_id` int UNSIGNED NOT NULL,
  `name` varchar(30) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=595 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `thanas`
--

INSERT INTO `thanas` (`id`, `district_id`, `name`, `created_at`, `updated_at`) VALUES
(1, 35, 'Amtali', '2023-05-08 12:58:45', '2016-04-06 00:48:39'),
(2, 35, 'Bamna ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(3, 35, 'Barguna Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(4, 35, 'Betagi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(5, 35, 'Patharghata ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(6, 35, 'Taltali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(7, 33, 'Muladi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(8, 33, 'Babuganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(9, 33, 'Agailjhara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(10, 33, 'Barisal Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(11, 33, 'Bakerganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(12, 33, 'Banaripara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(13, 33, 'Gaurnadi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(14, 33, 'Hizla ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(15, 33, 'Mehendiganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(16, 33, 'Wazirpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(17, 34, 'Bhola Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(18, 34, 'Burhanuddin ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(19, 34, 'Char Fasson ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(20, 34, 'Daulatkhan ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(21, 34, 'Lalmohan ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(22, 34, 'Manpura ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(23, 34, 'Tazumuddin ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(24, 30, 'Jhalokati Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(25, 30, 'Kathalia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(26, 30, 'Nalchity ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(27, 30, 'Rajapur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(28, 31, 'Bauphal ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(29, 31, 'Dashmina ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(30, 31, 'Galachipa ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(31, 31, 'Kalapara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(32, 31, 'Mirzaganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(33, 31, 'Patuakhali Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(34, 31, 'Dumki ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(35, 31, 'Rangabali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(36, 32, 'Bhandaria', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(37, 32, 'Kaukhali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(38, 32, 'Mathbaria', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(39, 32, 'Nazirpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(40, 32, 'Nesarabad', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(41, 32, 'Pirojpur Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(42, 32, 'Zianagar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(43, 11, 'Bandarban Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(44, 11, 'Thanchi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(45, 11, 'Lama', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(46, 11, 'Naikhongchhari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(47, 11, 'Ali kadam', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(48, 11, 'Rowangchhari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(49, 11, 'Ruma', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(50, 3, 'Brahmanbaria Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(51, 3, 'Ashuganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(52, 3, 'Nasirnagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(53, 3, 'Nabinagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(54, 3, 'Sarail ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(55, 3, 'Shahbazpur Town', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(56, 3, 'Kasba ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(57, 3, 'Akhaura ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(58, 3, 'Bancharampur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(59, 3, 'Bijoynagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(60, 6, 'Chandpur Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(61, 6, 'Faridganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(62, 6, 'Haimchar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(63, 6, 'Haziganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(64, 6, 'Kachua', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(65, 6, 'Matlab Uttar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(66, 6, 'Matlab Dakkhin', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(67, 6, 'Shahrasti', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(68, 8, 'Anwara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(69, 8, 'Banshkhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(70, 8, 'Boalkhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(71, 8, 'Chandanaish ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(72, 8, 'Fatikchhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(73, 8, 'Hathazari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(74, 8, 'Lohagara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(75, 8, 'Mirsharai ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(76, 8, 'Patiya ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(77, 8, 'Rangunia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(78, 8, 'Raozan ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(79, 8, 'Sandwip ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(80, 8, 'Satkania ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(81, 8, 'Sitakunda ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(82, 1, 'Barura ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(83, 1, 'Brahmanpara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(84, 1, 'Burichong ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(85, 1, 'Chandina ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(86, 1, 'Chauddagram ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(87, 1, 'Daudkandi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(88, 1, 'Debidwar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(89, 1, 'Homna ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(90, 1, 'Comilla Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(91, 1, 'Laksam ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(92, 1, 'Monohorgonj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(93, 1, 'Meghna ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(94, 1, 'Muradnagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(95, 1, 'Nangalkot ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(96, 1, 'Comilla Sadar South ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(97, 1, 'Titas ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(98, 9, 'Chakaria ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(99, 9, 'Chakaria ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(100, 9, 'Cox\'s Bazar Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(101, 9, 'Kutubdia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(102, 9, 'Maheshkhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(103, 9, 'Ramu ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(104, 9, 'Teknaf ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(105, 9, 'Ukhia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(106, 9, 'Pekua ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(107, 2, 'Feni Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(108, 2, 'Chagalnaiya', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(109, 2, 'Daganbhyan', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(110, 2, 'Parshuram', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(111, 2, 'Fhulgazi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(112, 2, 'Sonagazi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(113, 10, 'Dighinala ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(114, 10, 'Khagrachhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(115, 10, 'Lakshmichhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(116, 10, 'Mahalchhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(117, 10, 'Manikchhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(118, 10, 'Matiranga ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(119, 10, 'Panchhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(120, 10, 'Ramgarh ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(121, 7, 'Lakshmipur Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(122, 7, 'Raipur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(123, 7, 'Ramganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(124, 7, 'Ramgati ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(125, 7, 'Komol Nagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(126, 5, 'Noakhali Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(127, 5, 'Begumganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(128, 5, 'Chatkhil ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(129, 5, 'Companyganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(130, 5, 'Shenbag ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(131, 5, 'Hatia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(132, 5, 'Kobirhat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(133, 5, 'Sonaimuri ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(134, 5, 'Suborno Char ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(135, 4, 'Rangamati Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(136, 4, 'Belaichhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(137, 4, 'Bagaichhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(138, 4, 'Barkal ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(139, 4, 'Juraichhari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(140, 4, 'Rajasthali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(141, 4, 'Kaptai ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(142, 4, 'Langadu ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(143, 4, 'Nannerchar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(144, 4, 'Kaukhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(150, 52, 'Faridpur Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(151, 52, 'Boalmari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(152, 52, 'Alfadanga ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(153, 52, 'Madhukhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(154, 52, 'Bhanga ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(155, 52, 'Nagarkanda ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(156, 52, 'Charbhadrasan ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(157, 52, 'Sadarpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(158, 52, 'Shaltha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(159, 41, 'Gazipur Sadar-Joydebpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(160, 41, 'Kaliakior', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(161, 41, 'Kapasia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(162, 41, 'Sripur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(163, 41, 'Kaliganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(164, 41, 'Tongi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(165, 51, 'Gopalganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(166, 51, 'Kashiani ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(167, 51, 'Kotalipara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(168, 51, 'Muksudpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(169, 51, 'Tungipara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(170, 63, 'Dewanganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(171, 63, 'Baksiganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(172, 63, 'Islampur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(173, 63, 'Jamalpur Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(174, 63, 'Madarganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(175, 63, 'Melandaha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(176, 63, 'Sarishabari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(177, 63, 'Narundi Police I.C', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(178, 45, 'Astagram ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(179, 45, 'Bajitpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(180, 45, 'Bhairab ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(181, 45, 'Hossainpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(182, 45, 'Itna ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(183, 45, 'Karimganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(184, 45, 'Katiadi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(185, 45, 'Kishoreganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(186, 45, 'Kuliarchar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(187, 45, 'Mithamain ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(188, 45, 'Nikli ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(189, 45, 'Pakundia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(190, 45, 'Tarail ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(191, 50, 'Madaripur Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(192, 50, 'Kalkini', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(193, 50, 'Rajoir', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(194, 50, 'Shibchar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(195, 46, 'Manikganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(196, 46, 'Singair ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(197, 46, 'Shibalaya ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(198, 46, 'Saturia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(199, 46, 'Harirampur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(200, 46, 'Ghior ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(201, 46, 'Daulatpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(202, 48, 'Lohajang ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(203, 48, 'Sreenagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(204, 48, 'Munshiganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(205, 48, 'Sirajdikhan ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(206, 48, 'Tongibari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(207, 48, 'Gazaria ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(208, 62, 'Bhaluka', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(209, 62, 'Trishal', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(210, 62, 'Haluaghat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(211, 62, 'Muktagachha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(212, 62, 'Dhobaura', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(213, 62, 'Fulbaria', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(214, 62, 'Gaffargaon', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(215, 62, 'Gauripur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(216, 62, 'Ishwarganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(217, 62, 'Mymensingh Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(218, 62, 'Nandail', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(219, 62, 'Phulpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(220, 43, 'Araihazar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(221, 43, 'Sonargaon ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(222, 43, 'Bandar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(223, 43, 'Naryanganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(224, 43, 'Rupganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(225, 43, 'Siddirgonj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(226, 40, 'Belabo ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(227, 40, 'Monohardi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(228, 40, 'Narsingdi Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(229, 40, 'Palash ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(230, 40, 'Raipura , Narsingdi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(231, 40, 'Shibpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(232, 64, 'Kendua Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(233, 64, 'Atpara Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(234, 64, 'Barhatta Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(235, 64, 'Durgapur Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(236, 64, 'Kalmakanda Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(237, 64, 'Madan Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(238, 64, 'Mohanganj Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(239, 64, 'Netrakona-S Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(240, 64, 'Purbadhala Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(241, 64, 'Khaliajuri Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(242, 49, 'Baliakandi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(243, 49, 'Goalandaghat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(244, 49, 'Pangsha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(245, 49, 'Kalukhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(246, 49, 'Rajbari Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(247, 42, 'Shariatpur Sadar -Palong', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(248, 42, 'Damudya ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(249, 42, 'Naria ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(250, 42, 'Jajira ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(251, 42, 'Bhedarganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(252, 42, 'Gosairhat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(253, 61, 'Jhenaigati ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(254, 61, 'Nakla ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(255, 61, 'Nalitabari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(256, 61, 'Sherpur Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(257, 61, 'Sreebardi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(258, 44, 'Tangail Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(259, 44, 'Sakhipur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(260, 44, 'Basail ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(261, 44, 'Madhupur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(262, 44, 'Ghatail ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(263, 44, 'Kalihati ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(264, 44, 'Nagarpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(265, 44, 'Mirzapur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(266, 44, 'Gopalpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(267, 44, 'Delduar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(268, 44, 'Bhuapur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(269, 44, 'Dhanbari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(270, 28, 'Bagerhat Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(271, 28, 'Chitalmari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(272, 28, 'Fakirhat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(273, 28, 'Kachua ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(274, 28, 'Mollahat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(275, 28, 'Mongla ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(276, 28, 'Morrelganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(277, 28, 'Rampal ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(278, 28, 'Sarankhola ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(279, 24, 'Damurhuda ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(280, 24, 'Chuadanga-S ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(281, 24, 'Jibannagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(282, 24, 'Alamdanga ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(283, 20, 'Abhaynagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(284, 20, 'Keshabpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(285, 20, 'Bagherpara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(286, 20, 'Jessore Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(287, 20, 'Chaugachha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(288, 20, 'Manirampur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(289, 20, 'Jhikargachha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(290, 20, 'Sharsha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(291, 29, 'Jhenaidah Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(292, 29, 'Maheshpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(293, 29, 'Kaliganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(294, 29, 'Kotchandpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(295, 29, 'Shailkupa ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(296, 29, 'Harinakunda ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(297, 27, 'Terokhada ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(298, 27, 'Batiaghata ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(299, 27, 'Dacope ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(300, 27, 'Dumuria ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(301, 27, 'Dighalia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(302, 27, 'Koyra ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(303, 27, 'Paikgachha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(304, 27, 'Phultala ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(305, 27, 'Rupsa ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(306, 25, 'Kushtia Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(307, 25, 'Kumarkhali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(308, 25, 'Daulatpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(309, 25, 'Mirpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(310, 25, 'Bheramara', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(311, 25, 'Khoksa', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(312, 26, 'Magura Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(313, 26, 'Mohammadpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(314, 26, 'Shalikha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(315, 26, 'Sreepur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(316, 26, 'angni ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(317, 26, 'Mujib Nagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(318, 26, 'Meherpur-S ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(319, 23, 'Narail-S Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(320, 23, 'Lohagara Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(321, 23, 'Kalia Upazilla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(322, 21, 'Satkhira Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(323, 21, 'Assasuni ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(324, 21, 'Debhata ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(325, 21, 'Tala ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(326, 21, 'Kalaroa ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(327, 21, 'Kaliganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(328, 21, 'Shyamnagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(329, 14, 'Adamdighi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(330, 14, 'Bogra Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(331, 14, 'Sherpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(332, 14, 'Dhunat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(333, 14, 'Dhupchanchia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(334, 14, 'Gabtali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(335, 14, 'Kahaloo', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(336, 14, 'Nandigram', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(337, 14, 'Sahajanpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(338, 14, 'Sariakandi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(339, 14, 'Shibganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(340, 14, 'Sonatala', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(341, 17, 'Joypurhat S', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(342, 17, 'Akkelpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(343, 17, 'Kalai', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(344, 17, 'Khetlal', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(345, 17, 'Panchbibi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(346, 19, 'Naogaon Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(347, 19, 'Mohadevpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(348, 19, 'Manda ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(349, 19, 'Niamatpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(350, 19, 'Atrai ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(351, 19, 'Raninagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(352, 19, 'Patnitala ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(353, 19, 'Dhamoirhat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(354, 19, 'Sapahar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(355, 19, 'Porsha ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(356, 19, 'Badalgachhi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(357, 16, 'Natore Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(358, 16, 'Baraigram ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(359, 16, 'Bagatipara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(360, 16, 'Lalpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(361, 16, 'Natore Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(362, 16, 'Baraigram ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(363, 18, 'Bholahat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(364, 18, 'Gomastapur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(365, 18, 'Nachole ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(366, 18, 'Nawabganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(367, 18, 'Shibganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(368, 13, 'Atgharia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(369, 13, 'Bera ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(370, 13, 'Bhangura ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(371, 13, 'Chatmohar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(372, 13, 'Faridpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(373, 13, 'Ishwardi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(374, 13, 'Pabna Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(375, 13, 'Santhia ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(376, 13, 'Sujanagar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(377, 15, 'Bagha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(378, 15, 'Bagmara', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(379, 15, 'Charghat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(380, 15, 'Durgapur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(381, 15, 'Godagari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(382, 15, 'Mohanpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(383, 15, 'Paba', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(384, 15, 'Puthia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(385, 15, 'Tanore', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(386, 12, 'Sirajganj Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(387, 12, 'Belkuchi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(388, 12, 'Chauhali ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(389, 12, 'Kamarkhanda ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(390, 12, 'Kazipur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(391, 12, 'Raiganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(392, 12, 'Shahjadpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(393, 12, 'Tarash ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(394, 12, 'Ullahpara ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(395, 54, 'Birampur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(396, 54, 'Birganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(397, 54, 'Biral ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(398, 54, 'Bochaganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(399, 54, 'Chirirbandar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(400, 54, 'Phulbari ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(401, 54, 'Ghoraghat ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(402, 54, 'Hakimpur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(403, 54, 'Kaharole ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(404, 54, 'Khansama ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(405, 54, 'Dinajpur Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(406, 54, 'Nawabganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(407, 54, 'Parbatipur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(408, 57, 'Fulchhari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(409, 57, 'Gaibandha sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(410, 57, 'Gobindaganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(411, 57, 'Palashbari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(412, 57, 'Sadullapur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(413, 57, 'Saghata', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(414, 57, 'Sundarganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(415, 60, 'Kurigram Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(416, 60, 'Nageshwari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(417, 60, 'Bhurungamari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(418, 60, 'Phulbari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(419, 60, 'Rajarhat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(420, 60, 'Ulipur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(421, 60, 'Chilmari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(422, 60, 'Rowmari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(423, 60, 'Char Rajibpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(424, 55, 'Lalmanirhat Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(425, 55, 'Aditmari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(426, 55, 'Kaliganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(427, 55, 'Hatibandha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(428, 55, 'Patgram', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(429, 56, 'Nilphamari Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(430, 56, 'Saidpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(431, 56, 'Jaldhaka', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(432, 56, 'Kishoreganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(433, 56, 'Domar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(434, 56, 'Dimla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(435, 53, 'Panchagarh Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(436, 53, 'Debiganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(437, 53, 'Boda', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(438, 53, 'Atwari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(439, 53, 'Tetulia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(440, 59, 'Badarganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(441, 59, 'Mithapukur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(442, 59, 'Gangachara', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(443, 59, 'Kaunia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(444, 59, 'Rangpur Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(445, 59, 'Pirgachha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(446, 59, 'Pirganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(447, 59, 'Taraganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(448, 58, 'Thakurgaon Sadar ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(449, 58, 'Pirganj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(450, 58, 'Baliadangi ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(451, 58, 'Haripur ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(452, 58, 'Ranisankail ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(453, 38, 'Ajmiriganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(454, 38, 'Baniachang', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(455, 38, 'Bahubal', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(456, 38, 'Chunarughat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(457, 38, 'Habiganj Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(458, 38, 'Lakhai', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(459, 38, 'Madhabpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(460, 38, 'Nabiganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(461, 38, 'Shaistagonj ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(462, 37, 'Moulvibazar Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(463, 37, 'Barlekha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(464, 37, 'Juri', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(465, 37, 'Kamalganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(466, 37, 'Kulaura', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(467, 37, 'Rajnagar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(468, 37, 'Sreemangal', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(469, 39, 'Bishwamvarpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(470, 39, 'Chhatak', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(471, 39, 'Derai', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(472, 39, 'Dharampasha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(473, 39, 'Dowarabazar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(474, 39, 'Jagannathpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(475, 39, 'Jamalganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(476, 39, 'Sulla', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(477, 39, 'Sunamganj Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(478, 39, 'Shanthiganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(479, 39, 'Tahirpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(480, 36, 'Sylhet Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(481, 36, 'Beanibazar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(482, 36, 'Bishwanath', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(483, 36, 'Dakshin Surma ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(484, 36, 'Balaganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(485, 36, 'Companiganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(486, 36, 'Fenchuganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(487, 36, 'Golapganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(488, 36, 'Gowainghat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(489, 36, 'Jaintiapur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(490, 36, 'Kanaighat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(491, 36, 'Zakiganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(492, 36, 'Nobigonj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(493, 47, 'Adabor', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(494, 47, 'Airport', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(495, 47, 'Badda', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(496, 47, 'Banani', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(497, 47, 'Bangshal', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(498, 47, 'Bhashantek', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(499, 47, 'Cantonment', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(500, 47, 'Chackbazar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(501, 47, 'Darussalam', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(502, 47, 'Daskhinkhan', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(503, 47, 'Demra', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(504, 47, 'Dhamrai', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(505, 47, 'Dhanmondi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(506, 47, 'Dohar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(507, 47, 'Gandaria', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(508, 47, 'Gulshan', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(509, 47, 'Hazaribag', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(510, 47, 'Jatrabari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(511, 47, 'Kafrul', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(512, 47, 'Kalabagan', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(513, 47, 'Kamrangirchar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(514, 47, 'Keraniganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(515, 47, 'Khilgaon', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(516, 47, 'Khilkhet', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(517, 47, 'Kotwali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(518, 47, 'Lalbag', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(519, 47, 'Mirpur Model', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(520, 47, 'Mohammadpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(521, 47, 'Motijheel', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(522, 47, 'Mugda', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(523, 47, 'Nawabganj', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(524, 47, 'New Market', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(525, 47, 'Pallabi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(526, 47, 'Paltan', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(527, 47, 'Ramna', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(528, 47, 'Rampura', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(529, 47, 'Rupnagar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(530, 47, 'Sabujbag', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(531, 47, 'Savar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(532, 47, 'Shah Ali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(533, 47, 'Shahbag', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(534, 47, 'Shahjahanpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(535, 47, 'Sherebanglanagar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(536, 47, 'Shyampur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(537, 47, 'Sutrapur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(538, 47, 'Tejgaon', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(539, 47, 'Tejgaon I/A', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(540, 47, 'Turag', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(541, 47, 'Uttara', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(542, 47, 'Uttara West', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(543, 47, 'Uttarkhan', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(544, 47, 'Vatara', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(545, 47, 'Wari', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(546, 47, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(547, 33, 'Airport', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(548, 33, 'Kawnia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(549, 33, 'Bondor', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(550, 33, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(551, 15, 'Boalia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(552, 15, 'Motihar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(553, 15, 'Shahmokhdum', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(554, 15, 'Rajpara', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(555, 15, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(556, 8, 'Akborsha', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(557, 8, 'Baijid bostami', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(558, 8, 'Bakolia', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(559, 8, 'Bandar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(560, 8, 'Chandgaon', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(561, 8, 'Chokbazar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(562, 8, 'Doublemooring', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(563, 8, 'EPZ', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(564, 8, 'Hali Shohor', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(565, 8, 'Kornafuli', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(566, 8, 'Kotwali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(567, 8, 'Kulshi', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(568, 8, 'Pahartali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(569, 8, 'Panchlaish', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(570, 8, 'Potenga', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(571, 8, 'Shodhorgat', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(572, 8, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(573, 1, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(574, 27, 'Aranghata', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(575, 27, 'Daulatpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(576, 27, 'Harintana', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(577, 27, 'Horintana', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(578, 27, 'Khalishpur', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(579, 27, 'Khanjahan Ali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(580, 27, 'Khulna Sadar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(581, 27, 'Labanchora', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(582, 27, 'Sonadanga', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(583, 27, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(584, 52, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(585, 51, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(586, 63, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(587, 36, 'Airport', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(588, 36, 'Hazrat Shah Paran', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(589, 36, 'Jalalabad', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(590, 36, 'Kowtali', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(591, 36, 'Moglabazar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(592, 36, 'Osmani Nagar', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(593, 36, 'South Surma', '2023-04-30 09:18:44', '0000-00-00 00:00:00'),
(594, 36, 'Others', '2023-04-30 09:18:44', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tickets`
--

DROP TABLE IF EXISTS `tickets`;
CREATE TABLE IF NOT EXISTS `tickets` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `ticket_no` varchar(255) NOT NULL,
  `description` text CHARACTER SET utf8mb3 COLLATE utf8mb3_general_ci NOT NULL,
  `status` enum('open','closed') NOT NULL DEFAULT 'open',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `tickets`
--

INSERT INTO `tickets` (`id`, `ticket_no`, `description`, `status`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(18, '24092760', 'css issue', 'closed', 5, 2, '2024-09-27 05:02:38', '2024-09-27 06:59:12');

-- --------------------------------------------------------

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
CREATE TABLE IF NOT EXISTS `transactions` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tran_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) UNSIGNED DEFAULT NULL,
  `card_type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_amount` double(16,2) UNSIGNED DEFAULT NULL,
  `card_no` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_tran_id` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tran_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_issuer` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_issuer_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_issuer_country_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cus_fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_sign_sha2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_type` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_amount` double(16,2) UNSIGNED DEFAULT NULL,
  `currency_rate` double(8,4) UNSIGNED DEFAULT NULL,
  `base_fair` double(8,4) UNSIGNED DEFAULT NULL,
  `value_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_level` int DEFAULT NULL,
  `risk_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `error` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `pass` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_by` tinyint DEFAULT NULL,
  `updated_by` tinyint DEFAULT NULL,
  `deleted_by` tinyint DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_tran_id_unique` (`tran_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `transactions`
--

INSERT INTO `transactions` (`id`, `tran_id`, `val_id`, `amount`, `card_type`, `store_amount`, `card_no`, `bank_tran_id`, `status`, `tran_date`, `currency`, `card_issuer`, `card_brand`, `card_issuer_country`, `card_issuer_country_code`, `store_id`, `verify_sign`, `verify_key`, `cus_fax`, `verify_sign_sha2`, `currency_type`, `currency_amount`, `currency_rate`, `base_fair`, `value_a`, `value_b`, `value_c`, `value_d`, `risk_level`, `risk_title`, `error`, `key`, `pass`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`) VALUES
(1, '8c359f30-ee88-1d4f-8342-af955255684a', '2310201553011C1O8axnjxQ7iIG', 1200.00, 'BKASH-BKash', 1170.00, 'REF', '2310201553014efho3ymmhZuuRh', 'VALID', '2023-10-20 15:52:54', 'BDT', 'BKash Mobile Banking', 'MOBILEBANKING', 'Bangladesh', 'BD', 'geoor650550b5d9ab5', NULL, NULL, NULL, NULL, 'BDT', 1200.00, 1.0000, NULL, '2', NULL, NULL, 'T5RE0EHJ82EGD8JW', 0, 'Safe', NULL, NULL, NULL, '2023-10-20 03:53:06', '2023-10-20 03:53:06', NULL, NULL, NULL, NULL),
(2, 'G2TU6YOU82SCE8JS', '231021048320aE3sZ3QoTcxeJ4', 1200.00, 'BKASH-BKash', 1170.00, NULL, '2310210483214FjaDi2H6YW5LJ', 'VALID', '2023-10-21 00:48:26', 'BDT', 'BKash Mobile Banking', 'MOBILEBANKING', 'Bangladesh', 'BD', 'deskt5f854e115fecb', '3d8b196b46ba7dc799d2a8daf59ad56a', 'amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d', NULL, 'b8d9dfe572478e7a5c453b03814aa4d2eebd45b23a9f7e8f472c9201ca957aba', 'BDT', 1200.00, 1.0000, 0.0000, '3', NULL, NULL, 'G2TU6YOU82SCE8JS', 0, 'Safe', NULL, NULL, NULL, '2023-10-20 12:48:33', '2023-10-20 12:48:33', NULL, NULL, NULL, NULL),
(3, 'O4LI3UTD42UJL9FS', '2310241946311TPvk1oxz8JzmCu', 600.00, 'BKASH-BKash', 585.00, NULL, '2310241946310qZrLuC1E3zREZJ', 'VALID', '2023-10-24 19:46:04', 'BDT', 'BKash Mobile Banking', 'MOBILEBANKING', 'Bangladesh', 'BD', 'deskt5f854e115fecb', 'b580d895a305c3ccbe44d23dbdac6bcb', 'amount,bank_tran_id,base_fair,card_brand,card_issuer,card_issuer_country,card_issuer_country_code,card_no,card_type,currency,currency_amount,currency_rate,currency_type,risk_level,risk_title,status,store_amount,store_id,tran_date,tran_id,val_id,value_a,value_b,value_c,value_d', NULL, '857e1131cd116f6355f19b111b9b3a23dee1a682bfc2f7905b51d92c4c1afccb', 'BDT', 600.00, 1.0000, 0.0000, '4', NULL, NULL, 'O4LI3UTD42UJL9FS', 0, 'Safe', NULL, NULL, NULL, '2023-10-24 07:46:32', '2023-10-24 07:46:32', NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `transaction_ipns`
--

DROP TABLE IF EXISTS `transaction_ipns`;
CREATE TABLE IF NOT EXISTS `transaction_ipns` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `student_id` int DEFAULT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tran_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `val_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` double(16,2) UNSIGNED DEFAULT NULL,
  `card_type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_amount` double(16,2) UNSIGNED DEFAULT NULL,
  `card_no` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bank_tran_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tran_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_issuer` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_brand` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_issuer_country` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `card_issuer_country_code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_sign` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_key` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `cus_fax` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `verify_sign_sha2` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_type` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_amount` double(16,2) UNSIGNED DEFAULT NULL,
  `currency_rate` double(8,4) UNSIGNED DEFAULT NULL,
  `base_fair` double(8,4) UNSIGNED DEFAULT NULL,
  `value_a` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_b` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_c` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value_d` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `risk_level` int DEFAULT NULL,
  `risk_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `transactions_tran_id_unique` (`tran_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `donor_id` varchar(11) DEFAULT NULL,
  `two_factor_secret` text,
  `two_factor_recovery_codes` text,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `current_team_id` bigint UNSIGNED DEFAULT NULL,
  `profile_photo_path` varchar(2048) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb3;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `donor_id`, `two_factor_secret`, `two_factor_recovery_codes`, `two_factor_confirmed_at`, `remember_token`, `current_team_id`, `profile_photo_path`, `created_at`, `updated_at`) VALUES
(1, 'Super-Admin', 'superadmin@gmail.com', NULL, '$2y$10$RcRN3/B7vg9cmL77QCv8ZOn4tc5ya8.bIfSc1Bk8RPw1bTC4IQdhS', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-05 01:00:38', '2022-12-05 01:00:38'),
(2, 'Nazim Uddin', 'admin@gmail.com', NULL, '$2y$10$TiDgM6HRzCeM1wDnWwqe.eRw6UfBGqNieXmgeEzfNw.IOdFBCpW8a', '1', NULL, NULL, NULL, NULL, NULL, NULL, '2022-12-05 03:04:46', '2023-10-03 10:08:48'),
(3, 'Admin', 'admin@admin.com', NULL, '$2y$10$r4U9OirMrF5im/qhiEfMseymYqbNj70lBqLs169iqrJs5BdbOxD5W', NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2023-08-09 10:51:05', '2023-08-09 10:51:05'),
(5, 'Md. Masud Rana', 'masud@gmail.com', NULL, '$2y$10$IIBScsUotApUuEyXmp9FoeqvsRK.Zea43j2..DSnTVvZ00itHWRde', '3', NULL, NULL, NULL, NULL, NULL, NULL, '2023-10-07 06:12:49', '2024-09-26 16:36:40');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
