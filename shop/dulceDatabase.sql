-- --------------------------------------------------------
-- Server:                       127.0.0.1
-- Versiune server:              5.7.33 - MySQL Community Server (GPL)
-- SO server:                    Win64
-- HeidiSQL Versiune:            11.2.0.6213
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Descarcă structura bazei de date pentru dulce
CREATE DATABASE IF NOT EXISTS `dulce` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `dulce`;

-- Descarcă structura pentru tabelă dulce.categories
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `description` varchar(150) DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `the_current_date` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

-- Descarcă datele pentru tabela dulce.categories: ~7 rows (aproximativ)
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` (`id`, `category_name`, `description`, `thumbnail`, `the_current_date`) VALUES
	(1, 'Raw Materials', 'Chocolate, Whipped Cream, Biscuits, Sugar Paste', 'https://images.unsplash.com/photo-1606312619070-d48b4c652a52?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', '2021-06-30 17:01:49'),
	(2, 'Silicone Molds', 'Christmas Tree, Star, Heart, Apples, Pears, Round, Square, 3D', 'https://th.bing.com/th/id/OIP.pvpq1Dsua4fvySX21hPwBgAAAA?pid=ImgDet&rs=1', '2021-06-30 17:04:27'),
	(3, 'Food Colorants', 'Red, Green, Yellow, Blue, Purple, Fuchsia, White, Black, Orange', 'https://th.bing.com/th/id/OIP.DdVxqBg2ubLLtKiszrTAKQHaE_?pid=ImgDet&rs=1', '2021-06-30 17:06:00'),
	(4, 'Decorations and Essences', 'Pearl Sugar, Sprinkles, Velvet Spray, Vanilla Essence, Rum Essence, Orange Essence, Figurines, Candles', 'https://images.unsplash.com/photo-1621303837174-89787a7d4729?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=376&q=80', '2021-06-30 17:07:30'),
	(5, 'Kitchenware', 'Piping Bag Set, Rolling Pin, Mixer, Silicone Spatula, Whisk', 'https://images.unsplash.com/photo-1597666729704-0a7c3a24a8a2?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=334&q=80', '2021-06-30 17:09:23'),
	(6, 'Chocolate', 'bbbbb', NULL, '2021-08-05 18:45:22'),
	(7, 'hellooo', 'world', NULL, '2021-08-05 18:36:26'),
	(8, 'hey you', 'how are you', NULL, '2021-08-09 11:11:33');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `full_name` varchar(30) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `country` varchar(100) DEFAULT NULL,
  `the_current_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

-- Descarcă datele pentru tabela dulce.customers: ~7 rows (aproximativ)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`id`, `full_name`, `email`, `billing_address`, `shipping_address`, `phone`, `country`, `the_current_date`) VALUES
	(1, 'Andra Popescu', 'andra@yahoo.com', 'Sos Straulesti, nr.2, bl. B7, ap. 2, Bucharest', 'Sos Straulesti, nr.2, bl. B7, ap. 2, Bucharest', '0721683582', 'Romania', '2021-07-01 13:53:18'),
	(2, 'Steve Bob', 'steve@gmail.com', 'Street El Cajon, CA 92021 8735 East Trenton Road Corona', 'Street El Cajon, CA 92021 8735 East Trenton Road Corona', '1-800-480-3287', 'USA', '2021-07-01 13:49:32'),
	(3, 'Alexandra Ghican', 'ale@yahoo.com', 'Strada Nufarului, nr.9, bl.A14, ap.9, Buzau', 'Strada Nufarului, nr.9, bl.A14, ap.9, Buzau', '0735698452', 'Romania', '2021-07-01 13:51:10'),
	(4, 'Liliana Pop', 'lili@gmail.com', 'Str. Ion Ionescu, nr.6, bl. B36, ap.36, Timisoara', 'Str. Ion Ionescu, nr.6, bl. B36, ap.36, Timisoara', '0720549326', 'Romania', '2021-07-01 13:52:55'),
	(5, 'Vlad Georgescu', 'vlad@yahoo.com', 'Str. Curcubeului, nr.4, bl.C6, ap.15, Iasi', 'Str. Curcubeului, nr.4, bl.C6, ap.15, Iasi', '0723398259', 'Romania', '2021-07-01 13:55:05'),
	(7, 'Larisa POPA', 'larisa.popa@yahoo.com', 'Petrache Poenaru', 'Militari Residence', '0721683586', 'România', '2021-08-06 13:54:50'),
	(8, 'Lili Sandu', 'lili@gmail.com', 'Petrache Poenaru', 'Militari Residence', '0721683585', 'România', '2021-08-06 14:56:53'),
	(9, 'Ana Ioana Pavel', 'ana96@yahoo.com', 'Drumul Taberei, nr34', 'Baneasa, nr25', '0721685556', 'Romania', '2021-08-09 11:13:10');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.failed_jobs
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

