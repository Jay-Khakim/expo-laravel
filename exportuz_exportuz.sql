-- phpMyAdmin SQL Dump
-- version 4.9.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Dec 02, 2020 at 01:57 PM
-- Server version: 10.3.24-MariaDB-log-cll-lve
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exportuz_exportuz`
--

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uz` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `branches`
--

INSERT INTO `branches` (`id`, `name_en`, `name_uz`, `name_ru`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Headquarter', 'Марказий аппарат', 'Головной офис', NULL, NULL, '2020-09-19 06:13:16', '2020-09-19 06:13:16'),
(2, 'Tashkent city', 'Тошкент Шаҳар', 'Город Ташкент', NULL, NULL, '2020-09-21 01:28:55', '2020-09-21 01:28:55'),
(3, 'Tashkent region', 'Тошкент вилояти', 'Ташкентская область', NULL, NULL, '2020-09-21 01:38:55', '2020-09-21 01:38:55'),
(4, 'Karakalpakstan', 'Қорақалпоғистон', 'Каракалпакстан', NULL, NULL, '2020-10-07 07:22:07', '2020-10-07 07:22:07'),
(5, 'Jizakh region', 'Жиззах вилояти', 'Джизакская область', NULL, NULL, '2020-10-07 07:40:01', '2020-10-07 07:40:01'),
(6, 'Namangan region', 'Наманган Вилояти', 'Наманганская область', NULL, NULL, '2020-10-13 05:23:31', '2020-10-13 05:23:44'),
(7, 'Khorazm region', 'Хоразм Вилояти', 'Хорезмская область', NULL, NULL, '2020-10-13 05:27:18', '2020-10-13 05:27:18'),
(8, 'Surkhandarya Region', 'Сурхондарё Вилоят', 'Сурхандарьинская область', NULL, NULL, '2020-10-13 05:31:35', '2020-10-13 05:31:35'),
(9, 'Andijan Region', 'Андижон Вилояти', 'Андижанская область', NULL, NULL, '2020-10-13 05:33:44', '2020-10-13 05:33:44'),
(10, 'Syrdarya region', 'Cирдарё Вилояти', 'Сырдарьинская область', NULL, NULL, '2020-10-13 05:38:54', '2020-10-13 05:38:54'),
(11, 'USA', 'АҚШ', 'США', NULL, NULL, '2020-10-13 05:47:32', '2020-10-13 05:47:32'),
(12, 'Turkey', 'Туркия Республикаси', 'Турция', NULL, NULL, '2020-10-13 05:49:11', '2020-10-13 05:49:11'),
(13, 'Afghanistan', 'Афғонистон Ислом Давлати', 'Исламское Государство Афганистан', NULL, NULL, '2020-10-13 05:50:38', '2020-10-13 05:50:38'),
(14, 'Republic of South Korea', 'Жанубий Корея Республикаси', 'Южная Корея', NULL, NULL, '2020-10-13 05:53:48', '2020-10-13 05:53:48'),
(15, 'Republic of India', 'Хиндистон Республикаси', 'Индия', NULL, NULL, '2020-10-13 05:58:07', '2020-10-13 05:58:07'),
(16, 'Malaysia', 'Малайзия Республикаси', 'Республика Малайзия', NULL, NULL, '2020-10-13 05:59:57', '2020-10-13 05:59:57'),
(17, 'Islamic Republic of Iran', 'Эрон Ислом Республикаси', 'Исламская Республика Иран', NULL, NULL, '2020-10-13 06:01:29', '2020-10-13 06:01:29'),
(18, 'United Kingdom', 'Буюк Британия', 'Великобритания', NULL, NULL, '2020-10-13 06:04:50', '2020-10-13 06:04:50'),
(19, 'Norway', 'Норвегия Республикаси', 'Норвегия', NULL, NULL, '2020-10-13 06:08:05', '2020-10-13 06:08:05'),
(20, 'China - \"Hangzhou\"', 'Хитой – «Ханчжоу»', 'Китай - «Ханчжоу»', NULL, NULL, '2020-10-13 06:16:22', '2020-10-13 06:16:22'),
(21, 'China - IU', 'Хитой – «ИУ»', 'Китай - IU', NULL, NULL, '2020-10-13 06:17:52', '2020-10-13 06:17:52'),
(22, 'Russian Federation', 'Россия Федерацияси', 'Российская Федерация', NULL, NULL, '2020-10-13 06:23:41', '2020-10-13 06:23:41'),
(23, 'UAE', 'БАА', 'ОАЭ', NULL, NULL, '2020-10-13 06:25:57', '2020-10-13 06:25:57'),
(24, 'Ukraine', 'Украина', 'Украина', NULL, NULL, '2020-10-13 06:26:27', '2020-10-13 06:26:27'),
(25, 'Head of the Center for Scientific Research and Development', 'Илмий Тадқиқот Ва Тараққиёт Маркази Рахбари', 'Руководитель Центра научных исследований и разработок', NULL, NULL, '2020-10-16 00:49:50', '2020-10-16 00:49:50'),
(26, 'Expert of the Center', 'Марказнинг Эксперти', 'Эксперт центра', NULL, NULL, '2020-10-16 01:02:52', '2020-10-16 01:02:52');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uz` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(1000) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_en` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name_en`, `name_uz`, `name_ru`, `slug_en`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'Main banner', 'Main banner', 'Main banner', 'main-banner', NULL, '2020-09-18 03:58:29', '2020-09-25 05:50:44'),
(2, 'Association news', 'Уюшма янгиликлари', 'Новости ассоциации', 'association', NULL, '2020-09-18 04:21:49', '2020-09-25 05:50:33'),
(3, 'Export news', 'Export news uz', 'Export news ru', 'export', NULL, '2020-09-18 04:33:41', '2020-09-25 05:50:22'),
(4, 'Import news', 'Импорт янгиликлари', 'Новости импорта', 'import-news', NULL, '2020-09-25 05:52:06', '2020-09-25 05:52:06'),
(5, 'Mukhtor Umarov', 'Мухтор Умаров', 'Мухтор Умаров', 'Mukhtor-Umarov', NULL, '2020-09-29 03:02:48', '2020-09-29 03:02:48'),
(6, 'Upcoming event', 'Келгуси тадбир', 'Предстоящее событие', 'Upcoming-event', NULL, '2020-10-07 06:53:14', '2020-10-07 06:53:14');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `memberships`
--

CREATE TABLE `memberships` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uz` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug_en` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `certificate_number` bigint(20) DEFAULT NULL,
  `inn` bigint(20) NOT NULL,
  `expiry_date` date NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_uz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ru` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `web` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` char(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_en` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_uz` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_ru` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `memberships`
--

INSERT INTO `memberships` (`id`, `status`, `name_en`, `name_uz`, `name_ru`, `slug_en`, `certificate_number`, `inn`, `expiry_date`, `desc_en`, `desc_uz`, `desc_ru`, `file`, `web`, `email`, `phone`, `address_en`, `address_uz`, `address_ru`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'active', '«AGROPLACE» LLT', '«AGROPLACE» MЧЖ', '«AGROPLACE» OOO', 'agroplace-llt', 305, 307101478, '2020-12-29', '<p>All information about AGROPLACE LLC.</p>', '<p>&laquo;AGROPLACE&raquo; MЧЖ корхонаси ҳақидаги барча маълумотлар.</p>', '<p>Вся информация о ООО &quot;АГРОПЛАЙС&quot;.</p>', '/c7bac50aad53208fd9c292311c08dccc.pdf', NULL, NULL, NULL, NULL, NULL, NULL, 'membership/6e5ccdb802eb0f2485ff9ed04b0d4590.jpg', NULL, '2020-09-23 02:11:31', '2020-10-21 00:10:00'),
(2, 'inactive', '\"ARHAT INKS\" LLC', '\"ARHAT INKS\" MCHJ', 'OOO \"ARHAT INKS\"', 'ARHAT INKS', 109, 305741277, '2020-10-15', NULL, NULL, NULL, '/c19a9f0497304e5d4410a206fa1dfbc4.png', NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ad60d065678be5c2b4f38f5bdeb940a4.jpg', NULL, '2020-10-08 07:06:24', '2020-11-12 23:27:49'),
(4, 'inactive', '\"AGRO FOOD PARTNER\" LLC', '\"AGRO FOOD PARTNER\" MCHJ', 'OOO \"AGRO FOOD PARTNER\"', 'AGRO FOOD PARTNER', 112, 306404694, '2020-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/14fe0245d51ad9276f0da3bdf19eb38f.jpg', NULL, '2020-10-19 01:51:03', '2020-10-19 01:51:03'),
(5, 'inactive', '\"GOLD DRIED FRUITS EXPORT\" LLC', '\"GOLD DRIED FRUITS EXPORT\" МЧЖ', 'OOO \"GOLD DRIED FRUITS EXPORT\"', 'GOLD DRIED FRUITS EXPORT', 123, 303932894, '2020-10-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/024ac909114c058affd4c707368d6481.jpg', NULL, '2020-10-19 01:52:30', '2020-10-19 01:52:30'),
(6, 'inactive', '\"POLAR STAR TASHKENT\" LLC', '\"POLAR STAR TASHKENT\" MCHj', 'ООО \"POLAR STAR TASHKENT\"', 'POLAR STAR TASHKENT', 124, 305688191, '2020-10-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7ed9de19bb47431737be55f905fde8bd.jpg', NULL, '2020-10-19 01:53:38', '2020-10-19 01:53:38'),
(8, 'inactive', '\"PARTNER STRATEGY INVEST\" PE', '\"PARTNER STRATEGY INVEST\" XK', 'ЧП \"PARTNER STRATEGY INVEST\"', 'PARTNER+STRATEGY+INVEST', 132, 306441017, '2020-10-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7acf6016ec1ea2904ae0f8f4ac5b7635.jpg', NULL, '2020-10-19 01:56:02', '2020-10-23 00:15:06'),
(9, 'inactive', 'PE \"CREAM MEGA CHEESE\"', 'ХК \"CREAM MEGA CHEESE\"', 'ЧП \"CREAM MEGA CHEESE\"', 'CREAM+MEGA+CHEESE', 135, 303777383, '2020-10-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ca30b9232ecffd1522f4566e7d12d781.jpg', NULL, '2020-10-19 01:57:51', '2020-10-23 00:14:11'),
(10, 'active', '\"OLOY GULZOR SERVIS\" LLC', '\"OLOY GULZOR SERVIS\" MCHJ', 'OOO \"OLOY GULZOR SERVIS\"', 'OLOY GULZOR SERVIS', 148, 302039351, '2020-10-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/091def18f53267208762ae0138d8f858.jpg', NULL, '2020-10-19 01:58:59', '2020-10-19 01:58:59'),
(11, 'active', '\"POLYPACK\" LLC', '\"POLYPACK\" MCHJ', '\"POLYPACK\" OOO', 'POLYPACK', 154, 305213158, '2020-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/850e653ca00cdc222410590a13bc8923.jpg', NULL, '2020-10-19 02:00:17', '2020-10-26 10:00:21'),
(12, 'active', '\"QALDIRGOCH AGROSERVI\"LLC', '\"QALDIRGOCH AGROSERVI\"MCHJ', 'OOO \"QALDIRGOCH AGROSERVI\"', 'QALDIRGOCH AGROSERVI', 139, 304479089, '2020-12-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7d4f27f79ef8b6ea762554bb5441068a.jpg', NULL, '2020-10-19 05:55:52', '2020-10-19 05:55:52'),
(13, 'active', '\"Water Pumps Business\" ОК', '\"Water Pumps Business\" ОК', '\"Water Pumps Business\" ОК', 'Water Pumps Business', 85, 304661354, '2021-01-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/fa85b34e00edfb6922011e0610555bc7.jpg', NULL, '2020-10-19 05:58:22', '2020-10-19 05:58:22'),
(14, 'active', '\"Chelak Tomorqa Xizmat\" LLC', '\"Chelak Tomorqa Xizmat\" MCHJ', 'OOO \"Chelak Tomorqa Xizmat\"', 'Chelak Tomorqa', 34, 305682629, '2021-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1d24e2d65f9471d3a82795022039e7fa.jpg', NULL, '2020-10-19 06:26:26', '2020-11-12 00:59:20'),
(15, 'inactive', '\"Do\'stlik Asl Bog\'i\" Farm', '\"Do\'stlik Asl Bog\'i\" FX', '\"Do\'stlik Asl Bog\'i\" Ферма', 'Do\'stlik+Asl+Bog\'i+FX', 27, 303813346, '2020-03-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7d893f345f95ccb8c3e296cdfe829b2f.jpg', NULL, '2020-10-21 00:06:55', '2020-10-21 00:06:55'),
(16, 'inactive', '\"Furqat Agro Lux\" LLC', '\"Furqat Agro Lux\" MCHJ', '\"Furqat Agro Lux\" ООО', 'Furqat+Agro+Lux+MCHJ', 76, 307124844, '2020-04-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5319d8a8196f9c60ba74b7cd08be28fb.jpg', NULL, '2020-10-21 00:09:18', '2020-10-21 00:12:38'),
(17, 'inactive', '\"SIRDARYA BEANS EXPORT\" LLC', '\"SIRDARYA BEANS EXPORT\" MCHJ', '\"SIRDARYA BEANS EXPORT\" ООО', 'SIRDARYA+BEANS+EXPORT+MCHJ', 83, 304770424, '2020-04-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4b9efa59271ad216786b4ed834139f28.jpg', NULL, '2020-10-21 00:12:22', '2020-10-21 00:12:22'),
(18, 'inactive', '\"OPTIMAL SELXOZ TRADING\" LLC', '\"OPTIMAL SELXOZ TRADING\" MChJ', '\"OPTIMAL SELXOZ TRADING\" ООО', 'OPTIMAL+SELXOZ+TRADING+MChJ', 86, 306446974, '2020-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/19490548b6ef132387a484a84d6a3bae.jpg', NULL, '2020-10-21 00:14:15', '2020-10-21 00:14:15'),
(19, 'inactive', '\"Karimjon Fayz\" LLC', '\"Karimjon Fayz\" MCHJ', '\"Karimjon Fayz\" ООО', 'Karimjon+Fayz+MCHJ', 99, 300860877, '2020-04-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/cf5f974fa600cab55c224e3ae533e10c.jpg', NULL, '2020-10-21 00:18:39', '2020-10-21 00:18:39'),
(20, 'inactive', '\"Nasaf Oltingugurt Kimyo\" LLC', '\"Nasaf Oltingugurt Kimyo\" MCHJ', '\"Nasaf Oltingugurt Kimyo\" ООО', 'Nasaf+Oltingugurt+Kimyo+MCHJ', 117, 303156254, '2020-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/e219b191282eee0d5ee42fa5b140e268.jpg', NULL, '2020-10-21 00:20:38', '2020-10-21 00:20:38'),
(21, 'inactive', '\"KO\'KLAM ZAMIN\" LLC', '\"KO\'KLAM ZAMIN\" MCHJ', '\"KO\'KLAM ZAMIN\" ООО', 'KO\'KLAM+ZAMIN+MCHJ', 120, 305622915, '2020-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/eeae6093a8d70c1aa9d70179d88724dc.jpg', NULL, '2020-10-21 00:23:14', '2020-10-21 00:23:14'),
(22, 'inactive', '\"RAIL-SERVIS-GROUP\" LLC', '\"RAIL-SERVIS-GROUP\" MChJ', 'ООО \"RAIL-SERVIS-GROUP\"', 'RAIL-SERVIS-GROUP+MChJ', 131, 305337873, '2020-04-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/30e0ca347d377456607c62b968ab02ba.jpg', NULL, '2020-10-21 00:25:56', '2020-10-21 00:25:56'),
(23, 'inactive', '\"SURXON AGRO GONG\" LLC', '\"SURXON AGRO GONG\" MCHJ', '\"SURXON AGRO GONG\" OOO', 'SURXON+AGRO+GONG+MCHJ', 146, 305204209, '2020-04-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/3e33c5832b4e2499611b8bf6556a6c88.jpg', NULL, '2020-10-22 04:22:04', '2020-10-22 04:22:04'),
(24, 'inactive', '\"AMADEO AGROTRADE\" LLC', '\"AMADEO AGROTRADE\" MChJ', 'OOO \"AMADEO AGROTRADE\"', 'AMADEO+AGROTRADE+MChJ', 163, 306247336, '2020-04-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a03de5e511e86860f6580f75040d70e0.jpg', NULL, '2020-10-22 04:24:47', '2020-10-22 04:33:14'),
(25, 'inactive', '\"SAAS TEKS INVEST\" LLC', '\"SAAS TEKS INVEST\" MChJ', 'OOO \"SAAS TEKS INVEST\"', 'SAAS+TEKS+INVEST+MChJ', 166, 300569969, '2020-04-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2e5b59ff37a8fa34d1395b86ffa6c0cf.jpg', NULL, '2020-10-22 04:32:50', '2020-10-22 04:32:50'),
(26, 'inactive', '\"ZAVOD TEHMASH\" LLC', '\"ZAVOD TEHMASH\"MCHJ', 'OOO \"ZAVOD TEHMASH\"', 'ZAVOD+TEHMASH+MCHJ', 171, 306068187, '2020-04-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/04c535a2ee5d6a7a6a7c239579faa72d.jpg', NULL, '2020-10-22 04:34:36', '2020-10-22 04:34:36'),
(27, 'inactive', '\"SHORSUV TSEMENT\" LLC', '\"SHORSUV TSEMENT\"MCHJ', 'OOO \"SHORSUV TSEMENT\"', 'SHORSUV+TSEMENT+MCHJ', 29, 302511540, '2020-04-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1c7b149712eee08336f1ace966232d3a.jpg', NULL, '2020-10-22 04:36:16', '2020-10-22 04:36:16'),
(28, 'inactive', '\"Pulat Savdo Grup\" LLC', '\"Pulat Savdo Grup\" MCHJ', '\"Pulat Savdo Grup\" OOO', 'Pulat+Savdo+Grup+MCHJ', 53, 304974615, '2020-05-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/34746fbd6b865814970b5276966e5ef7.jpg', NULL, '2020-10-22 04:39:40', '2020-10-22 04:39:40'),
(29, 'inactive', '\"AGRAF STEEL\" LLC', '\"AGRAF STEEL\" MCHJ', '\"AGRAF STEEL\" OOO', 'AGRAF+STEEL+MCHJ', 56, 306143023, '2020-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/0d51628a53b25787a66b8180d0e56abd.jpg', NULL, '2020-10-22 04:42:58', '2020-10-23 00:49:48'),
(30, 'inactive', '\"DECSTAR\" LLC', '\"DECSTAR\" MCHJ', '\"DECSTAR\" OOO', 'DECSTAR+MCHJ', 61, 305477834, '2020-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/52e0e48c472a25729484eae4bc6ad185.jpg', NULL, '2020-10-22 04:45:25', '2020-10-22 04:45:25'),
(31, 'inactive', '\"Stello Moda\" LLC', '\"Stello Moda\" MCHJ', '\"Stello Moda\" OOO', 'Stello+Moda+MCHJ', 66, 305336337, '2020-05-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/3e0f284b1818d2b2ebbe4e28d39205d4.jpg', NULL, '2020-10-22 04:58:24', '2020-10-22 04:58:24'),
(32, 'inactive', '\"GOLD LUNCH TRADE\" LLC', '\"GOLD LUNCH TRADE\" MCHJ', 'OOO \"GOLD LUNCH TRADE\"', 'GOLD+LUNCH+TRADE', 75, 303051741, '2020-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/589f98a0081c08fe4796199f80b176ca.jpg', NULL, '2020-10-22 05:00:32', '2020-10-22 05:00:32'),
(33, 'inactive', '\"GULISTAN GOLD YARN\" LLC', '\"GULISTAN GOLD YARN\" MCHJ', '\"GULISTAN GOLD YARN\" OOO', 'GULISTAN+GOLD+YARN+MCHJ', 82, 303071772, '2020-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a8528ffbb225f57260d558eb393c65e3.jpg', NULL, '2020-10-23 00:38:31', '2020-10-23 00:38:31'),
(34, 'inactive', '\"AZIA MOZAIK\" LLC', '\"AZIA MOZAIK\" MCHJ', '\"AZIA MOZAIK\" OOO', 'MCHJ+AZIA+MOZAIK', 89, 206219705, '2020-05-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7f18efea77fa97c5de14de6a679c6297.jpg', NULL, '2020-10-23 00:41:59', '2020-10-23 00:41:59'),
(35, 'inactive', '\"Fayz-Вroc\" LLC', '\"Fayz-Вroc\" MCHJ', '\"Fayz-Вroc\" OOO', 'Fayz-Вroc+MCHJ', 98, 306230643, '2020-05-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2735cb29c175a871539064374499ec38.jpg', NULL, '2020-10-23 00:44:35', '2020-10-23 00:44:35'),
(36, 'inactive', '\"MARBLE INDUSTRIY\" PE', '\"MARBLE INDUSTRIY\" X/K', 'ЧП \"MARBLE INDUSTRIY\"', 'MARBLE+INDUSTRIY', 116, 303453240, '2020-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/6645d438512dafb8d0f0e08d9f87e33e.jpg', NULL, '2020-10-23 00:49:08', '2020-10-23 00:49:08'),
(37, 'inactive', '\"BROWN COAL\" PE', 'XK \"BROWN COAL\"', 'ЧП \"BROWN COAL\"', 'BROWN+COAL', 119, 305823009, '2020-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2b072a69730805ad45bd27002c672686.jpg', NULL, '2020-10-23 00:52:33', '2020-10-23 00:52:33'),
(38, 'inactive', '\"QO\'QON GIPS\" LLC', '\"QO\'QON GIPS\" MCHJ', '\"QO\'QON GIPS\" OOO', 'QO\'QON+GIPS+MCHJ', 126, 303974795, '2020-05-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/bf7d1d5dd1448c852f5ee6f2f2955367.jpg', NULL, '2020-10-23 01:22:32', '2020-10-23 01:23:13'),
(39, 'inactive', '\"O\'zbegim\" LLC', '\"O\'zbegim\" MCHJ', '\"O\'zbegim\" OOO', 'O\'zbegim+MCHJ', 78, 306472445, '2020-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5dc0a98c52caa6fa33d5255be641ad0f.jpg', NULL, '2020-10-23 01:24:52', '2020-10-23 01:24:52'),
(40, 'inactive', '\"Pаrlаq Ambalaj\" LLC', '\"Pаrlаq Ambalaj\" MCHJ', '\"Pаrlаq Ambalaj\" OOO', 'Pаrlаq+Ambalaj+MCHJ', 94, 304855017, '2020-06-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/aa2c3f013aafa31ef61778499d877031.jpg', NULL, '2020-10-23 01:26:23', '2020-10-23 01:26:23'),
(41, 'inactive', '\"Ferula Impexs\" LLC', '\"Ferula Impexs\" MCHJ', '\"Ferula Impexs\" OOO', 'Ferula+Impexs+MCHJ', 97, 306143158, '2020-06-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/e2dd3269afd61d4695d793cf86e94edf.jpg', NULL, '2020-10-23 01:33:23', '2020-10-23 01:33:23'),
(42, 'inactive', '\"Capital textile group\" LLC', '\"Capital textile group\"MCHJ', '\"Capital textile group\" OOO', 'Capital+textile+group+MCHJ', 147, 303841684, '2020-06-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d5dd67e4e1162618cc8e2ff5292a1854.jpg', NULL, '2020-10-23 01:35:45', '2020-10-23 01:35:45'),
(43, 'inactive', '\"AXE TECHNOLOGY\" PE', '\"AXE TECHNOLOGY\" XK', '\"AXE TECHNOLOGY\" ЧП', 'AXE+TECHNOLOGY', 153, 302190848, '2020-06-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ae4d318dbdf99ca144f0b7890b92fc6d.jpg', NULL, '2020-10-23 01:58:10', '2020-10-23 01:58:10'),
(44, 'inactive', '\"LATIF-SERS\" LLC', '\"LATIF-SERS\" MCHJ', '\"LATIF-SERS\" OOO', 'LATIF-SERS+MCHJ', 164, 204642127, '2020-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/46a33c0a5b8629db433d397c4e11c6c6.jpg', NULL, '2020-10-23 01:59:43', '2020-10-23 01:59:43'),
(45, 'inactive', '\"SULPAK KOMPUTERS\" LLC', '\"SULPAK KOMPUTERS\" MCHJ', '\"SULPAK KOMPUTERS\" OOO', 'SULPAK+KOMPUTERS+MCHJ', 5, 205713789, '2020-06-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b217be0a2db9a51ceeb773e6d22fc911.jpg', NULL, '2020-10-23 02:02:39', '2020-10-23 02:02:39'),
(46, 'inactive', '\"Sunny Land Export\" LLC', '\"Sunny Land Export\" MCHJ', '\"Sunny Land Export\" OOO', 'Sunny+Land+Export', 32, 307000191, '2020-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/0943862b1056bb2f88da411c527bf69a.jpg', NULL, '2020-10-23 02:04:56', '2020-10-23 02:04:56'),
(47, 'inactive', '\"Evro Asia Metall Group\" LLC', '\"Evro Asia Metall Group\" MCHJ', '\"Evro Asia Metall Group\" OOO', 'Evro+Asia+Metall+Group+MCHJ', 70, 307001934, '2020-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1fea92f6242b7d9c06e656954e77331e.jpg', NULL, '2020-10-23 02:08:11', '2020-10-23 02:08:11'),
(48, 'inactive', '\"Mercury Export Trade\" LLC', '\"Mercury Export Trade\" MCHJ', '\"Mercury Export Trade\" LLC', 'Mercury+Export+Trade', 87, 304668977, '2020-07-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ddb61779d46f0e828162a9d2bf76cc99.jpg', NULL, '2020-10-23 02:11:17', '2020-10-23 02:11:17'),
(49, 'inactive', '\"UMARUSS- GROUP\" LLC', '\"UMARUSS- GROUP\" MCHJ', '\"UMARUSS- GROUP\" OOO', '\"UMARUSS- GROUP\" MCHJ', 110, 306188283, '2020-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ca05039153c2eef68ec56a856091e03f.jpg', NULL, '2020-10-23 02:12:30', '2020-10-23 02:12:30'),
(50, 'inactive', '\"GOLDEN GATE 777\" LLC', '\"GOLDEN GATE 777\" MCHJ', '\"GOLDEN GATE 777\" OOO', 'GOLDEN+GATE+777+МЧЖ', 118, 306170537, '2020-07-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ca46241846c413f0a4defe78eccf7e22.jpg', NULL, '2020-10-23 04:27:59', '2020-10-23 04:28:40'),
(51, 'inactive', '\"Quyichirchiq Agro Biznes\" LLC', '\"Quyichirchiq Agro Biznes\" MCHJ', '\"Quyichirchiq Agro Biznes\" OOO', 'Quyichirchiq+Agro+Biznes+MCHJ', 101, 303516920, '2020-08-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b38ad873018f28dcf00a22c4739b7a61.jpg', NULL, '2020-10-23 04:29:57', '2020-10-23 04:29:57'),
(52, 'inactive', '\"STELLA FASHION\" LLC', '\"STELLA FASHION\" MCHJ', '\"STELLA FASHION\" OOO', '\"STELLA FASHION\" MCHJ', 148, 306525489, '2020-08-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/e3466942f030601fe5cb47b73c72d582.jpg', NULL, '2020-10-23 04:31:15', '2020-10-23 04:31:15'),
(53, 'inactive', '\"TEKISTIL SANOAT\" LLC', '\"TEKISTIL SANOAT\" MCHJ', '\"TEKISTIL SANOAT\" OOO', 'TEKISTIL+SANOAT+MCHJ', 167, 305650525, '2020-08-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/67d4c0a7d38e4d872e03c968d93fa2f1.jpg', NULL, '2020-10-23 04:52:05', '2020-10-23 04:52:05'),
(54, 'inactive', '\"NAZEEF\" LLC', 'ООО \"NAZEEF\"', '\"NAZEEF\" OOO', 'NAZEEF', 178, 305125464, '2020-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/82aea1c2e05dd0320ee6cf4ffc4bdbc3.jpg', NULL, '2020-10-23 04:53:45', '2020-10-23 04:53:45'),
(55, 'inactive', '\"GARDEN HOUSE\" LLC', '\"GARDEN HOUSE\" MCHJ', '\"GARDEN HOUSE\" OOO', 'GARDEN+HOUSE', 50, 304974613, '2020-09-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/69339e32bf4bef8d934fe8adecf2bac5.jpg', NULL, '2020-10-23 04:55:56', '2020-10-23 04:55:56'),
(56, 'inactive', '\"STRONG-STEP TRADE\" LLC', '\"STRONG-STEP TRADE\" MCHJ', '\"STRONG-STEP TRADE\" OOO', 'STRONG-STEP+TRADE', 51, 306497477, '2020-09-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1a2a8a444ff47a19b80338c52611cfca.jpg', NULL, '2020-10-24 05:34:08', '2020-10-24 05:34:08'),
(57, 'inactive', '\"Saff Textile\" LLC', '\"Saff Textile\" MCHJ', '\"Saff Textile\" OOO', '\"Saff Textile\" MCHJ', 64, 301530313, '2020-09-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b3e59418321e90a3b3a7ae12a02fd89f.jpg', NULL, '2020-10-24 05:35:09', '2020-10-24 05:37:04'),
(58, 'inactive', '\"Red Pack\" LLC', '\"Red Pack\" MCHJ', '\"Red Pack\" OOO', 'Red+Pack', 80, 303078106, '2020-09-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/888452b1008eacdc6dbc5cffbc96ef0f.jpg', NULL, '2020-10-24 05:36:36', '2020-10-24 05:36:36'),
(59, 'inactive', '\"SARDOR EXPORT IMPEX\" LLC', '\"SARDOR EXPORT IMPEX\" MCHJ', '\"SARDOR EXPORT IMPEX\" OOO', 'SARDOR+EXPORT+IMPEX+LLC', 93, 303810248, '2020-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4b51f5d272fe61b54d192284fbc9ae0a.jpg', NULL, '2020-10-24 05:38:35', '2020-10-24 05:38:35'),
(60, 'inactive', '\"YANGIYER FLOUR TRADING\" LLC', '\"YANGIYER FLOUR TRADING\" MCHJ', '\"YANGIYER FLOUR TRADING\" OOO', 'YANGIYER+FLOUR+TRADING', 102, 306631190, '2020-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/be428fddeb886921e5f8b263e49d64da.jpg', NULL, '2020-10-24 05:39:42', '2020-10-24 05:39:42'),
(61, 'inactive', '\"EVROTEX\" LLC', '\"EVROTEX\" MCHJ', '\"EVROTEX\" OOO', 'EVROTEX+MCHJ', 108, 307159190, '2020-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/0a585250942361a7cbd49a3d1d844361.jpg', NULL, '2020-10-24 05:42:13', '2020-10-24 05:42:13'),
(62, 'inactive', '\"GAZ ISSITMA JIHOZLARI\" PE', '\"GAZ ISSITMA JIHOZLARI\"  XK', '\"GAZ ISSITMA JIHOZLARI\"  ЧП', 'GAZ+ISSITMA+JIHOZLARI+XK', 114, 304931642, '2020-09-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a8433b3d64c18b34e90d21f47e389911.jpg', NULL, '2020-10-24 05:57:18', '2020-10-24 05:57:18'),
(63, 'inactive', '\"TOP GREEN IMPEX\" LLC', '\"TOP GREEN IMPEX\" MCHJ', '\"TOP GREEN IMPEX\" OOO', 'TOP+GREEN+IMPEX\"', 169, 306699408, '2020-09-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1679fefdc2a3fbf36444f676fbef95d4.jpg', NULL, '2020-10-24 05:59:44', '2020-10-24 05:59:44'),
(64, 'inactive', '\"BABY TOYS GARDEN\" LLC', '\"BABY TOYS GARDEN\" MCHJ', '\"BABY TOYS GARDEN\" OOO', 'BABY+TOYS+GARDEN+LLC', 13, 301757211, '2020-09-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/154acade5e41a3b0b7d72cc1a9b7c8ca.jpg', NULL, '2020-10-24 06:04:42', '2020-10-24 06:04:42'),
(65, 'inactive', '\"OLTINSOY BOG`DORCHILIK UZUMCHILIK VA AGROSANOAT\" LLC', '\"OLTINSOY BOG`DORCHILIK UZUMCHILIK VA AGROSANOAT\" MCHJ', '\"OLTINSOY BOG`DORCHILIK UZUMCHILIK VA AGROSANOAT\" OOO', 'OLTINSOY+BOG+DORCHILIK+UZUMCHILIK+VA+AGROSANOAT', 28, 306060515, '2020-09-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5287ebc8f7ad4f8c39c1c92f9af5fa2a.jpg', NULL, '2020-10-24 06:30:32', '2020-10-24 06:30:32'),
(66, 'inactive', '\"KARVON PRESTIJ\" LLC', '\"KARVON PRESTIJ\" MCHJ', '\"KARVON PRESTIJ\" OOO', 'KARVON+PRESTIJ', 177, 301435177, '2020-09-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/897a5459060d4b9ae5200e82a8ce9c84.jpg', NULL, '2020-10-24 06:33:54', '2020-10-24 06:33:54'),
(67, 'inactive', '\"ECOCLIMAT\" LLC', '\"ECOCLIMAT\"MCHJ', '\"ECOCLIMAT\" OOO', 'ECOCLIMAT', 26, 303296895, '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/f248696813153a36498ac6ace361a3ac.jpg', NULL, '2020-10-24 06:37:36', '2020-10-24 06:37:36'),
(68, 'inactive', '\"ARK Logistics\" LLC', '\"ARK Logistics\" MCHJ', '\"ARK Logistics\" OOO', 'ARK+Logistics', 95, 303260213, '2020-09-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a61160749259dd0bab5c7686f11ccb7b.jpg', NULL, '2020-10-24 06:42:27', '2020-10-24 06:42:27'),
(69, 'inactive', '\"Super Milk Prident\" LLC', '\"Super Milk Prident\" MCHJ', '\"Super Milk Prident\" OOO', 'Super+Milk+Prident+MCHJ', 47, 303049458, '2020-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/cf5441edd206fad40e8db95c550dfdaa.jpg', NULL, '2020-10-26 09:34:01', '2020-10-26 09:34:01'),
(70, 'inactive', '\"Indigo Garments\" LLC', '\"Indigo Garments\" MCHJ', '\"Indigo Garments\" OOO', 'Indigo+Garments+MCHJ', 48, 304045454, '2020-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/94d65a9695614593ab256cfc9b5b7998.jpg', NULL, '2020-10-26 09:35:06', '2020-10-26 09:35:06'),
(71, 'inactive', '\"Suqoq Tluboy\" FARM', '\"Suqoq Tluboy\" FX', '\"Suqoq Tluboy\" ФЕРМА', 'Suqoq+Tluboy+FX', 62, 304099094, '2020-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2ebfefcebdbfa2706faa2190664a20d5.jpg', NULL, '2020-10-26 09:37:46', '2020-10-26 09:37:46'),
(72, 'inactive', '\"BIO LIQUORICE EXTRACT\" LLC', '\"BIO LIQUORICE EXTRACT\" MCHJ', '\"BIO LIQUORICE EXTRACT\" OOO', 'BIO+LIQUORICE+EXTRACT', 55, 304771114, '2020-10-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2541984033aff2c775b463cf141e0c37.jpg', NULL, '2020-10-26 09:38:51', '2020-10-26 09:38:51'),
(73, 'inactive', '\"Capital Broktex Group\" LLC', '\"Capital Broktex Group\" MCHJ', '\"Capital Broktex Group\" OOO', 'Capital+Broktex+Group+MCHJ', 73, 303398064, '2020-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/e923d4f8a27b15dca476a57acaa406b8.jpg', NULL, '2020-10-26 09:39:47', '2020-10-26 09:39:47'),
(74, 'inactive', '\"DON MIKS\" LLC', '\"DON MIKS\" MCHJ', '\"DON MIKS\" OOO', 'DON+MIKS+MCHJ', 77, 302809975, '2020-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7124e1ed0dc7fb811c70ee538181058a.jpg', NULL, '2020-10-26 09:41:20', '2020-10-26 09:41:20'),
(75, 'inactive', '\"Forward Trans Terminals\" LLC', '\"Forward Trans Terminals\" MCHJ', '\"Forward Trans Terminals\" OOO', 'Forward+Trans+Terminals+MCHJ', 84, 302842114, '2020-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/79c1914b8b54f3d8b988c296fcfe3202.jpg', NULL, '2020-10-26 09:43:17', '2020-10-26 09:43:17'),
(76, 'inactive', '\"Wellex Agro\" LLC', '\"Wellex Agro\" MCHJ', '\"Wellex Agro\" OOO', 'Wellex+Agro+MCHJ', 88, 306083652, '2020-10-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/70ad18f252697d30048e0b098cec4941.jpg', NULL, '2020-10-26 09:45:28', '2020-10-26 09:45:28'),
(79, 'inactive', 'GOLD DRIED FRUITS EXPORT\" LLC', 'GOLD DRIED FRUITS EXPORT\" MCHJ', 'GOLD DRIED FRUITS EXPORT\" OOO', 'GOLD+DRIED+FRUITS+EXPORT', 123, 303932894, '2020-10-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d5377c60fd31ad8ad2cd186f53187679.jpg', NULL, '2020-10-26 09:53:02', '2020-10-26 09:53:02'),
(82, 'inactive', '\"RABO-TEXTIL\" LLC', '\"RABO-TEXTIL\" MCHJ', '\"RABO-TEXTIL\" OOO', 'RABO-TEXTIL+MCHJ', 125, 305696049, '2020-10-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9cfb293654f53656cadfe2fee93f7ea1.jpg', NULL, '2020-10-26 09:56:22', '2020-10-26 09:56:22'),
(84, 'active', '\"Green Desert\" LLC', '\"Green Desert\" MCHJ', '\"Green Desert\" OOO', 'Green+Desert+MCHJ', 72, 304693282, '2021-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/16943319ed37ae28881bfbe90e179155.jpg', NULL, '2020-10-26 10:02:23', '2020-10-26 10:27:03'),
(85, 'active', '\"AGROTEHMINERAL TRADING\" LLC', '\"AGROTEHMINERAL TRADING\" MCHJ', '\"AGROTEHMINERAL TRADING\" OOO', 'AGROTEHMINERAL+TRADING+MCHJ', 49, 303296896, '2021-02-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/c7af57a06e889ad3d7ec58f312da575a.jpg', NULL, '2020-10-26 10:04:24', '2020-10-26 10:26:51'),
(86, 'active', '\"Osborn Textille\" LLC', '\"Osborn Textille\" MCHJ', '\"Osborn Textille\" OOO', 'Osborn+Textille+MCHJ', 42, 206939506, '2021-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2cb3834ae13a6c2427f97689198d311b.jpg', NULL, '2020-10-26 10:05:30', '2020-10-26 10:26:40'),
(87, 'active', '\"UNIVERSAL ART TEXTILE\" LLC', '\"UNIVERSAL ART TEXTILE\" MCHJ', '\"UNIVERSAL ART TEXTILE\" OOO', 'UNIVERSAL+ART+TEXTILE', 106, 303614260, '2021-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/df35517ccd8be0c688e58ff6702008ef.jpg', NULL, '2020-10-26 10:08:07', '2020-10-26 10:26:29'),
(88, 'active', '\"YANGI HAYOT IMPEKS\" PE', '\"YANGI HAYOT IMPEKS\" ХК', '\"YANGI HAYOT IMPEKS\" ЧП', 'YANGI +AYOT+IMPEKS+ХК', 165, 305814723, '2021-03-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/676345faa1ff49f278e8d1abe4823b95.jpg', NULL, '2020-10-26 10:10:12', '2020-10-26 10:26:20'),
(89, 'active', '\"Algoritm Plastik\" LLC', '\"Algoritm Plastik\" MCHJ', '\"Algoritm Plastik\" OOO', 'Algoritm+Plastik+MCHJ', 54, 301441487, '2021-04-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/bc2738c35ac6b02dbd3423da21ca2ef7.jpg', NULL, '2020-10-26 10:12:25', '2020-10-26 10:26:06'),
(90, 'active', '\"Daza Foods\" LLC', '\"Daza Foods\" MCHJ', '\"Daza Foods\" OOO', 'Daza+Foods+MCHJ', 65, 304182562, '2021-04-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/128b4a83f559cb890f96fe831cc0a663.jpg', NULL, '2020-10-26 10:14:12', '2020-10-26 10:25:35'),
(91, 'active', '\"CELEBRITY STYLE\"  LLC', '\"CELEBRITY STYLE\" MCHJ', '\"CELEBRITY STYLE\" OOO', 'CELEBRITY+STYLE+MCHJ', 68, 303290019, '2021-04-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/30cd963ad61963094022cd11f11d13cd.jpg', NULL, '2020-10-26 10:15:45', '2020-10-26 10:25:21'),
(92, 'active', '\"AGRO HOUSE TRADING\" MCHJ', '\"AGRO HOUSE TRADING\" MCHJ', '\"AGRO HOUSE TRADING\" MCHJ', 'AGRO+HOUSE+TRADING', 115, 305142230, '2021-04-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/108cf6ccfe8cc0e3c1356afbdc0f76d9.jpg', NULL, '2020-10-26 10:20:09', '2020-10-26 10:30:16'),
(93, 'active', '\"HAYAT COSMETIC\" LLC', '\"HAYAT COSMETIC\" MCHJ', '\"HAYAT COSMETIC\" OOO', 'HAYAT+COSMETIC+MCHJ', 129, 301249899, '2021-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/988e6fe02b55f27659d31a6c06441da1.jpg', NULL, '2020-10-26 10:23:09', '2020-10-26 10:24:55'),
(94, 'inactive', '\"SATTOR-K\" LLC', '\"SATTOR-K\" MCHJ', '\"SATTOR-K\" OOO', 'SATTOR-K+MCHJ', 136, 202978722, '2021-04-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9444f4280d8de26a91dffaa4158fa0d1.jpg', NULL, '2020-10-26 10:24:37', '2020-11-12 23:47:10'),
(95, 'active', '\"ALVIERO\" LLC', '\"ALVIERO\" MCHJ', '\"ALVIERO\" OOO', 'ALVIERO+MCHJ', 143, 203697731, '2021-04-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ca3500ea39c205c50010e1075819916a.jpg', NULL, '2020-10-26 10:28:29', '2020-10-26 10:29:59'),
(96, 'active', '\"UZ-SEGANG\" LLC', '\"UZ-SEGANG\" MCHJ', '\"UZ-SEGANG\" OOO', 'UZ-SEGANG', 176, 305514162, '2021-04-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/88a08dae3fb1cb07c2879387ba37533d.jpg', NULL, '2020-10-26 10:29:38', '2020-10-26 10:29:38'),
(97, 'active', '\"HONEST BUSINESS PLANET\" LLC', '\"HONEST BUSINESS PLANET\" MCHJ', '\"HONEST BUSINESS PLANET\" OOO', 'HONEST+BUSINESS+PLANET', 105, 305350559, '2021-05-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9b00ee514c576248c00ef529a5eaed74.jpg', NULL, '2020-10-26 10:31:27', '2020-10-26 10:31:27'),
(98, 'active', '\"Turon Impeks Buxoro\" LLC', '\"Turon Impeks Buxoro\" MCHJ', '\"Turon Impeks Buxoro\" OOO', 'Turon+Impeks+Buxoro', 140, 306456678, '2021-05-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b398fbdd39387a9caf8cf8a664fe7b68.jpg', NULL, '2020-10-26 10:32:46', '2020-10-26 10:32:46'),
(99, 'inactive', '\"SO\'QOQ TALAPBOY\" FARM', '\"SO\'QOQ TALAPBOY\" FX', '\"SO\'QOQ TALAPBOY\" ФЕРМА', 'SO\'QOQ+TALAPBOY+FX', 62, 304099094, '2020-10-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/28179ae11438378529ae7e826ec57786.jpg', NULL, '2020-11-12 01:06:13', '2020-11-12 01:06:13'),
(100, 'inactive', '\"AGRO POP\" LLC', '\"AGRO POP\" MCHJ', '\"AGRO POP\" OOO', 'AGRO+POP+MCHJ', 179, 305109182, '2020-05-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/804a2b57e7454824faf65c10e4f10822.jpg', NULL, '2020-11-12 23:59:32', '2020-11-12 23:59:32'),
(101, 'inactive', '\"BEST SELLER\" LLC', '\"BEST SELLER\" MCHJ', '\"BEST SELLER\" OOO', 'BEST+SELLER+MCHJ', 183, 306024376, '2020-01-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/169c5b82dfe30fa2c2b91b7b1bc54bbf.jpg', NULL, '2020-11-13 00:02:39', '2020-11-13 00:02:39'),
(102, 'inactive', '\"BARBICAN LOGISTICS\" LLC', '\"BARBICAN LOGISTICS\" MCHJ', '\"BARBICAN LOGISTICS\" OOO', 'BARBICAN+LOGISTICS+МЧЖ', 186, 207197608, '2020-08-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/fd814da98b7ebe0709b77f08f7f04d85.jpg', NULL, '2020-11-13 00:15:29', '2020-11-13 00:15:29'),
(103, 'inactive', '\"TEMSANAIR\" LLC', '\"TEMSANAIR\" MCHJ', '\"TEMSANAIR\" OOO', 'OOO+TEMSANAIR', 187, 304943990, '2020-10-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4a26c07b1f2c18bdb74f83ed3bbc6fac.jpg', NULL, '2020-11-13 00:17:52', '2020-11-13 00:17:52'),
(104, 'inactive', 'Abduraxmanov+Adxam+Akramovich', 'Abduraxmanov Adxam Akramovich', 'Abduraxmanov Adxam Akramovich', 'Abduraxmanov+Adxam+Akramovich', 188, 504136184, '2020-11-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9e9b7675718403978ff867f8e4284fce.jpg', NULL, '2020-11-13 00:30:39', '2020-11-13 00:30:39'),
(105, 'inactive', '\"G\'OLIB MEGA EXSPORT\" LLC', '\"G\'OLIB MEGA EXSPORT\" MCHJ', '\"G\'OLIB MEGA EXSPORT\" OOO', 'G\'OLIB+MEGA+EXSPOR+ MCHJ', 189, 201357664, '2021-05-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/87c32c3acb532200ea5b0eac751da577.jpg', NULL, '2020-11-13 00:41:46', '2020-11-13 00:41:46'),
(106, 'inactive', '\"BUNYOT MAMANOB\" LLC', '\"BUNYOT MAMANOB\" MCHJ', '\"BUNYOT MAMANOB\" OOO', 'BUNYOT+MAMANOB+MCHJ', 191, 200746008, '2020-11-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/99867d6cad945b1e3636cf5044ca0f5f.jpg', NULL, '2020-11-13 00:45:48', '2020-11-13 00:45:48'),
(107, 'inactive', '\"GRUP IMPEKS TEKISTIL\"MCHJ', '\"GRUP IMPEKS TEKISTIL\"MCHJ', '\"GRUP IMPEKS TEKISTIL\"MCHJ', '\"GRUP IMPEKS TEKISTIL\"MCHJ', 192, 302514694, '2020-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/955ec1e26615ba9a22c2a89f38285ef2.jpg', NULL, '2020-11-13 00:46:22', '2020-11-13 00:46:22'),
(108, 'inactive', '\"EURO PRINT KOKAND\" LLC', '\"EURO PRINT KOKAND\" MCHJ', '\"EURO PRINT KOKAND\" OOO', 'EURO+PRINT+KOKAND+МЧЖ', 193, 301678745, '2020-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2d90c13e4d2c7447e592d7412d51cb46.jpg', NULL, '2020-11-13 00:48:14', '2020-11-13 00:48:56'),
(109, 'active', '\"SAVDOENERGO\" JSC', '\"SAVDOENERGO\" AJ', '\"SAVDOENERGO\" AO', 'AO+SAVDOENERGO\"', 195, 201054987, '2021-03-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/263581ae92d260ff7cf32fa1bcdc9650.jpg', NULL, '2020-11-13 00:57:30', '2020-11-13 01:31:57'),
(110, 'inactive', '\"ORIENTMAX TRADE\" LLC', '\"ORIENTMAX TRADE\" MCHJ', '\"ORIENTMAX TRADE\" OOO', 'МЧЖ+ORIENTMAX+TRADE', 197, 301742659, '2020-08-14', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/608ac5b971072c488bc842744f2bea39.jpg', NULL, '2020-11-13 01:00:04', '2020-11-13 01:00:04'),
(111, 'inactive', '\"TEKISTIL LIBOS\" LLC', '\"TEKISTIL LIBOS\" MCHJ', '\"TEKISTIL LIBOS\" OOO', 'TEKISTIL+LIBOS+MCHJ', 199, 300859686, '2020-09-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4cf280fb3e7b43946c807b6a2e6e21d7.jpg', NULL, '2020-11-13 01:20:00', '2020-11-13 01:20:00'),
(112, 'inactive', '\"OYDIN OXUNOVA\" PE', '\"OYDIN OXUNOVA\" XK', '\"OYDIN OXUNOVA\" ЧП', 'OYDIN+OXUNOV+XK', 203, 301762966, '2020-05-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ffc67648b1e53acd946b2c36af62cdbb.jpg', NULL, '2020-11-13 01:22:46', '2020-11-13 01:22:46'),
(113, 'inactive', '\"OMAD-111\"MCHJ', '\"OMAD-111\"MCHJ', '\"OMAD-111\"MCHJ', 'OMAD-111+MCHJ', 208, 203693856, '2020-05-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/bdb08824a210cf96fe5eaf05a2f29b93.jpg', NULL, '2020-11-13 01:23:44', '2020-11-13 01:23:44'),
(114, 'inactive', '\"CARBON LTD\" LLC', '\"CARBON LTD\" MCHJ', '\"CARBON LTD\" OOO', 'CARBON LTD+MCHJ', 210, 201599428, '2020-07-03', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/e6ece814c4b6344dc2a6793cabd29349.jpg', NULL, '2020-11-13 01:30:15', '2020-11-13 01:30:15'),
(115, 'active', '\"AIKO RATTAN\"  LLC', '\"AIKO RATTAN\" MCHJ', '\"AIKO RATTAN\" OOO', 'AIKO+RATTAN+MCHJ', 213, 305036780, '2021-06-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/caf13dcb902da6d02794628f0cb8d8cf.jpg', NULL, '2020-11-13 01:31:31', '2020-11-13 01:31:31'),
(116, 'active', '\"YOUNUS LTD\" LLC', '\"YOUNUS LTD\" MCHJ', '\"YOUNUS LTD\" OOO', 'YOUNUS+LTD', 214, 202178143, '2021-01-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/038f921042a53653def705a6c63c9797.jpg', NULL, '2020-11-13 01:34:08', '2020-11-13 01:34:08'),
(117, 'inactive', '\"CHIRCHIQ STMK 1\" LLC', '\"CHIRCHIQ STMK 1\" MCHJ', '\"CHIRCHIQ STMK 1\" OOO', 'ООО+CHIRCHIQ+STMK+1', 215, 305636802, '2020-08-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/78d50ea6ccdea93d7887e21553042e2e.jpg', NULL, '2020-11-13 01:35:29', '2020-11-13 01:35:29'),
(118, 'inactive', '\"YAKKABOG` SAMARQANQ ZAMIN EXPORT\" LLC', '\"YAKKABOG` SAMARQANQ ZAMIN EXPORT\" MCHJ', '\"YAKKABOG` SAMARQANQ ZAMIN EXPORT\" OOO', 'YAKKABOG+SAMARQANQ+ZAMIN+EXPORT+MCHJ', 216, 307242453, '2020-09-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1b10283b5e6ee65d8d43d73a7fa2da8d.jpg', NULL, '2020-11-13 01:43:55', '2020-11-13 01:43:55'),
(119, 'inactive', '\"UTENIYAZOV TAJATDIN\" FARM', '\"UTENIYAZOV TAJATDIN\" ФХ', '\"UTENIYAZOV TAJATDIN\" ФЕРМА', 'ФХ+UTENIYAZOV+TAJATDIN', 217, 207248653, '2020-07-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/92d760380e245234386e52f77fa44239.jpg', NULL, '2020-11-13 01:46:54', '2020-11-13 01:46:54'),
(120, 'inactive', '\"ALIBEK FARG`ONA MEVALARI\"', '\"ALIBEK FARG`ONA MEVALARI\" MCHJ', '\"ALIBEK FARG`ONA MEVALARI\" OOO', 'ALIBEK+FARG\'ONA+MEVALARI+MCHJ', 218, 307448045, '2020-08-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2f40d57ce0609ff201f534205cb70bd7.jpg', NULL, '2020-11-13 03:53:44', '2020-11-13 03:53:44'),
(121, 'inactive', '\"WONDER SALES\" LLC', '\"WONDER SALES\" MCHJ', '\"WONDER SALES\" OOO', 'WONDER SALES+MCHJ', 220, 306952551, '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/0fb6a814e409bb09bac2b44622a7b546.jpg', NULL, '2020-11-13 03:54:53', '2020-11-13 03:54:53'),
(122, 'active', '\"BUXORO BUYUK SAVDO\" LLC', '\"BUXORO BUYUK SAVDO\" MCHJ', '\"BUXORO BUYUK SAVDO\" OOO', 'BUXORO+BUYUK+SAVDO+MCHJ', 221, 303756702, '2021-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/6b5a3b1d239c1fe66dadd0d65a9e2b41.jpg', NULL, '2020-11-13 03:58:01', '2020-11-13 03:58:01'),
(123, 'inactive', '\"MUSTAQILLIK MUVAFAQIYATI\" MCHJ', '\"MUSTAQILLIK MUVAFAQIYATI\" MCHJ', '\"MUSTAQILLIK MUVAFAQIYATI\" MCHJ', '\"MUSTAQILLIK MUVAFAQIYATI\" MCHJ', 222, 204810234, '2020-06-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/0d48292e1d0bd82a70278b70f74f9dfb.jpg', NULL, '2020-11-13 03:59:25', '2020-11-13 03:59:25'),
(124, 'inactive', '\"G\'IJDIVON PROGRESS\" LLC', '\"G\'IJDIVON PROGRESS\" MCHJ', '\"G\'IJDIVON PROGRESS\" OOO', 'G\'IJDIVON+PROGRESS+MCHJ', 223, 303794079, '2020-07-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5a5fd011a48c58768f5aef97161be1fb.jpg', NULL, '2020-11-13 04:03:38', '2020-11-13 04:03:38'),
(125, 'inactive', '\"DO\'STLIK OMAD BARAKA FAYZ\" LLC', '\"DO\'STLIK OMAD BARAKA FAYZ\" MCHJ', '\"DO\'STLIK OMAD BARAKA FAYZ\" ООО', 'ООО+DO\'STLIK+OMAD+BARAKA+FAYZ', 224, 305787987, '2020-07-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/fadafc17c35a4d322b55a52a2615531b.jpg', NULL, '2020-11-13 04:18:19', '2020-11-13 04:18:19'),
(126, 'active', '\"EKO BON\" MCHJ', '\"EKO BON\" MCHJ', '\"EKO BON\" MCHJ', '\"EKO BON\" MCHJ', 227, 307309329, '2024-08-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ec3b315482df6e09359b262e72fa57ed.jpg', NULL, '2020-11-13 04:28:38', '2020-11-13 04:28:38'),
(127, 'inactive', '\"AZIYA BIZNES HOUSE\" LLC', '\"AZIYA BIZNES HOUSE\" MCHJ', '\"AZIYA BIZNES HOUSE\" OOO', 'AZIYA+BIZNES+HOUSE+MCHJ', 230, 305763946, '2020-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a9122b1e18214f9fc3fc3c82241c0d0d.jpg', NULL, '2020-11-13 04:31:40', '2020-11-13 04:31:40'),
(128, 'active', '\"AZALEA GARMENT\" LLC', '\"AZALEA GARMENT\"  MCHJ', '\"AZALEA GARMENT\" OOO', 'AZALEA+GARMENT', 233, 207165615, '2020-06-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b7a36d4856e559637d5c1725c8648be6.jpg', NULL, '2020-11-13 04:33:06', '2020-11-13 04:33:06'),
(129, 'inactive', '\"UYCHI PARANDA\" LLC', '\"UYCHI PARANDA\" MCHJ', '\"UYCHI PARANDA\" OOO', 'UYCHI+PARANDA', 235, 200101367, '2020-09-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a03c0b9a750eb6574d1844f6e96652bc.jpg', NULL, '2020-11-13 04:38:55', '2020-11-13 04:38:55'),
(130, 'active', '\"EVEREST IMPEX PLUS\" LLC', '\"EVEREST IMPEX PLUS\" MCHJ', '\"EVEREST IMPEX PLUS\" OOO', 'MCHJ+EVEREST+IMPEX+PLUS\"', 236, 302034636, '2021-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/59206ea802f005f381cdb4a40f0212da.jpg', NULL, '2020-11-13 04:40:39', '2020-11-13 04:40:39'),
(131, 'inactive', '\"NAVOIY -AVTOSAVDO\" LLC', '\"NAVOIY -AVTOSAVDO\" MCHJ', '\"NAVOIY -AVTOSAVDO\" OOO', 'NAVOIY+AVTOSAVDO', 237, 205706614, '2020-07-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/182b3f99ee4b9043be7fe58497a677c0.jpg', NULL, '2020-11-13 04:42:50', '2020-11-13 05:00:29'),
(132, 'inactive', '\"TEMURBEK  QUALITY  SERVICES\" LLC', '\"TEMURBEK  QUALITY  SERVICES\" MCHJ', '\"TEMURBEK  QUALITY  SERVICES\" OOO', 'TEMURBEK +QUALITY +SERVICES+MCHJ', 240, 605826914, '2020-07-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/44627ee09bf253ec239afdf36cf593f7.jpg', NULL, '2020-11-13 04:59:29', '2020-11-13 05:00:17'),
(133, 'inactive', '\"KONIMEX AGRO IMPEX\" LLC', '\"KONIMEX AGRO IMPEX\" MCHJ', '\"KONIMEX AGRO IMPEX\" OOO', 'KONIMEX+AGRO+IMPEX+MCHJ', 241, 307469368, '2020-06-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/3d2d66ab68e2cdec09ddd7ca4155d9ce.jpg', NULL, '2020-11-13 05:02:08', '2020-11-13 05:02:08'),
(134, 'inactive', '\"LEAD AGRICULTURE DEWELOPMENT\" LLC', '\"LEAD AGRICULTURE DEWELOPMENT\" MCHJ', '\"LEAD AGRICULTURE DEWELOPMENT\" OOO', 'LEAD+AGRICULTURE+DEWELOPMENT+LLC', 242, 302220294, '2020-07-17', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/bd61d8bdbf4567921b72c120719e7b34.jpg', NULL, '2020-11-13 05:23:55', '2020-11-13 05:23:55'),
(135, 'inactive', '\"EXTRA STANDART OIL\" LLC', '\"EXTRA STANDART OIL\" MCHJ', '\"EXTRA STANDART OIL\" OOO', 'EXTRA+STANDART+OIL+MCHJ', 243, 207171664, '2020-06-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/fae55329069590593f09f23ccf22ca3b.jpg', NULL, '2020-11-13 23:32:19', '2020-11-13 23:32:19'),
(136, 'active', '\"BILLUR ENTERPRISE\" PE', '\"BILLUR ENTERPRISE\" XK', '\"BILLUR ENTERPRISE\" ЧП', 'BILLUR+ENTERPRISE+XK', 245, 301741335, '2020-11-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/634b2f4ade8b14332882ad6965be9e13.jpg', NULL, '2020-11-13 23:35:35', '2020-11-13 23:35:35'),
(137, 'active', '\"HONGYUNDA CO., LTD.\" REPRESENTATIVE OFFICE', '\"HONGYUNDA CO., LTD.\" VAKOLATXONASI', '\"HONGYUNDA CO., LTD.\" ПРЕДСТАВИТЕЛЬСТВО', 'HONGYUNDA+CO+LTD+VAKOLATXONASI', 247, 207258919, '2021-02-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/0f87c15576e4ca5c5ac721ca96763b7d.jpg', NULL, '2020-11-13 23:42:23', '2020-11-13 23:42:23'),
(138, 'inactive', '\"TRIUMF GORNYAK\" LLC', '\"TRIUMF GORNYAK\" MCHJ', '\"TRIUMF GORNYAK\" ООО', '\"TRIUMF GORNYAK\" MCHJ', 249, 206202782, '2020-07-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5bb93a0e9ade2cb102e4c5e1c96ce891.jpg', NULL, '2020-11-13 23:45:42', '2020-11-13 23:45:42'),
(139, 'inactive', '\"STROY KARAT\" LLC', '\"STROY KARAT\" MCHJ', '\"STROY KARAT\" OOO', 'STROY+KARAT+MCHJ', 250, 304867967, '2020-08-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/dda117d723cd0b3a734190a0e7074462.jpg', NULL, '2020-11-13 23:47:20', '2020-11-13 23:47:20'),
(140, 'inactive', '\"MOST GOAL GROUP\" LLC', '\"MOST GOAL GROUP\" MCHJ', '\"MOST GOAL GROUP\" OOO', 'MOST+GOAL+GROUP+МЧЖ', 252, 307103159, '2020-08-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ed37277c78e2d087b47472dc5377fa48.jpg', NULL, '2020-11-13 23:55:10', '2020-11-13 23:55:25'),
(141, 'inactive', '\"TAVOIS AGRAMIR EXPORT\" LLC', '\"TAVOIS AGRAMIR EXPORT\" MCHJ', '\"TAVOIS AGRAMIR EXPORT\" OOO', 'TAVOIS+AGRAMIR+EXPORT+MCHJ', 523, 0, '2020-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/dee97c1d4ea2916f512617181e102277.jpg', NULL, '2020-11-15 06:19:22', '2020-11-15 06:19:22'),
(142, 'inactive', '\"CHIRYAK EXPO\" LLC', '\"CHIRYAK EXPO\" MCHJ', '\"CHIRYAK EXPO\" OOO', 'CHIRYAK+EXPO+MCHJ', 254, 307477929, '2020-06-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/aeb0e00b9ec0db85827b5347adc1df22.jpg', NULL, '2020-11-15 06:20:20', '2020-11-15 06:20:20'),
(143, 'inactive', '\"SEVARABONU\" MCHJ', '\"SEVARABONU\" MCHJ', '\"SEVARABONU\" MCHJ', '\"SEVARABONU\" MCHJ', 263, 304990508, '2020-07-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1c4537ecd940bfdcbee53510bc309de7.jpg', NULL, '2020-11-15 06:21:08', '2020-11-15 06:21:08'),
(144, 'inactive', '\"FSB EXPORT\" LLC', '\"FSB EXPORT\" MCHJ', '\"FSB EXPORT\" OOO', 'FSB+EXPORT+MCHJ', 264, 305464130, '2020-07-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9e7e1d86ba3729f7aa1cb17a3bc63f00.jpg', NULL, '2020-11-15 06:22:31', '2020-11-15 06:22:31'),
(145, 'inactive', '«ACCURATE TRADE» LLC', '«ACCURATE TRADE» MCHJ', '«ACCURATE TRADE» OOO', 'ACCURATE+TRADE', 268, 306546770, '2020-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/02f976b43e1cabbb210f31b5e229d054.jpg', NULL, '2020-11-15 06:23:43', '2020-11-15 06:23:43'),
(146, 'inactive', '\"AZURE LAND\" LLC', '\"AZURE LAND\" MCHJ', '\"AZURE LAND\" OOO', 'AZURE+LAND+МЧЖ', 269, 303394995, '2020-06-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/8891231384d28387ffcfafbcf639a3e8.jpg', NULL, '2020-11-15 06:28:32', '2020-11-15 06:28:32'),
(147, 'inactive', '\"TASHKENT GREEN LINE IMPEX\" LLC', '\"TASHKENT GREEN LINE IMPEX\" MCHJ', '\"TASHKENT GREEN LINE IMPEX\" OOO', 'TASHKENT+GREEN+LINE+IMPEX+MCHJ', 271, 306984164, '2020-08-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/79004115e5c272749475503cdd346284.jpg', NULL, '2020-11-15 06:29:44', '2020-11-15 06:29:44'),
(148, 'inactive', '\"BUYUK AMIR LOGISTIC\" LLC', '\"BUYUK AMIR LOGISTIC\" MCHJ', '\"BUYUK AMIR LOGISTIC\" OOO', 'BUYUK+AMIR+LOGISTIC+MCHJ', 272, 306695341, '2020-06-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/06aba89b42a578d1957cef4c5d00d047.jpg', NULL, '2020-11-15 06:32:26', '2020-11-15 06:32:26'),
(149, 'active', '\"AGRO LINIYA SAMARKAND AGROFIRMASI\" LLC', '\"AGRO LINIYA SAMARKAND AGROFIRMASI\" MCHJ', '\"AGRO LINIYA SAMARKAND AGROFIRMASI\" OOO', 'AGRO+LINIYA+SAMARKAND+AGROFIRMASI', 273, 303527962, '2020-11-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/83bf3fc40e975abf534f21537de57d22.jpg', NULL, '2020-11-15 06:33:51', '2020-11-15 06:33:51'),
(150, 'active', '\"SHEROBOD AGRO EKSPORT\" LLC', '\"SHEROBOD AGRO EKSPORT\" MCHJ', '\"SHEROBOD AGRO EKSPORT\" OOO', 'SHEROBOD+AGRO+EKSPORT+MCHJ', 280, 207304719, '2021-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/e897bdcc699590078e23103bf30c6353.jpg', NULL, '2020-11-15 06:36:44', '2020-11-15 06:36:44'),
(151, 'active', '\"FARM AGROIMPEX\" LLC', '\"FARM AGROIMPEX\" MCHJ', '\"FARM AGROIMPEX\" OOO', 'OOO+FARM+AGROIMPEX', 281, 305196536, '2021-07-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/65a5cb8bf463e98cca01aaf3425bdbc8.jpg', NULL, '2020-11-15 07:01:09', '2020-11-15 07:01:09'),
(152, 'inactive', '\"Al-Alkom Trade\" PE', '\"Al-Alkom Trade\" ХК', '\"Al-Alkom Trade\" ЧП', 'Al-Alkom+Trade+ХК', 282, 205387958, '2020-09-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9b07a63a77b6a51c84540802bcac44ee.jpg', NULL, '2020-11-15 07:02:35', '2020-11-15 07:02:35'),
(153, 'inactive', '\"Elit Sifat Qurilish Servis\" LLC', '\"Elit Sifat Qurilish Servis\" MCHJ', '\"Elit Sifat Qurilish Servis\" OOO', 'Elit+Sifat+Qurilish+Servis', 287, 302720614, '2020-07-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/457fe282e82fab3355a6f5cc9004d445.jpg', NULL, '2020-11-15 07:03:46', '2020-11-15 07:03:46'),
(154, 'inactive', '\"YUKSAK TAAB\" LLC', '\"YUKSAK TAAB\" MCHJ', '\"YUKSAK TAAB\" OOO', 'YUKSAK+TAAB', 288, 306050109, '2020-07-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d8be341e98f818967e609e67566b881e.jpg', NULL, '2020-11-15 07:05:18', '2020-11-15 07:05:18'),
(155, 'active', '\"ASIA-SCOTCH\" LLC', '\"ASIA-SCOTCH\" MCHJ', '\"ASIA-SCOTCH\" OOO', 'ASIA-SCOTCH', 293, 305077264, '2020-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1cc508223f45d20b9045804254879008.jpg', NULL, '2020-11-15 08:23:57', '2020-11-15 08:27:15'),
(156, 'inactive', '\"CLEVER RSB\" LLC', '\"CLEVER RSB\" MCHJ', '\"CLEVER RSB\" ООО', 'CLEVER RSB', 295, 307002141, '2020-07-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/926c1c4e005914d96832c69bf8364c73.jpg', NULL, '2020-11-15 08:25:16', '2020-11-15 08:25:16'),
(157, 'active', '\"AM AGRO PLAST TEXTILE EKSPORT\" LLC', '\"AM AGRO PLAST TEXTILE EKSPORT\" MCHJ', '\"AM AGRO PLAST TEXTILE EKSPORT\" OOO', 'AM+AGRO+PLAST+TEXTILE+EKSPORT+MChJ', 297, 306338554, '2020-11-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/518001f76fd15735b301fc275b299ce7.jpg', NULL, '2020-11-15 08:26:58', '2020-11-15 08:26:58'),
(158, 'inactive', '\"SAMARKAND MOTRID DRY FRUITS\" PE', '\"SAMARKAND MOTRID DRY FRUITS\" XK', '\"SAMARKAND MOTRID DRY FRUITS\" ЧП', '\"SAMARKAND MOTRID DRY FRUITS\" XK', 298, 304923066, '2020-10-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/82c9a0edb0d6fe0519701791b2ec0f47.jpg', NULL, '2020-11-17 01:08:53', '2020-11-17 01:11:03'),
(159, 'inactive', '\"UZ TRANS KARVON\" LLC', '\"UZ TRANS KARVON\" MCHJ', '\"UZ TRANS KARVON\" OOO', 'UZ+TRANS+KARVON', 299, 305630565, '2020-07-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/dbae2eea9e0c177d29091cbe95ff2fe4.jpg', NULL, '2020-11-17 01:12:29', '2020-11-17 01:12:29'),
(160, 'inactive', '\"V G F GLOBAL EXPORT\" LLC', '\"V G F GLOBAL EXPORT\" MCHJ', '\"V G F GLOBAL EXPORT\" OOO', 'ООО+V+G+F+GLOBAL+EXPORT', 300, 307204254, '2020-08-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7da3a850cc0c41c5ebdd8d9d06a08da9.jpg', NULL, '2020-11-17 01:13:47', '2020-11-17 01:13:47'),
(161, 'inactive', '\"TRICOLOR\" LLC', '\"TRICOLOR\" MCHJ', '\"TRICOLOR\" OOO', 'TRICOLOR+МЧЖ', 301, 305125314, '2020-07-23', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/3dee525238e78335a8d15065bb1c9700.jpg', NULL, '2020-11-17 01:14:51', '2020-11-17 01:14:51'),
(162, 'inactive', '\"KOKAND VEK SAVDO\" МЧЖ', '\"KOKAND VEK SAVDO\" МЧЖ', '\"KOKAND VEK SAVDO\" МЧЖ', '\"KOKAND VEK SAVDO\" МЧЖ', 303, 306851812, '2020-07-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2e25a2f6f621258a86fa7e3e80c1ea58.jpg', NULL, '2020-11-17 01:15:26', '2020-11-17 01:15:26');
INSERT INTO `memberships` (`id`, `status`, `name_en`, `name_uz`, `name_ru`, `slug_en`, `certificate_number`, `inn`, `expiry_date`, `desc_en`, `desc_uz`, `desc_ru`, `file`, `web`, `email`, `phone`, `address_en`, `address_uz`, `address_ru`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(163, 'inactive', '\"AGRO PROCESSING GROUP\" LLC', '\"AGRO PROCESSING GROUP\" MCHJ', '\"AGRO PROCESSING GROUP\" OOO', 'AGRO+PROCESSING+GROUP+МЧЖ', 304, 304700067, '2020-09-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/368ac743df2d6217d758c4d84541e660.jpg', NULL, '2020-11-17 01:16:31', '2020-11-17 01:16:31'),
(164, 'inactive', '\"HAYOT CENTR\" LLC', '\"HAYOT CENTR\" MCHJ', '\"HAYOT CENTR\" OOO', 'ООО+HAYOT+CENTR', 306, 306137694, '2020-07-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/127e73da7d884a206463edbf970aa84c.jpg', NULL, '2020-11-17 01:17:36', '2020-11-17 01:17:36'),
(165, 'inactive', '\"MAKAR INVEST\" LLC', '\"MAKAR INVEST\" MCHJ', '\"MAKAR INVEST\" OOO', 'MCHJ+MAKAR+INVEST', 307, 303241995, '2020-07-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/7e62425bc8d1fc7e2cf1b15561f3385c.jpg', NULL, '2020-11-17 01:19:00', '2020-11-17 01:19:00'),
(166, 'inactive', '\"FERGANA FRUITS\" LLC', '\"FERGANA FRUITS\" MCHJ', '\"FERGANA FRUITS\" OOO', 'ООО+FERGANA FRUITS\"', 308, 305669524, '2020-09-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a7c747259ecb42b17b99f97bd6a5a841.jpg', NULL, '2020-11-17 01:30:38', '2020-11-17 01:30:38'),
(167, 'inactive', '\"SHAHRISABZ TA`MINOT SERVIS\" LLC', '\"SHAHRISABZ TA`MINOT SERVIS\" MCHJ', '\"SHAHRISABZ TA`MINOT SERVIS\" OOO', 'SHAHRISABZ+TA`MINOT+SERVIS+MCHJ', 309, 307130624, '2020-07-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/de98fa4af474dd85bc2dd47c34cf3129.jpg', NULL, '2020-11-17 01:31:10', '2020-11-17 01:32:57'),
(168, 'inactive', '\"Textile Impex Company\" LLC', '\"Textile Impex Company\" MCHJ', '\"Textile Impex Company\" OOO', 'Textile+Impex+Company', 313, 307007664, '2020-08-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/19a42605ff5963b7413f16923954b02c.jpg', NULL, '2020-11-17 01:32:29', '2020-11-17 01:32:29'),
(169, 'inactive', '\"BUNYODKOR DEVELOPMENT\" LLC', '\"BUNYODKOR DEVELOPMENT\" MCHJ', '\"BUNYODKOR DEVELOPMENT\" OOO', 'BUNYODKOR+DEVELOPMENT', 313, 306477786, '2020-08-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/9e6ccf909435837db5b646f8461c5190.jpg', NULL, '2020-11-17 01:33:44', '2020-11-17 01:34:05'),
(170, 'inactive', '\"MARKAZIY TEPLOVOZ TA`MIR\" LLC', '\"MARKAZIY TEPLOVOZ TA`MIR\" MCHJ', '\"MARKAZIY TEPLOVOZ TA`MIR\" OOO', 'MARKAZIY+TEPLOVOZ+TA`MIR', 315, 303056014, '2020-09-04', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/23eb8283bd916d3a460337ae3a79a7b4.jpg', NULL, '2020-11-17 01:34:53', '2020-11-17 01:34:53'),
(171, 'inactive', '\"YUKSALISH BROK IMPEKS\" LLC', '\"YUKSALISH BROK IMPEKS\" MCHJ', '\"YUKSALISH BROK IMPEKS\" OOO', 'YUKSALISH+BROK+IMPEKS', 319, 306655200, '2020-08-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a41fdf1f3cc80476d6d655a560cd8f2d.jpg', NULL, '2020-11-17 01:36:24', '2020-11-17 01:36:24'),
(172, 'active', '\"EURASIAN INDUSTRIAL UNION\" LLC', '\"EURASIAN INDUSTRIAL UNION\" MCHJ', '\"EURASIAN INDUSTRIAL UNION\" OOO', 'EURASIAN+INDUSTRIAL+UNION', 324, 305139770, '2020-06-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/eb48fc8ad4177b3f68670cf7b87c9b0b.jpg', NULL, '2020-11-17 01:37:15', '2020-11-17 01:37:52'),
(173, 'active', '\"Mirzaev Rejavali Xaydaralievich\" FARM', '\"Mirzaev Rejavali Xaydaralievich\" D/X', '\"Mirzaev Rejavali Xaydaralievich\" ФЕРМА', 'Mirzaev+Rejavali+Xaydaralievich', 326, 304640055, '2020-12-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d5aa4d236925d0d6452e0d52d3c8364a.jpg', NULL, '2020-11-17 01:39:35', '2020-11-17 01:39:35'),
(174, 'inactive', '\"SUPER SOFT\" LLC', '\"SUPER SOFT\" MCHJ', '\"SUPER SOFT\" OOO', 'SUPER+SOFT+MCHJ', 327, 303353943, '2020-09-06', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4ef4bab4f9de03cd0f6a7e72b1b1073f.jpg', NULL, '2020-11-17 01:41:05', '2020-11-17 01:41:05'),
(175, 'inactive', '\"LIVADIYA -BUKHARA \" LLC', '\"LIVADIYA -BUKHARA \" MCHJ', '\"LIVADIYA -BUKHARA \" OOO', 'LIVADIYA -BUKHARA', 329, 301892045, '2020-08-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2732aa4e1ec887af52a554349c0bd4e5.jpg', NULL, '2020-11-17 01:41:59', '2020-11-17 01:41:59'),
(176, 'inactive', '\"DOST TASH\" LLC', '\"DOST TASH\" MCHJ', '\"DOST TASH\" OOO', 'DOST+TASH', 331, 307079133, '2020-09-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5bbdcef397942d0324ac1c9914f575ab.jpg', NULL, '2020-11-17 01:43:32', '2020-11-17 01:43:32'),
(177, 'active', '\"NEW ECOLINE\" LLC', '\"NEW ECOLINE\" MCHJ', '\"NEW ECOLINE\" OOO', 'NEW+ECOLINE+MCHJ', 333, 307532994, '2021-01-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d284a9de5230992e7db6bdee676e7f94.jpg', NULL, '2020-11-17 01:44:22', '2020-11-17 01:44:22'),
(178, 'inactive', '\"Oydin charm export\" LLC', '\"Oydin charm export\" MCHJ', '\"Oydin charm export\" OOO', 'Oydin+charm+export', 334, 305448996, '2020-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a39f5cbfa5c7b50a9086822f23fb38de.jpg', NULL, '2020-11-17 23:54:29', '2020-11-17 23:54:49'),
(179, 'inactive', '\"ROYAL PLAST\" LLC', '\"ROYAL PLAST\" MCHJ', '\"ROYAL PLAST\" OOO', 'МЧЖ+ROYAL+PLAST', 337, 304981945, '2020-09-10', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/55839e91fd754458f331deda8c1747a4.jpg', NULL, '2020-11-17 23:56:07', '2020-11-17 23:58:03'),
(180, 'active', '\"EHSAN MAYBOD MANUFACTURING GROUP\" LLC', '\"EHSAN MAYBOD MANUFACTURING GROUP\" MCHJ', '\"EHSAN MAYBOD MANUFACTURING GROUP\" OOO', '\"EHSAN MAYBOD+MANUFACTURING+GROUP', 341, 301556311, '2021-08-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/829e58693e96be815ba38355ec190732.jpg', NULL, '2020-11-18 00:06:32', '2020-11-18 00:06:32'),
(181, 'active', '\"MAX LUXE SERVICE\" LLC', '\"MAX LUXE SERVICE\" MCHJ', '\"MAX LUXE SERVICE\" OOO', 'MAX+LUXE+SERVICE', 342, 301659776, '2021-02-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/c2993f6c8e1563dca349c7fa388a2c5c.jpg', NULL, '2020-11-18 00:07:51', '2020-11-18 00:07:51'),
(182, 'inactive', '\"GLOBAY\" LLC', '\"GLOBAY\" MCHJ', '\"GLOBAY\" OOO', 'GLOBAY', 343, 306179254, '2020-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d121f6c78c401cbb4e2b1e4ad2d024a4.jpg', NULL, '2020-11-18 00:09:50', '2020-11-18 00:09:50'),
(183, 'inactive', '\"KIFTI-OB MEVA UZUM\" LLC', '\"KIFTI-OB MEVA UZUM\" MCHJ', '\"KIFTI-OB MEVA UZUM\" OOO', 'KIFTI-OB+MEVA+UZUM', 344, 302147527, '2020-09-13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/dfead3546a2493eb81aadacd13b1e183.jpg', NULL, '2020-11-18 00:11:39', '2020-11-18 00:11:39'),
(184, 'inactive', '\"NOZIMA JALILOVA\" PE', '\"NOZIMA JALILOVA\" ХK', '\"NOZIMA JALILOVA\" ЧП', 'NOZIMA+JALILOVA', 346, 304535232, '2020-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b625ea0d19bf76e4f24c19192b6abec7.jpg', NULL, '2020-11-18 00:15:48', '2020-11-18 00:15:48'),
(185, 'inactive', '\"NICE JOB\" LLC', '\"NICE JOB\" MCHJ', '\"NICE JOB\" OOO', 'NICE+JOB', 347, 306319775, '2020-08-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/46e048e5607a1646a9110e9f5fe077f4.jpg', NULL, '2020-11-18 00:17:48', '2020-11-18 00:35:22'),
(187, 'active', '\"EKO BON\" LLC', '\"EKO BON\" MCHJ', '\"EKO BON\" OOO', 'EKO+BON', 350, 307309329, '2024-10-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/20cdf22d06ebca83032a39a7f29542b3.jpg', NULL, '2020-11-18 00:19:56', '2020-11-18 00:34:56'),
(188, 'inactive', '\"AGRO FRESH TRADING\" LLC', '\"AGRO FRESH TRADING\" MCHJ', '\"AGRO FRESH TRADING\" OOO', 'AGRO+FRESH+TRADING', 351, 306826399, '2020-08-28', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5c414950d61d0537bc173e87cd35ece8.jpg', NULL, '2020-11-18 00:31:34', '2020-11-18 00:31:34'),
(189, 'inactive', '\"Feridun Fashion Style\" LLC', '\"Feridun Fashion Style\" MCHJ', '\"Feridun Fashion Style\" OOO', 'Feridun+Fashion+Style', 352, 206614530, '2020-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/55d1ec6731b35f4b9fa97d78116128c0.jpg', NULL, '2020-11-18 00:32:35', '2020-11-18 00:32:35'),
(190, 'inactive', '\"Qo\'rg\'on Jilvasi\" LLC', '\"Qo\'rg\'on Jilvasi\" MCHJ', '\"Qo\'rg\'on Jilvasi\" OOO', 'Qo\'rg\'on+Jilvasi', 353, 303454460, '2020-08-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4395fab664cfaf3e6d642c22c7a49444.jpg', NULL, '2020-11-18 00:33:23', '2020-11-18 00:33:23'),
(191, 'active', '\"Mega Poligraph Service\" LLC', '\"Mega Poligraph Service\" MCHJ', '\"Mega Poligraph Service\" OOO', 'Mega+Poligraph+Service', 357, 303459905, '2021-03-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/6036074aa9c6d5199232ff8605b298ae.jpg', NULL, '2020-11-18 00:34:38', '2020-11-18 00:34:38'),
(192, 'inactive', '\"Candy Gold\" LLC', '\"Candy Gold\" MCHJ', '\"Candy Gold\" OOO', 'Candy+Gold', 358, 300058679, '2020-10-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/5ed3ae9861fe872543ac3278881d511d.jpg', NULL, '2020-11-18 00:39:57', '2020-11-18 00:39:57'),
(193, 'inactive', '“Ўзбекистон Карлар жамиятининг Тошкент 1-сон Ўқув ишлаб чиқариш” LLC', '“Ўзбекистон Карлар жамиятининг Тошкент 1-сон Ўқув ишлаб чиқариш” MCHJ', '“Ўзбекистон Карлар жамиятининг Тошкент 1-сон Ўқув ишлаб чиқариш” OOO', 'Ўзбекистон+Карлар+жамиятининг+Тошкент+1-сон+Ўқув+ишлаб+чиқариш', 360, 200849599, '2020-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/add5da7298cff5698bf5e8605c8803e6.jpg', NULL, '2020-11-18 00:41:14', '2020-11-18 00:41:25'),
(194, 'inactive', '\"Mavr\" LLC', '\"Mavr\" MCHJ', '\"Mavr\" OOO', 'Mavr+MCHJ', 361, 204611884, '2020-09-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/08f5b609c6d35acbe5b1ec4c11ba8329.jpg', NULL, '2020-11-18 00:42:23', '2020-11-18 00:42:23'),
(195, 'inactive', '\"SUNNY LAND PRODUCTS\" LLC', '\"SUNNY LAND PRODUCTS\" MCHJ', '\"SUNNY LAND PRODUCTS\" OOO', 'SUNNY+LAND+PRODUCTS', 365, 305899024, '2021-09-11', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/373002fbe3e12b937b007ce9c9690973.jpg', NULL, '2020-11-18 00:43:29', '2020-11-18 00:43:29'),
(196, 'inactive', '\"NAVBAHOR AGRO OMAD\" FARM', '\"NAVBAHOR AGRO OMAD\" FX', '\"NAVBAHOR AGRO OMAD\" ФЕРМА', 'NAVBAHOR+AGRO+OMAD', 369, 302660769, '2020-11-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/415a9095683a180a4accfbc89ca6dc12.jpg', NULL, '2020-11-18 00:44:26', '2020-11-18 00:44:26'),
(197, 'inactive', '\"LICO-ROOTS КК\" LLC', '\"LICO-ROOTS КК\" MCHJ', '\"LICO-ROOTS КК\" OOO', 'МЧЖ+LICO-ROOTS+КК', 373, 204138562, '2020-10-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4143f9200171950949d89881ef8fbc4c.jpg', NULL, '2020-11-18 00:46:17', '2020-11-18 00:46:47'),
(198, 'active', '\"Prof Milk\" LLC', '\"Prof Milk\" OOO', '\"Prof Milk\" MCHJ', 'Prof+Milk', 374, 305113274, '2021-11-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/3c9780d0f1ab7af0060d84280eb4f834.jpg', NULL, '2020-11-18 00:47:36', '2020-11-18 00:47:36'),
(199, 'active', '\"SAMARKAND-GOLDEN-CHICKPEAS\" FE', '\"SAMARKAND-GOLDEN-CHICKPEAS\" OK', '\"SAMARKAND-GOLDEN-CHICKPEAS\" Сб', 'SAMARKAND-GOLDEN-CHICKPEAS', 375, 306115334, '2020-12-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/8edc614e380b620721cc235495440f62.jpg', NULL, '2020-11-19 23:40:20', '2020-11-19 23:40:20'),
(200, 'inactive', '\"SHMID\" LLC', '\"SHMID\" MCHJ', '\"SHMID\" OOO', 'SHMID', 381, 202591826, '2020-10-18', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4e7e38ed54820cd909a72bb582e9c344.jpg', NULL, '2020-11-19 23:41:32', '2020-11-19 23:41:43'),
(201, 'active', '\"GMG HOLDING\" LLC', '\"GMG HOLDING\" MCHJ', '\"GMG HOLDING\" OOO', 'GMG+HOLDING+MCHJ', 383, 305682826, '2020-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d18283cc74f536293d1163e4a12db163.jpg', NULL, '2020-11-19 23:42:39', '2020-11-19 23:42:39'),
(202, 'active', '\"AROMA-KOLOR\" LLC', '\"AROMA-KOLOR\" MCHJ', '\"AROMA-KOLOR\" OOO', 'AROMA-KOLOR', 384, 205279370, '2020-12-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/95f80e7eba1eafcaf3887a1eb3296631.jpg', NULL, '2020-11-19 23:44:21', '2020-11-19 23:47:30'),
(203, 'active', '\"UPL Ziraat ve Kimya Sanayi ve Ticaret Limite\" LLC', '\"UPL Ziraat ve Kimya Sanayi ve Ticaret Limite\" MCHJ', '\"UPL Ziraat ve Kimya Sanayi ve Ticaret Limite\" OOO', 'UPL+Ziraat+ve+Kimya+Sanayi+ve+Ticaret+Limite', 386, 207138236, '2020-12-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b9fd72d1dafc291efc8e210f99d804d1.jpg', NULL, '2020-11-19 23:47:12', '2020-11-19 23:47:12'),
(204, 'active', '\"XATIRCHI TOMORQA EXPORT\" LLC', '\"XATIRCHI TOMORQA EXPORT\" MCHJ', '\"XATIRCHI TOMORQA EXPORT\" OOO', 'XATIRCHI+TOMORQA+EXPORT', 390, 305559383, '2021-01-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a40dee498171347600441627d542e638.jpg', NULL, '2020-11-19 23:50:46', '2020-11-19 23:50:46'),
(205, 'active', '\"XORAZM PILLA XOLDING\" LLC', '\"XORAZM PILLA XOLDING\" MCHJ', '\"XORAZM PILLA XOLDING\" OOO', 'XORAZM+PILLA+XOLDING', 394, 302905398, '2020-12-24', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/273c43e9e6ce5f00f3bb94986fcbe456.jpg', NULL, '2020-11-19 23:51:53', '2020-11-19 23:51:53'),
(206, 'inactive', '\"LOCHIN BAXOR KERAMIK INVEST\" LLC', '\"LOCHIN BAXOR KERAMIK INVEST\" MCHJ', '\"LOCHIN BAXOR KERAMIK INVEST\" OOO', 'LOCHIN+BAXOR+KERAMIK+INVEST', 395, 307755305, '2020-09-25', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/b93a3fa3d58c6a477c6e0365c89b9b70.jpg', NULL, '2020-11-19 23:52:58', '2020-11-19 23:52:58'),
(207, 'active', '\"IRODA MED TEXNIKAT\" LLC', '\"IRODA MED TEXNIKAT\" MCHJ', '\"IRODA MED TEXNIKAT\" OOO', 'IRODA+MED+TEXNIKAT', 398, 302923756, '2021-01-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/999c06519e04435d51b87e0846527148.jpg', NULL, '2020-11-19 23:54:12', '2020-11-19 23:54:12'),
(208, 'active', '\"IBRA-KROL\" LLC', '\"IBRA-KROL\" MCHJ', '\"IBRA-KROL\" OOO', 'IBRA-KROL', 401, 305457313, '2020-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4bde0a247e45062bd75f22a89693906a.jpg', NULL, '2020-11-19 23:55:15', '2020-11-19 23:55:15'),
(209, 'active', '\"OLTIN TEGIRMON\" LLC', '\"OLTIN TEGIRMON\" MCHJ', '\"OLTIN TEGIRMON\" OOO', 'OLTIN+TEGIRMON', 401, 301336711, '2020-12-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d103f95b949ce8c20088471768f0c41f.jpg', NULL, '2020-11-19 23:56:59', '2020-11-19 23:56:59'),
(210, 'active', '\"ASHRAF RAMAZAN\" LLC', '\"ASHRAF RAMAZAN\" MCHJ', '\"ASHRAF RAMAZAN\" OOO', 'ASHRAF+RAMAZAN', 403, 305194927, '2021-10-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/495111061bad65753ee0cf7c99996cb4.jpg', NULL, '2020-11-20 00:03:02', '2020-11-20 00:03:02'),
(211, 'active', '\"PRODUCTION WORK\" LLC', '\"PRODUCTION WORK\" MCHJ', '\"PRODUCTION WORK\" OOO', 'PRODUCTION+WORK', 404, 306301127, '2021-10-05', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/c94ca6afe94dfa9519e7e1e0b837a951.jpg', NULL, '2020-11-20 00:04:37', '2020-11-20 00:04:37'),
(212, 'active', '\"SAPSAN\" LLC', '\"SAPSAN\" MCHJ', '\"SAPSAN\" OOO', 'SAPSAN', 405, 304917151, '2021-01-08', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a30d82badbe7c6f26fa2d17a5cb952cb.jpg', NULL, '2020-11-20 00:05:58', '2020-11-20 00:05:58'),
(213, 'active', '\"MILANO T-SHIRT\" FE', '\"MILANO T-SHIRT\" OK', '\"MILANO T-SHIRT\" СБ', 'MILANO+T-SHIRT', 406, 306579944, '2021-01-07', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1bb6fd06c9a57908c3a831c138018ebc.jpg', NULL, '2020-11-20 00:08:16', '2020-11-20 00:08:16'),
(214, 'inactive', '\"ASIA CARGO LOGISTICS\" LLC', '\"ASIA CARGO LOGISTICS\" MCHJ', '\"ASIA CARGO LOGISTICS\" OOO', 'ASIA+CARGO+LOGISTICS', 410, 302286125, '2020-10-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/473fda1a817a2f20f5c412382f30909d.jpg', NULL, '2020-11-20 00:09:24', '2020-11-20 00:09:24'),
(215, 'active', '\"Qandolatchilikni rivojlantirish\" Association', '\"Qandolatchilikni rivojlantirish\" ASO', '\"Qandolatchilikni rivojlantirish\" Ассоциация', 'Qandolatchilikni+rivojlantirish', 0, 207275921, '2022-11-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4897d94b7ed1e9fdd6bf10a3bd898bd3.jpg', NULL, '2020-11-20 00:11:28', '2020-11-20 00:11:28'),
(216, 'active', '\"UzPolitex Holding\" LLC', '\"UzPolitex Holding\" MCHJ', '\"UzPolitex Holding\" OOO', 'UzPolitex+Holding', 416, 300901104, '2021-11-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d936a331d4f581efe7051295f5932a62.jpg', NULL, '2020-11-20 00:12:48', '2020-11-20 00:12:48'),
(217, 'active', '\"Bek mega textile\" LLC', '\"Bek mega textile\" MCHJ', '\"Bek mega textile\" OOO', 'Bek+mega+textile', 417, 302301414, '2021-11-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/6939996ccee26d71eac61a8dcd91da5f.jpg', NULL, '2020-11-20 00:13:53', '2020-11-20 00:13:53'),
(218, 'active', '\"MAGIC DAR ALLIANCE\" LLC', '\"MAGIC DAR ALLIANCE\" MCHJ', '\"MAGIC DAR ALLIANCE\" OOO', 'MAGIC+DAR+ALLIANCE', 418, 305073150, '2021-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/a78c0370aa3d3ce8e4c1e41962e9796d.jpg', NULL, '2020-11-20 00:14:45', '2020-11-20 00:14:45'),
(219, 'active', '\"INVEST MAX\" LLC', '\"INVEST MAX\" MCHJ', '\"INVEST MAX\" OOO', 'INVEST+MAX', 421, 307588703, '2021-01-16', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/2a103f74ce0501314b7c9a2b0314640d.jpg', NULL, '2020-11-23 01:39:15', '2020-11-23 01:39:15'),
(220, 'active', '\"BEAN EKSPORT OQ OLTIN\" LLC', '\"BEAN EKSPORT OQ OLTIN\" MCHJ', '\"BEAN EKSPORT OQ OLTIN\" OOO', 'BEAN+EKSPORT+OQ+OLTIN', 422, 307350802, '2021-11-15', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d7c4630133f1b95786e64220e1b31b25.jpg', NULL, '2020-11-23 01:40:52', '2020-11-23 01:40:52'),
(221, 'active', '\"Асадбек авазбек Хамкор\" LLC', '\"Асадбек авазбек Хамкор\" MCHJ', '\"Асадбек авазбек Хамкор\" OOO', 'Асадбек+авазбек+Хамкор', 424, 200969458, '2021-01-20', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/d8b7ecb2822fff018aac8ddd5fbcb2d5.jpg', NULL, '2020-11-23 02:00:36', '2020-11-23 02:00:36'),
(222, 'active', '\"COLD INDUSTRY\" LLC', '\"COLD INDUSTRY\" MCHJ', '\"COLD INDUSTRY\" OOO', 'COLD+INDUSTRY', 425, 301674015, '2021-01-19', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1a28c630a8d0aa12141fa0e6c41fd5ce.jpg', NULL, '2020-11-23 02:02:07', '2020-11-23 02:02:07'),
(223, 'active', '«JIZZAX AGRO-FRUIT» LLC', '«JIZZAX AGRO-FRUIT» MCHJ', '«JIZZAX AGRO-FRUIT» OOO', 'JIZZAX+AGRO-FRUIT', 426, 307630445, '2021-01-22', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4f8db3739e4d933e68f9288c0bbbadd3.jpg', NULL, '2020-11-23 02:03:01', '2020-11-23 02:03:01'),
(224, 'active', '\"Semg\'uron oltin boshoq\" Farm', '\"Semg\'uron oltin boshoq\" FX', '\"Semg\'uron oltin boshoq\" Ферма', 'Semg\'uron+oltin+boshoq', 427, 302295233, '2021-01-21', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4f69ca4429eb451020384296b25d5901.jpg', NULL, '2020-11-23 02:04:30', '2020-11-23 02:04:30'),
(225, 'active', '\"VISAGE ELECTRIC\" LLC', '\"VISAGE ELECTRIC\" MCHJ', '\"VISAGE ELECTRIC\" OOO', 'VISAGE+ELECTRIC', 428, 300821924, '2021-01-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/c0903275acc70f9cfef7add0e249fd50.jpg', NULL, '2020-11-23 02:06:33', '2020-11-23 02:06:33'),
(226, 'active', '\"PARKENT SILK ROAD TRANS\" LLC', '\"PARKENT SILK ROAD TRANS\" MCHJ', '\"PARKENT SILK ROAD TRANS\" OOO', 'PARKENTSILK+ROAD+TRANS', 430, 307749905, '2021-01-27', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ed351a16e9cc5247654b5b87d721a7df.jpg', NULL, '2020-11-23 02:08:01', '2020-11-23 02:08:01'),
(227, 'active', '\"STAMPA TEXTILE\" LLC', '\"STAMPA TEXTILE\" MCHJ', '\"STAMPA TEXTILE\" OOO', 'STAMPA+TEXTILE', 431, 304633482, '2021-01-26', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/dc4cf9e87524b9ed43b05dcd9b868e52.jpg', NULL, '2020-11-23 02:09:16', '2020-11-23 02:09:16'),
(228, 'active', '\"SHIRIN NIYAT BARAKA\" LLC', '\"SHIRIN NIYAT BARAKA\" MCHJ', '\"SHIRIN NIYAT BARAKA\" OOO', 'SHIRIN+NIYAT+BARAKA', 435, 302411404, '2021-01-29', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/17fe03be4c4a5283161d068f41a92a9f.jpg', NULL, '2020-11-23 02:11:29', '2020-11-23 02:11:29'),
(229, 'active', '\"PSKENT CHICKENS\" LLC', '\"PSKENT CHICKENS\" MCHJ', '\"PSKENT CHICKENS\" OOO', 'PSKENT+CHICKENS', 437, 305013897, '2021-01-30', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/4523ec35c24ba6cfee047b779f7d4bf6.jpg', NULL, '2020-11-23 02:12:43', '2020-11-23 02:12:43'),
(230, 'active', '\"CLASS-FOOD-SERVIS\" LLC', '\"CLASS-FOOD-SERVIS\" MCHJ', '\"CLASS-FOOD-SERVIS\" OOO', 'CLASS-FOOD-SERVIS', 438, 301125966, '2024-03-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/1080906381e4ec236165fb283e706d11.jpg', NULL, '2020-11-23 02:14:14', '2020-11-23 02:14:14'),
(231, 'active', '\" YULDOSH CONSULT\" LLC', '\"YULDOSH CONSULT\" MCHJ', '\"YULDOSH CONSULT\" OOO', 'YULDOSH+CONSULT', 439, 300828297, '2021-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/791fc25fecebc1e31bd58b8cbcd82f7c.jpg', NULL, '2020-11-23 02:15:32', '2020-11-23 02:15:32'),
(232, 'active', '\"FERGHANA FRANCE\" LLC', '\"FERGHANA FRANCE\" MCHJ', '\"FERGHANA FRANCE\" OOO', 'FERGHANA+FRANCE', 440, 301088055, '2021-02-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/ea0bf105bc11d280ae980fb112a9da3a.jpg', NULL, '2020-11-23 02:17:15', '2020-11-23 02:17:15'),
(233, 'active', '\"MAKAS QANDOLAT\" LLC', '\"MAKAS QANDOLAT\" MCHJ', '\"MAKAS QANDOLAT\" OOO', 'MAKAS+QANDOLAT', 1, 301411935, '2027-12-02', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'membership/fb8915cef5892af4e3f75d3a7f15b3db.jpg', NULL, '2020-11-23 02:19:16', '2020-11-23 02:19:16');

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
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2020_03_31_114745_remove_backpackuser_model', 1),
(5, '2020_09_10_105651_create_categories_table', 1),
(6, '2020_09_10_105652_create_news_table', 1),
(7, '2020_09_10_105653_create_memberships_table', 1),
(8, '2020_09_10_105654_create_movies_table', 1),
(9, '2020_09_10_105655_create_pictures_table', 1),
(10, '2020_09_11_045458_create_branches_table', 1),
(11, '2020_09_11_045459_create_staff_table', 1),
(12, '2020_09_16_064334_create_permission_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `movies`
--

CREATE TABLE `movies` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uz` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `type` enum('news','article','pressreliese','event') COLLATE utf8mb4_unicode_ci NOT NULL,
  `media_type` enum('video','article','photo') COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_en` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_uz` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_ru` varchar(500) COLLATE utf8mb4_unicode_ci NOT NULL,
  `subtitle_en` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_uz` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle_ru` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug_en` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `intro_en` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro_uz` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `intro_ru` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `highlighted_en` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlighted_uz` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `highlighted_ru` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_uz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `body_ru` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion_uz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `conclusion_ru` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_en` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_uz` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `author_ru` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link` varchar(500) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image1` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `image2` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image3` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image4` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`id`, `category_id`, `type`, `media_type`, `title_en`, `title_uz`, `title_ru`, `subtitle_en`, `subtitle_uz`, `subtitle_ru`, `slug_en`, `intro_en`, `intro_uz`, `intro_ru`, `highlighted_en`, `highlighted_uz`, `highlighted_ru`, `body_en`, `body_uz`, `body_ru`, `conclusion_en`, `conclusion_uz`, `conclusion_ru`, `author_en`, `author_uz`, `author_ru`, `link`, `image1`, `image2`, `image3`, `image4`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'news', 'article', 'Шавкат Мирзиёев: Одамларнинг Даромадини Ошириш', 'Шавкат Мирзиёев: Одамларнинг Даромадини Ошириш', 'Шавкат Мирзиёев: Одамларнинг Даромадини Ошириш', 'Xalq uchun xizmat qilish kerak', 'Xalq uchun xizmat qilish kerak', 'Xalq uchun xizmat qilish kerak', 'shavkat-mirziyoev', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry.&nbsp;</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', '<p><strong>Lorem Ipsum</strong>&nbsp;is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry&#39;s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', NULL, NULL, NULL, 'https://youtu.be/UbueN3Uk9oI', 'news/da078821e8d226e7998c22825b8590c2.jpg', NULL, NULL, NULL, NULL, '2020-09-18 04:14:34', '2020-09-25 04:40:26'),
(2, 2, 'news', 'video', 'Нью-Йоркда савдо уйининг очилиши en', 'Нью-Йоркда савдо уйининг очилиши', 'Нью-Йоркда савдо уйининг очилиши ru', 'Mukhtor Umarov', 'Mukhtor Umarov', 'Mukhtor Umarov', 'Mukhtor-Umarov', 'Бугун Нью-Йоркда Ўзбекистон Савдо Уйининг Очилиш Маросими Бўлиб Ўтди. Эхпортчилар Уюшмаси Ташаббуси Билан Ташкил Этилган Мазкур Марказнинг Тантанали Очилиш Маросимида Уюшма Раиси Онлине Иштирок Этиб Ўз Нутқини Йўллади.', 'Бугун Нью-Йоркда Ўзбекистон Савдо Уйининг Очилиш Маросими Бўлиб Ўтди. Эхпортчилар Уюшмаси Ташаббуси Билан Ташкил Этилган Мазкур Марказнинг Тантанали Очилиш Маросимида Уюшма Раиси Онлине Иштирок Этиб Ўз Нутқини Йўллади.', 'Бугун Нью-Йоркда Ўзбекистон Савдо Уйининг Очилиш Маросими Бўлиб Ўтди. Эхпортчилар Уюшмаси Ташаббуси Билан Ташкил Этилган Мазкур Марказнинг Тантанали Очилиш Маросимида Уюшма Раиси Онлине Иштирок Этиб Ўз Нутқини Йўллади.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/A0c_SmQCKn8\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/fa035470b07b7eb7821f0c7e333a2f8e.jpg', NULL, NULL, NULL, NULL, '2020-09-18 04:28:59', '2020-09-30 00:50:20'),
(3, 3, 'news', 'article', 'Экспорт-Импорт Операциялари Бўйича Валюта en', 'Экспорт-Импорт Операциялари Бўйича Валюта', 'Экспорт-Импорт Операциялари Бўйича Валюта ru', NULL, NULL, NULL, 'export-import-operatsion', 'Президентнинг “Ўзбекистон Республикаси Президентининг айрим ҳужжатларига ўзгартириш ва қўшимчалар киритиш тўғрисида”ги фармони лойиҳаси эълон қилинди. Лойиҳага кўра, Президентнинг 1994 йил 20 апрелдаги “Экспорт-импорт операциялари бўйича валюта назоратини таъминлаш чора-тадбирлари тўғрисида”ги ПФ–837-сон Фармони иловасига ўзгартириш киритилади.Унга кўра, барча ташқи савдо шартномалари валюта назорати органларида, Ташқи савдо операцияларининг ягона электрон ахборот тизими (ТСОЯЭАТ) орқали тижорат банкларида мониторингдан ўтказилади, электрон тижорат орқали реализация қилинган беш минг АКШ долларигача бўлган товарлар (хизматлар) экспорти бундан мустасно....', 'Президентнинг “Ўзбекистон Республикаси Президентининг айрим ҳужжатларига ўзгартириш ва қўшимчалар киритиш тўғрисида”ги фармони лойиҳаси эълон қилинди. Лойиҳага кўра, Президентнинг 1994 йил 20 апрелдаги “Экспорт-импорт операциялари бўйича валюта назоратини таъминлаш чора-тадбирлари тўғрисида”ги ПФ–837-сон Фармони иловасига ўзгартириш киритилади.Унга кўра, барча ташқи савдо шартномалари валюта назорати органларида, Ташқи савдо операцияларининг ягона электрон ахборот тизими (ТСОЯЭАТ) орқали тижорат банкларида мониторингдан ўтказилади, электрон тижорат орқали реализация қилинган беш минг АКШ долларигача бўлган товарлар (хизматлар) экспорти бундан мустасно....', 'Президентнинг “Ўзбекистон Республикаси Президентининг айрим ҳужжатларига ўзгартириш ва қўшимчалар киритиш тўғрисида”ги фармони лойиҳаси эълон қилинди. Лойиҳага кўра, Президентнинг 1994 йил 20 апрелдаги “Экспорт-импорт операциялари бўйича валюта назоратини таъминлаш чора-тадбирлари тўғрисида”ги ПФ–837-сон Фармони иловасига ўзгартириш киритилади.Унга кўра, барча ташқи савдо шартномалари валюта назорати органларида, Ташқи савдо операцияларининг ягона электрон ахборот тизими (ТСОЯЭАТ) орқали тижорат банкларида мониторингдан ўтказилади, электрон тижорат орқали реализация қилинган беш минг АКШ долларигача бўлган товарлар (хизматлар) экспорти бундан мустасно....', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/9c793ebdd5ab6d13151d0e7efef9a1fd.jpg', NULL, NULL, NULL, NULL, '2020-09-18 04:34:59', '2020-09-25 04:39:54'),
(4, 3, 'news', 'article', 'РОССИЯ: ҚОВУН НАРХИ ЮҚОРИ ДАРАЖАДА САҚЛАНИБ ҚОЛДИ en', 'РОССИЯ: ҚОВУН НАРХИ ЮҚОРИ ДАРАЖАДА САҚЛАНИБ ҚОЛДИ', 'РОССИЯ: ҚОВУН НАРХИ ЮҚОРИ ДАРАЖАДА САҚЛАНИБ ҚОЛДИ ru', NULL, NULL, NULL, 'russia-qovun', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisl lorem, semper sed urna maximus, laoreet ullamcorper sapien. Maecenas at iaculis magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce mauris felis, feugiat sit amet molestie sit amet, faucibus non augue. Aliquam porta nisl ut lorem fringilla tristique. Integer enim nisi, fringilla id elit id, pretium congue felis. Curabitur tristique mi eu venenatis rutrum. Maecenas vel est tortor. Mauris faucibus, dolor venenatis suscipit consequat, urna tellus elementum dui, non rhoncus magna neque eget purus. Vivamus elementum sit amet enim ut tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisl lorem, semper sed urna maximus, laoreet ullamcorper sapien. Maecenas at iaculis magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce mauris felis, feugiat sit amet molestie sit amet, faucibus non augue. Aliquam porta nisl ut lorem fringilla tristique. Integer enim nisi, fringilla id elit id, pretium congue felis. Curabitur tristique mi eu venenatis rutrum. Maecenas vel est tortor. Mauris faucibus, dolor venenatis suscipit consequat, urna tellus elementum dui, non rhoncus magna neque eget purus. Vivamus elementum sit amet enim ut tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed nisl lorem, semper sed urna maximus, laoreet ullamcorper sapien. Maecenas at iaculis magna. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Fusce mauris felis, feugiat sit amet molestie sit amet, faucibus non augue. Aliquam porta nisl ut lorem fringilla tristique. Integer enim nisi, fringilla id elit id, pretium congue felis. Curabitur tristique mi eu venenatis rutrum. Maecenas vel est tortor. Mauris faucibus, dolor venenatis suscipit consequat, urna tellus elementum dui, non rhoncus magna neque eget purus. Vivamus elementum sit amet enim ut tristique. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/90b208303ad0c9db01fb328a14df5e8e.jpg', NULL, NULL, NULL, NULL, '2020-09-18 04:39:50', '2020-09-25 04:39:31'),
(5, 1, 'news', 'article', 'ЎЗБЕКИСТОН ТАЙЁР КИЙИМ-КЕЧАК ЭКСПОРТИ ҲАЖМИНИ ОШИРДИ en', 'ЎЗБЕКИСТОН ТАЙЁР КИЙИМ-КЕЧАК ЭКСПОРТИ ҲАЖМИНИ ОШИРДИ', 'ЎЗБЕКИСТОН ТАЙЁР КИЙИМ-КЕЧАК ЭКСПОРТИ ҲАЖМИНИ ОШИРДИ ru', '336,7 миллион AҚШ долларига экспорт қилган en', '336,7 миллион AҚШ долларига экспорт қилган', '336,7 миллион AҚШ долларига экспорт қилган ru', 'export-kiyim-kechak', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt. Pellentesque venenatis sapien nunc, vitae blandit nisl convallis a. Praesent ut purus a massa congue sodales. Integer ullamcorper mattis volutpat. Curabitur vel rutrum elit, id faucibus mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean egestas sit amet leo sed mattis. Nulla faucibus lobortis metus, quis placerat orci interdum non. Cras lacinia pulvinar justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur orci urna, mattis eget porta sed, aliquet eu odio. Ut interdum blandit nunc vitae convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt. Pellentesque venenatis sapien nunc, vitae blandit nisl convallis a. Praesent ut purus a massa congue sodales. Integer ullamcorper mattis volutpat. Curabitur vel rutrum elit, id faucibus mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean egestas sit amet leo sed mattis. Nulla faucibus lobortis metus, quis placerat orci interdum non. Cras lacinia pulvinar justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur orci urna, mattis eget porta sed, aliquet eu odio. Ut interdum blandit nunc vitae convallis.', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt. Pellentesque venenatis sapien nunc, vitae blandit nisl convallis a. Praesent ut purus a massa congue sodales. Integer ullamcorper mattis volutpat. Curabitur vel rutrum elit, id faucibus mauris. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Aenean egestas sit amet leo sed mattis. Nulla faucibus lobortis metus, quis placerat orci interdum non. Cras lacinia pulvinar justo. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos. Curabitur orci urna, mattis eget porta sed, aliquet eu odio. Ut interdum blandit nunc vitae convallis.', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;</p>', NULL, '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;</p>', '<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt.&nbsp;</p>', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt. ', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin nec dui a sem finibus auctor in vitae arcu. Suspendisse pulvinar euismod elit nec tincidunt. ', NULL, NULL, NULL, NULL, 'news/99ae89d83ed9d4f7eec0368c5c2b27af.jpg', NULL, NULL, NULL, NULL, '2020-09-25 00:49:05', '2020-09-25 00:49:05'),
(6, 2, 'event', 'article', 'Video meeting with Malaysia International Chamber of Commerce and Industry', 'Малайзия Халқаро савдо ва саноат палатаси билан видео мулоқот', 'Видеовстреча с Международной торгово-промышленной палатой Малайзии', NULL, NULL, NULL, NULL, '..', '..', '..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/906273667636babd2ab50b932ef4c8e5.jpg', NULL, NULL, NULL, NULL, '2020-09-29 02:13:54', '2020-09-29 02:13:54'),
(7, 3, 'pressreliese', 'article', 'Uzbekistan has increased exports of ready-made clothing', 'Ўзбекистон тайёр кийим-кечак экспорти ҳажмини оширди', 'Узбекистан увеличил экспорт готовой одежды', NULL, NULL, NULL, NULL, 'As of September 1, Uzbekistan exported ready-made garments worth 336.7 million US dollars. This year, Uzbekistan, which exported ready-made garments to 32 countries, increased its exports by 89.1 million US dollars compared to the same period last year.', 'Жорий йилнинг 1 сентябрь ҳолатига Ўзбекистон қиймати 336,7 миллион AҚШ долларига тенг бўлган тайёр кийим-кечак маҳсулотларини экспорт қилган. Бу йил 32 та давлатга тайёр кийим-кечак маҳсулотларини экспорт қилган Ўзбекистон ўтган йилнинг 8 ойига нисбатан экспорт ҳажмини 89,1 миллион AҚШ долларига оширган.', 'По состоянию на 1 сентября Узбекистан экспортировал готовой одежды на 336,7 миллиона долларов США. В этом году Узбекистан, экспортировавший готовую одежду в 32 страны, увеличил экспорт на 89,1 миллиона долларов по сравнению с аналогичным периодом прошлого года.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/448c59f05984cdce5b6eeb16617302e2.jpg', NULL, NULL, NULL, NULL, '2020-09-29 02:50:55', '2020-09-29 02:50:55'),
(8, 3, 'pressreliese', 'article', 'Uzbekistan has increased exports to Tajikistan', 'Ўзбекистон Тожикистонга маҳсулотлар экспорти ҳажмини оширди', 'Узбекистан увеличил экспорт в Таджикистан', NULL, NULL, NULL, NULL, 'As of September 1, the trade turnover between Uzbekistan and Tajikistan amounted to 317.0 million US dollars. USD. The share of exports was 255.1 mln. USD and imports amounted to 61.9 mln. Equivalent to US dollars. According to the State Statistics Committee, the volume of exports to Tajikistan in the first eight months of this year amounted to 65.1 million US dollars compared to the same period last year. More for US dollars.', 'Жорий йилнинг 1 сентябрь ҳолатига Ўзбекистон билан Тожикистон ўртасидаги савдо айланмаси 317,0 млн. AҚШ долларини ташкил этган. Бунда экспорт улуши 255,1 млн. AҚШ доллари ва импорт ҳажми 61,9 млн. AҚШ долларига тенг. Давлат статистика қўмитаси маълумотларига кўра, саккиз ой мобайнида Тожикистонга амалга оширилган экспорт ҳажми ўтган йилнинг мос даврига солиштирилганда 65,1 млн. AҚШ долларига кўп.', 'По состоянию на 1 сентября товарооборот между Узбекистаном и Таджикистаном составил 317,0 млн долларов США. ДОЛЛАР США. Доля экспорта составила 255,1 млн. Грн. Долларов США, а импорт составил 61,9 млн. Долл. США. Эквивалентно долларам США. По данным Госкомстата, объем экспорта в Таджикистан за восемь месяцев текущего года составил 65,1 миллиона долларов США по сравнению с аналогичным периодом прошлого года. Еще за доллары США.', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/549a75f3681b9bd16681de83ef7badc8.jpg', NULL, NULL, NULL, NULL, '2020-09-29 02:56:26', '2020-09-29 02:56:26'),
(9, 3, 'news', 'video', 'UZBEKISTAN TRADE OPENS OPENING IN NEW YORK TODAY', 'БУГУН НЬЮ-ЙОРКДА ЎЗБЕКИСТОН САВДО УЙИНИНГ ОЧИЛИШИ', 'UZBEKISTAN TRADE ОТКРЫВАЕТСЯ В НЬЮ-ЙОРКЕ СЕГОДНЯ', NULL, NULL, NULL, NULL, '..', '..', '..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/FP8n1PcRFRc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/f6b43c079c768f3976b7d7b7415721ec.jpg', NULL, NULL, NULL, NULL, '2020-09-30 01:25:28', '2020-09-30 01:25:28'),
(10, 2, 'news', 'article', 'A telephone conversation was held with the Secretary General of the Swabi Chamber', 'Покистон Ислом Республикаси SWABI савдо-саноат палатаси билан телефон орқали мулоқот', 'Состоялся телефонный разговор с  Торгово-промышленной палаты Сваби', NULL, NULL, NULL, 'conversation-Swabi', 'The Association of Exporters of Uzbekistan, which has been established for more than a year, has so far established cooperation with a total of 51 foreign companies. Currently, at the initiative of the staff of the association, work is underway to increase the number of mutually beneficial partnership agreements in the international arena, aimed at developing the economy of our country. An example of this is the work on the organizational process of the planned video conference with the Swabi Regional Chamber of Commerce and Industry of Pakistan.', 'Ташкил этилганлигига эндигина бир йилдан ошган Ўзбекистон Экспортчилар уюшмаси томонидан шу кунга қадар жами 51 та хорижий компаниялар билан ҳамкорлик алоқалари йўлга қўйилди. Айни кунларда уюшма ходимларининг ташаббуси билан мамлакатимиз иқтисодиётини ривожлантиришга қаратилган халқаро доирадаги ўзаро манфаатли шерикчилик шартномаларини кўпайтириш учун ишлар қизғин тарзда олиб борилмоқда. Бунга мисол тарзида Покистон давлатининг SWABI ҳудудий савдо-саноат палатаси билан ўтказилиши режалаштирилаётган видео-конференциянинг ташкилий жараёнига доир ишларни келтиришимиз мумкин.', 'Ассоциация экспортеров Узбекистана, созданная более года назад, на сегодняшний день наладила сотрудничество в общей сложности с 51 иностранной компанией. В настоящее время по инициативе коллектива ассоциации ведется работа по увеличению количества соглашений о взаимовыгодном партнерстве на международной арене, направленных на развитие экономики нашей страны. Примером этого является работа над организационным процессом запланированной видеоконференции с региональной торгово-промышленной палатой Сваби Пакистана.', NULL, NULL, NULL, '<p>On behalf of our association, we have sent an invitation to the Swabi Chamber of Commerce and Industry of the Islamic Republic of Pakistan to establish cooperation in export-import cooperation.<br />\r\nDuring today&#39;s (06.10.2020) telephone conversation with the Secretary General of the Swabi Chamber of Commerce and Industry (SCCI) Muhammad Salman Khan, our proposal sent in the form of an online message for the establishment of diplomatic and economic partnership was approved by the administration of the chamber. Husniddin Ismoilov, a specialist in the association&#39;s foreign relations department, said.</p>\r\n\r\n<p>&nbsp;</p>', '<p>Покистон Ислом давлатининг <strong>SWABI Савдо-саноат палатаси</strong>га уюшмамиз номидан экспорт-импорт ишлари бўйича ўзаро ҳамкорлик алоқаларини йўлга қўйиш учун таклиф юборган эдик.&nbsp;<br />\r\n<strong>SWABI Савдо-саноат палатаси (SССI) Покистоннинг Шваби туманда биринчи ташкил этилган тадбиркорлар ташкилоти бўлиб, унинг асосий мақсади саноат соҳаларини ривожлантириш ҳамда инвестицияларни рағбатлантириш учун маҳаллий тадбиркорлар манфаатларини ҳимоя қилиш, мамлакат бўйлаб ишбилармон доиралар билан чегаралар ва алоқаларни мустаҳкамлаш учун зарур шароитларни яратиш саналади. Покистон давлатининг мазкур ташкилоти билан ҳамкорлик алоқаларини ўрнатиш мамлакатимиз экспорт салоҳиятини оширишга<em> қаратилган муваффақиятли лойиҳалардан бири бўлади, десак адашмаймиз!</em></strong></p>', '<p>От имени нашей ассоциации мы направили приглашение в Торгово-промышленную палату Сваби Исламской Республики Пакистан наладить сотрудничество в области экспортно-импортного сотрудничества.<br />\r\nВо время сегодняшнего (06.10.2020) телефонного разговора с генеральным секретарем Торгово-промышленной палаты Сваби (SCCI) Мухаммадом Салманом Ханом наше предложение, отправленное в виде онлайн-сообщения об установлении дипломатического и экономического партнерства, было одобрено администрацией палаты. Об этом сообщил специалист отдела внешних связей ассоциации Хусниддин Исмоилов.</p>\r\n\r\n<p>&nbsp;</p>', 'The Swabi Chamber of Commerce and Industry (SCCI) is the first entrepreneurial organization in Pakistan’s Swabi district, whose main goal is to protect the interests of local entrepreneurs to develop industries and encourage investment, strengthen borders and ties with the business community across the country. creating the necessary conditions. It is safe to say that the establishment of cooperation with this organization of Pakistan will be one of the most successful projects aimed at increasing the export potential of our country!\r\nA video conference will be held between the Exporters\' Association of Uzbekistan and the leadership of the Swabi Chamber of Commerce and Industry of Pakistan. The talks will focus on plans to establish partnerships between the two countries and agree on the implementation of future joint projects. The video conference is scheduled for October….', 'Ўзбекистон Экспортчилар уюшмаси ҳамда Покистон давлатининг SWABI Савдо-саноат палатаси раҳбарияти ўртасида видео-конференция ташкил этилади. Мазкур масофавий мулоқотда икки мамлакат орасидаги шерикчилик алоқаларини ўрнатиш бўйича режалар ва келгусида ҳамкорликда йўлга қўйиладиган лойиҳаларнинг амалиётга тадбиқ этилишини келишиб олиш бўйича масалалар муҳокама қилинади. Видео-конференциянинг октабрь ойи давомида бўлиб ўтиши режалаштирилмоқда….', 'Торгово-промышленная палата Сваби (SCCI) - первая предпринимательская организация в пакистанском районе Сваби, основной целью которой является защита интересов местных предпринимателей с целью развития промышленности и поощрения инвестиций, укрепления границ и связей с бизнес-сообществом по всей стране. создание необходимых условий. Можно с уверенностью сказать, что налаживание сотрудничества с этой организацией Пакистана будет одним из самых успешных проектов, направленных на увеличение экспортного потенциала нашей страны!\r\nБудет проведена видеоконференция между Ассоциацией экспортеров Узбекистана и руководством Торгово-промышленной палаты Сваби Пакистана. На переговорах будут обсуждаться планы по установлению партнерских отношений между двумя странами и согласование реализации будущих совместных проектов. Видеоконференция запланирована на октябрь….', 'Diyorakhon Nabijonova', 'Диёрахон Набиджонова', 'Диёрахон Набиджонова', NULL, 'news/93f61bd165f9cce263c5f6eec728172f.jpg', NULL, NULL, NULL, NULL, '2020-10-07 03:05:49', '2020-10-08 04:47:23'),
(11, 2, 'news', 'article', 'Between Uzbek and Turkmen business circles, online meeting was held', 'Ўзбек-Туркман ишбилармон доиралари ўртасида онлайн мулоқот ўтказилди', 'Между узбекскими и туркменскими деловыми кругами онлайн-встреча было проведено', NULL, NULL, NULL, 'online-meeting', 'Representatives of the Chambers of Commerce and Industry of Uzbekistan and Turkmenistan held an online video conference. The event, organized on October 7 via the Zoom platform, was attended by Chairman of the Chamber of Commerce and Industry of Uzbekistan Adham Ikramov and Chairman of the Chamber of Commerce and Industry of Turkmenistan Dovletgeldi Rejepov as chairmen of national branches of the Business Council of the two countries.', 'Ўзбекистон ҳамда Туркманистон Савдо-саноат палаталари вакиллари ўртасида онлайн тарзда видео-мулоқот бўлиб ўтди. 7 октабрь куни Зоом платформаси орқали ташкил этилган мазкур тадбирда Ўзбекистон Республикаси Савдо-саноат палатаси раиси Адҳам Икрамов ҳамда Туркманистон Савдо-саноат палатаси раиси Довлетгелди Режепов икки мамлакат ишбилармонлари кенгашининг миллий бўлимлари раиси сифатида қатнашишди.', 'Представители Торгово-промышленных палат Узбекистана и Туркменистана провели онлайн-видеоконференцию. В мероприятии, организованном 7 октября через платформу Zoom, приняли участие председатель Торгово-промышленной палаты Узбекистана Адхам Икрамов и председатель Торгово-промышленной палаты Туркменистана Довлетгельди Реджепов в качестве председателей национальных отделений Делового совета двух стран.', '<p>The remote meeting was attended by more than 30 representatives of the two countries, as well as the chairman of the Association of Exporters of Uzbekistan Mukhtor Umarov.</p>', '<p>Масофавий учрашувда икки давлатнинг 30 дан ортиқ вакиллари билан бир қаторда Ўзбекистон экспортчилар уюшмаси раиси Мухтор Умаров ҳам иштирок этди.</p>', '<p>В дистанционной встрече приняли участие более 30 представителей двух стран, а также председатель Ассоциации экспортеров Узбекистана Мухтор Умаров.</p>', '<p>The issues of cooperation in industry, transport, healthcare, pharmaceuticals and agriculture were considered within the framework of the action plan. The sides also discussed issues of assistance in finding partners in the difficult period of the global economy caused by the coronavirus pandemic and the establishment of partnerships between business representatives of the two countries through the provision of B2B format negotiations.</p>\r\n\r\n<p>During the online dialogue, a presentation of the main promising sectors of the Uzbek economy was made. The participants of Turkmenistan were briefed on the results of economic reforms in Uzbekistan, the conditions created for investment and doing business in the country.</p>\r\n\r\n<p>It should be noted that today there are 148 enterprises with Turkmen capital and 66 joint ventures in Uzbekistan. This, in turn, indicates the establishment of partnership with the Turkmen state in the economic and social spheres, indicating the existence of mutually beneficial cooperation for both countries!</p>\r\n\r\n<p>During the talks, the representatives of Turkmenistan praised the pace of socio-economic development of Uzbekistan over the past three years and the country&#39;s efforts to expand trade and economic relations with foreign countries.</p>\r\n\r\n<p>At the end of the event, promising plans were identified to promote the development of cooperation between entrepreneurs of the two countries, create conditions for finding new partnerships, as well as address specific problems in business between businessmen of Uzbekistan and Turkmenistan.</p>', '<p>Тадбир режаси доирасида саноат, транспорт, соғлиқни сақлаш, фармацевтика ҳамда қишлоқ хўжалиги соҳасидаги ҳамкорлик масалалари кўриб чиқилди. Шунингдек, коронавирус пандемияси сабабли юзага келган глобал иқтисодиётдаги оғир даврда ҳамкорлар топишга кўмаклашиш ва икки мамлакат бизнес вакиллари ўртасида &ldquo;Б2Б&rdquo; форматидаги музокараларни таъминлаш орқали шерикчилик алоқаларини йўлга қўйиш масалалари муҳокама қилинди.</p>\r\n\r\n<p>Онлайн мулоқот давомида Ўзбекистон иқтисодиётининг асосий истиқболли тармоқларининг тақдимоти намойиш этилди. Туркманистон қатнашчиларига Ўзбекистонда амалга оширилаётган иқтисодий ислоҳотларнинг натижалари, Республикада инвестициялар киритиш ва бизнес юритиш учун яратилган шароитлар таништириб ўтилди.</p>\r\n\r\n<p>Бир нарсага алоҳида эътибор қаратиш лозимки, бугунги кунда Ўзбекистонда туркман капитали иштирокидаги 148 корхона, 66 қўшма корхона фаолият юритмоқда. Бу ўз навбатида, иқтисодий-ижтимоий соҳада туркман давлати билан шерикчиликни йўлга қўйиш ҳар икки давлат учун ҳам манфаатли ҳамкорликнинг мавжудлигидан дарак беради, десак адашмаймиз!</p>\r\n\r\n<p>Мулоқотда Туркманистон вакиллари томонидан сўнгги уч йил давомида Ўзбекистоннинг ижтимоий-иқтисодий ривожланиш суръатлари ва мамлакатнинг хорижий мамлакатлар билан савдо-иқтисодий алоқаларини кенгайтиришдаги фаолиятини юқори баҳоланди.</p>\r\n\r\n<p>Тадбир сўнггида, икки мамлакат тадбиркорлари ўртасидаги ҳамкорликни ривожлантиришга кўмаклашадиган, янги шерикчилик алоқаларни топиш учун шароит яратадиган, шунингдек, Ўзбекистон ва Туркманистон ишбилармонлари ўртасида бизнес соҳасида юзага келадиган аниқ муаммоларни ҳал қиладиган истиқболли режалар белгиланиб олинди.</p>', '<p>В рамках плана мероприятий были рассмотрены вопросы сотрудничества в промышленности, транспорте, здравоохранении, фармацевтике и сельском хозяйстве. Стороны также обсудили вопросы содействия в поиске партнеров в сложный период мировой экономики, вызванного пандемией коронавируса, и налаживания партнерских отношений между представителями бизнеса двух стран путем предоставления переговоров в формате B2B.</p>\r\n\r\n<p>В ходе онлайн-диалога была проведена презентация основных перспективных секторов экономики Узбекистана. Участники из Туркменистана были ознакомлены с результатами экономических реформ в Узбекистане, созданными условиями для инвестирования и ведения бизнеса в стране.</p>\r\n\r\n<p>Следует отметить, что сегодня в Узбекистане действуют 148 предприятий с туркменским капиталом и 66 совместных предприятий. Это, в свою очередь, свидетельствует об установлении партнерских отношений с туркменским государством в экономической и социальной сферах, свидетельствуя о наличии взаимовыгодного сотрудничества для обеих стран!</p>\r\n\r\n<p>В ходе переговоров представители Туркменистана высоко оценили темпы социально-экономического развития Узбекистана за последние три года и усилия страны по расширению торгово-экономических связей с зарубежными странами.</p>\r\n\r\n<p>По итогам мероприятия были определены перспективные планы по содействию развитию сотрудничества между предпринимателями двух стран, созданию условий для нахождения новых партнерских отношений, а также решению конкретных проблем в бизнесе между бизнесменами Узбекистана и Туркменистана.</p>\r\n\r\n<p>&nbsp;</p>', 'Association of Exporters of Uzbekistan Press service', 'Ўзбекистон Экспортчилар уюшмаси  Матбуот хизмати', 'Ассоциация экспортеров Узбекистана\r\n\r\nПресс-служба', 'Diyorakhon Nabijonova', 'Diyoraxon Nabijonova', 'Диёрахон Набижонова', NULL, 'news/032f3b4c10901657390a96ebf3522cbe.jpg', 'news/db7b2b323eba87dbc89d9f8e52d226ae.jpg', NULL, NULL, NULL, '2020-10-08 05:19:51', '2020-10-08 05:41:23'),
(12, 6, 'event', 'article', 'Uzbekistan and Ukraine', 'Ўзбекистон ҳамда Украина', 'Узбекистан и Украина', 'video conferencing will be held', 'видео-конференция ўтказилади', 'будет проведена видео-конференция', 'Ўзбекистон ҳамда Украина бизнес ҳамжамияти вакиллари ўртасида видео-конференция ўтказилади.', '12345798', '123456798', '1234567985', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/01c44afe46eea2e6ff95bf5dbc18cfc9.jpg', NULL, NULL, NULL, NULL, '2020-10-09 00:53:36', '2020-10-09 01:00:00'),
(14, 2, 'news', 'video', 'Do you know a unique, powerful antioxidant, valuable plant that does not grow in our soil?', 'Ноеб, кучли антиоксидант, қимматбаҳо ва бизнинг тупроқда ўсмайдиган ўсимликни биласизми?', 'Знаете ли вы уникальное, мощное антиоксидантное и ценное растение, которое не растет в нашей почве?', NULL, NULL, NULL, 'video1', 'Do you know a unique, powerful antioxidant, valuable plant that does not grow in our soil?', 'Ноеб, кучли антиоксидант, қимматбаҳо ва бизнинг тупроқда ўсмайдиган ўсимликни биласизми?', 'Знаете ли вы уникальное, мощное антиоксидантное и ценное растение, которое не растет в нашей почве?', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/JnQ1GuaYFMA\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/9a4528d1867cf32792cbe6ae59cdcfab.jpg', NULL, NULL, NULL, NULL, '2020-10-21 07:36:05', '2020-10-21 07:37:30'),
(15, 2, 'news', 'video', 'Business Clinic Mukhtor Umarov The role of marketing in exports', 'Бизнес клиника Мухтор Умаров Экспорт қилишда маркетингнинг ўрни', 'Business Clinic Мухтор Умаров Роль маркетинга в экспорте', NULL, NULL, NULL, 'video2', 'Business Clinic Mukhtor Umarov The role of marketing in exports', 'Бизнес клиника Мухтор Умаров Экспорт қилишда маркетингнинг ўрни', 'Business Clinic Мухтор Умаров Роль маркетинга в экспорте', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/Betj4XxjmkM\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/eef974d34dc825324736505b4e11c74a.jpg', NULL, NULL, NULL, NULL, '2020-10-21 07:42:44', '2020-10-21 07:42:44'),
(16, 3, 'article', 'article', 'Uzbekistan exported carpets worth $ 18 million', 'Ўзбекистон 18 миллион долларлик гиламларни экспорт қилди', 'Узбекистан экспортировал ковров на 18 миллионов долларов', NULL, NULL, NULL, 'Eksportchilar uyushmasi', 'Over the past nine months of this year, more than 6 million square meters of carpets worth 18.1 million US dollars have been cleared for export in Uzbekistan.', 'Ўзбекистонда жорий йилнинг ўтган 9 ойи давомида 18,1 миллион АҚШ доллари қийматидаги 6 миллион м2 дан ортиқ гиламларни экспорт божхона режимига расмийлаштирилди.', 'За последние девять месяцев этого года в Узбекистане на экспорт оформлено более 6 миллионов квадратных метров ковров на сумму 18,1 миллиона долларов США.', NULL, NULL, NULL, '<p>According to the State Customs Committee, 26 percent of carpets were exported to Azerbaijan, 25 percent to Kyrgyzstan, 16 percent to Kazakhstan, 13 percent to Russia and 13 percent to Afghanistan.</p>\r\n\r\n<p>Carpet exports to the United States have also doubled this year.<br />\r\n&nbsp;</p>', '<p>Давлат божхона қўмитаси маълумотларига кўра, гилам маҳсулотларининг 26 фоизи Озарбайжонга,&nbsp; 25 фоизи Қирғизистонга, 16 фоизи Қозоғистонга, 13 фоизи Россияга ва 13 фоизи Афғонистонга экспорт қилинган.</p>\r\n\r\n<p>Шунингдек, жорий йилда гилам экспорти АҚШга 2 баробарга ошган.</p>', '<p>По данным Государственного таможенного комитета, 26 процентов ковров было экспортировано в Азербайджан, 25 процентов - в Кыргызстан, 16 процентов - в Казахстан, 13 процентов - в Россию и 13 процентов - в Афганистан.</p>\r\n\r\n<p>Экспорт ковров в США в этом году также увеличился вдвое.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/200dbf5bda511ae9de6f547efa94f5ac.jpg', NULL, NULL, NULL, NULL, '2020-10-30 06:27:33', '2020-10-30 06:27:33'),
(18, 2, 'news', 'photo', 'Economic cooperation knows no distance.', 'Иқтисодий ҳамкорлик масофа билмайди', 'Экономическое сотрудничество не знает расстояний.', NULL, NULL, NULL, 'Иқтисодий ҳамкорлик масофа билмайди', 'A business forum has been organized by the Association of Exporters of Uzbekistan and the Indian Chamber of Commerce and Industry.', 'Ўзбекистон Экспортчилар уюшмаси ҳамда Ҳиндистон импортчилар Савдо-саноат палаталари ҳамкорлигида бизнес-форум ташкил этилди.', 'Бизнес-форум организован Ассоциацией экспортеров Узбекистана и Индийской торгово-промышленной палатой.', NULL, NULL, NULL, '<p>The opening ceremony was attended by Ambassador Extraordinary and Plenipotentiary of Uzbekistan to India Dilshod Ahatov, Chairman of the Exporters Association of Uzbekistan Mukhtor Umarov, President of the Indian Chamber of Commerce and Industry Atul Kumar Saxena, Ministry of Investment and Foreign Trade. Officials of the Export Promotion Agency, business representatives of the association in foreign countries, as well as representatives of business circles of the two countries were present.</p>\r\n\r\n<p>D. Ahatov noted that due to the joint efforts of the business circles of India and Uzbekistan, the volume of trade turnover is growing significantly. In particular, bilateral trade in 2019 increased by 24% to $ 355.4 million. To further increase this figure, Uzbek companies supply the Indian market with a wide range of chemicals and fertilizers, including cotton fiber and fabric, raw silk, copper and other unprocessed products, ferrous metals, electrical appliances, cables and wires, leather goods, vegetables and fruits. It was emphasized that it has ample opportunity to give.<br />\r\n&nbsp;</p>', '<p>&ldquo;Ўзбекистон &ndash; Ҳиндистон тадбиркорлик субъектлари ўртасида икки томонлама савдони шакллантириш&rdquo; деб номланган тадбирнинг очилиш маросимида мамлакатимизнинг Ҳиндистон Республикасидаги Фавқулодда ва мухтор элчиси Дилшод Аҳатов, Ўзбекистон экспортчилар уюшмаси раиси Мухтор Умаров, Ҳиндистон импортчилар Савдо саноат палаталари президенти Атул Кумар Саксена, Инвестициялар ва ташқи савдо вазирлиги ҳузуридаги Экспортни рағбатлантириш агентлиги масъул ходимлари, уюшманинг хорижий давлатлардаги бизнес вакиллари шунингдек, икки мамлакат ишбилармон доиралари вакиллари иштирок этди.</p>\r\n\r\n<p>Д.Аҳатов Ҳиндистон ва Ўзбекистон ишбилармон доираларининг биргаликдаги саъй-ҳаракатлари туфайли маҳсулот айирбошлаш ҳажми сезиларли даражада ортиб бораётганини қайд этди. Хусусан, ўзаро савдо 2019 йил 24 фоизга ўсиб, 355,4 миллион долларга етди. Ушбу кўрсаткични янада ошириш учун республикамиз компаниялари Ҳиндистон бозорига кўплаб турдаги, жумладан кимёвий модда ва ўғит, пахта толаси ва мато, хом ипак, мис ва бошқа қайта ишланмаган маҳсулотлар, қора металл, электр техникаси, кабель ва сим, чарм буюмлар, сабзавот ва мева етказиб бериш учун кенг имкониятга эга экани таъкидланди.</p>', '<p>В церемонии открытия приняли участие Чрезвычайный и Полномочный Посол Узбекистана в Индии Дильшод Ахатов, председатель Ассоциации экспортеров Узбекистана Мухтор Умаров, президент Индийской торгово-промышленной палаты Атул Кумар Саксена, Министерство инвестиций и внешней торговли. Присутствовали официальные лица Агентства по продвижению экспорта, бизнес-представители ассоциации в зарубежных странах, а также представители деловых кругов двух стран.</p>\r\n\r\n<p>Д.Ахатов отметил, что благодаря совместным усилиям деловых кругов Индии и Узбекистана объем товарооборота значительно растет. В частности, двусторонний товарооборот в 2019 году увеличился на 24% до 355,4 миллиона долларов. Чтобы еще больше увеличить этот показатель, узбекские компании поставляют на индийский рынок широкий спектр химикатов и удобрений, включая хлопковое волокно и ткань, шелк-сырец, медь и другие необработанные продукты, черные металлы, электрические приборы, кабели и провода, изделия из кожи, овощи и фрукты. Было подчеркнуто, что у него есть широкие возможности для дачи.<br />\r\n&nbsp;</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/9897ff47d5cc3bb536bfd728758fef0d.jpg', NULL, NULL, NULL, NULL, '2020-11-03 01:09:57', '2020-11-03 01:11:19'),
(19, 2, 'news', 'article', 'A three-day seminar-training with the participation of Feruza Yakubova was held at the Academy of Entrepreneurship and Business.', '“Тадбиркорлик ва бизнес” академиясида Феруза Якубова иштирокида 3 кунлик семинар-тренинг ўтказилди.', 'Трехдневный семинар-тренинг с участием Ферузы Якубовой прошел в Академии предпринимательства и бизнеса.', NULL, NULL, NULL, 'tba-seminar', 'A three-day seminar-training with the participation of designer, marketer Feruza Yakubova was held at the Academy of Entrepreneurship and Business in Fergana region, initiated by the Association of Exporters of Uzbekistan.', '“Ўзбекистон Экспортчилари” уюшмаси ташаббуси билан Фарғона вилоятида ташкил этилган “Тадбиркорлик ва бизнес” академиясида дизайнер, маркетолог Феруза Якубова иштирокида 3 кунлик семинар-тренинг ўтказилди.', 'Трехдневный семинар-тренинг с участием дизайнера, маркетолога Ферузы Якубовой прошел в Академии предпринимательства и бизнеса Ферганской области по инициативе Ассоциации экспортеров Узбекистана.', NULL, NULL, NULL, '<p>On the last day of the training program, a presentation on modeling was given to the participants in the classroom of the Academy of Entrepreneurship and Business, and design questions of interest to entrepreneurs were answered in detail.</p>', '<p>Ўқув дастурининг сўнгги кунида &ldquo;Тадбиркорлик ва бизнес&rdquo; академияси ўкув хонасида дарс иштирокчиларига моделерлик буйича тақдимот тақдим этилди ва &nbsp;тадбиркорларни қизиқтирган дизайнерликка доир саволларга батафсил тарзда жавоб берилди.<br />\r\n&nbsp;</p>', '<p>В последний день учебной программы участникам была представлена ​​презентация по моделированию на занятиях Академии предпринимательства и бизнеса, а подробные вопросы по дизайну заинтересовали предпринимателей.</p>', 'The first day of the program was held in the spirit of an introductory lesson with the students of the academy. On the second day, a seminar-training with entrepreneurs was organized in the conference hall of the House of Entrepreneurs in the region. After the seminar, entrepreneurs were interviewed and their problems and shortcomings in the field were studied.', 'Мазкур  дастурнинг биринчи куни академия ўкувчилари билан танишув дарси руҳида ўтди. Иккинчи куни вилоятдаги “Тадбиркорлар уйи” биносининг  мажлислар залида ишлаб чикарувчи тадбиркорлар билан семинар-тренинг ташкил этилди. Семинардан сўнг  тадбиркорлар билан сухбат ўтказилиб, уларнинг соҳа бўйича муаммо ва камчиликлари ўрганиб чиқилди.', 'Первый день программы прошел в духе вводного занятия со студентами академии. Во второй день в конференц-зале Дома предпринимателей области был организован семинар-тренинг с предпринимателями. После семинара были проведены собеседования с предпринимателями, изучены их проблемы и недостатки в данной сфере.', 'OAV', 'OAV', 'OAV', NULL, 'news/15b3a5fae1b48fca0dce69aae0b443e6.jpg', 'news/40d4a9a5d437feda3a469ebcd34868ca.jpg', 'news/9e007d38117f0292c75eaad8b45d412d.jpg', NULL, NULL, '2020-11-30 07:32:54', '2020-11-30 07:35:55'),
(20, 2, 'event', 'article', 'The Council of Representatives of the Uzbek-Azerbaijani Business Circle was held.', 'Ўзбекистон - Озарбайжон ишбилармон доира вакилларининг Кенгаши бўлиб ўтди.', 'Состоялся Совет представителей узбекско-азербайджанского делового круга.', NULL, NULL, NULL, 'event-1', 'zoom', 'zoom', 'zoom', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/c6311cdfbadfa3ea1131549f10617ece.jpg', NULL, NULL, NULL, NULL, '2020-11-30 07:39:45', '2020-11-30 07:42:13'),
(21, 5, 'news', 'article', 'A regional seminar on \"UN Convention against Corruption and its review mechanism\" was organized.', '“БМТнинг Коррупцияга қарши конвенцияси ва унинг обзор механизми” мавзусида минтақавий семинар ташкил этилди.', 'Был организован региональный семинар «Конвенция ООН против коррупции и механизм ее обзора».', NULL, NULL, NULL, 'chairman-1', 'The first part of the seminar is being held today in the conference hall of the Hyatt Regency Tashkent.', '“Hyatt Regency Tashkent” меҳмонхонасининг конференциялар залида бугун ушбу семинарнинг биринчи қисми бўлиб ўтмоқда.', 'Первая часть семинара проходит сегодня в конференц-зале отеля Hyatt Regency Tashkent.', NULL, NULL, NULL, '<p>The Anti-Corruption Agency, the United Nations Office on Drugs and Crime (UNODC) Regional Office for Central Asia and the European Bank for Reconstruction and Development (EBRD) organized a regional seminar on November 24-25 on the UN Convention against Corruption and its Review Mechanism.</p>', '<p>Коррупцияга қарши курашиш агентлиги, Бирлашган миллатлар ташкилотининг гиёҳванд моддалар ва жиноятчилик бўйича бошқармасининг Марказий Осиёдаги минтақавий ваколатхонаси ҳамда Европа ривожланиш ва тараққиёт банки ҳамкорлигида жорий йилнинг 24-25 ноябрь кунлари &ldquo;БМТнинг Коррупцияга қарши конвенцияси ва унинг обзор механизми&rdquo; мавзусида минтақавий семинар ташкил этилди.&nbsp;</p>', '<p>Агентство по борьбе с коррупцией, Региональное отделение Управления ООН по наркотикам и преступности (УНП ООН) для Центральной Азии и Европейский банк реконструкции и развития (ЕБРР) организовали 24-25 ноября региональный семинар по Конвенции ООН против коррупции и ее механизму обзора.</p>', NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'news/59f200f75c94b04f520e9b59142e38c8.jpg', NULL, NULL, NULL, NULL, '2020-11-30 07:51:07', '2020-11-30 07:53:13');
INSERT INTO `news` (`id`, `category_id`, `type`, `media_type`, `title_en`, `title_uz`, `title_ru`, `subtitle_en`, `subtitle_uz`, `subtitle_ru`, `slug_en`, `intro_en`, `intro_uz`, `intro_ru`, `highlighted_en`, `highlighted_uz`, `highlighted_ru`, `body_en`, `body_uz`, `body_ru`, `conclusion_en`, `conclusion_uz`, `conclusion_ru`, `author_en`, `author_uz`, `author_ru`, `link`, `image1`, `image2`, `image3`, `image4`, `deleted_at`, `created_at`, `updated_at`) VALUES
(22, 2, 'news', 'video', 'CNR Expo in Turkey and participation of Uzbekistan', 'Туркияда «CNR Expo» кўргазмаси ва Ўзбекистон иштироки', 'CNR Expo в Турции и участие Узбекистана', NULL, NULL, NULL, 'video3', 'CNR Expo in Turkey and participation of Uzbekistan', 'Туркияда «CNR Expo» кўргазмаси ва Ўзбекистон иштироки', 'CNR Expo в Турции и участие Узбекистана', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/TgFdoOW0eVE\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/8d548524ad190f163dd14b858612afbf.jpg', NULL, NULL, NULL, NULL, '2020-12-01 03:54:12', '2020-12-01 03:54:57'),
(23, 2, 'news', 'video', 'A new platform by the Young Programmers Group under the Association of Experts of Uzbekistan', 'Ўзбекистон экспертчилари уюшмаси қошидаги «Ёш дастурчилар» гуруҳи томонидан янги платформа', 'Новая площадка Группы молодых программистов при Ассоциации экспертов Узбекистана', NULL, NULL, NULL, 'video4', 'A new platform by the Young Programmers Group under the Association of Experts of Uzbekistan', 'Ўзбекистон экспертчилари уюшмаси қошидаги «Ёш дастурчилар» гуруҳи томонидан янги платформа', 'Новая площадка Группы молодых программистов при Ассоциации экспертов Узбекистана', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/L1uLN7vSBtw\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/7df719b3d543453cd4d1ef47109772be.jpg', NULL, NULL, NULL, NULL, '2020-12-01 04:00:02', '2020-12-01 04:00:02'),
(24, 2, 'news', 'article', 'Entrepreneurs can get HALAL certificate from MAIB with the support of the Association of Food Industry of Uzbekistan!', 'Тадбиркорлар ҲАЛОЛ сертификатини Ўзбекистон Озиқ-овқат саноати уюшмаси кўмаги остида МАИБ дан олишлари мумкин!', 'Предприниматели могут получить сертификат HALAL от MAIB при поддержке Ассоциации пищевой промышленности Узбекистана!', NULL, NULL, NULL, 'Halol-sertifikati-olish-ufia', 'MAIB (International Association of Islamic Business) - has been operating in Russia since late 2016. The purpose of this organization is to establish business cooperation between Russian and foreign entrepreneurs based on Muslim ethics and the best business traditions.', 'МАИБ (Международная Ассоциация Исламского Бизнеса) - 2016 йил охиридан бошлаб Россияда фаолият юритиб келмоқда. Мазкур ташкилотнинг мақсади Россия ва хорижий мамлакатлар тадбиркорлари ўртасида мусулмон ахлоқи ҳамда энг яхши тадбиркорлик анъаналарига асосланган ишбилармонлик ҳамкорлигини ташкил этиш ҳисобланади.', 'MAIB (Международная ассоциация исламского бизнеса) - работает в России с конца 2016 года. Цель этой организации - наладить деловое сотрудничество между российскими и иностранными предпринимателями на основе мусульманской этики и лучших традиций ведения бизнеса.', NULL, NULL, NULL, '<p>The members of this platform, which unites Russian businessmen and international business elites, can be individuals, as well as representatives of various companies, partners of the Russian state near and far abroad: large, medium and small businesses. All entrepreneurs, regardless of nationality, place of residence, religion, have the right to participate in the activities of the organization as members and partners of the association.</p>\r\n\r\n<p>&nbsp; There is only one condition for membership in the association: businessmen must not engage in activities prohibited by the holy religion of Islam, and must adhere to the moral norms of Islam.</p>', '<p>Россиялик&nbsp;ишбилармонлар&nbsp;ва&nbsp;халқаро&nbsp;бизнес&nbsp;элиталарни&nbsp;бирлаштирган&nbsp;ушбу&nbsp;платформа&nbsp;аъзолари&nbsp;жисмоний&nbsp;шахслар,&nbsp;шунингдек,&nbsp;турли&nbsp;компаниялар,&nbsp;Россия&nbsp;давлатининг&nbsp;яқин,&nbsp;узоқ&nbsp;хориждаги&nbsp;ҳамкорлари:&nbsp;йирик,&nbsp;ўрта&nbsp;ва&nbsp;кичик&nbsp;бизнес&nbsp;вакиллари&nbsp;бўлишлари&nbsp;мумкин.&nbsp;Миллати,&nbsp;яшаш&nbsp;жойи,&nbsp;динидан&nbsp;қатъий&nbsp;назар&nbsp;барча&nbsp;тадбиркорлар&nbsp;ассоциация&nbsp;аъзолари&nbsp;ва&nbsp;шериклари&nbsp;сифатида&nbsp;ташкилот&nbsp;фаолиятида&nbsp;қатнашиш&nbsp;ҳуқуқига&nbsp;эга&nbsp;ҳисобланади.<br />\r\n<br />\r\nУюшмага&nbsp;аъзо&nbsp;бўлишнинг&nbsp;фақат&nbsp;биттагина&nbsp;шарти&nbsp;бор:&nbsp;ишбилармонлар&nbsp;муқаддас&nbsp;Ислом&nbsp;дини&nbsp;томонидан&nbsp;таъқиқланган&nbsp;фаолият&nbsp;билан&nbsp;шуғулланмасликлари,&nbsp;Исломнинг&nbsp;ахлоқий&nbsp;меъёрларига&nbsp;риоя&nbsp;этишлари&nbsp;лозим.</p>', '<p>Участниками этой платформы, объединяющей российских бизнесменов и международной бизнес-элиты, могут быть физические лица, а также представители различных компаний, партнеров российского государства в ближнем и дальнем зарубежье: крупного, среднего и малого бизнеса. Все предприниматели, независимо от национальности, места жительства, вероисповедания, имеют право участвовать в деятельности организации в качестве членов и партнеров ассоциации.</p>\r\n\r\n<p>&nbsp; Есть только одно условие для членства в ассоциации: бизнесмены не должны заниматься деятельностью, запрещенной священной религией ислама, и должны придерживаться моральных норм ислама.</p>', 'Representative offices of the International Islamic Business Association are opening not only in Russia, but also in other countries around the world. On the eve of the establishment of the representative office of MAIB in our country, senior officials of the Association \"Food Industry\" and \"Exporters of Uzbekistan\" met with the Vice President of the organization. During the meeting, it was agreed that the HALOL certificate from the International Islamic Business Association will be issued to local entrepreneurs in accordance with the established requirements.', 'Халқаро Ислом бизнес ассоциацияси ваколатхоналари нафақат Россияда, балки дунёнинг бошқа мамлакатларида ҳам очилмоқда. МАИБ нинг мамлакатимиздаги ваколатхонаси ташкил этилиши арафасида “Озиқ-овқат саноати” ва “Ўзбекистон Экспортчилари” уюшмаси раҳбар ходимлари мазкур ташкилот вице-президенти билан учрашишди. Суҳбат давомида Халқаро Ислом бизнес ассоциациясидан ҲАЛОЛ сертификатини маҳаллий тадбиркорларга белгиланган талаблар асосида берилишига келишиб олинди.', 'Представительства Международной исламской бизнес-ассоциации открываются не только в России, но и в других странах мира. Накануне открытия представительства MAIB в нашей стране руководители Ассоциации «Пищевая промышленность» и «Экспортеры Узбекистана» встретились с вице-президентом организации. В ходе встречи было согласовано, что Международная исламская бизнес-ассоциация будет выдавать сертификаты HALOL местным предпринимателям в соответствии с установленными требованиями.', NULL, NULL, NULL, NULL, 'news/32f17fe0ae2972fc6c08f419b4a6e1d9.jpg', 'news/8ad40b672c33c3927e17bdfa3a77b272.jpg', 'news/19d2797e3b3b30525cf3a6ef1f422e7d.jpg', NULL, NULL, '2020-12-01 04:08:20', '2020-12-01 04:11:39');

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pictures`
--

CREATE TABLE `pictures` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name_en` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uz` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pictures`
--

INSERT INTO `pictures` (`id`, `name_en`, `name_uz`, `name_ru`, `image`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 'MEETING IN NAVOI', 'НАВОИЙДАГИ УЧРАШУВ', 'ВСТРЕЧА В НАВОИ', 'pictures/30f783f09354bcfc2368ae9c6b909671.jpg', NULL, '2020-09-30 03:09:24', '2020-09-30 03:09:24'),
(2, 'ONLINE MEETING', 'ОНЛАЙН УЧРАШУВ', 'ОНЛАЙН ВСТРЕЧИ', 'pictures/f67aad1ef8405d995d8eccddd6516501.jpg', NULL, '2020-09-30 03:13:07', '2020-09-30 03:13:07');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `branche_id` bigint(20) UNSIGNED NOT NULL,
  `status` enum('main','local','international','sud') COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_en` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_uz` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name_ru` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_en` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_uz` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `position_ru` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
  `reception_time_en` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reception_time_uz` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reception_time_ru` varchar(300) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `linkedin` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `twitter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`id`, `branche_id`, `status`, `name_en`, `name_uz`, `name_ru`, `position_en`, `position_uz`, `position_ru`, `image`, `reception_time_en`, `reception_time_uz`, `reception_time_ru`, `email`, `facebook`, `linkedin`, `twitter`, `deleted_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'main', 'Mukhtor Umarov', 'Mukhtor Umarov', 'Мухтор Умаров', 'Chairman of The Board', 'Бошқарув Раиси', 'Председатель Совета', 'staff/575ac68907c8c33f47f386b955f6c46d.jpg', 'Wednesday 14:00-17:40', 'Сешанба 14:00-17:00', 'Вторник 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-09-19 06:16:00', '2020-10-08 05:51:06'),
(2, 1, 'main', 'Bobir Rasulov', 'РАСУЛОВ БОБУР', 'РАСУЛОВ БОБУР', 'Deputy Chairman of the Board', 'Бошқарув раиси ўринбосари', 'Заместитель председателя', 'staff/532c5e46372c23a3dccda1aa4508f914.jpg', 'Monday 10:00-12:00', 'Душанба 10:00-12:00', 'Понедельник 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-09-19 06:18:46', '2020-10-26 08:02:01'),
(3, 2, 'local', 'Mardiyev jamshid Uchqunovich', 'Мардийев жамшид Учқунович', 'Мардиев Джамшид Учкунович', 'Head of territorial division', 'Ҳудудий бўлинма бошлиғи', 'Начальник территориального отдела', 'staff/4bd6deba6b2345a638188589c2a281df.jpg', NULL, NULL, NULL, '+99890-282-17-70', NULL, NULL, NULL, NULL, '2020-09-21 01:34:30', '2020-10-07 07:28:52'),
(4, 3, 'local', 'Turaev Ravshan Akbarovich', 'Тураев Равшан Акбарович', 'Тураев Равшан Акбарович', 'Head of territorial division', 'Ҳудудий бўлинма бошлиғи', 'Начальник территориального отдела', 'staff/6997c46664afcf09c99daee80b9cf53e.jpg', NULL, NULL, NULL, '+99899-603-78-88', NULL, NULL, NULL, NULL, '2020-09-21 01:45:16', '2020-10-07 07:28:40'),
(5, 1, 'main', 'MALIKOV YORKIN ERKINDJONOVICH', 'MАЛИКОВ ЁРҚИН ЭРКИНДЖОНОВИЧ', 'MАЛИКОВ ЁРҚИН ЭРКИНДЖОНОВИЧ', 'Deputy Chairman of the Board', 'Бошқарув Раисининг Ўринбосари', 'Заместитель председателя правления', 'staff/66dc309bbab013c9f4a96356699f0165.jpg', 'Monday 10:00-12:00', 'Душанба 10:00-12:00', 'Понедельник 10:00-12:00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:18:35', '2020-10-07 07:21:26'),
(6, 1, 'main', 'UMIRSHAYHOV BAXODIR BAKHTIYAROVICH', 'УМИРШАЙҲОВ БАХОДИР БАХТИЯРОВИЧ', 'УМИРШАЙҲОВ БАХОДИР БАХТИЯРОВИЧ', 'Deputy Chairman for Finance', 'Молия Ишлари Бўйича Раис Ўринбосари', 'Заместитель председателя по финансам', 'staff/4fe03461a904397a545522a42b1fea44.jpg', 'Wednesday, Friday 14: 00-17: 00', 'Чоршанба, Жума 14:00-17:00', 'Среда, пятница 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:24:03', '2020-10-07 07:24:03'),
(7, 1, 'main', 'FAYAZOV DJAMSHED KUDRATILLAEVICH', 'ФАЯЗОВ ДЖАМШЕД КУДРАТИЛЛАЕВИЧ', 'ФАЯЗОВ ДЖАМШЕД КУДРАТИЛЛАЕВИЧ', 'Deputy Chairman for International Relations', 'Халқаро Алоқалар Бўйича Раис Ўринбосари', 'Заместитель председателя по международным связям', 'staff/c0534c05a02043250a94893862a90dbd.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:27:39', '2020-10-07 07:27:39'),
(8, 4, 'local', 'Ilmagabetov Yorqin', 'Илмаганбетов Ёрқин', 'Ильмагабетов Ёркин', 'Head of territorial division', 'Ҳудудий бўлинма бошлиғи', 'Начальник территориального отдела', 'staff/136cac4a1ecc925144d8a63aa6c5b931.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 07:29:45', '2020-10-07 07:29:45'),
(9, 1, 'main', 'MENGLIEV DILSHOD KURBONOVICH', 'МЕНГЛИЕВ ДИЛШОД ҚУРБОНОВИЧ', 'МЕНГЛИЕВ ДИЛШОД ҚУРБОНОВИЧ', 'Deputy Chairman for Coordination of Territorial Subdivisions', 'Худудий Бўлинмалар Фаолиятини Мувофиқлаштириш Бўйича Раис Уринбосари', 'Заместитель председателя по координации территориальных подразделений', 'staff/9bb8eaef3378b6e320fe845637d71b52.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:29:57', '2020-10-07 07:29:57'),
(10, 1, 'main', 'KOCHKAROVA FOTIMA ABDUZAKHID KIZI', 'ҚЎЧҚОРОВА ФОТИМА АБДУЗАХИД ҚИЗИ', 'ҚЎЧҚОРОВА ФОТИМА АБДУЗАХИД ҚИЗИ', 'Advisor to the Chairman on Public Affairs and Press Secretary', 'Жамоатчилик Масалалари Бўйича Раис Маслаҳатчиси Ва Матбуот Котиби', 'Советник председателя по связям с общественностью и пресс-секретарь', 'staff/b5a1947c4f08dc2175849abd0f215af0.jpg', 'Wednesday, Friday 14: 00-17: 00', 'Чоршанба, Жума 14:00-17:00', 'Среда, пятница 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:31:58', '2020-10-07 07:31:58'),
(11, 1, 'main', 'INAGAMOV JAHONGIR ZAKIRXUDJAEVICH', 'ИНАГАМОВ ЖАХОНГИР ЗАКИРХУДЖАЕВИЧ', 'ИНАГАМОВ ЖАХОНГИР ЗАКИРХУДЖАЕВИЧ', 'Deputy Chairman for Investment', 'Инвестиция Бўйича Раис Ўринбосари', 'Заместитель председателя по инвестициям', 'staff/a5ed28de46ddc2e9cfd5dd52992e6abe.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:33:23', '2020-10-07 07:33:23'),
(12, 1, 'main', 'ANNAKULOV SALOHIDDIN MAMARASHIDOVICH', 'АННАКУЛОВ САЛОХИДДИН МАМАРАШИДОВИЧ', 'АННАКУЛОВ САЛОХИДДИН МАМАРАШИДОВИЧ', 'Association Lawyer', 'Уюшма Ҳуқуқшуноси', 'Ассоциация юристов', 'staff/03ad60b17918c8eb0c7f9d3a5f280330.jpg', 'Wednesday, Friday 14: 00-17: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:36:22', '2020-10-07 07:36:22'),
(13, 1, 'main', 'FAZLITDINOV SANJAR SAXOBITDINOVICH', 'ФАЗЛИТДИНОВ САНЖАР САХОБИТДИНОВИЧ', 'ФАЗЛИТДИНОВ САНЖАР САХОБИТДИНОВИЧ', 'Head of the Department of International Economic Relations', 'Халқаро Иқтисодий Алоқалар Бошқарма Бошлиғи', 'Заведующий отделом международных экономических отношений', 'staff/6c9aa133e49185d42bb3e68ffb66f83b.jpg', 'Wednesday, Friday 14: 00-17: 00', 'Чоршанба, Жума 14:00-17:00', 'Среда, пятница 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:37:30', '2020-10-07 07:37:30'),
(14, 5, 'local', 'Khamrakulov Maruf', 'Хамрақулов Маъруф Мухтор ўғли', 'Хамракулов Маруф', 'Head of territorial division', 'Ҳудудий бўлинма бошлиғи', 'Начальник территориального отдела', 'staff/7b9e5dae75c1618e12e6273674d84b27.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2020-10-07 07:44:45', '2020-10-07 07:44:45'),
(15, 1, 'main', 'MIRALIEV MIRJAVOXIR MIRALI UGLI', 'МИРАЛИЕВ МИРЖАВОХИР МИРАЛИ ЎҒЛИ', 'МИРАЛИЕВ МИРЖАВОХИР МИРАЛИ ЎҒЛИ', 'Head of Investment Department', 'Инвестиция Бўлими Бошлиғи', 'Начальник инвестиционного отдела', 'staff/495bc24ca1c47451624e975f634a1ba0.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 07:51:07', '2020-10-07 07:51:07'),
(16, 1, 'main', 'PARDAEV MARUF MANNON UGLI', 'ПАРДАЕВ МАРУФ МАННОН ЎҒЛИ', 'ПАРДАЕВ МАРУФ МАННОН ЎҒЛИ', 'Head of Information Technology Department', 'Ахборот Технологиялар Бўлими Бошлиғи', 'Начальник отдела информационных технологий', 'staff/da25a410f1b9b953a1b558e343a8a491.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 08:50:23', '2020-10-07 08:50:23'),
(17, 1, 'main', 'Utkurov Mahmudjon Rustamovich', 'Уткуров Махмуджон Рустамович', 'Уткуров Махмуджон Рустамович', 'Front End Developer', 'Front End dasturchi', 'Front End разработчик', 'staff/c6cb4e1f94b82873c4f7a5df9dfc3927.jpg', 'Monday, Saturday 10: 00-12: 00', 'Dushanba - Shanba 10:00-12:00', 'Понедельник суббота 10:00-12:00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 08:53:36', '2020-10-07 08:53:36'),
(18, 1, 'main', 'Hakimjanov Javohir Ilhom ugli', 'Хакимджанов Джавохир Ильхом оглу', 'Хакимджанов Джавохир Ильхом оглу', 'Back End Developer', 'Back End dasturchi', 'Back End разработчик', 'staff/06ef013a1ea57569d5e9e7d59ba74c9f.jpg', 'Monday, Saturday 10: 00-12: 00', 'Dushanba - Shanba 10:00-12:00', 'Понедельник суббота 10:00-12:00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 08:55:29', '2020-10-07 08:55:29'),
(19, 1, 'main', 'ABDURAHMONOV BAHODIR Abdumanon ugli', 'Абдурахмонов Баходир Абдуманон ўғли', 'Абдурахмонов Баходир Абдуманон ўғли', 'Deputy Head of International Economic Relations Technology Department', 'Халқаро Иқтисодий Алоқалар Бошлиғи ўринбосари', 'Заместитель начальника отдела международных экономических отношений', 'staff/5d272661b72319bee310da795e8f1f4f.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-07 08:57:44', '2020-10-13 02:18:17'),
(20, 6, 'local', 'KAYUMOV BAKHTIYOR ABDULKHAMILOVICH', 'ҚАЮМОВ БАХТИЁР АБДУЛХАМИЛОВИЧ', 'ҚАЮМОВ БАХТИЁР АБДУЛХАМИЛОВИЧ', 'Head of the regional department', 'Ҳудудий бўлинма бошлиғи', 'Начальник регионального отделения', 'staff/92f3ccc01ecfd2117837ff96691990bc.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 05:26:21', '2020-10-13 05:30:21'),
(21, 7, 'local', 'JUMANIEZOV BEKZOD MAKSUDOVICH', 'ЖУМАНИЁЗОВ БЕКЗОД МАКСУДОВИЧ', 'ЖУМАНИЁЗОВ БЕКЗОД МАКСУДОВИЧ', 'Head of Territorial Branch', 'Худудий Бўлинма Раҳбари', 'Начальник территориального управления', 'staff/4d425d6e2d8f495da03c071277882dfd.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 05:29:21', '2020-10-13 05:29:21'),
(22, 8, 'local', 'SHERMATOV ALISHER ESHBOLTAEVICH', 'ШЕРМАТОВ АЛИШЕР ЭШБОЛТАЕВИЧ', 'ШЕРМАТОВ АЛИШЕР ЭШБОЛТАЕВИЧ', 'Head of Territorial Branch', 'Худудий Бўлинма Раҳбари', 'Начальник территориального управления', 'staff/d0269175cffb547e1ad791fb88ac95b9.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 05:32:42', '2020-10-13 05:32:42'),
(23, 9, 'local', 'RAXMATULLAEV DILSHODBEK DILMUROD UGLI', 'РАХМАТУЛЛАЕВ ДИЛШОДБЕК ДИЛМУРОД УГЛИ', 'РАХМАТУЛЛАЕВ ДИЛШОДБЕК ДИЛМУРОД УГЛИ', 'Head of Territorial Branch', 'Худудий Бўлинма Раҳбари', 'Начальник территориального управления', 'staff/2fd97aa97e2bbf5f0c6b7c2574c1164b.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 05:35:17', '2020-10-13 05:35:17'),
(24, 10, 'local', 'KARIMOV ILXOMJON KURALOVICH', 'КАРИМОВ ИЛХОМЖОН КУРАЛОВИЧ', 'КАРИМОВ ИЛХОМЖОН КУРАЛОВИЧ', 'Head of Territorial Branch', 'Худудий Бўлинма Раҳбари', 'Начальник территориального управления', 'staff/c38621e2d31201b0de34a390a41c5dff.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 05:43:07', '2020-10-13 05:43:07'),
(25, 11, 'international', 'ELMURATOV PIRNAZAR', 'ЭЛМУРАТОВ ПИРНАЗАР', 'ЭЛМУРАТОВ ПИРНАЗАР', 'Business Ambassador of the Representative Office in the United States of America.', 'Америка Қўшма Штатларидаги ваколатхонанинг бизнес элчиси.', 'Бизнес-посол представительства в США.', 'staff/971fb3c9610c711fe52c0e826d6a538e.jpg', 'Wednesday, Friday 14: 00-17: 00', 'Чоршанба, Жума 14:00-17:00', 'Среда, пятница 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 06:30:56', '2020-10-13 06:30:56'),
(26, 12, 'international', 'KALANDAROV BAKHTIYAR', 'ҚАЛАНДАРОВ БАХТИЯР', 'ҚАЛАНДАРОВ БАХТИЯР', 'Business Ambassador of the Representation in the Republic of Turkey', 'Туркия Республикасидаги ваколатхонанинг бизнес элчиси', 'Бизнес-посол представительства в Турецкой Республике', 'staff/f5c93cbf508a9baf0aefae3a80888023.jpg', 'Monday, Saturday 10: 00-12: 00', 'Dushanba - Shanba 10:00-12:00', 'Понедельник суббота 10:00-12:00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-13 06:46:13', '2020-10-13 06:46:13'),
(27, 13, 'international', 'SAYAD ASADULLAh', 'САЙАД АСАДУЛЛАХ', 'САЙАД АСАДУЛЛАХ', 'Business Ambassador of the Representative Office in the Islamic State of Afghanistan', 'Афғонистон Ислом Давлатидаги ваколатхонанинг бизнес элчиси', 'Бизнес-посол Представительства в Исламском Государстве Афганистан', 'staff/56fef61174807b9438c80b39f1fc93ba.jpg', 'Wednesday, Friday 14: 00-17: 00', 'Чоршанба, Жума 14:00-17:00', 'Среда, пятница 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-14 00:32:40', '2020-10-16 01:04:39'),
(28, 14, 'international', 'KARIMOVA SHOHSANAM', 'КАРИМОВА ШОҲСАНАМ', 'КАРИМОВА ШОҲСАНАМ', 'Business Ambassador of the Representative Office in the Republic of South Korea', 'Жанубий Корея Республикасидаги ваколатхонанинг бизнес элчиси', 'Бизнес-посол представительства в Республике Корея', 'staff/0dbf0737f8b5eea3c42151c923288aa1.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-14 00:46:49', '2020-10-14 00:46:49'),
(29, 15, 'international', 'SUNIT KUMAR', 'СУНИТ КУМАР', 'СУНИТ КУМАР', 'Business Ambassador of the Representative Office in the Republic of India', 'Хиндистон Республикасидаги ваколатхонанинг бизнес элчиси', 'Бизнес-посол представительства в Республике Индия', 'staff/f3f5d0bc520660a32721501bef1d8abf.jpg', 'Tuesday 14: 00-17: 00', 'Сешанба 14:00-17:00', 'Вторник 14: 00-17: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-14 00:54:12', '2020-10-14 00:54:12'),
(30, 16, 'international', 'ELMURODOV DILSHOD', 'ЭЛМУРОДОВ ДИЛЬШОД', 'ЭЛМУРОДОВ ДИЛЬШОД', 'Business Ambassador of the Representative Office in the Republic of Malaysia', 'Малайзия Республикасидаги ваколатхонанинг бизнес элчиси', 'Бизнес-посол представительства в Республике Малайзия', 'staff/d2dc8867a28b2f5f1f8cc15c285f7032.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-14 00:55:42', '2020-10-14 00:55:42'),
(31, 25, 'sud', 'HASANOV SAIDJABBOR IMOMNAZAROVICH', 'ХАСАНОВ САИДЖАББОР ИМОМНАЗАРОВИЧ', 'ХАСАНОВ САИДЖАББОР ИМОМНАЗАРОВИЧ', '--', '--', '--', 'staff/df36c4732ef3521aac7de4b68ea5a70e.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-16 00:59:58', '2020-10-16 01:01:00'),
(32, 26, 'sud', 'ELMURADOV PIRNAZAR', 'ЭЛМУРАДОВ ПИРНАЗАР', 'ЭЛМУРАДОВ ПИРНАЗАР', '--', '--', '--', 'staff/d62aec8302a506de36b3d4fb8f31e897.jpg', 'Monday, Wednesday 10: 00-12: 00', 'Душанба, Чоршанба 10:00-12:00', 'Понедельник, среда 10: 00-12: 00', 'info@exportuz.com', NULL, NULL, NULL, NULL, '2020-10-16 01:03:44', '2020-10-16 01:03:44');

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
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Jay Khakim', 'mgmediajay@gmail.com', NULL, '$2y$10$JwR2B2jUjQ5doXP7tcGYOeLQ8iz.f10k65CwowaAQB7LBNv8zjtMC', NULL, '2020-09-18 03:58:02', '2020-09-18 03:58:02'),
(2, 'Mahmudjon Utkurov', 'mahmudjon2127@gmail.com', NULL, '$2y$10$c2aZmP0P6cBweJ0PJ05nVOH49iAUzNUSqfyMycAmQ4R6S6X4aZzyO', 'YKX06skRtzUOuB0eRg0gN4iuxmxThEX5wtBpVEBoTeHqkK3fqQSMDo8Mhu2I', '2020-10-06 07:37:17', '2020-10-06 07:37:17'),
(3, 'Diyoraxon Nabijonova', 'diyoraxonnabijonova@gmail.com', NULL, '$2y$10$keoB0TbB1DebZZWgHAk47u9rKGFcHgsV7Q63ALheoN8adZ48pkpNS', 'mjLpE0NRhjipJJdu67hPVN9ToT35m7HmdnbbtqhtOY53reTSYIo21pCquctH', '2020-10-06 07:41:06', '2020-10-06 07:41:06'),
(4, 'Shahnoza opa Matbuot', 'matbuot@exportuz.com', NULL, '$2y$10$A9asTDNRx2mvvGkUBIb7dOw6EJ1Cs7rXAaskm7Wr1hKZteW8gO.Fa', 'swZWGezt086FDP7ELMSYEaMCbnIy8X7CDSE53iBSeUwk94bM01ndo1K7WY8S', '2020-10-17 06:01:32', '2020-10-17 06:01:32'),
(5, 'Bahodir Abdurahmonov', 'bakhodirabdurakhmanov1@gmail.com', NULL, '$2y$10$455H89KdcdfNVJ5nzjymK.HkLE7ngHnwkYqczLVsJIw8VEHehWPCu', 'sz7SEaWXLbptwIpQeRn4ko7qhNOfRvSXZ3O0kmnUVXzL71g2qca0Ej0Uj9am', '2020-10-22 07:55:38', '2020-10-22 07:55:38');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `memberships`
--
ALTER TABLE `memberships`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `memberships_slug_en_unique` (`slug_en`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `movies`
--
ALTER TABLE `movies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `news_slug_en_unique` (`slug_en`),
  ADD KEY `news_category_id_foreign` (`category_id`);

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
-- Indexes for table `pictures`
--
ALTER TABLE `pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`),
  ADD KEY `staff_branche_id_foreign` (`branche_id`);

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
-- AUTO_INCREMENT for table `branches`
--
ALTER TABLE `branches`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=234;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `movies`
--
ALTER TABLE `movies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pictures`
--
ALTER TABLE `pictures`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `news`
--
ALTER TABLE `news`
  ADD CONSTRAINT `news_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_branche_id_foreign` FOREIGN KEY (`branche_id`) REFERENCES `branches` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
