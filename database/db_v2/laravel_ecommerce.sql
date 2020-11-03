-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2020 at 05:05 PM
-- Server version: 10.4.8-MariaDB
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `image`, `created_at`, `updated_at`) VALUES
(2, 'Sony', NULL, '1599578876.png', '2020-09-08 08:32:35', '2020-09-08 09:27:56'),
(3, 'Samsung', NULL, '1599578955.jpeg', '2020-09-08 08:33:57', '2020-09-08 09:29:15'),
(4, 'Others', NULL, '1599575771.jpg', '2020-09-08 08:36:11', '2020-09-08 08:36:11'),
(5, 'Ray Ban', 'Ray Ban Products', '1599584202.png', '2020-09-08 10:56:42', '2020-09-08 10:56:42'),
(6, 'Xiaomi', NULL, '1599591666.png', '2020-09-08 13:01:06', '2020-09-08 13:01:06');

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `order_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_quantity` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `product_id`, `user_id`, `order_id`, `ip_address`, `product_quantity`, `created_at`, `updated_at`) VALUES
(4, 13, 1, NULL, '127.0.0.1', 2, '2020-09-19 10:22:12', '2020-10-06 09:21:17'),
(5, 15, 1, NULL, '127.0.0.1', 1, '2020-09-19 10:22:28', '2020-09-19 10:22:28'),
(6, 10, NULL, NULL, '127.0.0.1', 1, '2020-09-24 05:40:43', '2020-09-24 05:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `image`, `parent_id`, `created_at`, `updated_at`) VALUES
(9, 'Fashion', 'Fashion Category', '1599382548.jpg', NULL, '2020-09-06 02:55:48', '2020-09-06 02:55:48'),
(10, 'Sunglass', 'good sunglasses', '1599382839.jpg', 9, '2020-09-06 03:00:39', '2020-09-06 03:00:39'),
(11, 'Household', 'All household products', '1599384617.jpg', NULL, '2020-09-06 03:04:31', '2020-09-06 03:30:18'),
(12, 'Electronics', NULL, '1599590989.jpg', NULL, '2020-09-08 12:49:49', '2020-09-08 12:49:49'),
(13, 'Camera', NULL, '1599591036.jpg', 12, '2020-09-08 12:50:36', '2020-09-08 12:50:36'),
(14, 'Cell Phones', NULL, '1599591598.png', 12, '2020-09-08 12:59:58', '2020-09-08 13:00:22'),
(15, 'Smartwatch', NULL, '1602059408.png', 12, '2020-10-07 02:30:08', '2020-10-07 02:30:08');

-- --------------------------------------------------------

--
-- Table structure for table `districts`
--

CREATE TABLE `districts` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `districts`
--

INSERT INTO `districts` (`id`, `name`, `division_id`, `created_at`, `updated_at`) VALUES
(1, 'Brahmanbaria', 3, '2020-09-14 14:05:19', '2020-09-14 14:05:49'),
(3, 'Bandarban', 3, '2020-09-14 14:06:40', '2020-09-14 14:06:40'),
(4, 'Chittagong', 3, '2020-09-14 14:06:53', '2020-09-14 14:06:53'),
(5, 'Dhaka', 2, '2020-09-14 14:07:05', '2020-09-14 14:07:05');

-- --------------------------------------------------------

--
-- Table structure for table `divisions`
--

CREATE TABLE `divisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` tinyint(3) UNSIGNED NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `divisions`
--

INSERT INTO `divisions` (`id`, `name`, `priority`, `created_at`, `updated_at`) VALUES
(2, 'Dhaka', 1, '2020-09-14 14:04:46', '2020-09-14 14:04:46'),
(3, 'Chittagong', 2, '2020-09-14 14:05:02', '2020-09-14 14:05:02'),
(4, 'Rajshahi', 3, '2020-09-14 14:08:27', '2020-09-14 14:08:27'),
(5, 'Khulna', 4, '2020-09-14 14:09:57', '2020-09-14 14:09:57'),
(6, 'Barisal', 5, '2020-09-14 14:10:14', '2020-09-14 14:10:14'),
(7, 'Sylhet', 6, '2020-09-14 14:10:40', '2020-09-14 14:10:40'),
(8, 'Rangpur', 7, '2020-09-14 14:10:53', '2020-09-14 14:10:53'),
(9, 'Mymensingh', 8, '2020-09-14 14:11:08', '2020-09-14 14:11:08');

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
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(9, '2020_04_21_081939_create_products_table', 3),
(10, '2020_05_09_165516_create_categories_table', 4),
(11, '2020_05_09_165858_create_brands_table', 4),
(12, '2020_05_09_165937_create_admins_table', 4),
(13, '2020_05_09_172631_create_product_images_table', 4),
(14, '2014_10_12_100000_create_password_resets_table', 5),
(17, '2020_09_14_170011_create_divisions_table', 6),
(18, '2020_09_14_170223_create_districts_table', 6),
(21, '2014_10_12_000000_create_users_table', 7),
(27, '2020_09_19_055924_create_orders_table', 10),
(28, '2020_09_19_060113_create_carts_table', 11);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `message` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_paid` tinyint(1) NOT NULL DEFAULT 0,
  `is_completed` tinyint(1) NOT NULL DEFAULT 0,
  `is_seen_by_admin` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_resets`
--

INSERT INTO `password_resets` (`email`, `token`, `created_at`) VALUES
('akilahmed@gmail.com', '$2y$10$JKdIcf0lhTlGw2nozuARquTSRiCPdu7krHvlsStLSQWRThKjE8CX6', '2020-09-12 08:30:16'),
('akilahmedbracu@gmail.com', '$2y$10$wJ0RrME7uf/M6t3l6eUsA.mah.ZPVbwaKlzP.JMBq3teQYQ5reZiO', '2020-09-14 00:49:35');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `brand_id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT 1,
  `price` int(11) NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `offer_price` int(11) DEFAULT NULL,
  `admin_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `category_id`, `brand_id`, `title`, `description`, `slug`, `quantity`, `price`, `status`, `offer_price`, `admin_id`, `created_at`, `updated_at`) VALUES
