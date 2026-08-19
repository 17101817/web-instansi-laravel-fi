-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.7.33 - MySQL Community Server (GPL)
-- Server OS:                    Win64
-- HeidiSQL Version:             11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

-- Dumping structure for table web-instansi-laravel-fi.blogs
CREATE TABLE IF NOT EXISTS `blogs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_id` json DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `blogs_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.blogs: ~7 rows (approximately)
/*!40000 ALTER TABLE `blogs` DISABLE KEYS */;
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(1, '[3]', 'Kegiatan Bakti Sosial Tahun 2025', 'kegiatan-bakti-sosial-2025', '<p>Dinas Sosial melaksanakan kegiatan bakti sosial sebagai bentuk kepedulian terhadap masyarakat.</p>', 'blogs/covers/01KFE5AVHB94G0RWDQ9HAV8W16.png', '[{"nama": "gambar", "image": "blogs/image/01KFE5AVHFS65726VA92DF7ZHP.png"}]', '2026-01-20 07:19:36', '2026-01-20 23:55:44');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(3, '[3, 2]', 'Dinas Sosial Kabupaten Penajam Paser Utara Selatan', 'dinas-sosial-kabupaten-penajam-paser-utara-selatan', '<p>adasdasd</p>', 'blogs/covers/01KFEF6JS1T6YA0SY8792KWBB7.png', '[{"nama": "asd", "image": "blogs/image/01KFEF6JS4E27JDRFB7AJD348B.png"}, {"nama": "axxxx", "image": "blogs/image/01KFJ3MY7ZAHWGASV12T52FYCA.png"}]', '2026-01-21 02:48:10', '2026-01-22 12:43:15');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(4, '[3]', 'Dinas Sosial Kabupaten Penajam Paser Utara Selatan', 'as', '<p>adasdasd</p>', 'blogs/covers/01KFEF6JS1T6YA0SY8792KWBB7.png', '[{"nama": "asd", "image": "blogs/image/01KFEF6JS4E27JDRFB7AJD348B.png"}]', '2026-01-21 02:48:10', '2026-01-21 02:51:47');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(5, '[3]', 'Dinas Sosial Kabupaten Penajam Paser Utara Selatan', 'qwqq', '<p>adasdasd</p>', 'blogs/covers/01KFEF6JS1T6YA0SY8792KWBB7.png', '[{"nama": "asd", "image": "blogs/image/01KFEF6JS4E27JDRFB7AJD348B.png"}]', '2026-01-21 02:48:10', '2026-01-21 02:51:47');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(6, '[3]', 'Dinas Sosial Kabupaten Penajam Paser Utara Selatan', 'lh', '<p>adasdasd</p>', 'blogs/covers/01KFEF6JS1T6YA0SY8792KWBB7.png', '[{"nama": "asd", "image": "blogs/image/01KFEF6JS4E27JDRFB7AJD348B.png"}]', '2026-01-21 02:48:10', '2026-01-21 02:51:47');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(7, '[3]', 'Dinas Sosial Kabupaten Penajam Paser Utara Selatan', 'lhhg', '<p>adasdasd</p>', 'blogs/covers/01KFEF6JS1T6YA0SY8792KWBB7.png', '[{"nama": "asd", "image": "blogs/image/01KFEF6JS4E27JDRFB7AJD348B.png"}]', '2026-01-21 02:48:10', '2026-01-21 02:51:47');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(8, '[3]', 'Dinas Sosial Kabupaten Penajam Paser Utara Selatan', 'lhgh', '<p>adasdasd</p>', 'blogs/covers/01KFEF6JS1T6YA0SY8792KWBB7.png', '[{"nama": "asd", "image": "blogs/image/01KFEF6JS4E27JDRFB7AJD348B.png"}]', '2026-01-21 02:48:10', '2026-01-21 02:51:47');
INSERT INTO `blogs` (`id`, `kategori_id`, `name`, `slug`, `description`, `cover`, `image`, `created_at`, `updated_at`) VALUES
	(9, '[4]', 'Test Dinas Sosial', 'test-dinas-sosial', '<p>Test Dinas Sosial deskripsi</p>', 'blogs/covers/01KFJFHCTPX3B9PYX8WRC87VNM.png', '[{"nama": "Test Dinas Sosial", "image": "blogs/image/01KFJFHCTTKA4268KB8X3AJB70.jpg"}, {"nama": "Test Dinas Sosial X", "image": "blogs/image/01KFJFJANAQAM54FEA5D3SCK3R.jpg"}]', '2026-01-22 16:11:02', '2026-01-22 16:11:50');
/*!40000 ALTER TABLE `blogs` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.breezy_sessions
CREATE TABLE IF NOT EXISTS `breezy_sessions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `authenticatable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authenticatable_id` bigint(20) unsigned NOT NULL,
  `panel_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `two_factor_secret` text COLLATE utf8mb4_unicode_ci,
  `two_factor_recovery_codes` text COLLATE utf8mb4_unicode_ci,
  `two_factor_confirmed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `breezy_sessions_authenticatable_type_authenticatable_id_index` (`authenticatable_type`,`authenticatable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.breezy_sessions: ~0 rows (approximately)
/*!40000 ALTER TABLE `breezy_sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `breezy_sessions` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.cache
CREATE TABLE IF NOT EXISTS `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.cache: ~5 rows (approximately)
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab', 'i:1;', 1769073606);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel-cache-356a192b7913b04c54574d18c28d46e6395428ab:timer', 'i:1769073606;', 1769073606);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel-cache-5c785c036466adea360111aa28563bfd556b5fba', 'i:2;', 1769071483);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel-cache-5c785c036466adea360111aa28563bfd556b5fba:timer', 'i:1769071483;', 1769071483);
INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
	('laravel-cache-spatie.permission.cache', 'a:3:{s:5:"alias";a:4:{s:1:"a";s:2:"id";s:1:"b";s:4:"name";s:1:"c";s:10:"guard_name";s:1:"r";s:5:"roles";}s:11:"permissions";a:259:{i:0;a:4:{s:1:"a";i:1;s:1:"b";s:12:"ViewAny:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:1;a:4:{s:1:"a";i:2;s:1:"b";s:9:"View:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:2;a:4:{s:1:"a";i:3;s:1:"b";s:11:"Create:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:3;a:4:{s:1:"a";i:4;s:1:"b";s:11:"Update:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:4;a:4:{s:1:"a";i:5;s:1:"b";s:11:"Delete:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:5;a:4:{s:1:"a";i:6;s:1:"b";s:12:"Restore:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:6;a:4:{s:1:"a";i:7;s:1:"b";s:16:"ForceDelete:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:7;a:4:{s:1:"a";i:8;s:1:"b";s:19:"ForceDeleteAny:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:8;a:4:{s:1:"a";i:9;s:1:"b";s:15:"RestoreAny:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:9;a:4:{s:1:"a";i:10;s:1:"b";s:14:"Replicate:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:10;a:4:{s:1:"a";i:11;s:1:"b";s:12:"Reorder:Role";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:11;a:4:{s:1:"a";i:12;s:1:"b";s:12:"ViewAny:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:"a";i:13;s:1:"b";s:9:"View:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:"a";i:14;s:1:"b";s:11:"Create:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:14;a:4:{s:1:"a";i:15;s:1:"b";s:11:"Update:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:15;a:4:{s:1:"a";i:16;s:1:"b";s:11:"Delete:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:"a";i:17;s:1:"b";s:12:"Restore:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:"a";i:18;s:1:"b";s:16:"ForceDelete:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:"a";i:19;s:1:"b";s:19:"ForceDeleteAny:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:19;a:4:{s:1:"a";i:20;s:1:"b";s:15:"RestoreAny:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:20;a:4:{s:1:"a";i:21;s:1:"b";s:14:"Replicate:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:21;a:4:{s:1:"a";i:22;s:1:"b";s:12:"Reorder:Blog";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:22;a:4:{s:1:"a";i:23;s:1:"b";s:15:"ViewAny:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:23;a:4:{s:1:"a";i:24;s:1:"b";s:12:"View:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:24;a:4:{s:1:"a";i:25;s:1:"b";s:14:"Create:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:25;a:4:{s:1:"a";i:26;s:1:"b";s:14:"Update:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:26;a:4:{s:1:"a";i:27;s:1:"b";s:14:"Delete:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:27;a:4:{s:1:"a";i:28;s:1:"b";s:15:"Restore:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:28;a:4:{s:1:"a";i:29;s:1:"b";s:19:"ForceDelete:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:29;a:4:{s:1:"a";i:30;s:1:"b";s:22:"ForceDeleteAny:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:30;a:4:{s:1:"a";i:31;s:1:"b";s:18:"RestoreAny:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:31;a:4:{s:1:"a";i:32;s:1:"b";s:17:"Replicate:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:32;a:4:{s:1:"a";i:33;s:1:"b";s:15:"Reorder:Comment";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:33;a:4:{s:1:"a";i:34;s:1:"b";s:20:"ViewAny:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:34;a:4:{s:1:"a";i:35;s:1:"b";s:17:"View:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:35;a:4:{s:1:"a";i:36;s:1:"b";s:19:"Create:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:36;a:4:{s:1:"a";i:37;s:1:"b";s:19:"Update:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:37;a:4:{s:1:"a";i:38;s:1:"b";s:19:"Delete:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:38;a:4:{s:1:"a";i:39;s:1:"b";s:20:"Restore:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:39;a:4:{s:1:"a";i:40;s:1:"b";s:24:"ForceDelete:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:40;a:4:{s:1:"a";i:41;s:1:"b";s:27:"ForceDeleteAny:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:41;a:4:{s:1:"a";i:42;s:1:"b";s:23:"RestoreAny:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:42;a:4:{s:1:"a";i:43;s:1:"b";s:22:"Replicate:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:43;a:4:{s:1:"a";i:44;s:1:"b";s:20:"Reorder:EmbedYoutube";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:44;a:4:{s:1:"a";i:45;s:1:"b";s:11:"ViewAny:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:45;a:4:{s:1:"a";i:46;s:1:"b";s:8:"View:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:46;a:4:{s:1:"a";i:47;s:1:"b";s:10:"Create:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:47;a:4:{s:1:"a";i:48;s:1:"b";s:10:"Update:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:48;a:4:{s:1:"a";i:49;s:1:"b";s:10:"Delete:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:49;a:4:{s:1:"a";i:50;s:1:"b";s:11:"Restore:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:50;a:4:{s:1:"a";i:51;s:1:"b";s:15:"ForceDelete:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:51;a:4:{s:1:"a";i:52;s:1:"b";s:18:"ForceDeleteAny:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:52;a:4:{s:1:"a";i:53;s:1:"b";s:14:"RestoreAny:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:53;a:4:{s:1:"a";i:54;s:1:"b";s:13:"Replicate:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:54;a:4:{s:1:"a";i:55;s:1:"b";s:11:"Reorder:Faq";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:55;a:4:{s:1:"a";i:56;s:1:"b";s:14:"ViewAny:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:56;a:4:{s:1:"a";i:57;s:1:"b";s:11:"View:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:57;a:4:{s:1:"a";i:58;s:1:"b";s:13:"Create:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:58;a:4:{s:1:"a";i:59;s:1:"b";s:13:"Update:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:59;a:4:{s:1:"a";i:60;s:1:"b";s:13:"Delete:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:60;a:4:{s:1:"a";i:61;s:1:"b";s:14:"Restore:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:61;a:4:{s:1:"a";i:62;s:1:"b";s:18:"ForceDelete:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:62;a:4:{s:1:"a";i:63;s:1:"b";s:21:"ForceDeleteAny:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:63;a:4:{s:1:"a";i:64;s:1:"b";s:17:"RestoreAny:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:64;a:4:{s:1:"a";i:65;s:1:"b";s:16:"Replicate:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:65;a:4:{s:1:"a";i:66;s:1:"b";s:14:"Reorder:Galeri";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:66;a:4:{s:1:"a";i:67;s:1:"b";s:17:"ViewAny:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:67;a:4:{s:1:"a";i:68;s:1:"b";s:14:"View:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:68;a:4:{s:1:"a";i:69;s:1:"b";s:16:"Create:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:69;a:4:{s:1:"a";i:70;s:1:"b";s:16:"Update:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:70;a:4:{s:1:"a";i:71;s:1:"b";s:16:"Delete:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:71;a:4:{s:1:"a";i:72;s:1:"b";s:17:"Restore:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:72;a:4:{s:1:"a";i:73;s:1:"b";s:21:"ForceDelete:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:73;a:4:{s:1:"a";i:74;s:1:"b";s:24:"ForceDeleteAny:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:74;a:4:{s:1:"a";i:75;s:1:"b";s:20:"RestoreAny:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:75;a:4:{s:1:"a";i:76;s:1:"b";s:19:"Replicate:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:76;a:4:{s:1:"a";i:77;s:1:"b";s:17:"Reorder:Informasi";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:77;a:4:{s:1:"a";i:78;s:1:"b";s:25:"ViewAny:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:78;a:4:{s:1:"a";i:79;s:1:"b";s:22:"View:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:79;a:4:{s:1:"a";i:80;s:1:"b";s:24:"Create:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:80;a:4:{s:1:"a";i:81;s:1:"b";s:24:"Update:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:81;a:4:{s:1:"a";i:82;s:1:"b";s:24:"Delete:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:82;a:4:{s:1:"a";i:83;s:1:"b";s:25:"Restore:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:83;a:4:{s:1:"a";i:84;s:1:"b";s:29:"ForceDelete:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:84;a:4:{s:1:"a";i:85;s:1:"b";s:32:"ForceDeleteAny:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:85;a:4:{s:1:"a";i:86;s:1:"b";s:28:"RestoreAny:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:86;a:4:{s:1:"a";i:87;s:1:"b";s:27:"Replicate:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:87;a:4:{s:1:"a";i:88;s:1:"b";s:25:"Reorder:KategoriPengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:88;a:4:{s:1:"a";i:89;s:1:"b";s:16:"ViewAny:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:89;a:4:{s:1:"a";i:90;s:1:"b";s:13:"View:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:90;a:4:{s:1:"a";i:91;s:1:"b";s:15:"Create:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:91;a:4:{s:1:"a";i:92;s:1:"b";s:15:"Update:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:92;a:4:{s:1:"a";i:93;s:1:"b";s:15:"Delete:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:93;a:4:{s:1:"a";i:94;s:1:"b";s:16:"Restore:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:94;a:4:{s:1:"a";i:95;s:1:"b";s:20:"ForceDelete:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:95;a:4:{s:1:"a";i:96;s:1:"b";s:23:"ForceDeleteAny:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:96;a:4:{s:1:"a";i:97;s:1:"b";s:19:"RestoreAny:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:97;a:4:{s:1:"a";i:98;s:1:"b";s:18:"Replicate:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:98;a:4:{s:1:"a";i:99;s:1:"b";s:16:"Reorder:Kategori";s:1:"c";s:3:"web";s:1:"r";a:2:{i:0;i:1;i:1;i:2;}}i:99;a:4:{s:1:"a";i:100;s:1:"b";s:14:"ViewAny:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:100;a:4:{s:1:"a";i:101;s:1:"b";s:11:"View:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:101;a:4:{s:1:"a";i:102;s:1:"b";s:13:"Create:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:102;a:4:{s:1:"a";i:103;s:1:"b";s:13:"Update:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:103;a:4:{s:1:"a";i:104;s:1:"b";s:13:"Delete:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:104;a:4:{s:1:"a";i:105;s:1:"b";s:14:"Restore:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:105;a:4:{s:1:"a";i:106;s:1:"b";s:18:"ForceDelete:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:106;a:4:{s:1:"a";i:107;s:1:"b";s:21:"ForceDeleteAny:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:107;a:4:{s:1:"a";i:108;s:1:"b";s:17:"RestoreAny:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:108;a:4:{s:1:"a";i:109;s:1:"b";s:16:"Replicate:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:109;a:4:{s:1:"a";i:110;s:1:"b";s:14:"Reorder:Kontak";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:110;a:4:{s:1:"a";i:111;s:1:"b";s:19:"ViewAny:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:111;a:4:{s:1:"a";i:112;s:1:"b";s:16:"View:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:112;a:4:{s:1:"a";i:113;s:1:"b";s:18:"Create:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:113;a:4:{s:1:"a";i:114;s:1:"b";s:18:"Update:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:114;a:4:{s:1:"a";i:115;s:1:"b";s:18:"Delete:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:115;a:4:{s:1:"a";i:116;s:1:"b";s:19:"Restore:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:116;a:4:{s:1:"a";i:117;s:1:"b";s:23:"ForceDelete:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:117;a:4:{s:1:"a";i:118;s:1:"b";s:26:"ForceDeleteAny:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:118;a:4:{s:1:"a";i:119;s:1:"b";s:22:"RestoreAny:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:119;a:4:{s:1:"a";i:120;s:1:"b";s:21:"Replicate:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:120;a:4:{s:1:"a";i:121;s:1:"b";s:19:"Reorder:PegawaiData";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:121;a:4:{s:1:"a";i:122;s:1:"b";s:17:"ViewAny:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:122;a:4:{s:1:"a";i:123;s:1:"b";s:14:"View:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:123;a:4:{s:1:"a";i:124;s:1:"b";s:16:"Create:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:124;a:4:{s:1:"a";i:125;s:1:"b";s:16:"Update:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:125;a:4:{s:1:"a";i:126;s:1:"b";s:16:"Delete:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:126;a:4:{s:1:"a";i:127;s:1:"b";s:17:"Restore:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:127;a:4:{s:1:"a";i:128;s:1:"b";s:21:"ForceDelete:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:128;a:4:{s:1:"a";i:129;s:1:"b";s:24:"ForceDeleteAny:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:129;a:4:{s:1:"a";i:130;s:1:"b";s:20:"RestoreAny:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:130;a:4:{s:1:"a";i:131;s:1:"b";s:19:"Replicate:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:131;a:4:{s:1:"a";i:132;s:1:"b";s:17:"Reorder:Pengaduan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:132;a:4:{s:1:"a";i:133;s:1:"b";s:12:"ViewAny:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:133;a:4:{s:1:"a";i:134;s:1:"b";s:9:"View:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:134;a:4:{s:1:"a";i:135;s:1:"b";s:11:"Create:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:135;a:4:{s:1:"a";i:136;s:1:"b";s:11:"Update:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:136;a:4:{s:1:"a";i:137;s:1:"b";s:11:"Delete:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:137;a:4:{s:1:"a";i:138;s:1:"b";s:12:"Restore:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:138;a:4:{s:1:"a";i:139;s:1:"b";s:16:"ForceDelete:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:139;a:4:{s:1:"a";i:140;s:1:"b";s:19:"ForceDeleteAny:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:140;a:4:{s:1:"a";i:141;s:1:"b";s:15:"RestoreAny:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:141;a:4:{s:1:"a";i:142;s:1:"b";s:14:"Replicate:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:142;a:4:{s:1:"a";i:143;s:1:"b";s:12:"Reorder:Ppid";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:143;a:4:{s:1:"a";i:144;s:1:"b";s:15:"ViewAny:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:144;a:4:{s:1:"a";i:145;s:1:"b";s:12:"View:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:145;a:4:{s:1:"a";i:146;s:1:"b";s:14:"Create:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:146;a:4:{s:1:"a";i:147;s:1:"b";s:14:"Update:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:147;a:4:{s:1:"a";i:148;s:1:"b";s:14:"Delete:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:148;a:4:{s:1:"a";i:149;s:1:"b";s:15:"Restore:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:149;a:4:{s:1:"a";i:150;s:1:"b";s:19:"ForceDelete:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:150;a:4:{s:1:"a";i:151;s:1:"b";s:22:"ForceDeleteAny:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:151;a:4:{s:1:"a";i:152;s:1:"b";s:18:"RestoreAny:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:152;a:4:{s:1:"a";i:153;s:1:"b";s:17:"Replicate:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:153;a:4:{s:1:"a";i:154;s:1:"b";s:15:"Reorder:Profile";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:154;a:4:{s:1:"a";i:155;s:1:"b";s:23:"ViewAny:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:155;a:4:{s:1:"a";i:156;s:1:"b";s:20:"View:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:156;a:4:{s:1:"a";i:157;s:1:"b";s:22:"Create:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:157;a:4:{s:1:"a";i:158;s:1:"b";s:22:"Update:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:158;a:4:{s:1:"a";i:159;s:1:"b";s:22:"Delete:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:159;a:4:{s:1:"a";i:160;s:1:"b";s:23:"Restore:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:160;a:4:{s:1:"a";i:161;s:1:"b";s:27:"ForceDelete:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:161;a:4:{s:1:"a";i:162;s:1:"b";s:30:"ForceDeleteAny:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:162;a:4:{s:1:"a";i:163;s:1:"b";s:26:"RestoreAny:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:163;a:4:{s:1:"a";i:164;s:1:"b";s:25:"Replicate:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:164;a:4:{s:1:"a";i:165;s:1:"b";s:23:"Reorder:ProgramKegiatan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:165;a:4:{s:1:"a";i:166;s:1:"b";s:18:"ViewAny:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:166;a:4:{s:1:"a";i:167;s:1:"b";s:15:"View:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:167;a:4:{s:1:"a";i:168;s:1:"b";s:17:"Create:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:168;a:4:{s:1:"a";i:169;s:1:"b";s:17:"Update:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:169;a:4:{s:1:"a";i:170;s:1:"b";s:17:"Delete:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:170;a:4:{s:1:"a";i:171;s:1:"b";s:18:"Restore:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:171;a:4:{s:1:"a";i:172;s:1:"b";s:22:"ForceDelete:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:172;a:4:{s:1:"a";i:173;s:1:"b";s:25:"ForceDeleteAny:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:173;a:4:{s:1:"a";i:174;s:1:"b";s:21:"RestoreAny:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:174;a:4:{s:1:"a";i:175;s:1:"b";s:20:"Replicate:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:175;a:4:{s:1:"a";i:176;s:1:"b";s:18:"Reorder:SettingWeb";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:176;a:4:{s:1:"a";i:177;s:1:"b";s:11:"ViewAny:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:177;a:4:{s:1:"a";i:178;s:1:"b";s:8:"View:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:178;a:4:{s:1:"a";i:179;s:1:"b";s:10:"Create:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:179;a:4:{s:1:"a";i:180;s:1:"b";s:10:"Update:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:180;a:4:{s:1:"a";i:181;s:1:"b";s:10:"Delete:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:181;a:4:{s:1:"a";i:182;s:1:"b";s:11:"Restore:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:182;a:4:{s:1:"a";i:183;s:1:"b";s:15:"ForceDelete:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:183;a:4:{s:1:"a";i:184;s:1:"b";s:18:"ForceDeleteAny:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:184;a:4:{s:1:"a";i:185;s:1:"b";s:14:"RestoreAny:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:185;a:4:{s:1:"a";i:186;s:1:"b";s:13:"Replicate:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:186;a:4:{s:1:"a";i:187;s:1:"b";s:11:"Reorder:Skm";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:187;a:4:{s:1:"a";i:188;s:1:"b";s:13:"ViewAny:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:188;a:4:{s:1:"a";i:189;s:1:"b";s:10:"View:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:189;a:4:{s:1:"a";i:190;s:1:"b";s:12:"Create:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:190;a:4:{s:1:"a";i:191;s:1:"b";s:12:"Update:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:191;a:4:{s:1:"a";i:192;s:1:"b";s:12:"Delete:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:192;a:4:{s:1:"a";i:193;s:1:"b";s:13:"Restore:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:193;a:4:{s:1:"a";i:194;s:1:"b";s:17:"ForceDelete:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:194;a:4:{s:1:"a";i:195;s:1:"b";s:20:"ForceDeleteAny:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:195;a:4:{s:1:"a";i:196;s:1:"b";s:16:"RestoreAny:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:196;a:4:{s:1:"a";i:197;s:1:"b";s:15:"Replicate:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:197;a:4:{s:1:"a";i:198;s:1:"b";s:13:"Reorder:Slide";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:198;a:4:{s:1:"a";i:199;s:1:"b";s:19:"ViewAny:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:199;a:4:{s:1:"a";i:200;s:1:"b";s:16:"View:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:200;a:4:{s:1:"a";i:201;s:1:"b";s:18:"Create:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:201;a:4:{s:1:"a";i:202;s:1:"b";s:18:"Update:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:202;a:4:{s:1:"a";i:203;s:1:"b";s:18:"Delete:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:203;a:4:{s:1:"a";i:204;s:1:"b";s:19:"Restore:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:204;a:4:{s:1:"a";i:205;s:1:"b";s:23:"ForceDelete:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:205;a:4:{s:1:"a";i:206;s:1:"b";s:26:"ForceDeleteAny:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:206;a:4:{s:1:"a";i:207;s:1:"b";s:22:"RestoreAny:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:207;a:4:{s:1:"a";i:208;s:1:"b";s:21:"Replicate:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:208;a:4:{s:1:"a";i:209;s:1:"b";s:19:"Reorder:SocialMedia";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:209;a:4:{s:1:"a";i:210;s:1:"b";s:14:"ViewAny:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:210;a:4:{s:1:"a";i:211;s:1:"b";s:11:"View:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:211;a:4:{s:1:"a";i:212;s:1:"b";s:13:"Create:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:212;a:4:{s:1:"a";i:213;s:1:"b";s:13:"Update:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:213;a:4:{s:1:"a";i:214;s:1:"b";s:13:"Delete:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:214;a:4:{s:1:"a";i:215;s:1:"b";s:14:"Restore:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:215;a:4:{s:1:"a";i:216;s:1:"b";s:18:"ForceDelete:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:216;a:4:{s:1:"a";i:217;s:1:"b";s:21:"ForceDeleteAny:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:217;a:4:{s:1:"a";i:218;s:1:"b";s:17:"RestoreAny:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:218;a:4:{s:1:"a";i:219;s:1:"b";s:16:"Replicate:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:219;a:4:{s:1:"a";i:220;s:1:"b";s:14:"Reorder:Tautan";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:220;a:4:{s:1:"a";i:221;s:1:"b";s:15:"ViewAny:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:221;a:4:{s:1:"a";i:222;s:1:"b";s:12:"View:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:222;a:4:{s:1:"a";i:223;s:1:"b";s:14:"Create:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:223;a:4:{s:1:"a";i:224;s:1:"b";s:14:"Update:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:224;a:4:{s:1:"a";i:225;s:1:"b";s:14:"Delete:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:225;a:4:{s:1:"a";i:226;s:1:"b";s:15:"Restore:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:226;a:4:{s:1:"a";i:227;s:1:"b";s:19:"ForceDelete:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:227;a:4:{s:1:"a";i:228;s:1:"b";s:22:"ForceDeleteAny:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:228;a:4:{s:1:"a";i:229;s:1:"b";s:18:"RestoreAny:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:229;a:4:{s:1:"a";i:230;s:1:"b";s:17:"Replicate:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:230;a:4:{s:1:"a";i:231;s:1:"b";s:15:"Reorder:Tentang";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:231;a:4:{s:1:"a";i:232;s:1:"b";s:17:"ViewAny:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:232;a:4:{s:1:"a";i:233;s:1:"b";s:14:"View:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:233;a:4:{s:1:"a";i:234;s:1:"b";s:16:"Create:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:234;a:4:{s:1:"a";i:235;s:1:"b";s:16:"Update:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:235;a:4:{s:1:"a";i:236;s:1:"b";s:16:"Delete:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:236;a:4:{s:1:"a";i:237;s:1:"b";s:17:"Restore:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:237;a:4:{s:1:"a";i:238;s:1:"b";s:21:"ForceDelete:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:238;a:4:{s:1:"a";i:239;s:1:"b";s:24:"ForceDeleteAny:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:239;a:4:{s:1:"a";i:240;s:1:"b";s:20:"RestoreAny:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:240;a:4:{s:1:"a";i:241;s:1:"b";s:19:"Replicate:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:241;a:4:{s:1:"a";i:242;s:1:"b";s:17:"Reorder:UnitKerja";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:242;a:4:{s:1:"a";i:243;s:1:"b";s:12:"ViewAny:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:243;a:4:{s:1:"a";i:244;s:1:"b";s:9:"View:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:244;a:4:{s:1:"a";i:245;s:1:"b";s:11:"Create:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:245;a:4:{s:1:"a";i:246;s:1:"b";s:11:"Update:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:246;a:4:{s:1:"a";i:247;s:1:"b";s:11:"Delete:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:247;a:4:{s:1:"a";i:248;s:1:"b";s:12:"Restore:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:248;a:4:{s:1:"a";i:249;s:1:"b";s:16:"ForceDelete:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:249;a:4:{s:1:"a";i:250;s:1:"b";s:19:"ForceDeleteAny:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:250;a:4:{s:1:"a";i:251;s:1:"b";s:15:"RestoreAny:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:251;a:4:{s:1:"a";i:252;s:1:"b";s:14:"Replicate:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:252;a:4:{s:1:"a";i:253;s:1:"b";s:12:"Reorder:User";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:253;a:4:{s:1:"a";i:254;s:1:"b";s:18:"View:MyProfilePage";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:254;a:4:{s:1:"a";i:255;s:1:"b";s:18:"View:WebVisitStats";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:255;a:4:{s:1:"a";i:256;s:1:"b";s:18:"View:WebVisitChart";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:256;a:4:{s:1:"a";i:257;s:1:"b";s:22:"View:WebVisitMontChart";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:257;a:4:{s:1:"a";i:258;s:1:"b";s:21:"View:CommentMontChart";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}i:258;a:4:{s:1:"a";i:259;s:1:"b";s:22:"View:WebVisitYearChart";s:1:"c";s:3:"web";s:1:"r";a:1:{i:0;i:1;}}}s:5:"roles";a:2:{i:0;a:3:{s:1:"a";i:1;s:1:"b";s:11:"super_admin";s:1:"c";s:3:"web";}i:1;a:3:{s:1:"a";i:2;s:1:"b";s:12:"admin_berita";s:1:"c";s:3:"web";}}}', 1769160126);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.cache_locks
CREATE TABLE IF NOT EXISTS `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int(11) NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.cache_locks: ~0 rows (approximately)
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.comments
CREATE TABLE IF NOT EXISTS `comments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` bigint(20) unsigned NOT NULL,
  `parent_id` bigint(20) unsigned DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `comments_blog_id_foreign` (`blog_id`),
  KEY `comments_parent_id_foreign` (`parent_id`),
  CONSTRAINT `comments_blog_id_foreign` FOREIGN KEY (`blog_id`) REFERENCES `blogs` (`id`) ON DELETE CASCADE,
  CONSTRAINT `comments_parent_id_foreign` FOREIGN KEY (`parent_id`) REFERENCES `comments` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.comments: ~9 rows (approximately)
/*!40000 ALTER TABLE `comments` DISABLE KEYS */;
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(1, 1, NULL, 'Budi', 'budi@gmail.com', 'Artikel yang sangat bermanfaat, terima kasih.', NULL, NULL);
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(2, 1, NULL, 'Siti', 'siti@gmail.com', 'Semoga kegiatan seperti ini terus dilakukan.', NULL, NULL);
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(3, 1, NULL, 'Admin', 'admin@dinsos.go.id', 'gimana dong', '2026-01-20 15:03:15', '2026-01-20 15:03:15');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(4, 1, NULL, 'asd', 'arieflukman557@gmail.com', 'asd', '2026-01-21 02:03:07', '2026-01-21 02:03:07');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(5, 1, NULL, 'muhammad lukman sarip', 'arieflukman557@gmail.com', 'tes', '2026-01-21 02:45:15', '2026-01-21 02:45:15');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(6, 1, 5, 'Admin', 'admin@dinsos.go.id', 'ok', '2026-01-22 12:27:42', '2026-01-22 12:27:42');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(7, 1, 1, 'Admin', 'admin@dinsos.go.id', 'jadi gimana bagus nya pak ?', '2026-01-22 12:28:00', '2026-01-22 12:28:00');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(8, 3, NULL, 'muhammad lukman sarip', 'admin@admin.com', 'asdasdasd', '2026-01-22 15:53:41', '2026-01-22 15:53:41');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(9, 3, NULL, 'muhammad lukman sarip', 'arieflukman557@gmail.com', 'asdasdasdasd', '2026-01-22 16:05:50', '2026-01-22 16:05:50');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(10, 3, NULL, 'Dr. andre', 'andre@gmail.com', 'test komen benar captha', '2026-01-22 16:07:00', '2026-01-22 16:07:00');
INSERT INTO `comments` (`id`, `blog_id`, `parent_id`, `name`, `email`, `comment`, `created_at`, `updated_at`) VALUES
	(11, 3, 10, 'Admin', 'admin@dinsos.go.id', 'oke', '2026-01-22 16:09:24', '2026-01-22 16:09:24');
/*!40000 ALTER TABLE `comments` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.embed_youtubes
CREATE TABLE IF NOT EXISTS `embed_youtubes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `text_embed` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.embed_youtubes: ~0 rows (approximately)
/*!40000 ALTER TABLE `embed_youtubes` DISABLE KEYS */;
INSERT INTO `embed_youtubes` (`id`, `text_embed`, `is_active`, `created_at`, `updated_at`) VALUES
	(1, '<iframe width="560" height="315" src="https://www.youtube.com/embed/xxxxxxxx" frameborder="0" allowfullscreen></iframe>', 1, '2026-01-20 07:19:36', '2026-01-20 23:25:03');
INSERT INTO `embed_youtubes` (`id`, `text_embed`, `is_active`, `created_at`, `updated_at`) VALUES
	(2, 'asdasdasd', 0, '2026-01-20 23:23:23', '2026-01-20 23:25:02');
/*!40000 ALTER TABLE `embed_youtubes` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.failed_jobs
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.failed_jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.faqs
CREATE TABLE IF NOT EXISTS `faqs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `question` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `answer` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.faqs: ~2 rows (approximately)
/*!40000 ALTER TABLE `faqs` DISABLE KEYS */;
INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
	(1, 'Apa itu Dinas Sosial?', 'Dinas Sosial adalah perangkat daerah yang menyelenggarakan urusan pemerintahan di bidang sosial.', NULL, NULL);
INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
	(2, 'Bagaimana cara mengajukan pengaduan?', 'Pengaduan dapat diajukan melalui menu Pengaduan pada website resmi Dinas Sosial.', NULL, NULL);
INSERT INTO `faqs` (`id`, `question`, `answer`, `created_at`, `updated_at`) VALUES
	(3, 'contoh', 'jawaban contoh', '2026-01-22 16:13:04', '2026-01-22 16:13:04');
/*!40000 ALTER TABLE `faqs` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.galeris
CREATE TABLE IF NOT EXISTS `galeris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.galeris: ~18 rows (approximately)
/*!40000 ALTER TABLE `galeris` DISABLE KEYS */;
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(2, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(3, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(4, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(5, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(6, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(7, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(8, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(9, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(10, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(11, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(12, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(13, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(14, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(15, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(16, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(17, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
INSERT INTO `galeris` (`id`, `name`, `image`, `created_at`, `updated_at`) VALUES
	(18, 'Kegiatan Sosial 2025', '["galeri/01KFE4E0Z1N1DR0YFBJ4E0NZ8N.png", "galeri/01KFE4E0ZMH7DF2J84C8S7M5E7.png"]', '2026-01-20 07:19:36', '2026-01-20 23:40:00');
/*!40000 ALTER TABLE `galeris` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.informasis
CREATE TABLE IF NOT EXISTS `informasis` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `data` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.informasis: ~1 rows (approximately)
/*!40000 ALTER TABLE `informasis` DISABLE KEYS */;
INSERT INTO `informasis` (`id`, `data`, `created_at`, `updated_at`) VALUES
	(1, '[{"judul": "Informasi Bantuan Sosial", "gambar": "informasi/01KFDTK77JX3662VSZQT337CMR.png"}, {"judul": "Informasi Pelayanan Masyarakat", "gambar": "informasi/01KFDTK78DQ35CNXET68E1J6ZA.png"}]', '2026-01-20 07:19:36', '2026-01-20 13:48:04');
/*!40000 ALTER TABLE `informasis` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.jobs
CREATE TABLE IF NOT EXISTS `jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint(3) unsigned NOT NULL,
  `reserved_at` int(10) unsigned DEFAULT NULL,
  `available_at` int(10) unsigned NOT NULL,
  `created_at` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.jobs: ~0 rows (approximately)
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.job_batches
CREATE TABLE IF NOT EXISTS `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.job_batches: ~0 rows (approximately)
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.kategoris
CREATE TABLE IF NOT EXISTS `kategoris` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `kategoris_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.kategoris: ~4 rows (approximately)
/*!40000 ALTER TABLE `kategoris` DISABLE KEYS */;
INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
	(1, 'Berita', 'berita', NULL, '2026-01-21 01:50:51');
INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
	(2, 'Pengumuman', 'pengumuman', NULL, '2026-01-21 01:50:51');
INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
	(3, 'Kegiatan', 'kegiatan', NULL, '2026-01-21 01:50:51');
INSERT INTO `kategoris` (`id`, `nama`, `slug`, `created_at`, `updated_at`) VALUES
	(4, 'INFO TEST', 'info-test', '2026-01-22 16:10:01', '2026-01-22 16:10:01');
/*!40000 ALTER TABLE `kategoris` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.kategori_pengaduans
CREATE TABLE IF NOT EXISTS `kategori_pengaduans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.kategori_pengaduans: ~4 rows (approximately)
/*!40000 ALTER TABLE `kategori_pengaduans` DISABLE KEYS */;
INSERT INTO `kategori_pengaduans` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(1, 'Pelayanan', NULL, NULL);
INSERT INTO `kategori_pengaduans` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(2, 'Bantuan Sosial', NULL, NULL);
INSERT INTO `kategori_pengaduans` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(3, 'Data Kepesertaan', NULL, NULL);
INSERT INTO `kategori_pengaduans` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(4, 'Lain-lain', NULL, NULL);
INSERT INTO `kategori_pengaduans` (`id`, `name`, `created_at`, `updated_at`) VALUES
	(5, 'Bansos', '2026-01-22 16:17:13', '2026-01-22 16:17:13');
/*!40000 ALTER TABLE `kategori_pengaduans` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.kontaks
CREATE TABLE IF NOT EXISTS `kontaks` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` text COLLATE utf8mb4_unicode_ci,
  `maps_embed` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.kontaks: ~0 rows (approximately)
/*!40000 ALTER TABLE `kontaks` DISABLE KEYS */;
INSERT INTO `kontaks` (`id`, `name`, `phone`, `email`, `address`, `maps_embed`, `created_at`, `updated_at`) VALUES
	(1, 'Dinas Sosial Kabupaten Penajam Utara', '0741-123456', 'dinsos@kabupaten.go.id', 'Jl. Contoh Alamat No. 1, Kabupaten, Provinsi', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3988.7748256349682!2d116.72801771084573!3d-1.3104355356480966!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2df13f002bfb444b%3A0x593a118735e91475!2sDinas%20sosial%20ppu!5e0!3m2!1sid!2sid!4v1768940575048!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', '2026-01-20 07:19:36', '2026-01-21 03:23:21');
/*!40000 ALTER TABLE `kontaks` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.migrations: ~29 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '0001_01_01_000000_create_users_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(2, '0001_01_01_000001_create_cache_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(3, '0001_01_01_000002_create_jobs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(4, '2026_01_19_075854_create_setting_webs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(5, '2026_01_19_075959_create_kontaks_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(6, '2026_01_19_080059_create_faqs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(7, '2026_01_19_080201_create_tautans_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(8, '2026_01_19_080254_create_social_media_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(9, '2026_01_19_080353_create_slides_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(10, '2026_01_19_080440_create_kategoris_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(11, '2026_01_19_080535_create_blogs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(12, '2026_01_19_080633_create_comments_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(13, '2026_01_19_080738_create_informasis_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(14, '2026_01_19_080837_create_pegawai_data_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(15, '2026_01_19_080947_create_tentangs_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(16, '2026_01_19_081034_create_galeris_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(17, '2026_01_19_081126_create_embed_youtubes_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(18, '2026_01_19_081221_create_web_visits_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(19, '2026_01_19_081347_create_profiles_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(20, '2026_01_19_081459_create_unit_kerjas_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(21, '2026_01_19_081558_create_program_kegiatans_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(22, '2026_01_19_081649_create_skms_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(23, '2026_01_19_081735_create_ppids_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(24, '2026_01_19_081831_create_pengaduans_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(25, '2026_01_19_091524_add_parent_id_to_comments_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(26, '2026_01_20_071411_create_kategori_pengaduans_table', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(27, '2026_01_20_071453_update_pengaduans_table_structure', 1);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(29, '2026_01_20_145307_create_permission_tables', 2);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(30, '2026_01_20_152400_create_breezy_sessions_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(31, '2026_01_20_152401_alter_breezy_sessions_table', 3);
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(32, '2026_01_21_014922_add_slug_to_kategoris_table', 4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.model_has_permissions: ~0 rows (approximately)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.model_has_roles: ~2 rows (approximately)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 1);
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(1, 'App\\Models\\User', 2);
INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
	(2, 'App\\Models\\User', 3);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.password_reset_tokens
CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.password_reset_tokens: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.pegawai_data
CREATE TABLE IF NOT EXISTS `pegawai_data` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nama` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nip` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `jabatan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pangkat` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `golongan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.pegawai_data: ~2 rows (approximately)
/*!40000 ALTER TABLE `pegawai_data` DISABLE KEYS */;
INSERT INTO `pegawai_data` (`id`, `nama`, `nip`, `jabatan`, `pangkat`, `golongan`, `created_at`, `updated_at`) VALUES
	(62, 'Contoh Nama Pegawai', '198012312023011000', 'Analis Kesejahteraan Sosial', 'Penata Muda', 'III/a', '2026-01-22 16:19:10', '2026-01-22 16:19:10');
INSERT INTO `pegawai_data` (`id`, `nama`, `nip`, `jabatan`, `pangkat`, `golongan`, `created_at`, `updated_at`) VALUES
	(63, 'Contoh Nama Pegawai 2', '198012312023211000', 'Analis Kesejahteraan Sosial', 'Penata Muda', 'III/a', '2026-01-22 16:19:10', '2026-01-22 16:19:10');
/*!40000 ALTER TABLE `pegawai_data` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.pengaduans
CREATE TABLE IF NOT EXISTS `pengaduans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `kategori_pengaduan_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_hp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subjek` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail_pengaduan` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pengaduans_kategori_pengaduan_id_foreign` (`kategori_pengaduan_id`),
  CONSTRAINT `pengaduans_kategori_pengaduan_id_foreign` FOREIGN KEY (`kategori_pengaduan_id`) REFERENCES `kategori_pengaduans` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.pengaduans: ~1 rows (approximately)
/*!40000 ALTER TABLE `pengaduans` DISABLE KEYS */;
INSERT INTO `pengaduans` (`id`, `kategori_pengaduan_id`, `name`, `email`, `no_hp`, `subjek`, `detail_pengaduan`, `created_at`, `updated_at`) VALUES
	(1, 3, 'Budi Santoso', 'budi@gmail.com', '082180181958', 'Bantuan sosial belum diterima', 'Saya belum menerima bantuan sosial meskipun sudah terdaftar.', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `pengaduans` (`id`, `kategori_pengaduan_id`, `name`, `email`, `no_hp`, `subjek`, `detail_pengaduan`, `created_at`, `updated_at`) VALUES
	(2, 3, 'muhammad lukman sarip', 'arieflukman557@gmail.com', '082180181958', 'asd', 'asdasdasdasdasd', '2026-01-21 17:04:58', '2026-01-21 17:04:58');
INSERT INTO `pengaduans` (`id`, `kategori_pengaduan_id`, `name`, `email`, `no_hp`, `subjek`, `detail_pengaduan`, `created_at`, `updated_at`) VALUES
	(3, 3, 'muhammad lukman sarip', 'admin@admin.com', '082180181958', 'asdasasdaasdasda', 'sdasdasdasdadasdasd', '2026-01-22 15:43:43', '2026-01-22 15:43:43');
INSERT INTO `pengaduans` (`id`, `kategori_pengaduan_id`, `name`, `email`, `no_hp`, `subjek`, `detail_pengaduan`, `created_at`, `updated_at`) VALUES
	(4, 3, 'muhammad lukman sarip', 'arieflukman557@gmail.com', '082180181958', 'CONTOH SAJA', 'CONTOH SAJACONTOH SAJACONTOH SAJACONTOH SAJACONTOH SAJA', '2026-01-22 15:52:44', '2026-01-22 15:52:44');
/*!40000 ALTER TABLE `pengaduans` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=260 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.permissions: ~253 rows (approximately)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'ViewAny:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(2, 'View:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(3, 'Create:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(4, 'Update:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(5, 'Delete:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(6, 'Restore:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(7, 'ForceDelete:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(8, 'ForceDeleteAny:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(9, 'RestoreAny:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(10, 'Replicate:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(11, 'Reorder:Role', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(12, 'ViewAny:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(13, 'View:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(14, 'Create:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(15, 'Update:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(16, 'Delete:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(17, 'Restore:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(18, 'ForceDelete:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(19, 'ForceDeleteAny:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(20, 'RestoreAny:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(21, 'Replicate:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(22, 'Reorder:Blog', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(23, 'ViewAny:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(24, 'View:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(25, 'Create:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(26, 'Update:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(27, 'Delete:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(28, 'Restore:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(29, 'ForceDelete:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(30, 'ForceDeleteAny:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(31, 'RestoreAny:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(32, 'Replicate:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(33, 'Reorder:Comment', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(34, 'ViewAny:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(35, 'View:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(36, 'Create:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(37, 'Update:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(38, 'Delete:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(39, 'Restore:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(40, 'ForceDelete:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(41, 'ForceDeleteAny:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(42, 'RestoreAny:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(43, 'Replicate:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(44, 'Reorder:EmbedYoutube', 'web', '2026-01-20 15:06:28', '2026-01-20 15:06:28');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(45, 'ViewAny:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(46, 'View:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(47, 'Create:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(48, 'Update:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(49, 'Delete:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(50, 'Restore:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(51, 'ForceDelete:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(52, 'ForceDeleteAny:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(53, 'RestoreAny:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(54, 'Replicate:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(55, 'Reorder:Faq', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(56, 'ViewAny:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(57, 'View:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(58, 'Create:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(59, 'Update:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(60, 'Delete:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(61, 'Restore:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(62, 'ForceDelete:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(63, 'ForceDeleteAny:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(64, 'RestoreAny:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(65, 'Replicate:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(66, 'Reorder:Galeri', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(67, 'ViewAny:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(68, 'View:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(69, 'Create:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(70, 'Update:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(71, 'Delete:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(72, 'Restore:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(73, 'ForceDelete:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(74, 'ForceDeleteAny:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(75, 'RestoreAny:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(76, 'Replicate:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(77, 'Reorder:Informasi', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(78, 'ViewAny:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(79, 'View:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(80, 'Create:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(81, 'Update:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(82, 'Delete:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(83, 'Restore:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(84, 'ForceDelete:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(85, 'ForceDeleteAny:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(86, 'RestoreAny:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(87, 'Replicate:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(88, 'Reorder:KategoriPengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(89, 'ViewAny:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(90, 'View:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(91, 'Create:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(92, 'Update:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(93, 'Delete:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(94, 'Restore:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(95, 'ForceDelete:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(96, 'ForceDeleteAny:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(97, 'RestoreAny:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(98, 'Replicate:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(99, 'Reorder:Kategori', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(100, 'ViewAny:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(101, 'View:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(102, 'Create:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(103, 'Update:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(104, 'Delete:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(105, 'Restore:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(106, 'ForceDelete:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(107, 'ForceDeleteAny:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(108, 'RestoreAny:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(109, 'Replicate:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(110, 'Reorder:Kontak', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(111, 'ViewAny:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(112, 'View:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(113, 'Create:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(114, 'Update:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(115, 'Delete:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(116, 'Restore:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(117, 'ForceDelete:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(118, 'ForceDeleteAny:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(119, 'RestoreAny:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(120, 'Replicate:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(121, 'Reorder:PegawaiData', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(122, 'ViewAny:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(123, 'View:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(124, 'Create:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(125, 'Update:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(126, 'Delete:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(127, 'Restore:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(128, 'ForceDelete:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(129, 'ForceDeleteAny:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(130, 'RestoreAny:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(131, 'Replicate:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(132, 'Reorder:Pengaduan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(133, 'ViewAny:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(134, 'View:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(135, 'Create:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(136, 'Update:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(137, 'Delete:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(138, 'Restore:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(139, 'ForceDelete:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(140, 'ForceDeleteAny:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(141, 'RestoreAny:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(142, 'Replicate:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(143, 'Reorder:Ppid', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(144, 'ViewAny:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(145, 'View:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(146, 'Create:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(147, 'Update:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(148, 'Delete:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(149, 'Restore:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(150, 'ForceDelete:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(151, 'ForceDeleteAny:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(152, 'RestoreAny:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(153, 'Replicate:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(154, 'Reorder:Profile', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(155, 'ViewAny:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(156, 'View:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(157, 'Create:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(158, 'Update:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(159, 'Delete:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(160, 'Restore:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(161, 'ForceDelete:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(162, 'ForceDeleteAny:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(163, 'RestoreAny:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(164, 'Replicate:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(165, 'Reorder:ProgramKegiatan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(166, 'ViewAny:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(167, 'View:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(168, 'Create:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(169, 'Update:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(170, 'Delete:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(171, 'Restore:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(172, 'ForceDelete:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(173, 'ForceDeleteAny:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(174, 'RestoreAny:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(175, 'Replicate:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(176, 'Reorder:SettingWeb', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(177, 'ViewAny:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(178, 'View:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(179, 'Create:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(180, 'Update:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(181, 'Delete:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(182, 'Restore:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(183, 'ForceDelete:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(184, 'ForceDeleteAny:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(185, 'RestoreAny:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(186, 'Replicate:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(187, 'Reorder:Skm', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(188, 'ViewAny:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(189, 'View:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(190, 'Create:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(191, 'Update:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(192, 'Delete:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(193, 'Restore:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(194, 'ForceDelete:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(195, 'ForceDeleteAny:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(196, 'RestoreAny:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(197, 'Replicate:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(198, 'Reorder:Slide', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(199, 'ViewAny:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(200, 'View:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(201, 'Create:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(202, 'Update:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(203, 'Delete:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(204, 'Restore:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(205, 'ForceDelete:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(206, 'ForceDeleteAny:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(207, 'RestoreAny:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(208, 'Replicate:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(209, 'Reorder:SocialMedia', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(210, 'ViewAny:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(211, 'View:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(212, 'Create:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(213, 'Update:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(214, 'Delete:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(215, 'Restore:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(216, 'ForceDelete:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(217, 'ForceDeleteAny:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(218, 'RestoreAny:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(219, 'Replicate:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(220, 'Reorder:Tautan', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(221, 'ViewAny:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(222, 'View:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(223, 'Create:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(224, 'Update:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(225, 'Delete:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(226, 'Restore:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(227, 'ForceDelete:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(228, 'ForceDeleteAny:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(229, 'RestoreAny:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(230, 'Replicate:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(231, 'Reorder:Tentang', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(232, 'ViewAny:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(233, 'View:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(234, 'Create:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(235, 'Update:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(236, 'Delete:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(237, 'Restore:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(238, 'ForceDelete:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(239, 'ForceDeleteAny:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(240, 'RestoreAny:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(241, 'Replicate:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(242, 'Reorder:UnitKerja', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(243, 'ViewAny:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(244, 'View:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(245, 'Create:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(246, 'Update:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(247, 'Delete:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(248, 'Restore:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(249, 'ForceDelete:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(250, 'ForceDeleteAny:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(251, 'RestoreAny:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(252, 'Replicate:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(253, 'Reorder:User', 'web', '2026-01-20 15:06:29', '2026-01-20 15:06:29');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(254, 'View:MyProfilePage', 'web', '2026-01-22 12:56:03', '2026-01-22 12:56:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(255, 'View:WebVisitStats', 'web', '2026-01-22 12:56:03', '2026-01-22 12:56:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(256, 'View:WebVisitChart', 'web', '2026-01-22 12:56:03', '2026-01-22 12:56:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(257, 'View:WebVisitMontChart', 'web', '2026-01-22 12:56:03', '2026-01-22 12:56:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(258, 'View:CommentMontChart', 'web', '2026-01-22 12:56:03', '2026-01-22 12:56:03');
INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(259, 'View:WebVisitYearChart', 'web', '2026-01-22 12:56:03', '2026-01-22 12:56:03');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.ppids
CREATE TABLE IF NOT EXISTS `ppids` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumen` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ppids_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.ppids: ~1 rows (approximately)
/*!40000 ALTER TABLE `ppids` DISABLE KEYS */;
INSERT INTO `ppids` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(1, 'PPID Dinas Sosial', 'ppid-dinas-sosial', '<p>Pejabat Pengelola Informasi dan Dokumentasi (PPID) Dinas Sosial.</p>', '["dokumen/ppid/struktur-ppid.pdf", "dokumen/ppid/daftar-informasi.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
/*!40000 ALTER TABLE `ppids` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.profiles
CREATE TABLE IF NOT EXISTS `profiles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumen` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `profiles_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.profiles: ~2 rows (approximately)
/*!40000 ALTER TABLE `profiles` DISABLE KEYS */;
INSERT INTO `profiles` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(1, 'Profil Dinas Sosial', 'profil-dinas-sosial', '<p><strong>VISI</strong></p><p><strong>TERWUJUDNYA KESEJAHTERAAN SOSIAL MASYARAKAT MELALUI PELAYANAN SOSIAL YANG RESPONSIF, INKLUSIF, DAN BERKELANJUTAN</strong></p><hr><p><strong>MISI</strong></p><ol start="1"><li><p><strong>MENINGKATKAN KUALITAS DAN AKSESIBILITAS PELAYANAN SOSIAL<br>bagi Pemerlu Pelayanan Kesejahteraan Sosial (PPKS) secara adil, transparan, dan tepat sasaran.</strong></p></li><li><p><strong>MENINGKATKAN EFEKTIVITAS DAN PROFESIONALISME APARATUR DINAS SOSIAL<br>dalam penyelenggaraan pelayanan sosial yang akuntabel dan berintegritas.</strong></p></li><li><p><strong>MENDORONG PERAN SERTA DAN PARTISIPASI MASYARAKAT<br>dalam penyelenggaraan kesejahteraan sosial melalui kemitraan dan pemberdayaan sosial.</strong></p></li><li><p><strong>MEMPERKUAT KOORDINASI DAN SINERGI<br>dengan pemerintah pusat, pemerintah daerah, dunia usaha, dan masyarakat dalam penanganan masalah sosial.</strong></p></li></ol><hr><p><strong>MOTO PELAYANAN</strong></p><ol start="1"><li><p><strong>SANTUN</strong></p></li><li><p><strong>AMANAH</strong></p></li><li><p><strong>PEDULI</strong></p></li><li><p><strong>PROFESIONAL</strong></p></li><li><p><strong>RAMAH</strong></p></li></ol><hr><p><strong>JANJI LAYANAN PUBLIK</strong></p><p><strong>Kami berkomitmen untuk:</strong></p><ol start="1"><li><p><strong>MELAKSANAKAN PELAYANAN SOSIAL DENGAN SEPENUH HATI, ADIL, DAN TANPA DISKRIMINASI<br>kepada seluruh masyarakat sesuai dengan ketentuan peraturan perundang-undangan yang berlaku.</strong></p></li><li><p><strong>MENGUTAMAKAN KEPUASAN DAN KESEJAHTERAAN MASYARAKAT<br>dalam setiap proses pelayanan sosial yang diberikan.</strong></p></li><li><p><strong>MENYELENGGARAKAN PELAYANAN SOSIAL SECARA PROFESIONAL, TRANSPARAN, DAN AKUNTABEL<br>serta bebas dari Korupsi, Kolusi, Nepotisme (KKN) dan gratifikasi dalam bentuk apa pun.</strong></p></li></ol><hr><p><strong>MAKLUMAT PELAYANAN</strong></p><p><strong>Pimpinan beserta seluruh jajaran Dinas Sosial Kabupaten Penajam Paser Utara<br>dengan ini menyatakan sanggup menyelenggarakan pelayanan sosial kepada masyarakat sesuai dengan Standar Pelayanan Sosial yang telah ditetapkan berdasarkan peraturan perundang-undangan yang berlaku.</strong></p><p><strong>Apabila dalam penyelenggaraan pelayanan sosial tidak sesuai dengan standar pelayanan yang telah ditetapkan, maka kami:</strong></p><ul><li><p><strong>SIAP MEMBERIKAN KOMPENSASI kepada masyarakat sesuai dengan ketentuan yang berlaku;</strong></p></li><li><p><strong>SIAP MENERIMA SANKSI sesuai dengan peraturan perundang-undangan;</strong></p></li><li><p><strong>BERKOMITMEN UNTUK MELAKUKAN PERBAIKAN BERKELANJUTAN<br>demi peningkatan kualitas pelayanan kesejahteraan sosial bagi masyarakat.</strong></p></li></ul><p></p>', '[{"file": "skm/dokumen/01KFED3GKWED34JB6W1DD72M90.pdf", "nama": "Visi Misi"}, {"file": "skm/dokumen/01KFED3GKZHPJJ7BZDDGTBZAWY.pdf", "nama": "Tupoksi"}]', '2026-01-20 07:19:36', '2026-01-21 02:57:08');
INSERT INTO `profiles` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(3, 'Kepala Dinas ', 'kepala-dinas', '<p><strong>Nurlaila, S.H., M.H.</strong></p><p><strong>Kepala Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu</strong><br><strong>Kabupaten Penajam Paser Utara</strong></p><hr><p><strong>Riwayat Pendidikan</strong></p><ul><li><p><strong>Magister Hukum (S2)</strong><br>Universitas Balikpapan, 2021</p></li><li><p><strong>Sarjana Hukum (S1)</strong><br>Universitas Balikpapan, 2005</p></li><li><p><strong>Sekolah Lanjutan Tingkat Atas (SLTA)</strong><br>SMA Negeri 1 Balikpapan, 1994</p></li><li><p><strong>Sekolah Lanjutan Tingkat Pertama (SLTP)</strong><br>SMP Negeri 1 Tanah Grogot, 1992</p></li><li><p><strong>Sekolah Dasar (SD)</strong><br>SD Negeri 030 Tanah Grogot, 1988</p></li></ul><hr><p><strong>Pengalaman Kerja</strong></p><ul><li><p><strong>Jabatan Fungsional Auditor Pratama</strong><br>2009 – 2013</p></li><li><p><strong>Jabatan Fungsional Auditor Muda</strong><br>2013 – 2015</p></li><li><p><strong>Kepala Sub Bidang Logistik</strong><br>Badan Penanggulangan Bencana Daerah (BPBD) Kabupaten Penajam Paser Utara<br>2020 – 2023</p></li><li><p><strong>Sekretaris Badan Kesatuan Bangsa dan Politik</strong><br>Kabupaten Penajam Paser Utara<br>2023 – 2024</p></li><li><p><strong>Kepala Bidang Penyelenggaraan Pelayanan Perizinan dan Nonperizinan</strong><br>Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu<br>2024</p></li><li><p><strong>Kepala Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu</strong><br>Kabupaten Penajam Paser Utara<br>2024 – Sekarang</p></li></ul><p></p>', '[{"file": "skm/dokumen/01KFEFWS9CPM55VTGP4ER61B8M.jpeg", "nama": "KADIS"}]', '2026-01-21 03:00:18', '2026-01-21 03:00:18');
/*!40000 ALTER TABLE `profiles` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.program_kegiatans
CREATE TABLE IF NOT EXISTS `program_kegiatans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumen` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `program_kegiatans_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.program_kegiatans: ~3 rows (approximately)
/*!40000 ALTER TABLE `program_kegiatans` DISABLE KEYS */;
INSERT INTO `program_kegiatans` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(1, 'Program Bantuan Sosial', 'program-bantuan-sosial', '<p>Program bantuan sosial bagi masyarakat kurang mampu.</p>', '["dokumen/program-bansos.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `program_kegiatans` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(2, 'Kegiatan Rehabilitasi Sosial', 'kegiatan-rehabilitasi-sosial', '<p>Kegiatan rehabilitasi bagi penyandang masalah kesejahteraan sosial.</p>', '["dokumen/rehabilitasi-sosial.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `program_kegiatans` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(3, 'asdas a a asd as as', 'asdas-a-a-asd-as-as', '<p>a asdasdasdas</p>', '[{"file": "skm/dokumen/01KFJ41DWF25TBGFDS33JZBDVA.png", "nama": "asdasd"}]', '2026-01-22 12:50:05', '2026-01-22 12:50:05');
/*!40000 ALTER TABLE `program_kegiatans` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.roles: ~0 rows (approximately)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(1, 'super_admin', 'web', '2026-01-20 15:04:58', '2026-01-20 15:04:58');
INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
	(2, 'admin_berita', 'web', '2026-01-22 16:22:06', '2026-01-22 16:22:06');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.role_has_permissions: ~292 rows (approximately)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(1, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(2, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(3, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(4, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(5, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(6, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(7, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(8, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(9, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(10, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(11, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(12, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(13, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(14, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(15, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(16, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(17, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(18, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(19, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(20, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(21, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(22, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(23, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(24, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(25, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(26, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(27, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(28, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(29, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(30, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(31, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(32, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(33, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(34, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(35, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(36, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(37, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(38, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(39, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(40, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(41, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(42, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(43, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(44, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(45, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(46, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(47, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(48, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(49, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(50, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(51, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(52, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(53, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(54, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(55, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(56, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(57, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(58, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(59, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(60, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(61, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(62, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(63, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(64, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(65, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(66, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(67, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(68, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(69, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(70, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(71, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(72, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(73, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(74, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(75, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(76, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(77, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(78, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(79, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(80, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(81, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(82, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(83, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(84, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(85, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(86, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(87, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(88, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(89, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(90, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(91, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(92, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(93, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(94, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(95, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(96, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(97, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(98, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(99, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(100, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(101, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(102, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(103, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(104, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(105, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(106, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(107, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(108, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(109, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(110, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(111, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(112, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(113, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(114, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(115, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(116, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(117, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(118, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(119, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(120, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(121, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(122, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(123, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(124, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(125, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(126, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(127, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(128, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(129, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(130, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(131, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(132, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(133, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(134, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(135, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(136, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(137, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(138, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(139, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(140, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(141, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(142, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(143, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(144, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(145, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(146, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(147, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(148, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(149, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(150, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(151, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(152, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(153, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(154, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(155, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(156, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(157, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(158, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(159, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(160, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(161, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(162, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(163, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(164, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(165, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(166, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(167, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(168, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(169, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(170, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(171, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(172, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(173, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(174, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(175, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(176, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(177, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(178, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(179, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(180, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(181, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(182, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(183, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(184, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(185, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(186, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(187, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(188, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(189, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(190, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(191, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(192, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(193, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(194, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(195, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(196, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(197, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(198, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(199, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(200, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(201, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(202, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(203, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(204, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(205, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(206, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(207, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(208, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(209, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(210, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(211, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(212, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(213, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(214, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(215, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(216, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(217, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(218, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(219, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(220, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(221, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(222, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(223, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(224, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(225, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(226, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(227, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(228, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(229, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(230, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(231, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(232, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(233, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(234, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(235, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(236, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(237, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(238, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(239, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(240, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(241, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(242, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(243, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(244, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(245, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(246, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(247, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(248, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(249, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(250, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(251, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(252, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(253, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(254, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(255, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(256, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(257, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(258, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(259, 1);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(12, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(13, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(14, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(15, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(16, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(17, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(18, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(19, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(20, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(21, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(22, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(23, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(24, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(25, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(26, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(27, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(28, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(29, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(30, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(31, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(32, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(33, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(89, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(90, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(91, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(92, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(93, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(94, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(95, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(96, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(97, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(98, 2);
INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
	(99, 2);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.sessions
CREATE TABLE IF NOT EXISTS `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.sessions: ~3 rows (approximately)
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('gGXzVKX8aHSJmxuRDUqa9BXTHZOTTWi97mVAQg5l', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo2OntzOjY6Il90b2tlbiI7czo0MDoidm4zYmc2a3pxYmduMlV2eHk1YVI1NXFTdXBFbjVUNmJGV3loemRqbCI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzY6Imh0dHBzOi8vd2ViLWluc3RhbnNpLWxhcmF2ZWwtZmkudGVzdCI7czo1OiJyb3V0ZSI7Tjt9czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiMGEyMDBlY2YyMGFhMDY4MGVhNzYyY2ZjNWFmNDdiYWQyM2FmZGRmZDdkMjc1ZTE0MmZiZjY3YTdhYzQyMTFmNSI7czo2OiJ0YWJsZXMiO2E6MTp7czo0MDoiYmU1OTUwNDdhZjVkMjFlNjU1YTI3MTJmZTBmZDhmNmVfY29sdW1ucyI7YTo1OntpOjA7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MToiIyI7czo1OiJsYWJlbCI7czoxOiIjIjtzOjg6ImlzSGlkZGVuIjtiOjA7czo5OiJpc1RvZ2dsZWQiO2I6MTtzOjEyOiJpc1RvZ2dsZWFibGUiO2I6MDtzOjI0OiJpc1RvZ2dsZWRIaWRkZW5CeURlZmF1bHQiO047fWk6MTthOjc6e3M6NDoidHlwZSI7czo2OiJjb2x1bW4iO3M6NDoibmFtZSI7czo1OiJqdWR1bCI7czo1OiJsYWJlbCI7czo1OiJKdWR1bCI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjI7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6NjoiZ2FtYmFyIjtzOjU6ImxhYmVsIjtzOjY6IkdhbWJhciI7czo4OiJpc0hpZGRlbiI7YjowO3M6OToiaXNUb2dnbGVkIjtiOjE7czoxMjoiaXNUb2dnbGVhYmxlIjtiOjA7czoyNDoiaXNUb2dnbGVkSGlkZGVuQnlEZWZhdWx0IjtOO31pOjM7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6ImNyZWF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IkNyZWF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO31pOjQ7YTo3OntzOjQ6InR5cGUiO3M6NjoiY29sdW1uIjtzOjQ6Im5hbWUiO3M6MTA6InVwZGF0ZWRfYXQiO3M6NToibGFiZWwiO3M6MTA6IlVwZGF0ZWQgYXQiO3M6ODoiaXNIaWRkZW4iO2I6MDtzOjk6ImlzVG9nZ2xlZCI7YjowO3M6MTI6ImlzVG9nZ2xlYWJsZSI7YjoxO3M6MjQ6ImlzVG9nZ2xlZEhpZGRlbkJ5RGVmYXVsdCI7YjoxO319fX0=', 1769074068);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('pX7qlyng2TGTXlryfLLDzpG1ufUvk4NR2P9Au7Zk', 1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTo1OntzOjY6Il90b2tlbiI7czo0MDoiWkc3c0N6cnFBcGhvbTVrR1YxWkNjWTNDT3RlaDB0ZlRtQ3JDVFZBeSI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbiI7czo1OiJyb3V0ZSI7czozMDoiZmlsYW1lbnQuYWRtaW4ucGFnZXMuZGFzaGJvYXJkIjt9czo1MDoibG9naW5fd2ViXzNkYzdhOTEzZWY1ZmQ0Yjg5MGVjYWJlMzQ4NzA4NTU3M2UxNmNmODIiO2k6MTtzOjE3OiJwYXNzd29yZF9oYXNoX3dlYiI7czo2NDoiMGEyMDBlY2YyMGFhMDY4MGVhNzYyY2ZjNWFmNDdiYWQyM2FmZGRmZDdkMjc1ZTE0MmZiZjY3YTdhYzQyMTFmNSI7fQ==', 1769074043);
INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
	('YFxIp2TsCrTcdAmnByODxbSZg4h1lWTO9T3mM7R9', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoicmVvaHlnQnRJSGRhMjF2U1dFYzlRdnVxZWVTUTBGUWdhOGR3OWFscCI7czo5OiJfcHJldmlvdXMiO2E6Mjp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9hZG1pbi9sb2dpbiI7czo1OiJyb3V0ZSI7czoyNToiZmlsYW1lbnQuYWRtaW4uYXV0aC5sb2dpbiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1769069295);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.setting_webs
CREATE TABLE IF NOT EXISTS `setting_webs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `logo_kiri` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `logo_kanan` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `whatsapp` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_tag` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.setting_webs: ~0 rows (approximately)
/*!40000 ALTER TABLE `setting_webs` DISABLE KEYS */;
INSERT INTO `setting_webs` (`id`, `logo_kiri`, `logo_kanan`, `name`, `whatsapp`, `meta_tag`, `created_at`, `updated_at`) VALUES
	(1, 'settings/01KFE7JDH6ATHWQ56R0YW5GCX7.png', 'settings/01KFE7Q0S4E0YWG2S85EJBZNDW.png', 'Dinas Sosial Kabupaten Penajam Paser Utara', '628123456789', '<meta name="description" content="Website Resmi Dinas Sosial">', '2026-01-20 07:19:36', '2026-01-21 00:37:20');
/*!40000 ALTER TABLE `setting_webs` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.skms
CREATE TABLE IF NOT EXISTS `skms` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumen` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `skms_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.skms: ~2 rows (approximately)
/*!40000 ALTER TABLE `skms` DISABLE KEYS */;
INSERT INTO `skms` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(1, 'Hasil Survei Kepuasan Masyarakat', 'hasil-skm', '<p>Hasil Survei Kepuasan Masyarakat terhadap pelayanan Dinas Sosial tahun 2024.</p>', '["dokumen/skm-2024.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `skms` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(2, 'asdasd asd asd asd', 'asdasd-asd-asd-asd', '<p>mnb</p>', '[{"file": "skm/dokumen/01KFJ42GXVCCCK36F2FWS8S9F4.png", "nama": "sdfdsf"}]', '2026-01-22 12:50:41', '2026-01-22 12:50:41');
/*!40000 ALTER TABLE `skms` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.slides
CREATE TABLE IF NOT EXISTS `slides` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `judul` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `gambar` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.slides: ~1 rows (approximately)
/*!40000 ALTER TABLE `slides` DISABLE KEYS */;
INSERT INTO `slides` (`id`, `judul`, `gambar`, `created_at`, `updated_at`) VALUES
	(2, 'DENGAN SEPENUH HATI, ADIL, DAN TANPA DISKRIMINASI kepada seluruh masyarakat sesuai dengan ketentuan peraturan perundang-undangan yang berlaku.', 'slides/01KFGTXGNRPQRJEETYS1VHXPBC.png', '2026-01-22 00:46:26', '2026-01-22 00:51:25');
/*!40000 ALTER TABLE `slides` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.social_media
CREATE TABLE IF NOT EXISTS `social_media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.social_media: ~3 rows (approximately)
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` (`id`, `name`, `url`, `icon`, `created_at`, `updated_at`) VALUES
	(1, 'Facebook', 'https://tiktok.com/dinsos', 'fab fa-tiktok', NULL, '2026-01-21 03:25:51');
INSERT INTO `social_media` (`id`, `name`, `url`, `icon`, `created_at`, `updated_at`) VALUES
	(2, 'Instagram', 'https://instagram.com/dinsos', 'fab fa-instagram', NULL, '2026-01-21 03:26:00');
INSERT INTO `social_media` (`id`, `name`, `url`, `icon`, `created_at`, `updated_at`) VALUES
	(3, 'YouTube', 'https://youtube.com/@dinsos', 'fab fa-youtube', NULL, '2026-01-21 03:26:17');
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.tautans
CREATE TABLE IF NOT EXISTS `tautans` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.tautans: ~8 rows (approximately)
/*!40000 ALTER TABLE `tautans` DISABLE KEYS */;
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(1, 'Aplikasi SIPESAN PPU', 'https://kemensos.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(2, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(3, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(4, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(5, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(6, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(7, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
INSERT INTO `tautans` (`id`, `name`, `url`, `created_at`, `updated_at`) VALUES
	(8, 'Aplikasi Simpeg Kemensos', 'https://kabupaten.go.id', NULL, NULL);
/*!40000 ALTER TABLE `tautans` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.tentangs
CREATE TABLE IF NOT EXISTS `tentangs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `cover` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `legalitas` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.tentangs: ~0 rows (approximately)
/*!40000 ALTER TABLE `tentangs` DISABLE KEYS */;
INSERT INTO `tentangs` (`id`, `name`, `description`, `cover`, `legalitas`, `created_at`, `updated_at`) VALUES
	(1, 'Tentang Dinas Sosial', '<p><strong>VISI</strong></p><p><strong>TERWUJUDNYA KESEJAHTERAAN SOSIAL MASYARAKAT MELALUI PELAYANAN SOSIAL YANG RESPONSIF, INKLUSIF, DAN BERKELANJUTAN</strong></p><hr><p><strong>MISI</strong></p><ol start="1"><li><p><strong>MENINGKATKAN KUALITAS DAN AKSESIBILITAS PELAYANAN SOSIAL<br>bagi Pemerlu Pelayanan Kesejahteraan Sosial (PPKS) secara adil, transparan, dan tepat sasaran.</strong></p></li><li><p><strong>MENINGKATKAN EFEKTIVITAS DAN PROFESIONALISME APARATUR DINAS SOSIAL<br>dalam penyelenggaraan pelayanan sosial yang akuntabel dan berintegritas.</strong></p></li><li><p><strong>MENDORONG PERAN SERTA DAN PARTISIPASI MASYARAKAT<br>dalam penyelenggaraan kesejahteraan sosial melalui kemitraan dan pemberdayaan sosial.</strong></p></li><li><p><strong>MEMPERKUAT KOORDINASI DAN SINERGI<br>dengan pemerintah pusat, pemerintah daerah, dunia usaha, dan masyarakat dalam penanganan masalah sosial.</strong></p></li></ol><hr><p><strong>MOTO PELAYANAN</strong></p><ol start="1"><li><p><strong>SANTUN</strong></p></li><li><p><strong>AMANAH</strong></p></li><li><p><strong>PEDULI</strong></p></li><li><p><strong>PROFESIONAL</strong></p></li><li><p><strong>RAMAH</strong></p></li></ol><hr><p><strong>JANJI LAYANAN PUBLIK</strong></p><p><strong>Kami berkomitmen untuk:</strong></p><ol start="1"><li><p><strong>MELAKSANAKAN PELAYANAN SOSIAL DENGAN SEPENUH HATI, ADIL, DAN TANPA DISKRIMINASI<br>kepada seluruh masyarakat sesuai dengan ketentuan peraturan perundang-undangan yang berlaku.</strong></p></li><li><p><strong>MENGUTAMAKAN KEPUASAN DAN KESEJAHTERAAN MASYARAKAT<br>dalam setiap proses pelayanan sosial yang diberikan.</strong></p></li><li><p><strong>MENYELENGGARAKAN PELAYANAN SOSIAL SECARA PROFESIONAL, TRANSPARAN, DAN AKUNTABEL<br>serta bebas dari Korupsi, Kolusi, Nepotisme (KKN) dan gratifikasi dalam bentuk apa pun.</strong></p></li></ol><hr><p><strong>MAKLUMAT PELAYANAN</strong></p><p><strong>Pimpinan beserta seluruh jajaran Dinas Sosial Kabupaten Penajam Paser Utara<br>dengan ini menyatakan sanggup menyelenggarakan pelayanan sosial kepada masyarakat sesuai dengan Standar Pelayanan Sosial yang telah ditetapkan berdasarkan peraturan perundang-undangan yang berlaku.</strong></p><p><strong>Apabila dalam penyelenggaraan pelayanan sosial tidak sesuai dengan standar pelayanan yang telah ditetapkan, maka kami:</strong></p><ul><li><p><strong>SIAP MEMBERIKAN KOMPENSASI kepada masyarakat sesuai dengan ketentuan yang berlaku;</strong></p></li><li><p><strong>SIAP MENERIMA SANKSI sesuai dengan peraturan perundang-undangan;</strong></p></li><li><p><strong>BERKOMITMEN UNTUK MELAKUKAN PERBAIKAN BERKELANJUTAN<br>demi peningkatan kualitas pelayanan kesejahteraan sosial bagi masyarakat.</strong></p></li></ul><p></p>', 'tentang/01KFFYZV6APRAP0MJWNQ60SGNP.png', 'tentang/01KFE3RY9CPP22Z7RZ740NPFQT.pdf', '2026-01-20 07:19:36', '2026-01-21 16:43:21');
/*!40000 ALTER TABLE `tentangs` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.unit_kerjas
CREATE TABLE IF NOT EXISTS `unit_kerjas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `deskripsi` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `dokumen` json DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `unit_kerjas_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.unit_kerjas: ~5 rows (approximately)
/*!40000 ALTER TABLE `unit_kerjas` DISABLE KEYS */;
INSERT INTO `unit_kerjas` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(1, 'Sekretariat', 'sekretariat', '<p>Unit kerja yang menangani administrasi dan tata usaha.</p>', '[{"file": "unit-kerja/dokumen/01KFE1N25P62SWHX57WQ1HKES9.png", "nama": "tes", "file_dokumen": "unit-kerja/dokumen/01KFE1KD9AP7HYWMK7N9YB3EKD.pdf", "nama_dokumen": "tes"}]', '2026-01-20 07:19:36', '2026-01-20 22:51:25');
INSERT INTO `unit_kerjas` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(2, 'Bidang Rehabilitasi Sosial', 'rehabilitasi-sosial', '<p>Menangani pelayanan rehabilitasi sosial.</p>', '["dokumen/rehabilitasi.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `unit_kerjas` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(3, 'Bidang Perlindungan dan Jaminan Sosial', 'perlindungan-jaminan-sosial', '<p>Menangani perlindungan dan jaminan sosial.</p>', '["dokumen/perlindungan.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `unit_kerjas` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(4, 'Bidang Pemberdayaan Sosial', 'pemberdayaan-sosial', '<p>Menangani pemberdayaan masyarakat sosial.</p>', '["dokumen/pemberdayaan.pdf"]', '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `unit_kerjas` (`id`, `name`, `slug`, `deskripsi`, `dokumen`, `created_at`, `updated_at`) VALUES
	(5, 'asdasd a ad as da', 'asdasd-a-ad-as-da', '<p>dasdasdas</p>', '[{"file": "unit-kerja/dokumen/01KFJ43A18S1CS5A4QTDEECAV8.png", "nama": "dasdasd"}]', '2026-01-22 12:51:06', '2026-01-22 12:51:06');
/*!40000 ALTER TABLE `unit_kerjas` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'lookman', 'lookman@example.com', NULL, '$2y$12$xvj1hvln4U6D2A.FH8BJj.Emx25qER8Y2hvoU7VFpHg6fp.NRKV4i', NULL, '2026-01-20 07:19:36', '2026-01-20 07:19:36');
INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(2, 'kadis', 'kadis', 'kadis@kadis.kadis', NULL, '$2y$12$fJ4XpzOi.Zb9/0hoMTAEW.s6se6d42uvCHceygVw.z7whRZ1J2Bc.', NULL, '2026-01-20 22:43:19', '2026-01-20 22:43:19');
INSERT INTO `users` (`id`, `name`, `username`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(3, 'Admin Sugeng', 'sugeng', 'sugeng@kabupaten.go.id', NULL, '$2y$12$db02u0APhqkn8sh/VeFog.8k37ayd6.G0bQ4gTa/PJ/xalcG/g4lO', NULL, '2026-01-22 16:22:56', '2026-01-22 16:22:56');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

-- Dumping structure for table web-instansi-laravel-fi.web_visits
CREATE TABLE IF NOT EXISTS `web_visits` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `url` text COLLATE utf8mb4_unicode_ci,
  `referrer` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=388 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table web-instansi-laravel-fi.web_visits: ~387 rows (approximately)
/*!40000 ALTER TABLE `web_visits` DISABLE KEYS */;
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(1, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:37:56', '2026-01-22 00:37:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(2, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:38:33', '2026-01-22 00:38:33');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:38:55', '2026-01-22 00:38:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(4, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:40:50', '2026-01-22 00:40:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(5, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:40:55', '2026-01-22 00:40:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(6, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:42:06', '2026-01-22 00:42:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(7, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:42:26', '2026-01-22 00:42:26');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(8, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:42:34', '2026-01-22 00:42:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(9, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/tentang', 'https://web-instansi-laravel-fi.test/', '2026-01-22 00:45:40', '2026-01-22 00:45:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(10, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:46:55', '2026-01-22 00:46:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(11, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:47:29', '2026-01-22 00:47:29');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(12, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:47:53', '2026-01-22 00:47:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:48:08', '2026-01-22 00:48:08');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(14, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:49:48', '2026-01-22 00:49:48');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(15, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:49:57', '2026-01-22 00:49:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(16, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:50:02', '2026-01-22 00:50:02');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(17, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 00:50:10', '2026-01-22 00:50:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(18, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:50:19', '2026-01-22 00:50:19');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(19, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:50:19', '2026-01-22 00:50:19');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(20, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:51:27', '2026-01-22 00:51:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(21, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 00:51:30', '2026-01-22 00:51:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(22, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 00:51:34', '2026-01-22 00:51:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(23, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:51:34', '2026-01-22 00:51:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(24, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:52:35', '2026-01-22 00:52:35');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(25, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:52:46', '2026-01-22 00:52:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(26, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:52:55', '2026-01-22 00:52:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(27, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:53:03', '2026-01-22 00:53:03');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(28, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 00:53:08', '2026-01-22 00:53:08');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(29, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/', '2026-01-22 00:57:09', '2026-01-22 00:57:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(30, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:06:38', '2026-01-22 01:06:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(31, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:06:52', '2026-01-22 01:06:52');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(32, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog?page=2', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 01:06:56', '2026-01-22 01:06:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(33, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/blog?page=2', '2026-01-22 01:06:59', '2026-01-22 01:06:59');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(34, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/blog?page=2', '2026-01-22 01:07:14', '2026-01-22 01:07:14');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(35, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 01:07:19', '2026-01-22 01:07:19');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(36, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 01:07:22', '2026-01-22 01:07:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(37, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:07:27', '2026-01-22 01:07:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(38, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:09:28', '2026-01-22 01:09:28');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(39, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:09:32', '2026-01-22 01:09:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(40, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:09:38', '2026-01-22 01:09:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(41, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:09:50', '2026-01-22 01:09:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(42, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:10:12', '2026-01-22 01:10:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(43, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:10:21', '2026-01-22 01:10:21');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(44, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:10:48', '2026-01-22 01:10:48');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(45, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:11:05', '2026-01-22 01:11:05');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(46, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:11:39', '2026-01-22 01:11:39');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(47, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:12:20', '2026-01-22 01:12:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(48, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:13:12', '2026-01-22 01:13:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(49, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:13:18', '2026-01-22 01:13:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(50, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 01:13:27', '2026-01-22 01:13:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(51, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:13:34', '2026-01-22 01:13:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(52, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog?page=2', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 01:13:40', '2026-01-22 01:13:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(53, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog?page=1', 'https://web-instansi-laravel-fi.test/blog?page=2', '2026-01-22 01:13:42', '2026-01-22 01:13:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(54, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 01:13:46', '2026-01-22 01:13:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(55, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 01:13:59', '2026-01-22 01:13:59');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(56, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 01:14:12', '2026-01-22 01:14:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(57, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 01:14:17', '2026-01-22 01:14:17');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(58, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 01:14:27', '2026-01-22 01:14:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(59, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 01:14:32', '2026-01-22 01:14:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(60, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:14:42', '2026-01-22 01:14:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(61, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 01:14:46', '2026-01-22 01:14:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(62, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 01:15:22', '2026-01-22 01:15:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(63, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 01:15:59', '2026-01-22 01:15:59');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(64, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 01:16:08', '2026-01-22 01:16:08');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(65, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 01:16:13', '2026-01-22 01:16:13');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(66, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:16:39', '2026-01-22 01:16:39');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(67, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 01:20:15', '2026-01-22 01:20:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(68, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:20:22', '2026-01-22 01:20:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(69, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:20:25', '2026-01-22 01:20:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(70, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:20:27', '2026-01-22 01:20:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(71, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 01:20:29', '2026-01-22 01:20:29');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(72, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 01:20:31', '2026-01-22 01:20:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(73, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 01:20:33', '2026-01-22 01:20:33');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(74, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', '2026-01-22 01:20:34', '2026-01-22 01:20:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(75, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 01:20:35', '2026-01-22 01:20:35');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(76, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 01:21:23', '2026-01-22 01:21:23');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(77, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:21:29', '2026-01-22 01:21:29');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(78, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:21:57', '2026-01-22 01:21:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(79, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:22:07', '2026-01-22 01:22:07');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(80, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:22:47', '2026-01-22 01:22:47');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(81, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:23:34', '2026-01-22 01:23:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(82, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:27:52', '2026-01-22 01:27:52');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(83, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri/1', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:27:58', '2026-01-22 01:27:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(84, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:28:01', '2026-01-22 01:28:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(85, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri/1', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:28:03', '2026-01-22 01:28:03');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(86, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:28:04', '2026-01-22 01:28:04');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(87, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:28:11', '2026-01-22 01:28:11');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(88, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:28:36', '2026-01-22 01:28:36');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(89, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri/1', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:28:38', '2026-01-22 01:28:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(90, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:28:46', '2026-01-22 01:28:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(91, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri/1', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:28:50', '2026-01-22 01:28:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(92, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:28:53', '2026-01-22 01:28:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(93, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri/1', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:28:54', '2026-01-22 01:28:54');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(94, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:28:56', '2026-01-22 01:28:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(95, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:29:23', '2026-01-22 01:29:23');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(96, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:29:58', '2026-01-22 01:29:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(97, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:30:02', '2026-01-22 01:30:02');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(98, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:30:20', '2026-01-22 01:30:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(99, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/galeri/1', '2026-01-22 01:30:32', '2026-01-22 01:30:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(100, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 01:32:40', '2026-01-22 01:32:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(101, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:32:45', '2026-01-22 01:32:45');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(102, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 01:33:44', '2026-01-22 01:33:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(103, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/tentang', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:33:47', '2026-01-22 01:33:47');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(104, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:33:48', '2026-01-22 01:33:48');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(105, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/informasi', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:33:49', '2026-01-22 01:33:49');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(106, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/', '2026-01-22 01:33:51', '2026-01-22 01:33:51');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(107, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 01:36:09', '2026-01-22 01:36:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(108, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/', '2026-01-22 02:09:10', '2026-01-22 02:09:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(109, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 02:09:21', '2026-01-22 02:09:21');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(110, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 02:09:23', '2026-01-22 02:09:23');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(111, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 02:09:25', '2026-01-22 02:09:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(112, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 02:10:05', '2026-01-22 02:10:05');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(113, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 02:10:06', '2026-01-22 02:10:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(114, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 02:11:19', '2026-01-22 02:11:19');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(115, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 02:14:41', '2026-01-22 02:14:41');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(116, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:55:43', '2026-01-22 11:55:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(117, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:56:29', '2026-01-22 11:56:29');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(118, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:56:38', '2026-01-22 11:56:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(119, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:18', '2026-01-22 11:57:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(120, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:34', '2026-01-22 11:57:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(121, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:40', '2026-01-22 11:57:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(122, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:42', '2026-01-22 11:57:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(123, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:42', '2026-01-22 11:57:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(124, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:42', '2026-01-22 11:57:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(125, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:43', '2026-01-22 11:57:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(126, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:43', '2026-01-22 11:57:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(127, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 11:57:51', '2026-01-22 11:57:51');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(128, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 11:57:53', '2026-01-22 11:57:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(129, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:58:25', '2026-01-22 11:58:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(130, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:58:41', '2026-01-22 11:58:41');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(131, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:58:51', '2026-01-22 11:58:51');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(132, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:59:00', '2026-01-22 11:59:00');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(133, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:59:11', '2026-01-22 11:59:11');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(134, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 11:59:15', '2026-01-22 11:59:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(135, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:59:23', '2026-01-22 11:59:23');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(136, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 11:59:32', '2026-01-22 11:59:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(137, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 11:59:49', '2026-01-22 11:59:49');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(138, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:04:22', '2026-01-22 12:04:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(139, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:04:52', '2026-01-22 12:04:52');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(140, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:04:57', '2026-01-22 12:04:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(141, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:06:18', '2026-01-22 12:06:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(142, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/perlindungan-jaminan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:06:27', '2026-01-22 12:06:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(143, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/perlindungan-jaminan-sosial', '2026-01-22 12:06:30', '2026-01-22 12:06:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(144, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', '2026-01-22 12:06:32', '2026-01-22 12:06:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(145, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', '2026-01-22 12:06:34', '2026-01-22 12:06:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(146, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:06:36', '2026-01-22 12:06:36');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(147, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/perlindungan-jaminan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', '2026-01-22 12:06:38', '2026-01-22 12:06:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(148, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/perlindungan-jaminan-sosial', '2026-01-22 12:06:40', '2026-01-22 12:06:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(149, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', '2026-01-22 12:07:33', '2026-01-22 12:07:33');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(150, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:07:34', '2026-01-22 12:07:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(151, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/kepala-dinas', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:07:49', '2026-01-22 12:07:49');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(152, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/kepala-dinas', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:15', '2026-01-22 12:08:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(153, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/kepala-dinas', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:30', '2026-01-22 12:08:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(154, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/kepala-dinas', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:31', '2026-01-22 12:08:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(155, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/kepala-dinas', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:31', '2026-01-22 12:08:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(156, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:34', '2026-01-22 12:08:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(157, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:08:36', '2026-01-22 12:08:36');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(158, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:39', '2026-01-22 12:08:39');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(159, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 12:08:41', '2026-01-22 12:08:41');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(160, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:08:42', '2026-01-22 12:08:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(161, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/perlindungan-jaminan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/sekretariat', '2026-01-22 12:08:44', '2026-01-22 12:08:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(162, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/perlindungan-jaminan-sosial', '2026-01-22 12:08:46', '2026-01-22 12:08:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(163, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', '2026-01-22 12:08:48', '2026-01-22 12:08:48');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(164, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 12:08:50', '2026-01-22 12:08:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(165, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:08:56', '2026-01-22 12:08:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(166, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/unit-kerja/pemberdayaan-sosial', '2026-01-22 12:08:58', '2026-01-22 12:08:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(167, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:09:00', '2026-01-22 12:09:00');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(168, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:11:43', '2026-01-22 12:11:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(169, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:11:54', '2026-01-22 12:11:54');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(170, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:12:05', '2026-01-22 12:12:05');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(171, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:12:27', '2026-01-22 12:12:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(172, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:12:30', '2026-01-22 12:12:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(173, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 12:12:32', '2026-01-22 12:12:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(174, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:12:33', '2026-01-22 12:12:33');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(175, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 12:13:45', '2026-01-22 12:13:45');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(176, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:13:47', '2026-01-22 12:13:47');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(177, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/kegiatan-rehabilitasi-sosial', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', '2026-01-22 12:13:51', '2026-01-22 12:13:51');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(178, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', 'https://web-instansi-laravel-fi.test/program/kegiatan-rehabilitasi-sosial', '2026-01-22 12:16:57', '2026-01-22 12:16:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(179, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/kegiatan-rehabilitasi-sosial', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', '2026-01-22 12:16:58', '2026-01-22 12:16:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(180, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', 'https://web-instansi-laravel-fi.test/program/kegiatan-rehabilitasi-sosial', '2026-01-22 12:17:00', '2026-01-22 12:17:00');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(181, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', '2026-01-22 12:17:02', '2026-01-22 12:17:02');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(182, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', '2026-01-22 12:17:40', '2026-01-22 12:17:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(183, '127.0.0.1', 'Mozilla/5.0 (iPhone; CPU iPhone OS 15_0 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/17.5 Mobile/15A5370a Safari/602.1', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:17:46', '2026-01-22 12:17:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(184, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', '2026-01-22 12:17:53', '2026-01-22 12:17:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(185, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 12:17:53', '2026-01-22 12:17:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(186, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/skm-2024', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:18:49', '2026-01-22 12:18:49');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(187, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', 'https://web-instansi-laravel-fi.test/skm/skm-2024', '2026-01-22 12:19:46', '2026-01-22 12:19:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(188, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/skm-2024', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', '2026-01-22 12:19:50', '2026-01-22 12:19:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(189, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/skm-2024', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', '2026-01-22 12:20:01', '2026-01-22 12:20:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(190, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/skm-2024', 'https://web-instansi-laravel-fi.test/skm/skm-2024', '2026-01-22 12:20:12', '2026-01-22 12:20:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(191, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/skm/skm-2024', '2026-01-22 12:20:25', '2026-01-22 12:20:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(192, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/skm-2024', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:20:26', '2026-01-22 12:20:26');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(193, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/skm-2024', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:20:50', '2026-01-22 12:20:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(194, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/skm/skm-2024', '2026-01-22 12:20:56', '2026-01-22 12:20:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(195, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/hasil-skm', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:20:57', '2026-01-22 12:20:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(196, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/skm/hasil-skm', '2026-01-22 12:21:06', '2026-01-22 12:21:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(197, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/skm/hasil-skm', '2026-01-22 12:23:44', '2026-01-22 12:23:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(198, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:23:55', '2026-01-22 12:23:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(199, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:24:22', '2026-01-22 12:24:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(200, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', '2026-01-22 12:24:43', '2026-01-22 12:24:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(201, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:25:24', '2026-01-22 12:25:24');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(202, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:25:27', '2026-01-22 12:25:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(203, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', '2026-01-22 12:25:31', '2026-01-22 12:25:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(204, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:25:55', '2026-01-22 12:25:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(205, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 12:25:58', '2026-01-22 12:25:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(206, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 12:26:02', '2026-01-22 12:26:02');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(207, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:26:36', '2026-01-22 12:26:36');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(208, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 12:26:55', '2026-01-22 12:26:55');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(209, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 12:27:01', '2026-01-22 12:27:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(210, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 12:27:03', '2026-01-22 12:27:03');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(211, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 12:27:47', '2026-01-22 12:27:47');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(212, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 12:28:01', '2026-01-22 12:28:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(213, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:28:30', '2026-01-22 12:28:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(214, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:29:23', '2026-01-22 12:29:23');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(215, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:29:33', '2026-01-22 12:29:33');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(216, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:32:46', '2026-01-22 12:32:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(217, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:33:09', '2026-01-22 12:33:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(218, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:33:31', '2026-01-22 12:33:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(219, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:33:31', '2026-01-22 12:33:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(220, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:33:53', '2026-01-22 12:33:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(221, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:34:01', '2026-01-22 12:34:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(222, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:35:02', '2026-01-22 12:35:02');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(223, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:35:05', '2026-01-22 12:35:05');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(224, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog?page=2', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 12:35:10', '2026-01-22 12:35:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(225, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog?page=1', 'https://web-instansi-laravel-fi.test/blog?page=2', '2026-01-22 12:35:15', '2026-01-22 12:35:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(226, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/berita', 'https://web-instansi-laravel-fi.test/blog?page=1', '2026-01-22 12:35:18', '2026-01-22 12:35:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(227, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/blog/kategori/berita', '2026-01-22 12:35:20', '2026-01-22 12:35:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(228, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 12:35:23', '2026-01-22 12:35:23');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(229, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 12:36:06', '2026-01-22 12:36:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(230, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 12:36:10', '2026-01-22 12:36:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(231, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=1', '2026-01-22 12:36:15', '2026-01-22 12:36:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(232, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 12:36:20', '2026-01-22 12:36:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(233, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', '2026-01-22 12:36:22', '2026-01-22 12:36:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(234, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 12:36:25', '2026-01-22 12:36:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(235, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 12:36:27', '2026-01-22 12:36:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(236, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan?page=2', '2026-01-22 12:37:16', '2026-01-22 12:37:16');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(237, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:41:42', '2026-01-22 12:41:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(238, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/kegiatan-bakti-sosial-2025', '2026-01-22 12:42:44', '2026-01-22 12:42:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(239, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 12:42:56', '2026-01-22 12:42:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(240, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', '2026-01-22 12:42:58', '2026-01-22 12:42:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(241, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', '2026-01-22 12:43:18', '2026-01-22 12:43:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(242, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 12:43:57', '2026-01-22 12:43:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(243, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', '2026-01-22 12:43:59', '2026-01-22 12:43:59');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(244, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 12:44:00', '2026-01-22 12:44:00');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(245, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/lhgh', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 12:44:06', '2026-01-22 12:44:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(246, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/lhgh', '2026-01-22 12:44:13', '2026-01-22 12:44:13');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(247, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:48:04', '2026-01-22 12:48:04');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(248, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pegawai-data', '2026-01-22 12:48:09', '2026-01-22 12:48:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(249, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pegawai-data', '2026-01-22 12:51:11', '2026-01-22 12:51:11');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(250, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/asd-as-asdsad', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:51:13', '2026-01-22 12:51:13');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(251, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/asdasd-a-ad-as-da', 'https://web-instansi-laravel-fi.test/profile/asd-as-asdsad', '2026-01-22 12:51:16', '2026-01-22 12:51:16');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(252, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/asdas-a-a-asd-as-as', 'https://web-instansi-laravel-fi.test/unit-kerja/asdasd-a-ad-as-da', '2026-01-22 12:51:18', '2026-01-22 12:51:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(253, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/skm/asdasd-asd-asd-asd', 'https://web-instansi-laravel-fi.test/program/asdas-a-a-asd-as-as', '2026-01-22 12:51:22', '2026-01-22 12:51:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(254, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/cece', 'https://web-instansi-laravel-fi.test/skm/asdasd-asd-asd-asd', '2026-01-22 12:51:26', '2026-01-22 12:51:26');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(255, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/ppid/cece', '2026-01-22 12:51:30', '2026-01-22 12:51:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(256, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/berita', 'https://web-instansi-laravel-fi.test/', '2026-01-22 12:52:59', '2026-01-22 12:52:59');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(257, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/berita', '2026-01-22 14:17:47', '2026-01-22 14:17:47');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(258, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:44:36', '2026-01-22 14:44:36');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(259, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:46:21', '2026-01-22 14:46:21');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(260, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 14:46:37', '2026-01-22 14:46:37');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(261, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/tentang', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:46:42', '2026-01-22 14:46:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(262, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 14:46:50', '2026-01-22 14:46:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(263, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:46:54', '2026-01-22 14:46:54');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(264, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:46:57', '2026-01-22 14:46:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(265, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pegawai-data', '2026-01-22 14:47:16', '2026-01-22 14:47:16');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(266, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/informasi', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:47:40', '2026-01-22 14:47:40');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(267, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/informasi', '2026-01-22 14:47:53', '2026-01-22 14:47:53');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(268, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:47:58', '2026-01-22 14:47:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(269, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 14:48:08', '2026-01-22 14:48:08');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(270, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 14:48:25', '2026-01-22 14:48:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(271, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'http://127.0.0.1:8000', NULL, '2026-01-22 15:03:56', '2026-01-22 15:03:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(272, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'http://127.0.0.1:8000', NULL, '2026-01-22 15:08:31', '2026-01-22 15:08:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(273, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'http://127.0.0.1:8000', NULL, '2026-01-22 15:08:42', '2026-01-22 15:08:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(274, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:31:20', '2026-01-22 15:31:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(275, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:31:25', '2026-01-22 15:31:25');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(276, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:36:02', '2026-01-22 15:36:02');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(277, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:36:06', '2026-01-22 15:36:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(278, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:36:06', '2026-01-22 15:36:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(279, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:36:10', '2026-01-22 15:36:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(280, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:36:32', '2026-01-22 15:36:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(281, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:36:56', '2026-01-22 15:36:56');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(282, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:37:22', '2026-01-22 15:37:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(283, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:37:35', '2026-01-22 15:37:35');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(284, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:06', '2026-01-22 15:38:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(285, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:06', '2026-01-22 15:38:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(286, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:12', '2026-01-22 15:38:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(287, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:15', '2026-01-22 15:38:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(288, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:17', '2026-01-22 15:38:17');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(289, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:38', '2026-01-22 15:38:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(290, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:38', '2026-01-22 15:38:38');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(291, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:42', '2026-01-22 15:38:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(292, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:38:44', '2026-01-22 15:38:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(293, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:39:08', '2026-01-22 15:39:08');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(294, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:39:08', '2026-01-22 15:39:08');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(295, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:39:12', '2026-01-22 15:39:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(296, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:39:15', '2026-01-22 15:39:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(297, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:39:47', '2026-01-22 15:39:47');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(298, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:40:10', '2026-01-22 15:40:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(299, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:40:10', '2026-01-22 15:40:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(300, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:40:26', '2026-01-22 15:40:26');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(301, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:40:27', '2026-01-22 15:40:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(302, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:40:42', '2026-01-22 15:40:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(303, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:40:42', '2026-01-22 15:40:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(304, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:43:17', '2026-01-22 15:43:17');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(305, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan/captcha', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:43:20', '2026-01-22 15:43:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(306, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan/captcha', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:43:21', '2026-01-22 15:43:21');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(307, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan/captcha', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:43:22', '2026-01-22 15:43:22');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(308, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:43:43', '2026-01-22 15:43:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(309, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:43:43', '2026-01-22 15:43:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(310, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:44:00', '2026-01-22 15:44:00');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(311, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:44:01', '2026-01-22 15:44:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(312, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:44:44', '2026-01-22 15:44:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(313, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:46:32', '2026-01-22 15:46:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(314, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', '2026-01-22 15:46:39', '2026-01-22 15:46:39');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(315, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:46:48', '2026-01-22 15:46:48');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(316, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:46:58', '2026-01-22 15:46:58');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(317, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:51:39', '2026-01-22 15:51:39');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(318, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 15:51:46', '2026-01-22 15:51:46');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(319, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/tentang', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:51:49', '2026-01-22 15:51:49');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(320, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 15:51:54', '2026-01-22 15:51:54');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(321, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:51:57', '2026-01-22 15:51:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(322, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pegawai-data', '2026-01-22 15:52:01', '2026-01-22 15:52:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(323, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/informasi', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:52:04', '2026-01-22 15:52:04');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(324, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/informasi', '2026-01-22 15:52:10', '2026-01-22 15:52:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(325, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:52:13', '2026-01-22 15:52:13');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(326, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan/captcha', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:52:32', '2026-01-22 15:52:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(327, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:52:44', '2026-01-22 15:52:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(328, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:52:44', '2026-01-22 15:52:44');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(329, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:53:03', '2026-01-22 15:53:03');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(330, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:53:03', '2026-01-22 15:53:03');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(331, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 15:53:13', '2026-01-22 15:53:13');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(332, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 15:53:27', '2026-01-22 15:53:27');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(333, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan/komentar', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 15:53:41', '2026-01-22 15:53:41');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(334, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 15:53:42', '2026-01-22 15:53:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:05:28', '2026-01-22 16:05:28');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(336, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan/komentar', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:05:36', '2026-01-22 16:05:36');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(337, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:05:37', '2026-01-22 16:05:37');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(338, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan/komentar', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:05:50', '2026-01-22 16:05:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(339, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:05:50', '2026-01-22 16:05:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(340, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan/komentar', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:06:31', '2026-01-22 16:06:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:06:32', '2026-01-22 16:06:32');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(342, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan/komentar', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:07:00', '2026-01-22 16:07:00');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(343, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:07:01', '2026-01-22 16:07:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(344, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:07:09', '2026-01-22 16:07:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(345, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:07:29', '2026-01-22 16:07:29');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(346, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri/18', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 16:07:34', '2026-01-22 16:07:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(347, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/galeri/18', '2026-01-22 16:07:43', '2026-01-22 16:07:43');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(348, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:07:50', '2026-01-22 16:07:50');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(349, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', 'https://web-instansi-laravel-fi.test/profile/profil-dinas-sosial', '2026-01-22 16:07:54', '2026-01-22 16:07:54');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(350, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/profile/asd-as-asdsad', 'https://web-instansi-laravel-fi.test/profile/kepala-dinas', '2026-01-22 16:07:57', '2026-01-22 16:07:57');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(351, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', 'https://web-instansi-laravel-fi.test/profile/asd-as-asdsad', '2026-01-22 16:08:01', '2026-01-22 16:08:01');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(352, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', 'https://web-instansi-laravel-fi.test/unit-kerja/rehabilitasi-sosial', '2026-01-22 16:08:05', '2026-01-22 16:08:05');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(353, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog', 'https://web-instansi-laravel-fi.test/program/program-bantuan-sosial', '2026-01-22 16:08:10', '2026-01-22 16:08:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(354, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/blog', '2026-01-22 16:08:18', '2026-01-22 16:08:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(355, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 16:08:28', '2026-01-22 16:08:28');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(356, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 16:08:30', '2026-01-22 16:08:30');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(357, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:09:34', '2026-01-22 16:09:34');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(358, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:10:05', '2026-01-22 16:10:05');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(359, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/info-test', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:10:12', '2026-01-22 16:10:12');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(360, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/info-test', 'https://web-instansi-laravel-fi.test/blog/dinas-sosial-kabupaten-penajam-paser-utara-selatan', '2026-01-22 16:11:06', '2026-01-22 16:11:06');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(361, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/test-dinas-sosial', 'https://web-instansi-laravel-fi.test/blog/kategori/info-test', '2026-01-22 16:11:09', '2026-01-22 16:11:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(362, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/test-dinas-sosial', 'https://web-instansi-laravel-fi.test/blog/kategori/info-test', '2026-01-22 16:11:35', '2026-01-22 16:11:35');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(363, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/test-dinas-sosial', 'https://web-instansi-laravel-fi.test/blog/kategori/info-test', '2026-01-22 16:11:52', '2026-01-22 16:11:52');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(364, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', 'https://web-instansi-laravel-fi.test/blog/test-dinas-sosial', '2026-01-22 16:12:07', '2026-01-22 16:12:07');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(365, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', 'https://web-instansi-laravel-fi.test/blog/kategori/kegiatan', '2026-01-22 16:12:09', '2026-01-22 16:12:09');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(366, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/blog/kategori/berita', 'https://web-instansi-laravel-fi.test/blog/kategori/pengumuman', '2026-01-22 16:12:10', '2026-01-22 16:12:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(367, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/blog/kategori/berita', '2026-01-22 16:12:14', '2026-01-22 16:12:14');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(368, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/faq', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:13:07', '2026-01-22 16:13:07');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(369, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 16:13:42', '2026-01-22 16:13:42');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(370, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 16:14:35', '2026-01-22 16:14:35');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(371, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 16:15:19', '2026-01-22 16:15:19');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(372, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/faq', '2026-01-22 16:15:35', '2026-01-22 16:15:35');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(373, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/galeri', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:16:10', '2026-01-22 16:16:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(374, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/galeri', '2026-01-22 16:16:17', '2026-01-22 16:16:17');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(375, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/informasi', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:16:20', '2026-01-22 16:16:20');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(376, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/kontak', 'https://web-instansi-laravel-fi.test/informasi', '2026-01-22 16:16:31', '2026-01-22 16:16:31');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(377, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/kontak', '2026-01-22 16:16:52', '2026-01-22 16:16:52');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(378, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/tentang', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:16:54', '2026-01-22 16:16:54');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(379, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/tentang', '2026-01-22 16:17:16', '2026-01-22 16:17:16');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(380, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pengaduan', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:17:19', '2026-01-22 16:17:19');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(381, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/pengaduan', '2026-01-22 16:19:15', '2026-01-22 16:19:15');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(382, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:19:18', '2026-01-22 16:19:18');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(383, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/pegawai-data', 'https://web-instansi-laravel-fi.test/', '2026-01-22 16:19:39', '2026-01-22 16:19:39');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(384, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/pegawai-data', '2026-01-22 16:19:52', '2026-01-22 16:19:52');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(385, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', 'https://web-instansi-laravel-fi.test/pegawai-data', '2026-01-22 16:20:11', '2026-01-22 16:20:11');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(386, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', 'https://web-instansi-laravel-fi.test/ppid/ppid-dinas-sosial', '2026-01-22 16:25:10', '2026-01-22 16:25:10');
INSERT INTO `web_visits` (`id`, `ip_address`, `user_agent`, `url`, `referrer`, `created_at`, `updated_at`) VALUES
	(387, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/144.0.0.0 Safari/537.36', 'https://web-instansi-laravel-fi.test', NULL, '2026-01-22 16:27:48', '2026-01-22 16:27:48');
/*!40000 ALTER TABLE `web_visits` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