-- Descarcă datele pentru tabela dulce.failed_jobs: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.games
CREATE TABLE IF NOT EXISTS `games` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.games: ~2 rows (aproximativ)
/*!40000 ALTER TABLE `games` DISABLE KEYS */;
INSERT INTO `games` (`id`, `name`, `price`, `created_at`, `updated_at`) VALUES
	(1, 'game1', 11, '2021-08-09 09:39:10', '2021-08-09 09:39:10'),
	(2, 'game3', 23, '2021-08-09 09:39:41', '2021-08-09 09:40:01');
/*!40000 ALTER TABLE `games` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.image_gallery
CREATE TABLE IF NOT EXISTS `image_gallery` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.image_gallery: ~13 rows (aproximativ)
/*!40000 ALTER TABLE `image_gallery` DISABLE KEYS */;
INSERT INTO `image_gallery` (`id`, `title`, `image`, `created_at`, `updated_at`) VALUES
	(1, 'Nestle Dessert Noir', '1628759334.jpg', '2021-08-12 09:08:54', '2021-08-12 09:08:54'),
	(2, 'Callebaut Dark Callets', '1628761345.jpg', '2021-08-12 09:42:25', '2021-08-12 09:42:25'),
	(3, 'Callebaut White Callets', '1628762158.jpg', '2021-08-12 09:55:58', '2021-08-12 09:55:58'),
	(5, 'Milka White Chocolate', '1628762313.jpg', '2021-08-12 09:58:33', '2021-08-12 09:58:33'),
	(6, 'Nestle Dessert Blanc', '1628763953.jpg', '2021-08-12 10:25:53', '2021-08-12 10:25:53'),
	(7, 'Milka Alpine Milk', '1628764225.jpg', '2021-08-12 10:30:25', '2021-08-12 10:30:25'),
	(8, 'Callebaut Milk Callets', '1628764455.jpg', '2021-08-12 10:34:15', '2021-08-12 10:34:15'),
	(9, 'Nestle Prestigio Branco', '1628765130.jpg', '2021-08-12 10:45:30', '2021-08-12 10:45:30'),
	(10, 'Milka Choco & Biscuit', '1628765298.jpg', '2021-08-12 10:48:18', '2021-08-12 10:48:18'),
	(11, 'LaDorna Frisca Neindulcita', '1628765502.jpg', '2021-08-12 10:51:42', '2021-08-12 10:51:42'),
	(12, 'Nestle Dessert Cookies', '1628765724.jpg', '2021-08-12 10:55:24', '2021-08-12 10:55:24'),
	(13, 'Decora Pasta di Zucchero', '1628765809.jpg', '2021-08-12 10:56:49', '2021-08-12 10:56:49'),
	(15, 'Pavoflex Tutti Frutti Mela/Apple', '1628766084.jpg', '2021-08-12 11:01:24', '2021-08-12 11:01:24'),
	(16, 'Sprinkles', '1628766200.jpeg', '2021-08-12 11:03:20', '2021-08-12 11:03:20'),
	(17, 'Blue colorant', '1628786845.jpg', '2021-08-12 16:47:26', '2021-08-12 16:47:26');