(10, 13, 2, 'Sony Shot+', 'Sony Cybershot\r\n20 Megapixel\r\n20X Zoom', 'sony-camera', 18, 28000, 0, NULL, 1, '2020-09-08 09:23:18', '2020-09-08 13:14:21'),
(13, 13, 3, 'Samsung S1', 'Samsung digital camera\r\n16 megapixel\r\n16X zoom', 'samsung-s1', 16, 20000, 0, NULL, 1, '2020-09-08 13:15:32', '2020-09-08 13:15:32'),
(15, 14, 6, 'Xiaomi POCO F1', 'Mobile Type	Smartphone\r\nGSM/CDMA	Yes\r\nNetwork	4G / LTE\r\nSIM	Dual SIM\r\nDisplay	6.18\" IPS LCD Capacitive Touchscreen, 1080 x 2246 Resolution\r\nSound	Loudspeaker\r\nRAM	6 GB\r\nBuilt In Memory	64 GB\r\nExternal Memory	Up To 256 GB\r\nCPU	Qualcomm SDM845 Snapdragon 845\r\nGPU	Adreno 630\r\nGPRS/EDGE	Yes\r\nWLAN	Yes\r\nBluetooth	5.0, A2DP, LE, aptX HD\r\nUSB	2.0, Type-C 1.0 Reversible Connector, USB On-The-Go\r\nCamera	12 MP + 5 MP\r\nFront Camera	20 MP\r\nVideo	2160p@30fps, 1080p@30fps, 1080p@240fps\r\nOS	Android 8.0 Oreo\r\nGPS	Yes\r\nSensor	Infrared Face Recognition, Fingerprint Rear-mounted, Accelerometer, Gyro, Proximity, Barometer, Compass\r\nFM Radio	FM Radio, Recording\r\nBattery Capacity	Non-Removable Li-Po 4000 mAh Battery\r\nBattery Type	Fixed\r\nStand By	Dual Standby\r\nWeight	180 g', 'xiaomi-poco-f1', 10, 28000, 0, NULL, 1, '2020-09-08 13:42:21', '2020-09-08 13:42:21'),
(16, 10, 5, 'Ray Ban wayfarers', 'wayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarerswayfarers', 'ray-ban-wayfarers', 3, 20000, 0, NULL, 1, '2020-10-06 10:05:32', '2020-10-06 10:05:32'),
(17, 14, 6, 'Xiaomi POCO C3', 'LAUNCH	Announced	2020, October 06\r\nStatus	Coming soon. Exp. release 2020, October 16\r\nBODY	Dimensions	164.9 x 77.1 x 9 mm (6.49 x 3.04 x 0.35 in)\r\nWeight	194 g (6.84 oz)\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\nDISPLAY	Type	IPS LCD capacitive touchscreen, 16M colors\r\nSize	6.43 inches, 102.1 cm2 (~80.3% screen-to-body ratio)\r\nResolution	720 x 1600 pixels, 20:9 ratio (~270 ppi density)\r\nProtection	Panda Glass\r\n 	400 nits typ. brightness (advertised)\r\nPLATFORM	OS	Android 10, MIUI 12\r\nChipset	MediaTek Helio G35 (12 nm)\r\nCPU	Octa-core (4x2.3 GHz Cortex-A53 & 4x1.8 GHz Cortex-A53)\r\nGPU	PowerVR GE8320\r\nMEMORY	Card slot	microSDXC (dedicated slot)\r\nInternal	32GB 3GB RAM, 64GB 4GB RAM\r\n 	eMMC 5.1\r\nMAIN CAMERA	Triple	13 MP, f/2.2, 28mm (wide), 1.0µm, PDAF\r\n2 MP, f/2.4, (macro)\r\n2 MP, f/2.4, (depth)\r\nFeatures	LED flash, HDR\r\nVideo	1080p@30fps\r\nSELFIE CAMERA	Single	5 MP, f/2.2, (wide), 1.12µm\r\nFeatures	HDR\r\nVideo	1080p@30fps\r\nSOUND	Loudspeaker	Yes\r\n3.5mm jack	Yes\r\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n, Wi-Fi Direct, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, BDS\r\nRadio	FM radio\r\nUSB	microUSB 2.0, USB On-The-Go\r\nFEATURES	Sensors	Accelerometer, proximity\r\nBATTERY	Type	Li-Po 5000 mAh, non-removable', 'xiaomi-poco-c3', 6, 35000, 0, NULL, 1, '2020-10-07 02:17:39', '2020-10-07 02:17:39'),
(18, 14, 6, 'Xiaomi Mi 10T Pro', 'LAUNCH	Announced	2020, September 30\r\nStatus	Coming soon. Exp. release 2020, October\r\nBODY	Dimensions	165.1 x 76.4 x 9.3 mm (6.5 x 3.01 x 0.37 in)\r\nWeight	218 g (7.69 oz)\r\nBuild	Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\nDISPLAY	Type	IPS LCD capacitive touchscreen, 16M colors\r\nSize	6.67 inches, 107.4 cm2 (~85.2% screen-to-body ratio)\r\nResolution	1080 x 2400 pixels, 20:9 ratio (~395 ppi density)\r\nProtection	Corning Gorilla Glass 5\r\n 	HDR10+\r\n144Hz refresh rate\r\n500 nits typ. brightness (advertised)\r\nPLATFORM	OS	Android 10, MIUI 12\r\nChipset	Qualcomm SM8250 Snapdragon 865 (7 nm+)\r\nCPU	Octa-core (1x2.84 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.80 GHz Kryo 585)\r\nGPU	Adreno 650\r\nMEMORY	Card slot	No\r\nInternal	128GB 8GB RAM, 256GB 8GB RAM\r\n 	UFS 3.1\r\nMAIN CAMERA	Triple	108 MP, f/1.7, 26mm (wide), 1/1.33\", 0.8µm, PDAF, OIS\r\n13 MP, f/2.4, 123˚ (ultrawide), 1.12µm\r\n5 MP, f/2.4, (macro), AF\r\nFeatures	LED flash, HDR, panorama\r\nVideo	8K@30fps, 4K@30/60fps, 1080p@30/60/120/240/960fps; gyro-EIS\r\nSELFIE CAMERA	Single	20 MP, f/2.2, 27mm (wide), 1/3.4\", 0.8µm\r\nFeatures	HDR\r\nVideo	1080p@30fps, 720p@120fps\r\nSOUND	Loudspeaker	Yes, with stereo speakers\r\n3.5mm jack	No\r\n 	24-bit/192kHz audio\r\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth	5.1, A2DP, LE, aptX HD, aptX Adaptive\r\nGPS	Yes, with dual-band A-GPS, GLONASS, BDS, GALILEO, QZSS\r\nNFC	Yes\r\nInfrared port	Yes\r\nRadio	No\r\nUSB	USB Type-C 2.0, USB On-The-Go\r\nFEATURES	Sensors	Fingerprint (side-mounted), accelerometer, gyro, proximity, compass, barometer\r\nBATTERY	Type	Li-Po 5000 mAh, non-removable\r\nCharging	Fast charging 33W\r\nPower Delivery 3.0', 'xiaomi-mi-10t-pro', 5, 28000, 0, NULL, 1, '2020-10-07 02:20:11', '2020-10-07 02:20:11'),
(19, 14, 6, 'Redmi 9 Prime', 'LAUNCH	Announced	2020, August 04\r\nStatus	Available. Released 2020, August 06\r\nBODY	Dimensions	163.3 x 77 x 9.1 mm (6.43 x 3.03 x 0.36 in)\r\nWeight	198 g (6.98 oz)\r\nBuild	Glass front (Gorilla Glass 3), plastic back, plastic frame\r\nSIM	Dual SIM (Nano-SIM, dual stand-by)\r\n 	Water-repellent coating\r\nDISPLAY	Type	IPS LCD capacitive touchscreen, 16M colors\r\nSize	6.53 inches, 104.7 cm2 (~83.2% screen-to-body ratio)\r\nResolution	1080 x 2340 pixels, 19.5:9 ratio (~395 ppi density)\r\nProtection	Corning Gorilla Glass 3\r\n 	400 nits typ. brightness (advertised)\r\nPLATFORM	OS	Android 10, MIUI 11\r\nChipset	Mediatek Helio G80 (12 nm)\r\nCPU	Octa-core (2x2.0 GHz Cortex-A75 & 6x1.8 GHz Cortex-A55)\r\nGPU	Mali-G52 MC2\r\nMEMORY	Card slot	microSDXC (dedicated slot)\r\nInternal	64GB 4GB RAM, 128GB 4GB RAM\r\n 	eMMC 5.1\r\nMAIN CAMERA	Quad	13 MP, f/2.2, 28mm (wide), 1/3.1\", 1.12µm, PDAF\r\n8 MP, f/2.2, 118˚ (ultrawide), 1/4.0\", 1.12µm\r\n5 MP, f/2.4, (macro)\r\n2 MP, f/2.4, (depth)\r\nFeatures	LED flash, HDR, panorama\r\nVideo	1080p@30fps\r\nSELFIE CAMERA	Single	8 MP, f/2.0, 27mm (wide), 1/4.0\", 1.12µm\r\nFeatures	HDR\r\nVideo	1080p@30fps\r\nSOUND	Loudspeaker	Yes\r\n3.5mm jack	Yes\r\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, BDS\r\nInfrared port	Yes\r\nRadio	Wireless FM radio (no wired headphones required)\r\nUSB	USB Type-C 2.0, USB On-The-Go\r\nFEATURES	Sensors	Fingerprint (rear-mounted), accelerometer, proximity, compass\r\nBATTERY	Type	Li-Po 5020 mAh, non-removable\r\nCharging	Fast charging 18W', 'xiaomi-redmi-9-prime', 7, 15000, 0, NULL, 1, '2020-10-07 02:22:47', '2020-10-07 02:52:15'),
(20, 13, 3, 'Samsung EV-NXF', '20.4MP Black', 'samsung-ev-nxf', 3, 30000, 0, NULL, 1, '2020-10-07 02:27:50', '2020-10-07 02:27:50'),
(21, 15, 3, 'Samsung Watch', 'Weight	12.0000\r\nOffer	\r\n EMI Available\r\n Free Home/Office Delivery\r\n Original Accessories\r\nColor	No\r\nCustom Attribute	Sample Value', 'samsung-galaxy-watch', 7, 23000, 0, NULL, 1, '2020-10-07 02:31:10', '2020-10-07 02:51:58'),
(22, 14, 2, 'Sony Xperia XZ3', 'LAUNCH	Announced	2018, August 30\r\nStatus	Available. Released 2018, October 05\r\nBODY	Dimensions	158 x 73 x 9.9 mm (6.22 x 2.87 x 0.39 in)\r\nWeight	193 g (6.81 oz)\r\nBuild	Glass front (Gorilla Glass 5), glass back (Gorilla Glass 5), aluminum frame\r\nSIM	Single SIM (Nano-SIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)\r\n 	IP65/IP68 dust/water resistant (up to 1.5m for 30 mins)\r\nDISPLAY	Type	P-OLED capacitive touchscreen, 16M colors\r\nSize	6.0 inches, 92.9 cm2 (~80.5% screen-to-body ratio)\r\nResolution	1440 x 2880 pixels, 18:9 ratio (~537 ppi density)\r\nProtection	Corning Gorilla Glass 5\r\n 	HDR BT.2020\r\nTriluminos display\r\nX-Reality Engine\r\nPLATFORM	OS	Android 9.0 (Pie), upgradable to Android 10\r\nChipset	Qualcomm SDM845 Snapdragon 845 (10 nm)\r\nCPU	Octa-core (4x2.7 GHz Kryo 385 Gold & 4x1.7 GHz Kryo 385 Silver)\r\nGPU	Adreno 630\r\nMEMORY	Card slot	microSDXC (uses shared SIM slot) - dual SIM model only\r\nInternal	64GB 4GB RAM, 64GB 6GB RAM\r\n 	UFS 2.1\r\nMAIN CAMERA	Single	19 MP, f/2.0, 25mm (wide), 1/2.3\", 1.22µm, predictive PDAF, Laser AF\r\nFeatures	LED flash, panorama, HDR\r\nVideo	4K@30fps, 1080p@60fps, 1080p@30fps (5-axis gyro-EIS), 1080p@960fps, HDR\r\nSELFIE CAMERA	Single	13 MP, f/1.9, 23mm (wide), 1/3.1\", 1.12µm\r\nFeatures	HDR\r\nVideo	1080p@30fps (5-axis gyro-EIS)\r\nSOUND	Loudspeaker	Yes, with stereo speakers', 'sony-xperia-xz3', 3, 18000, 0, NULL, 1, '2020-10-07 02:34:59', '2020-10-07 02:34:59'),
(23, 15, 3, 'Samsung Watch3', 'LAUNCH	Announced	2020, August 05\r\nStatus	Available. Released 2020, August 06\r\nBODY	Dimensions	46.2 x 45 x 11.1 mm (1.82 x 1.77 x 0.44 in)\r\nWeight	53.8 (45mm), 48.2 g (41mm), 43 g (45mm tt.) (1.90 oz)\r\nBuild	Glass front (Gorilla Glass DX), stainless steel frame 316L or titanium frame\r\nSIM	eSIM\r\n 	Samsung Pay\r\nMIL-STD-810G compliant*\r\n50m water resistant (IP68)\r\nECG certified\r\nBlood pressure monitor\r\nCompatible with standard 20/22mm straps\r\nRotating bezel\r\n*does not guarantee ruggedness or use in extreme conditions\r\nDISPLAY	Type	Super AMOLED capacitive touchscreen, 16M colors\r\nSize	1.4 inches, 6.3 cm2 (~30.4% screen-to-body ratio)\r\nResolution	360 x 360 pixels, 1:1 ratio (~364 ppi density)\r\nProtection	Corning Gorilla Glass DX\r\n 	Always-on display\r\nPLATFORM	OS	Tizen-based wearable OS 5.5\r\nChipset	Exynos 9110 (10 nm)\r\nCPU	Dual-core 1.15 GHz Cortex-A53\r\nGPU	Mali-T720\r\nMEMORY	Card slot	No\r\nInternal	8GB 1GB RAM\r\n 	eMMC\r\nCAMERA	 	No\r\nSOUND	Loudspeaker	Yes\r\n3.5mm jack	No\r\nCOMMS	WLAN	Wi-Fi 802.11 b/g/n\r\nBluetooth	5.0, A2DP, LE\r\nGPS	Yes, with A-GPS, GLONASS, GALILEO, BDS\r\nNFC	Yes\r\nRadio	No\r\nUSB	No\r\nFEATURES	Sensors	Accelerometer, gyro, heart rate, barometer\r\n 	Natural language commands and dictation\r\nBATTERY	Type	Li-Ion 340 mAh, non-removable\r\nCharging	Qi wireless charging', 'samsung-galaxy-watch3', 5, 30000, 0, NULL, 1, '2020-10-07 02:39:33', '2020-10-07 02:51:34'),
(24, 14, 3, 'Samsung Note20', 'LAUNCH	Announced	2020, August 05\r\nStatus	Available. Released 2020, August 21\r\nBODY	Dimensions	164.8 x 77.2 x 8.1 mm (6.49 x 3.04 x 0.32 in)\r\nWeight	208 g (7.34 oz)\r\nBuild	Glass front (Gorilla Glass Victus), glass back (Gorilla Glass Victus), stainless steel frame\r\nSIM	Single SIM (Nano-SIM and/or eSIM) or Hybrid Dual SIM (Nano-SIM, dual stand-by)\r\n 	Samsung Pay (Visa, MasterCard certified)\r\nIP68 dust/water resistant (up to 1.5m for 30 mins)\r\nStylus, 9ms latency (Bluetooth integration, accelerometer, gyro)\r\nDISPLAY	Type	Dynamic AMOLED 2X capacitive touchscreen, 16M colors\r\nSize	6.9 inches, 116.7 cm2 (~91.7% screen-to-body ratio)\r\nResolution	1440 x 3088 pixels (~496 ppi density)\r\nProtection	Corning Gorilla Glass Victus\r\n 	HDR10+\r\nAlways-on display\r\n120Hz@FHD/60Hz@QHD refresh rate\r\nPLATFORM	OS	Android 10, One UI 2.5\r\nChipset	Exynos 990 (7 nm+) - Global\r\nQualcomm SM8250 Snapdragon 865+ (7 nm+) - USA\r\nCPU	Octa-core (2x2.73 GHz Mongoose M5 & 2x2.50 GHz Cortex-A76 & 4x2.0 GHz Cortex-A55) - Global\r\nOcta-core (1x3.0 GHz Kryo 585 & 3x2.42 GHz Kryo 585 & 4x1.8 GHz Kryo 585) - USA\r\nGPU	Mali-G77 MP11 - Global\r\nAdreno 650 - USA\r\nMEMORY	Card slot	microSDXC (uses shared SIM slot)\r\nInternal	256GB 8GB RAM, 512GB 8GB RAM\r\n 	UFS 3.0\r\nMAIN CAMERA	Triple	108 MP, f/1.8, 26mm (wide), 1/1.33\", 0.8µm, PDAF, Laser AF, OIS\r\n12 MP, f/3.0, 120mm (periscope telephoto), 1.0µm, PDAF, OIS, 5x optical zoom, 50x hybrid zoom\r\n12 MP, f/2.2, 120˚, 13mm (ultrawide), 1/2.55\", 1.4µm\r\nFeatures	LED flash, auto-HDR, panorama\r\nVideo	8K@24fps, 4K@30/60fps, 1080p@30/60/240fps, 720p@960fps, HDR10+, stereo sound rec., gyro-EIS & OIS\r\nSELFIE CAMERA	Single	10 MP, f/2.2, 26mm (wide), 1/3.2\", 1.22µm, Dual Pixel PDAF\r\nFeatures	Dual video call, Auto-HDR\r\nVideo	4K@30/60fps, 1080p@30fps\r\nSOUND	Loudspeaker	Yes, with stereo speakers\r\n3.5mm jack	No\r\n 	32-bit/384kHz audio\r\nTuned by AKG\r\nCOMMS	WLAN	Wi-Fi 802.11 a/b/g/n/ac/6, dual-band, Wi-Fi Direct, hotspot\r\nBluetooth	5.0, A2DP, LE, aptX\r\nGPS	Yes, with A-GPS, GLONASS, BDS, GALILEO\r\nNFC	Yes\r\nRadio	FM radio (Snapdragon model only; market/operator dependent)\r\nUSB	USB Type-C 3.2, USB On-The-Go\r\nFEATURES	Sensors	Fingerprint (under display, ultrasonic), accelerometer, gyro, proximity, compass, barometer\r\n 	Samsung Wireless DeX (desktop experience support)\r\nANT+\r\nBixby natural language commands and dictation', 'samsung-note20-ult', 2, 60000, 0, NULL, 1, '2020-10-07 02:47:14', '2020-10-07 02:51:24'),
(25, 10, 5, 'Aviator Classic', 'ray ban aviator ray ban aviator ray ban aviator', 'aviator-classic', 1, 21000, 0, NULL, 1, '2020-10-07 02:50:43', '2020-10-07 02:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `product_id`, `image`, `created_at`, `updated_at`) VALUES
(1, 1, '1.png', NULL, NULL),
(2, 2, '2.png', NULL, NULL),
(3, 1, '3.png', NULL, NULL),
(4, 6, '1594736024.png', '2020-07-14 08:13:45', '2020-07-14 08:13:45'),
(5, 7, '1594737277.png', '2020-07-14 08:34:37', '2020-07-14 08:34:37'),
(6, 8, '1594737277.png', '2020-07-14 08:34:38', '2020-07-14 08:34:38'),
(7, 8, '1599336186.png', '2020-09-05 14:03:07', '2020-09-05 14:03:07'),
(8, 9, '1599577594.jpg', '2020-09-08 09:06:34', '2020-09-08 09:06:34'),
(9, 9, '1599577594.jpg', '2020-09-08 09:06:34', '2020-09-08 09:06:34'),
(10, 10, '1599578598.jpg', '2020-09-08 09:23:18', '2020-09-08 09:23:18'),
(11, 10, '1599578598.jpg', '2020-09-08 09:23:18', '2020-09-08 09:23:18'),
(12, 11, '1599584305.jpg', '2020-09-08 10:58:25', '2020-09-08 10:58:25'),
(15, 13, '1599592532.jpg', '2020-09-08 13:15:32', '2020-09-08 13:15:32'),
(16, 14, '1599593416.png', '2020-09-08 13:30:16', '2020-09-08 13:30:16'),
(17, 14, '1599591980.jpg', '2020-09-08 13:30:16', '2020-09-08 13:30:16'),
(18, 15, '1599594141.jpg', '2020-09-08 13:42:21', '2020-09-08 13:42:21'),
(19, 16, '1602000332.jpg', '2020-10-06 10:05:33', '2020-10-06 10:05:33'),
(20, 17, '1602058659.jpg', '2020-10-07 02:17:39', '2020-10-07 02:17:39'),
(21, 18, '1602058811.jpg', '2020-10-07 02:20:11', '2020-10-07 02:20:11'),
(22, 19, '1602058967.jpg', '2020-10-07 02:22:47', '2020-10-07 02:22:47'),
(23, 20, '1602059270.jpg', '2020-10-07 02:27:50', '2020-10-07 02:27:50'),
(24, 21, '1602059470.png', '2020-10-07 02:31:10', '2020-10-07 02:31:10'),
(25, 22, '1602059699.jpg', '2020-10-07 02:34:59', '2020-10-07 02:34:59'),
(26, 23, '1602059973.webp', '2020-10-07 02:39:33', '2020-10-07 02:39:33'),
(27, 24, '1602060434.jpg', '2020-10-07 02:47:14', '2020-10-07 02:47:14'),
(28, 25, '1602060643.jpg', '2020-10-07 02:50:43', '2020-10-07 02:50:43');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `street_address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `division_id` int(10) UNSIGNED NOT NULL COMMENT 'Division Table ID',
  `district_id` int(10) UNSIGNED NOT NULL COMMENT 'District Table ID',
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT 0 COMMENT '0=Inactive|1=Active|2=Ban',
  `ip_address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `phone_no`, `email`, `password`, `street_address`, `division_id`, `district_id`, `status`, `ip_address`, `avatar`, `shipping_address`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Akil', 'Ahmed', 'akilahmed', '0125469778', 'akilahmedbracu@gmail.com', '$2y$10$T498.HMtp7ZReqqXEe..buxd3EJmlVS0DH9Ph3vztEre3RE./Ybd2', '353 west paikpara', 3, 1, 1, '127.0.0.1', NULL, '8th floor', '6D0mvzyDQO4XGsSEtweWyaIcwDDiEKEuO4If72dKn3r9ENUB6pgk5MQHBlkT', '2020-09-16 08:13:43', '2020-09-18 13:35:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `carts_user_id_foreign` (`user_id`),
  ADD KEY `carts_product_id_foreign` (`product_id`),
  ADD KEY `carts_order_id_foreign` (`order_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `districts`
--
ALTER TABLE `districts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `divisions`
--
ALTER TABLE `divisions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `orders_user_id_foreign` (`user_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`),
  ADD UNIQUE KEY `users_phone_no_unique` (`phone_no`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `districts`
--
ALTER TABLE `districts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `divisions`
--
ALTER TABLE `divisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
