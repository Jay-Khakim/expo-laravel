-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 02, 2020 at 09:05 AM
-- Server version: 10.4.13-MariaDB
-- PHP Version: 7.4.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `exporuz`
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
(3, 'Tashkent region', 'Тошкент вилояти', 'Ташкентская область', NULL, NULL, '2020-09-21 01:38:55', '2020-09-21 01:38:55');

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
(5, 'Mukhtor Umarov', 'Мухтор Умаров', 'Мухтор Умаров', 'Mukhtor-Umarov', NULL, '2020-09-29 03:02:48', '2020-09-29 03:02:48');

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
  `certificate_number` bigint(20) NOT NULL,
  `inn` bigint(20) NOT NULL,
  `expiry_date` date NOT NULL,
  `desc_en` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_uz` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desc_ru` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `file` varchar(300) COLLATE utf8mb4_unicode_ci NOT NULL,
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
(1, 'active', '«AGROPLACE» LLT', '«AGROPLACE» MЧЖ', '«AGROPLACE» OOO', 'agroplace-llt', 305, 307101478, '2020-12-29', '<p>All information about AGROPLACE LLC.</p>', '<p>&laquo;AGROPLACE&raquo; MЧЖ корхонаси ҳақидаги барча маълумотлар.</p>', '<p>Вся информация о ООО &quot;АГРОПЛАЙС&quot;.</p>', '/c7bac50aad53208fd9c292311c08dccc.pdf', NULL, NULL, NULL, NULL, NULL, NULL, 'membership/75580cb2409c230c5ef34f1cf8506db5.jpg', NULL, '2020-09-23 02:11:31', '2020-09-23 02:11:31');

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
(9, 3, 'news', 'video', 'UZBEKISTAN TRADE OPENS OPENING IN NEW YORK TODAY', 'БУГУН НЬЮ-ЙОРКДА ЎЗБЕКИСТОН САВДО УЙИНИНГ ОЧИЛИШИ', 'UZBEKISTAN TRADE ОТКРЫВАЕТСЯ В НЬЮ-ЙОРКЕ СЕГОДНЯ', NULL, NULL, NULL, NULL, '..', '..', '..', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '<iframe width=\"753\" height=\"400\" src=\"https://www.youtube.com/embed/FP8n1PcRFRc\" frameborder=\"0\" allow=\"accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture\" allowfullscreen></iframe>', 'news/f6b43c079c768f3976b7d7b7415721ec.jpg', NULL, NULL, NULL, NULL, '2020-09-30 01:25:28', '2020-09-30 01:25:28');

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
(1, 1, 'main', 'Mukhtor Umarov', 'Mukhtor Umarov', 'Mukhtor Umarov Ru', 'Chairman of The Board', 'Chairman of The Board uz', 'Chairman of The Board ru', 'staff/575ac68907c8c33f47f386b955f6c46d.jpg', 'Wednesday 14:00-17:40', 'Сешанба 14:00-17:00', 'Wednesday 14:00-17:40 ru', NULL, NULL, NULL, NULL, NULL, '2020-09-19 06:16:00', '2020-09-21 01:05:38'),
(2, 1, 'main', 'Bobir Rasulov', 'Bobir Rasulov uz', 'Bobir Rasulov ru', 'General Director', 'Boshqaruv Direktori', 'Boshqaruv Direktori ru', 'staff/532c5e46372c23a3dccda1aa4508f914.jpg', 'Monday 10:00-12:00', 'Dushanba 10:00-12:00', 'Dushanba 10:00-12:00 ru', NULL, NULL, NULL, NULL, NULL, '2020-09-19 06:18:46', '2020-09-21 01:05:28'),
(3, 2, 'local', 'Mardiyev jamshid Uchqunovich', 'Мардийев жамшид Учқунович', 'Мардиев Джамшид Учкунович', 'Head of territorial devision', 'Ҳудудий бўлинма бошлиғи', 'Начальник территориального отдела', 'staff/4bd6deba6b2345a638188589c2a281df.jpg', NULL, NULL, NULL, '+99890-282-17-70', NULL, NULL, NULL, NULL, '2020-09-21 01:34:30', '2020-09-21 01:34:30'),
(4, 3, 'local', 'Turaev Ravshan Akbarovich', 'Тураев Равшан Акбарович', 'Тураев Равшан Акбарович', 'Head of territorial devision', 'Ҳудудий бўлинма бошлиғи', 'Начальник территориального отдела', 'staff/6997c46664afcf09c99daee80b9cf53e.jpg', NULL, NULL, NULL, '+99899-603-78-88', NULL, NULL, NULL, NULL, '2020-09-21 01:45:16', '2020-09-21 01:45:16');

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
(1, 'Jay Khakim', 'mgmediajay@gmail.com', NULL, '$2y$10$JwR2B2jUjQ5doXP7tcGYOeLQ8iz.f10k65CwowaAQB7LBNv8zjtMC', NULL, '2020-09-18 03:58:02', '2020-09-18 03:58:02');

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `memberships`
--
ALTER TABLE `memberships`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

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