/*!40000 ALTER TABLE `image_gallery` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.migrations: ~5 rows (aproximativ)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2019_08_19_000000_create_failed_jobs_table', 1),
	(4, '2021_07_27_105926_create_games_table', 1),
	(5, '2021_07_27_122225_create_permission_tables', 1),
	(6, '2021_08_12_082432_create_image_gallery_table', 2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.model_has_permissions
CREATE TABLE IF NOT EXISTS `model_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.model_has_permissions: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.model_has_roles
CREATE TABLE IF NOT EXISTS `model_has_roles` (
  `role_id` bigint(20) unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.model_has_roles: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.orders
CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `customer_id` varchar(30) NOT NULL,
  `amount` int(20) DEFAULT NULL,
  `shipping_address` varchar(200) DEFAULT NULL,
  `billing_address` varchar(100) DEFAULT NULL,
  `order_email` varchar(100) DEFAULT NULL,
  `order_status` varchar(15) DEFAULT NULL,
  `order_date` date DEFAULT NULL,
  `the_current_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Descarcă datele pentru tabela dulce.orders: ~6 rows (aproximativ)
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` (`id`, `customer_id`, `amount`, `shipping_address`, `billing_address`, `order_email`, `order_status`, `order_date`, `the_current_date`) VALUES
	(1, '1', 165, 'Sos Straulesti, nr.2, bl. B7, ap. 2, Bucharest', 'Sos Straulesti, nr.2, bl. B7, ap. 2, Bucharest', 'andra@yahoo.com', 'Shipped', '2021-07-01', '2021-07-01 14:52:14'),
	(2, '2', 468, 'Street El Cajon, CA 92021 8735 East Trenton Road Corona', 'Street El Cajon, CA 92021 8735 East Trenton Road Corona', 'steve@gmail.com', 'In Progress', '2021-06-24', '2021-07-01 14:52:59'),
	(3, '3', 606, 'Strada Nufarului, nr.9, bl.A14, ap.9, Buzau', 'Strada Nufarului, nr.9, bl.A14, ap.9, Buzau', 'ale@yahoo.com', 'Delivered', '2021-06-12', '2021-07-01 14:53:31'),
	(4, '4', 549, 'Str. Ion Ionescu, nr.6, bl. B36, ap.36, Timisoara', 'Str. Ion Ionescu, nr.6, bl. B36, ap.36, Timisoara', 'lili@gmail.com', 'In Progress', '2021-06-30', '2021-07-01 14:54:00'),
	(5, '5', 529, 'Str. Curcubeului, nr.4, bl.C6, ap.15, Iasi', 'Str. Curcubeului, nr.4, bl.C6, ap.15, Iasi', 'vlad@yahoo.com', 'In Progress', '2021-06-30', '2021-07-01 14:54:02'),
	(6, '9', 89, 'Petrache Poenaru', 'Militari Residence', 'larisa.popa@yahoo.com', 'Shipped', '2021-08-02', '2021-08-06 19:09:54'),
	(7, '765', 567, 'Drumul Taberei, nr4', 'Baneasa, nr7', 'ana96@yahoo.com', 'Shipped', '2021-07-20', '2021-08-10 20:56:10');
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.order_details
CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `upc` varchar(30) NOT NULL,
  `order_id` varchar(100) DEFAULT NULL,
  `product_id` varchar(50) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `the_current_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

-- Descarcă datele pentru tabela dulce.order_details: ~14 rows (aproximativ)
/*!40000 ALTER TABLE `order_details` DISABLE KEYS */;
INSERT INTO `order_details` (`id`, `upc`, `order_id`, `product_id`, `price`, `the_current_date`) VALUES
	(1, '5012345678901', '00001', 'RMDKN100', 20, '2021-07-01 14:39:26'),
	(2, '5012345678915', '00001', 'SMHP200', 130, '2021-07-01 14:40:54'),
	(3, '5012345678921', '00001', 'FCRD300', 15, '2021-07-01 14:41:45'),
	(4, '5012345678916', '00002', 'SMAP200', 210, '2021-07-01 14:42:35'),
	(5, '5012345678919', '00002', 'SMSS200', 178, '2021-07-01 14:44:10'),
	(6, '5012345678930', '00002', 'DEVEO402', 12, '2021-07-01 14:44:59'),
	(7, '5012345678936', '00002', 'KRPAC501', 68, '2021-07-01 14:46:13'),
	(8, '5012345678928', '00003', 'DESW400', 49, '2021-07-01 14:47:10'),
	(9, '5012345678914', '00003', 'SMSP200', 100, '2021-07-01 14:47:48'),
	(10, '5012345678906', '00003', 'RMMCM100', 7, '2021-07-01 14:48:25'),
	(11, '5012345678940', '00003', 'KTO505', 450, '2021-07-01 14:49:15'),
	(12, '5012345678937', '00004', 'KPMB502', 529, '2021-07-01 14:50:05'),
	(13, '5012345678910', '00004', 'RMWCLD101', 20, '2021-07-01 14:50:55'),
	(14, '5012345678937', '00005', 'KPMB502', 529, '2021-07-01 14:51:35'),
	(15, '5012345678914', '00006', 'SMSP200', 100, '2021-08-06 20:21:04'),
	(16, '5012345678915', '00007', 'SMSP200', 1000, '2021-08-09 11:16:50');
