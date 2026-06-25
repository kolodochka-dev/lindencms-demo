-- Adminer 5.4.2 MySQL 8.4.3 dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;

DROP TABLE IF EXISTS `cache`;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cache_locks`;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` bigint NOT NULL,
  PRIMARY KEY (`key`),
  KEY `cache_locks_expiration_index` (`expiration`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cms_about_features`;
CREATE TABLE `cms_about_features` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_id` bigint unsigned NOT NULL,
  `counter` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `feature` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_about_features_about_id_foreign` (`about_id`),
  CONSTRAINT `cms_about_features_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `cms_abouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_about_features` (`id`, `about_id`, `counter`, `feature`, `created_at`, `updated_at`) VALUES
(1,	1,	'500+',	'active members',	'2026-06-25 07:05:55',	'2026-06-25 07:05:55'),
(2,	1,	'12',	'elite coaches',	'2026-06-25 07:05:55',	'2026-06-25 07:05:55'),
(3,	1,	'4,000+',	'classes completed',	'2026-06-25 07:05:55',	'2026-06-25 07:05:55');

DROP TABLE IF EXISTS `cms_about_images`;
CREATE TABLE `cms_about_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `about_id` bigint unsigned NOT NULL,
  `file_id` int DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_about_images_about_id_foreign` (`about_id`),
  CONSTRAINT `cms_about_images_about_id_foreign` FOREIGN KEY (`about_id`) REFERENCES `cms_abouts` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_about_images` (`id`, `about_id`, `file_id`, `width`, `parent_id`, `alt`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1,	1,	3,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:33:54',	'2026-06-25 07:05:55');

DROP TABLE IF EXISTS `cms_abouts`;
CREATE TABLE `cms_abouts` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_abouts` (`id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Built for athletes, by athletes',	'Our philosophy',	'Hyperion isn\'t just another gym. We\'ve created a space where functional strength meets intelligent programming. Our coaches have worked with professional athletes, but our real passion is helping everyday people unlock their potential. Every session is designed to push you just beyond your comfort zone — without breaking your body.',	'2026-06-09 17:33:54',	'2026-06-25 07:05:55');

DROP TABLE IF EXISTS `cms_area_previews`;
CREATE TABLE `cms_area_previews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `area_id` bigint unsigned NOT NULL,
  `file_id` int DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_area_previews_area_id_foreign` (`area_id`),
  CONSTRAINT `cms_area_previews_area_id_foreign` FOREIGN KEY (`area_id`) REFERENCES `cms_areas` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_area_previews` (`id`, `area_id`, `file_id`, `width`, `parent_id`, `alt`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2,	2,	5,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:37:28',	'2026-06-09 17:37:28'),
(3,	1,	4,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:37:37',	'2026-06-09 17:37:37'),
(4,	3,	3,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:37:55',	'2026-06-09 17:37:55');

DROP TABLE IF EXISTS `cms_areas`;
CREATE TABLE `cms_areas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `tag` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_areas` (`id`, `title`, `description`, `tag`, `created_at`, `updated_at`) VALUES
(1,	'Strength & Power',	'Olympic lifting platforms, squat racks, and calibrated plates for serious strength work.',	'functional strength',	'2026-06-09 17:36:58',	'2026-06-09 17:37:37'),
(2,	'HIX Training Zone',	'High-intensity interval zone with turf, sleds, rowers, and battle ropes.',	'cardio & agility',	'2026-06-09 17:37:28',	'2026-06-09 17:37:28'),
(3,	'Mobility & Recovery',	'Stretch, foam roll, and recover. Includes cold plunge and infrared sauna.',	'recovery',	'2026-06-09 17:37:55',	'2026-06-09 17:37:55');

DROP TABLE IF EXISTS `cms_files`;
CREATE TABLE `cms_files` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int DEFAULT NULL,
  `mime_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filepath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `preview_path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `disk` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hash` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uploaded_by` int DEFAULT NULL,
  `uploaded_at` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_files` (`id`, `filename`, `size`, `mime_type`, `extension`, `filepath`, `preview_path`, `disk`, `hash`, `uploaded_by`, `uploaded_at`, `created_at`, `updated_at`) VALUES
(1,	'1330283-1780842903.jpeg',	16266978,	'image/jpeg',	'jpeg',	'lindencms/user_avatars/1330283-1780842903.jpeg',	'preview',	'public',	'564401d237fc289a1ac5a60c5cb025d80bae524648e438278dd14796dc65c84d',	NULL,	'2026-06-07 14:35:03',	'2026-06-07 11:35:03',	'2026-06-07 11:35:03'),
(2,	'screenshot-7-1780953707.png',	4727000,	'image/png',	'png',	'lindencms/screenshot-7-1780953707.png',	'preview',	'public',	'b405de24701415d7e5027438343a88e999e6c931f3bbe8f3eae460cf143fbd32',	NULL,	'2026-06-08 21:21:47',	'2026-06-08 18:21:47',	'2026-06-08 18:21:47'),
(3,	'photo-1571019613454-1cb2f99b2d8b-1781037230.jpg',	1364613,	'image/jpeg',	'jpg',	'lindencms/photo-1571019613454-1cb2f99b2d8b-1781037230.jpg',	'preview',	'public',	'232c34d60ea3d1385fb27c0a809c51cfb43c7dff4746f787c1dc038d2490a778',	NULL,	'2026-06-09 20:33:50',	'2026-06-09 17:33:50',	'2026-06-09 17:33:50'),
(4,	'photo-1517836357463-d25dfeac3438-1781037269.jpg',	4078991,	'image/jpeg',	'jpg',	'lindencms/photo-1517836357463-d25dfeac3438-1781037269.jpg',	'preview',	'public',	'd7b54a4c1f7cee98ff9d6aba5c8228c540f247e1b40839d37bb8344e46d1c980',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(5,	'photo-1534258936925-c58bed479fcb-1781037269.jpg',	1088133,	'image/jpeg',	'jpg',	'lindencms/photo-1534258936925-c58bed479fcb-1781037269.jpg',	'preview',	'public',	'38ebe31422dd7a8547314e7f2157aa0db3d8a78442a881383d594da1b7711eb5',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(6,	'photo-1571902943202-507ec2618e8f-1781037269.jpg',	1384079,	'image/jpeg',	'jpg',	'lindencms/photo-1571902943202-507ec2618e8f-1781037269.jpg',	'preview',	'public',	'26714fd9984f57d005e4a3ea0298e4fc1283cefa34929602fb22b9d58e97c60b',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(7,	'photo-1574680096145-d05b474e2155-1781037269.jpg',	4731787,	'image/jpeg',	'jpg',	'lindencms/photo-1574680096145-d05b474e2155-1781037269.jpg',	'preview',	'public',	'fa9b9dabb1cc87f0e3a08d7c9d0576f5b33ddefb3e19ae05327bd28b1fb31c0b',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(8,	'photo-1574680178050-55c6a6a96e0a-1781037269.jpg',	4333289,	'image/jpeg',	'jpg',	'lindencms/photo-1574680178050-55c6a6a96e0a-1781037269.jpg',	'preview',	'public',	'bd23388816694be8e6bd516c85c5a538d7592c4e6c41bd4136fc08a3741c94b0',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(9,	'photo-1581009146145-b5ef050c2e1e-1781037269.jpg',	3347802,	'image/jpeg',	'jpg',	'lindencms/photo-1581009146145-b5ef050c2e1e-1781037269.jpg',	'preview',	'public',	'320134cd3edd83450ad7c75e2ab8b1a343da84bb7827b84aa3cb55e84f836b2a',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(10,	'photo-1593079831268-3381b0db4a77-1781037269.jpg',	4166995,	'image/jpeg',	'jpg',	'lindencms/photo-1593079831268-3381b0db4a77-1781037269.jpg',	'preview',	'public',	'83ee682fda52f1c33e3f0a66fc64a33789452ac9d74ccaec9e19f8740d73dbc5',	NULL,	'2026-06-09 20:34:29',	'2026-06-09 17:34:29',	'2026-06-09 17:34:29'),
(11,	'photo-1538805060514-97d9cc17730c-1781039394.jpg',	593875,	'image/jpeg',	'jpg',	'lindencms/photo-1538805060514-97d9cc17730c-1781039394.jpg',	'preview',	'public',	'a66e3771ddc35f747c0535f057fd97fe9d6f12491194752a6f727e6afc0855aa',	NULL,	'2026-06-09 21:09:54',	'2026-06-09 18:09:54',	'2026-06-09 18:09:54');

DROP TABLE IF EXISTS `cms_galleries`;
CREATE TABLE `cms_galleries` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtitle` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_galleries` (`id`, `title`, `subtitle`, `description`, `created_at`, `updated_at`) VALUES
(1,	'Moments of strength',	'inside hyperion',	'Moments of strength',	'2026-06-09 17:34:41',	'2026-06-12 07:10:45');

DROP TABLE IF EXISTS `cms_gallery_images`;
CREATE TABLE `cms_gallery_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `gallery_id` bigint unsigned NOT NULL,
  `file_id` int DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_gallery_images_gallery_id_foreign` (`gallery_id`),
  CONSTRAINT `cms_gallery_images_gallery_id_foreign` FOREIGN KEY (`gallery_id`) REFERENCES `cms_galleries` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_gallery_images` (`id`, `gallery_id`, `file_id`, `width`, `parent_id`, `alt`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1,	1,	4,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(2,	1,	5,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(3,	1,	6,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(4,	1,	7,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(5,	1,	8,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(6,	1,	9,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(7,	1,	10,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 17:34:41',	'2026-06-12 07:10:45'),
(8,	1,	11,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-09 18:09:56',	'2026-06-12 07:10:45');

DROP TABLE IF EXISTS `cms_lead_membership`;
CREATE TABLE `cms_lead_membership` (
  `lead_id` int DEFAULT NULL,
  `membership_id` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_lead_membership` (`lead_id`, `membership_id`) VALUES
(1,	3);

DROP TABLE IF EXISTS `cms_leads`;
CREATE TABLE `cms_leads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cms_membership_accesses`;
CREATE TABLE `cms_membership_accesses` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `membership_id` bigint unsigned NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_membership_accesses_membership_id_foreign` (`membership_id`),
  CONSTRAINT `cms_membership_accesses_membership_id_foreign` FOREIGN KEY (`membership_id`) REFERENCES `cms_memberships` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_membership_accesses` (`id`, `membership_id`, `title`, `created_at`, `updated_at`) VALUES
(2,	2,	'Access to gym floor 6am–6pm',	'2026-06-09 17:35:26',	'2026-06-09 17:48:21'),
(3,	2,	'Group classes (3 per month)',	'2026-06-09 17:35:26',	'2026-06-09 17:48:21'),
(4,	2,	'Locker room access',	'2026-06-09 17:35:26',	'2026-06-09 17:48:21'),
(5,	3,	'24/7 gym access',	'2026-06-09 17:35:51',	'2026-06-25 07:07:12'),
(6,	3,	'Unlimited group classes',	'2026-06-09 17:35:51',	'2026-06-25 07:07:12'),
(7,	3,	'Access to recovery zone',	'2026-06-09 17:35:51',	'2026-06-25 07:07:12'),
(8,	4,	'Everything in Unlimited',	'2026-06-09 17:36:25',	'2026-06-09 17:36:25'),
(9,	4,	'Personal training (2x/month)',	'2026-06-09 17:36:25',	'2026-06-09 17:36:25'),
(10,	4,	'Nutrition consultation',	'2026-06-09 17:36:25',	'2026-06-09 17:36:25');

DROP TABLE IF EXISTS `cms_memberships`;
CREATE TABLE `cms_memberships` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` float DEFAULT NULL,
  `is_popular` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_memberships` (`id`, `title`, `description`, `price`, `is_popular`, `created_at`, `updated_at`) VALUES
(2,	'Starter',	NULL,	49,	NULL,	'2026-06-09 17:35:01',	'2026-06-09 17:48:21'),
(3,	'Unlimited',	NULL,	99,	1,	'2026-06-09 17:35:51',	'2026-06-25 07:07:12'),
(4,	'Elite',	NULL,	149,	NULL,	'2026-06-09 17:36:04',	'2026-06-09 17:36:25');

DROP TABLE IF EXISTS `cms_product_images`;
CREATE TABLE `cms_product_images` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `product_id` bigint unsigned NOT NULL,
  `file_id` int DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_product_images_product_id_foreign` (`product_id`),
  CONSTRAINT `cms_product_images_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `cms_products` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `cms_products`;
CREATE TABLE `cms_products` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `price` float DEFAULT NULL,
  `stock` int DEFAULT NULL,
  `is_published` tinyint(1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_products` (`id`, `title`, `description`, `price`, `stock`, `is_published`, `created_at`, `updated_at`) VALUES
(1,	'kpgkgk',	'okopwekgop',	12412,	32432,	1,	'2026-06-15 18:03:27',	'2026-06-15 18:03:27'),
(2,	'kpgkgk',	'okopwekgop',	12412,	32432,	1,	'2026-06-15 18:39:11',	'2026-06-15 18:39:11');

DROP TABLE IF EXISTS `cms_user_avatars`;
CREATE TABLE `cms_user_avatars` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `file_id` int DEFAULT NULL,
  `width` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `alt` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cms_user_avatars_user_id_foreign` (`user_id`),
  CONSTRAINT `cms_user_avatars_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `cms_user_avatars` (`id`, `user_id`, `file_id`, `width`, `parent_id`, `alt`, `title`, `description`, `created_at`, `updated_at`) VALUES
(2,	12,	1,	NULL,	NULL,	NULL,	NULL,	NULL,	'2026-06-12 16:03:37',	'2026-06-12 16:03:37');

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`),
  KEY `failed_jobs_connection_queue_failed_at_index` (`connection`,`queue`,`failed_at`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `job_batches`;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `jobs`;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` smallint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1,	'0001_01_01_000000_create_users_table',	1),
(2,	'0001_01_01_000001_create_cache_table',	1),
(3,	'0001_01_01_000002_create_jobs_table',	1);

DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;


DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

DROP TABLE IF EXISTS `users`;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(12,	'admin',	'admin@example.com',	NULL,	'$2y$12$daCmf9wrHpEtUoGoqymT3uoiVs.CvWg08RA1.qwtgPq9haYXPT2Ia',	'13GC0OOry2gIECy5p4cohSHKdSwndqdJtnGWZA9Cpko52Lje2OvKfnDDtXES',	'2026-06-12 08:33:39',	'2026-06-12 16:03:37');

-- 2026-06-25 10:16:56 UTC