/*!40000 ALTER TABLE `order_details` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.password_resets: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.permissions
CREATE TABLE IF NOT EXISTS `permissions` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.permissions: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.products
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `upc` varchar(20) NOT NULL,
  `product_name` varchar(40) NOT NULL,
  `price_each` int(11) NOT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `product_id` varchar(100) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `stock` int(11) DEFAULT NULL,
  `thumbnail` varchar(300) DEFAULT NULL,
  `brand` varchar(100) DEFAULT NULL,
  `the_current_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=latin1;

-- Descarcă datele pentru tabela dulce.products: ~40 rows (aproximativ)
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` (`id`, `upc`, `product_name`, `price_each`, `weight`, `description`, `product_id`, `category`, `stock`, `thumbnail`, `brand`, `the_current_date`) VALUES
	(1, '5012345678901', 'Nestle Dessert Noir', 20, '100 g', 'Dark Chocolate', 'RMDKN100', 'Raw Materials', 15, 'https://s13emagst.akamaized.net/products/2905/2904046/images/res_18c9f39712b846e996a3d7b43332f212.jpg', 'Nestle', '2021-06-30 21:07:17'),
	(2, '5012345678902', 'Callebaut Dark Callets', 180, '2500 g', 'Dark Chocolate', 'RMDKC100', 'Raw Materials', 7, 'https://www.flourconfections.com/images/d5e158bc2a734e29db82615ab6f9dbd6.jpg', 'Callebaut', '2021-06-30 21:13:23'),
	(3, '5012345678903', 'Callebaut White Callets', 200, '2500 g', 'White Chocolate', 'RMWCC100', 'Raw Materials', 8, 'https://www.megansdesserts.com/media/callebaut/callebaut-w2-white-chocolate-callets-5.5lbs-500px_web.jpg', 'Callebaut', '2021-06-30 21:15:54'),
	(4, '5012345678904', 'Milka White Chocolate', 7, '100 g', 'White Chocolate', 'RMWCM100', 'Raw Materials', 20, 'https://imaginaire.com/en/images/MILKA-WHITE-CHOCOLATE__4025700001962.JPG', 'Milka', '2021-06-30 21:19:29'),
	(5, '5012345678905', 'Nestle Dessert Blanc', 9, '100 g', 'White Chocolate', 'RMWCN100', 'Raw Materials', 21, 'https://www.auchan.ro/public/images/hc0/h33/h00/nesstle-dessert-blanc-8861336469534.jpg', 'Nestle', '2021-06-30 21:24:48'),
	(6, '5012345678906', 'Milka Alpine Milk', 7, '100 g', 'Milk Chocolate', 'RMMCM100', 'Raw Materials', 19, 'https://www.ocado.com/productImages/142/14286011_0_640x640.jpg?identifier=d59a88322eb19b02435fc33323eb8d9f', 'Milka', '2021-06-30 21:28:31'),
	(7, '5012345678907', 'Callebaut Milk Callets', 190, '2500 g', 'Milk Chocolate', 'RMMCC100', 'Raw Materials', 6, 'https://www.flourconfections.com/images/8c47a5e008ca1f14054f6bdf3fbdca91.jpg', 'Callebaut', '2021-06-30 21:32:54'),
	(8, '5012345678908', 'Nestle Prestigio Branco', 5, '33 g', 'Chocolate for Decoration', 'RMCDN100', 'Raw Materials', 30, 'https://cdn.shopify.com/s/files/1/0649/7417/products/NEST14266_-chocolate-nestle-prestigio-branco-30-_33g_large.jpg?v=1553040067', 'Nestle', '2021-06-30 21:40:06'),
	(9, '5012345678909', 'Milka Choco & Biscuit', 24, '300 g', 'Chocolate for Decoration', 'RMCDM100', 'Raw Materials', 13, 'https://http2.mlstatic.com/chocolate-milka-choco-biscuit-300g-D_NQ_NP_672984-MLB26768610270_022018-F.jpg', 'Milka', '2021-06-30 21:41:33'),
	(10, '5012345678910', 'LaDorna Frisca Neindulcita', 20, '1 L', 'Whipped Cream', 'RMWCLD101', 'Raw Materials', 16, 'https://www.cora.ro/images/products/2580928/gallery/2580928_hd_1.jpg', 'LaDorna', '2021-06-30 21:47:23'),
	(11, '5012345678911', 'Nestle Dessert Cookies', 25, '351 g', 'Biscuits', 'RMBN102', 'Raw Materials', 26, 'https://smedia.alkemics.com/product/picture/exportable/47709250-e3d8-4bbf-ad83-d57702ce4499/512x512.jpg', 'Nestle', '2021-06-30 21:52:05'),
	(12, '5012345678912', 'Decora Pasta di Zucchero', 60, '250 g', 'Sugar Paste', 'RMSPD103', 'Raw Materials', 10, 'https://images-na.ssl-images-amazon.com/images/I/81lXeWGPDXL._SL1500_.jpg', 'Decora', '2021-06-30 21:54:51'),
	(13, '5012345678913', 'SFT203 CHRISTMAS TREE', 85, '1000 ml', 'Christmas Tree', 'SMCT200', 'Silicone Moulds', 7, 'https://shop.silikomart.com/en/moulds/sft203-christmas-tree-stampo-in-silicone-280x200-h-40-mm', 'Silikomart', '2021-07-01 11:49:41'),
	(14, '5012345678914', 'Decorative Star Cake', 100, '1000 ml', 'Star', 'SMSP200', 'Silicone Moulds', 8, 'https://cakedeco.gr/en/baking-forms-moulds/3424-decorative-star-cake-silicone-mold-by-pavoni.html', 'Pavoni', '2021-07-01 11:55:27'),
	(15, '5012345678915', 'Pavoflex PX3206 Heart', 130, '46 ml', 'Heart', 'SMHP200', 'Silicone Moulds', 9, 'https://www.pastrydepot.com/pavoni-pavoflex-silicone-mold-heart-8-cavity-px320.html', 'Pavoni', '2021-07-01 11:59:21'),
	(16, '5012345678916', 'Pavoflex Tutti Frutti Mela/Apple', 210, '90 ml', 'Apples', 'SMAP200', 'Silicone Moulds', 11, 'https://i.pinimg.com/originals/8c/1d/0c/8c1d0c6e59e01d2b5f2792e5ecefaa8f.jpg', 'Pavoni', '2021-07-01 12:07:18'),
	(17, '5012345678917', 'Pavoflex Tutti Frutti Pear', 210, '90 ml', 'Pears', 'SMPP200', 'Silicone Moulds', 9, 'https://www.bakedeco.com/images/large/pavoni_pavoflex_silicone_tutti_frutti_3d_mold_pear_42078.jpg', 'Pavoni', '2021-07-01 12:09:44'),
	(18, '5012345678918', 'Multi-Inserto Round', 168, '600 ml', 'Round', 'SMRS200', 'Silicone Moulds', 6, 'https://www.cakedelice.com/13339-large_default/multi-inserto-round-silikomart.jpg', 'Silikomart', '2021-07-01 12:13:57'),
	(19, '5012345678919', 'Silikomart-Square-Sphere-110', 178, '110 ml', 'Square', 'SMSS200', 'Silicone Moulds', 7, 'https://i.pinimg.com/originals/a3/98/b7/a398b71cafa9cff1b40efabe4779d4a5.jpg', 'Silikomart', '2021-07-01 12:17:33'),
	(20, '5012345678920', '3D VAGUE', 178, '500 ml', '3D', 'SM3DS200', 'Silicone Moulds', 6, 'https://www.matferbourgeatusa.com/content/images/thumbs/0003058_silikomart-silicone-3d-mold-vague.jpeg', 'Silikomart', '2021-07-01 12:19:43'),
	(21, '5012345678921', 'Colorant RED', 15, '15 g', 'Red', 'FCRD300', 'Food Colorants', 14, 'https://anytacooking.ro/wp-content/uploads/2020/02/9600082-510x510.jpg', 'Decora', '2021-07-01 12:23:36'),
	(22, '5012345678922', 'Colorant GREEN', 15, '15 g', 'Green', 'FCGD300', 'Food Colorants', 12, 'https://www.decora.it/prodotto/gel-coloranti/', 'Decora', '2021-07-01 12:30:54'),
	(23, '5012345678923', 'Colorant BLUE', 15, '15 g', 'Blue', 'FCBD300', 'Food Colorants', 14, 'https://anytacooking.ro/wp-content/uploads/2020/02/9600080.jpg', 'Decora', '2021-07-01 12:33:11'),
	(24, '5012345678924', 'Colorant PURPLE', 15, '15 g', 'Purple', 'FCPD300', 'Food Colorants', 10, 'https://www.decora.it/prodotto/gel-coloranti/', 'Decora', '2021-07-01 12:35:08'),
	(25, '5012345678925', 'Colorant FUCHSIA', 15, '15 g', 'Fuchsia', 'FCFD300', 'Food Colorants', 9, 'https://www.decora.it/prodotto/gel-coloranti/', 'Decora', '2021-07-01 12:37:22'),
	(26, '5012345678926', 'Colorante extra bianco in gel', 45, '100 g', 'White', 'FCWD300', 'Food Colorants', 3, 'https://www.decora.it/prodotto/colorante-extra-bianco-in-gel/', 'Decora', '2021-07-01 12:40:53'),
	(27, '5012345678927', 'Colorant ORANGE', 28, '28 g', 'Orange', 'FCOD300', 'Food Colorants', 6, 'https://cdn.myshoptet.com/usr/www.vsenadorty.cz/user/shop/big/10773_1987232-img-vlk-jen-pockej-zajici-selfie-v1.jpg?5d8121e8', 'Decora', '2021-07-01 12:45:24'),
	(28, '5012345678928', 'Wilton Sprinkles NonPareils – Pink', 49, '55 g', 'Sprinkles', 'DESW400', 'Decorations & Essences', 12, 'https://bake4less.com/wp-content/uploads/2019/02/Wilton-Sprinkles-Nonpareils_Pink.jpeg', 'Wilton', '2021-07-01 12:47:14'),
	(29, '5012345678929', 'VELVET TEXTURE SPRAYS', 113, '400 ml', 'Velvet Spray', 'DEVSM401', 'Decorations & Essences', 6, 'https://th.bing.com/th/id/R88722258e574dce699363a3b4981110e?rik=Mbr5cwZaDrZPmg&riu=http%3a%2f%2fwww.pastrychef.com%2fassets%2fimages%2flarge%2fvelvet_spray_colored_cocoa_butter_martellato_LCV001_large.jpg&ehk=XRSfhlAl5Ov6HhQmgeQwBBnegqs6ByEmkEdQY8stpxo%3d&risl=&pid=ImgRaw', 'Martellato', '2021-07-01 12:50:37'),
	(30, '5012345678930', 'MADAGASCAN VANILLA EXTRACT', 12, '35 ml', 'Vanilla Essence', 'DEVEO402', 'Decorations & Essences', 16, 'https://th.bing.com/th/id/R0dadeed7e4068ad052a3bf65606e8be4?rik=vv7HbqMxTdxadA&riu=http%3a%2f%2fwww.thevanillavalley.co.uk%2fuser%2fproducts%2fSugarcraft%2fCulpitt%2f5601+vanilla+extract.jpg&ehk=h5tjaDbyg%2fcuyPci9n3W8gHOP5ZQcxwq1eNQfaosWjw%3d&risl=&pid=ImgRaw', 'Dr. Oetker', '2021-07-01 12:53:25'),
	(31, '5012345678931', 'ROM ESENTA', 12, '35 ml', 'Rum Essence', 'DEREO403', 'Decorations & Essences', 16, 'https://th.bing.com/th/id/OIP.5C-3fwoLuMX_Gede4t3HdAAAAA?pid=ImgDet&rs=1', 'Dr. Oetker', '2021-07-01 12:56:01'),
	(32, '5012345678932', 'Valencian Orange Extract', 20, '35 ml', 'Orange Essence', 'DEOEO404', 'Decorations & Essences', 15, 'https://www.britishcornershop.co.uk/img/large/SLC027.jpg', 'Dr. Oetker', '2021-07-01 12:58:44'),
	(33, '5012345678933', 'Wedding Cake Figurine', 74, '200 g', 'Figurines', 'DEFD405', 'Decorations & Essences', 16, 'https://cdn.vegaoo.co.uk/images/rep_art/gra/224/7/224774/humorous-wedding-cake-figurine.jpg', 'Decora', '2021-07-01 13:02:13'),
	(34, '5012345678934', 'Lumanare Albastra in Forma de Cifra', 3, '10 g', 'Candles', 'DECAC406', 'Decorations & Essences', 20, 'https://anytacooking.ro/lumanari-pentru-tort/', 'Anyta Cooking', '2021-07-01 13:05:09'),
	(35, '5012345678935', 'Set 100 buc Saci decorative', 83, '20 g', 'Piping Bag Set', 'KPBSAC501', 'Kitchenware', 9, 'https://anytacooking.ro/set-100-buc-saci-decorative-30-cm-wilton/', 'Anyta Cooking', '2021-07-01 13:08:30'),
	(36, '5012345678936', 'Sucitor cu strat antiaderent', 68, '200 g', 'Rolling Pin', 'KRPAC501', 'Kitchenware', 4, 'https://anytacooking.ro/sucitoare-si-merdene/', 'Anyta Cooking', '2021-07-01 13:11:18'),
	(37, '5012345678937', 'Bosch MUM54D00GB Kitchen Machine', 529, '4000 g', 'Professional Mixer', 'KPMB502', 'Kitchenware', 5, 'https://www.amazon.co.uk/Bosch-MUM54D00GB-Kitchen-Machine-Turquoise/dp/B01J193HVO/ref=sr_1_3?dchild=1&keywords=BOSCH+MUM6N10UC+Universal+Plus+Stand+Mixer%2C+800+watt%2C+6.5-Quarts&linkCode=gs3&linkId=001240a6c4f06ecf98daddb47069c565&qid=1625134419&sr=8-3', 'Bosch', '2021-07-01 13:15:35'),
	(38, '5012345678938', 'Spatula de Silicon - Patisse', 15, '50 g', 'Silicone Spatula', 'KSSAC503', 'Kitchenware', 2, 'https://anytacooking.ro/spatula-de-silicon-patisse/', 'Anyta Cooking', '2021-07-01 13:19:10'),
	(39, '5012345678939', 'Tel din Silicon - Patisse', 15, '75 g', 'Whisk', 'KWAC504', 'Kitchenware', 4, 'https://anytacooking.ro/tel-din-silicon-patisse/', 'Anyta Cooking', '2021-07-01 13:21:29'),
	(40, '5012345678940', 'Thermocouple Thermometer', 450, '50 g', 'Thermometer', 'KTO505', 'Kitchenware', 6, 'https://www.oxo.com/categories/cooking-and-baking/tools-and-gadgets/thermometers-and-timers/thermocouple-thermometer.html', 'OXO', '2021-07-01 13:24:19'),
	(42, '501234567890', 'hey there girl', 200, '120', 'ganache noir', 'aaaa123', 'bbbbb', 1222, NULL, 'tttttttaaaa', '2021-08-06 14:02:02'),
	(43, '123456789', 'hey there', 50, '356', 'ganache', 'SMSP200', 'bbbbb', 123, NULL, 'NestleNou', '2021-08-11 13:39:02');
/*!40000 ALTER TABLE `products` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.product_categories
CREATE TABLE IF NOT EXISTS `product_categories` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `product_id` varchar(50) NOT NULL,
  `category_id` varchar(50) DEFAULT NULL,
  `brand_id` varchar(100) DEFAULT NULL,
  `the_current_date` datetime DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

-- Descarcă datele pentru tabela dulce.product_categories: ~40 rows (aproximativ)
/*!40000 ALTER TABLE `product_categories` DISABLE KEYS */;
INSERT INTO `product_categories` (`id`, `product_id`, `category_id`, `brand_id`, `the_current_date`) VALUES
	(1, 'RMDKN100', 'Raw Materials - Dark Chocolate', 'Nestle', '2021-06-30 17:41:25'),
	(2, 'RMDKC100', 'Raw Materials - Dark Chocolate', 'Callebaut', '2021-06-30 17:41:46'),
	(3, 'RMWCC100', 'Raw Materials - White Chocolate', 'Callebaut', '2021-06-30 17:42:57'),
	(4, 'RMWCM100', 'Raw Materials - White Chocolate', 'Milka', '2021-06-30 17:43:03'),
	(5, 'RMWCN100', 'Raw Materials - White Chocolate', 'Nestle', '2021-06-30 17:43:09'),
	(6, 'RMMCM100', 'Raw Materials - Milk Chocolate', 'Milka', '2021-06-30 17:43:12'),
	(7, 'RMMCC100', 'Raw Materials - Milk Chocolate', 'Callebaut', '2021-06-30 17:43:20'),
	(8, 'RMCDN100', 'Raw Materials - Chocolate for Decoration', 'Nestle', '2021-06-30 17:43:27'),
	(9, 'RMCDM100', 'Raw Materials - Chocolate for Decoration', 'Milka', '2021-06-30 17:43:30'),
	(10, 'RMWCLD101', 'Raw Materials - Whipped Cream', 'LaDorna', '2021-06-30 17:43:38'),
	(11, 'RMBN102', 'Raw Materials - Biscuits', 'Nestle', '2021-06-30 17:44:10'),
	(12, 'RMSPD103', 'Raw Materials - Sugar Paste', 'Decora', '2021-06-30 17:44:13'),
	(13, 'SMCT200', 'Silicone Moulds - Christmas Tree', 'Silikomart', '2021-06-30 17:59:58'),
	(14, 'SMSP200', 'Silicone Moulds - Star', 'Pavoni', '2021-06-30 18:00:03'),
	(15, 'SMHP200', 'Silicone Moulds - Heart', 'Pavoni', '2021-06-30 18:00:09'),
	(16, 'SMAP200', 'Silicone Moulds - Apples', 'Pavoni', '2021-06-30 18:01:48'),
	(17, 'SMPP200', 'Silicone Moulds - Pears', 'Pavoni', '2021-06-30 18:02:36'),
	(18, 'SMRS200', 'Silicone Moulds - Round', 'Silikomart', '2021-06-30 18:03:51'),
	(19, 'SMSS200', 'Silicone Moulds - Square', 'Silikomart', '2021-06-30 19:09:31'),
	(20, 'SM3DS200', 'Silicone Moulds - 3D', 'Silikomart', '2021-06-30 19:10:33'),
	(21, 'FCRD300', 'Food Colorants - Red', 'Decora', '2021-06-30 19:17:29'),
	(22, 'FCGD300', 'Food Colorants - Green', 'Decora', '2021-06-30 19:27:29'),
	(23, 'FCBD300', 'Food Colorants - Blue', 'Decora', '2021-06-30 19:28:09'),
	(24, 'FCPD300', 'Food Colorants - Purple', 'Decora', '2021-06-30 19:28:57'),
	(25, 'FCFD300', 'Food Colorants - Fuchsia', 'Decora', '2021-06-30 19:29:38'),
	(26, 'FCWD300', 'Food Colorants - White', 'Decora', '2021-06-30 19:30:58'),
	(27, 'FCOD300', 'Food Colorants - Orange', 'Decora', '2021-06-30 19:31:26'),
	(28, 'DESW400', 'Decorations & Essences - Sprinkles', 'Wilton', '2021-06-30 19:37:53'),
	(29, 'DEVSM401', 'Decorations & Essences - Velvet Spray', 'Martellato', '2021-06-30 19:39:55'),
	(30, 'DEVEO402', 'Decorations & Essences - Vanilla Essence', 'Dr. Oetker', '2021-06-30 19:43:14'),
	(31, 'DEREO403', 'Decorations & Essences - Rum Essence', 'Dr. Oetker', '2021-06-30 19:43:47'),
	(32, 'DEOEO404', 'Decorations & Essences - Orange Essence', 'Dr. Oetker', '2021-06-30 19:44:57'),
	(33, 'DEFD405', 'Decorations & Essences - Figurines', 'Decora', '2021-06-30 19:49:14'),
	(34, 'DECAC406', 'Decorations & Essences - Candles', 'Anyta Cooking', '2021-06-30 19:51:15'),
	(35, 'KPBSAC500', 'Kitchenware - Piping Bag Set', 'Anyta Cooking', '2021-06-30 19:54:12'),
	(36, 'KRPAC501', 'Kitchenware - Rolling Pin', 'Anyta Cooking', '2021-06-30 19:55:11'),
	(37, 'KPMB502', 'Kitchenware - Professional Mixer', 'Bosch', '2021-06-30 20:00:33'),
	(38, 'KSSAC503', 'Kitchenware - Silicone Spatula', 'Anyta Cooking', '2021-06-30 20:02:00'),
	(39, 'KWAC504', 'Kitchenware - Whisk', 'Anyta Cooking', '2021-06-30 20:03:45'),
	(40, 'KTO505', 'Kitchenware - Thermometer', 'OXO', '2021-06-30 20:10:42'),
	(41, 'aaac', '1111a', 'bbbbaaaaaaaa', '2021-08-09 11:06:51'),
	(42, '123123123', 'testare123', 'milka123', '2021-08-11 16:13:28');
/*!40000 ALTER TABLE `product_categories` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.roles
CREATE TABLE IF NOT EXISTS `roles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.roles: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.role_has_permissions
CREATE TABLE IF NOT EXISTS `role_has_permissions` (
  `permission_id` bigint(20) unsigned NOT NULL,
  `role_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.role_has_permissions: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;

-- Descarcă structura pentru tabelă dulce.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Descarcă datele pentru tabela dulce.users: ~0 rows (aproximativ)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Andra', 'andra@yahoo.com', NULL, '$2y$10$aqpJawYaE34ZuVMIt0iN9./8Pihu4LxXE9ngfO9arts8iuFowsh5y', NULL, '2021-08-12 08:17:43', '2021-08-12 08:17:43'),
	(2, 'Ana', 'ana@yahoo.com', NULL, '123456789', NULL, '2021-08-19 18:05:35', '2021-08-19 18:05:38');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
