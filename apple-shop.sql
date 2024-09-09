-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 09, 2024 at 05:13 PM
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
-- Database: `apple-shop`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `brandName` varchar(50) NOT NULL,
  `brandImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`id`, `brandName`, `brandImg`, `created_at`, `updated_at`) VALUES
(1, 'DELL', 'https://photo.teamrabbil.com/images/2023/09/09/b1.png', '2023-08-15 12:00:16', '2023-09-09 12:12:45'),
(2, 'Xiaomi ', 'https://photo.teamrabbil.com/images/2023/09/09/b2.png', '2023-08-15 12:00:16', '2023-09-09 12:13:06'),
(3, 'HUAWEI', 'https://photo.teamrabbil.com/images/2023/09/09/b3.png', '2023-08-15 12:00:16', '2023-09-09 12:13:31'),
(4, 'Vivo', 'https://photo.teamrabbil.com/images/2023/09/09/b4.png', '2023-08-15 12:00:16', '2023-09-09 12:13:37'),
(5, 'HP', 'https://photo.teamrabbil.com/images/2023/09/09/b5.png', '2023-08-15 12:00:16', '2023-09-09 12:13:45'),
(6, 'DELL', 'https://photo.teamrabbil.com/images/2023/09/09/b1.png', '2023-08-15 12:00:16', '2023-09-09 12:13:49'),
(7, 'Xiaomi ', 'https://photo.teamrabbil.com/images/2023/09/09/b2.png', '2023-08-15 12:00:16', '2023-09-09 12:13:54'),
(8, 'HUAWE', 'https://photo.teamrabbil.com/images/2023/09/09/b3.png', '2023-08-15 12:00:16', '2023-09-09 12:14:22');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `categoryName` varchar(50) NOT NULL,
  `categoryImg` varchar(300) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `categoryName`, `categoryImg`, `created_at`, `updated_at`) VALUES
(1, 'Television', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img1.png', '2023-08-15 11:59:11', '2023-09-09 11:42:29'),
(2, 'Mobile', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img2.png', '2023-08-15 11:59:11', '2023-09-09 11:42:35'),
(3, 'Headphone', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img3.png', '2023-08-15 11:59:11', '2023-09-09 11:42:45'),
(4, 'Watch', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img4.png', '2023-08-15 11:59:11', '2023-09-09 11:42:59'),
(5, 'Game', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img5.png', '2023-08-15 11:59:11', '2023-09-09 11:43:10'),
(6, 'Camera', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img6.png', '2023-08-15 11:59:11', '2023-09-09 11:43:17'),
(7, 'Audio', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img7.png', '2023-08-15 11:59:11', '2023-09-09 11:43:26'),
(11, 'Television', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img1.png', '2023-08-15 11:59:11', '2023-09-09 11:42:29'),
(12, 'Mobile', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img2.png', '2023-08-15 11:59:11', '2023-09-09 11:42:35'),
(18, 'Watch', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img4.png', '2023-08-15 11:59:11', '2023-09-09 11:42:59'),
(19, 'Game', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img5.png', '2023-08-15 11:59:11', '2023-09-09 11:43:10'),
(20, 'Camera', 'https://photo.teamrabbil.com/images/2023/09/09/cat_img6.png', '2023-08-15 11:59:11', '2023-09-09 11:43:17');

-- --------------------------------------------------------

--
-- Table structure for table `customer_profiles`
--

CREATE TABLE `customer_profiles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cus_name` varchar(100) NOT NULL,
  `cus_add` varchar(500) NOT NULL,
  `cus_city` varchar(50) NOT NULL,
  `cus_state` varchar(50) NOT NULL,
  `cus_postcode` varchar(50) NOT NULL,
  `cus_country` varchar(50) NOT NULL,
  `cus_phone` varchar(50) NOT NULL,
  `cus_fax` varchar(50) NOT NULL,
  `ship_name` varchar(100) NOT NULL,
  `ship_add` varchar(100) NOT NULL,
  `ship_city` varchar(100) NOT NULL,
  `ship_state` varchar(100) NOT NULL,
  `ship_postcode` varchar(100) NOT NULL,
  `ship_country` varchar(100) NOT NULL,
  `ship_phone` varchar(50) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `customer_profiles`
--

INSERT INTO `customer_profiles` (`id`, `cus_name`, `cus_add`, `cus_city`, `cus_state`, `cus_postcode`, `cus_country`, `cus_phone`, `cus_fax`, `ship_name`, `ship_add`, `ship_city`, `ship_state`, `ship_postcode`, `ship_country`, `ship_phone`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', '01785388919', 'Rabbil Hasan', 'Shekhertek 8,Mohammadpur, Adabor, Dhaka-1207', 'Dhaka', 'Dhaka', '1207', 'Bangladesh', '01785388919', 1, '2023-08-25 21:34:14', '2023-10-14 04:20:18'),
(6, 'Md Shah Alam', 'Mirpur', 'Pallabi', 'Dhaka', '1216', 'Bangladesh', '01628918283', '1234416', 'Md Shah Alam', 'Mirpur', 'Dhaka', 'Dhaka', '1216', 'Bangladesh', '02984783683', 3, '2024-08-29 20:48:55', '2024-08-29 20:49:30');

-- --------------------------------------------------------

--
-- Table structure for table `invoices`
--

CREATE TABLE `invoices` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `total` varchar(50) NOT NULL,
  `vat` varchar(50) NOT NULL,
  `payable` varchar(50) NOT NULL,
  `cus_details` varchar(500) NOT NULL,
  `ship_details` varchar(500) NOT NULL,
  `tran_id` varchar(100) NOT NULL,
  `val_id` varchar(100) NOT NULL DEFAULT '0',
  `delivery_status` enum('Pending','Processing','Completed') NOT NULL,
  `payment_status` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoices`
--

INSERT INTO `invoices` (`id`, `total`, `vat`, `payable`, `cus_details`, `ship_details`, `tran_id`, `val_id`, `delivery_status`, `payment_status`, `user_id`, `created_at`, `updated_at`) VALUES
(42, '151200', '7200', '151200', 'Name: Md Shah Alam. Address: Mirpur. City: Pallabi. Postcode: 1216. Country: Bangladesh.Email: mdshahalam8283@gmail.com. Mobile: 01628918283', 'NameL: Md Shah Alam. Address: Mirpur. City: Dhaka. Postcode: 1216. Country: Bangladesh. Email: mdshahalam8283@gmail.com. Mobile: 02984783683', '66d1d15b52341', '0', 'Pending', 'Success', 3, '2024-08-30 08:04:11', '2024-08-30 08:06:10'),
(43, '249900', '11900', '249900', 'Name: Md Shah Alam. Address: Mirpur. City: Pallabi. Postcode: 1216. Country: Bangladesh.Email: mdshahalam8283@gmail.com. Mobile: 01628918283', 'NameL: Md Shah Alam. Address: Mirpur. City: Dhaka. Postcode: 1216. Country: Bangladesh. Email: mdshahalam8283@gmail.com. Mobile: 02984783683', '66d32b956290f', '0', 'Pending', 'Success', 3, '2024-08-31 08:41:25', '2024-08-31 08:41:51'),
(44, '151200', '7200', '151200', 'Name: Md Shah Alam. Address: Mirpur. City: Pallabi. Postcode: 1216. Country: Bangladesh.Email: mdshahalam8283@gmail.com. Mobile: 01628918283', 'NameL: Md Shah Alam. Address: Mirpur. City: Dhaka. Postcode: 1216. Country: Bangladesh. Email: mdshahalam8283@gmail.com. Mobile: 02984783683', '66df0f664f90f', '0', 'Pending', 'Success', 3, '2024-09-09 09:08:22', '2024-09-09 09:09:04');

-- --------------------------------------------------------

--
-- Table structure for table `invoice_products`
--

CREATE TABLE `invoice_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `invoice_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `qty` varchar(50) NOT NULL,
  `sale_price` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `invoice_products`
--

INSERT INTO `invoice_products` (`id`, `invoice_id`, `product_id`, `user_id`, `qty`, `sale_price`, `created_at`, `updated_at`) VALUES
(68, 42, 2, 3, '1', '50000', '2024-08-30 08:04:11', '2024-08-30 08:04:11'),
(69, 42, 1, 3, '1', '94000', '2024-08-30 08:04:11', '2024-08-30 08:04:11'),
(70, 43, 3, 3, '1', '94000', '2024-08-31 08:41:25', '2024-08-31 08:41:25'),
(71, 43, 1, 3, '1', '94000', '2024-08-31 08:41:25', '2024-08-31 08:41:25'),
(72, 43, 2, 3, '1', '50000', '2024-08-31 08:41:25', '2024-08-31 08:41:25'),
(73, 44, 3, 3, '1', '94000', '2024-09-09 09:08:22', '2024-09-09 09:08:22'),
(74, 44, 2, 3, '1', '50000', '2024-09-09 09:08:22', '2024-09-09 09:08:22');

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
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2023_02_16_065502_create_users', 1),
(3, '2023_02_16_065520_create_customer_profiles', 1),
(4, '2023_02_16_065529_create_categories', 1),
(5, '2023_02_16_065654_create_brands', 1),
(6, '2023_02_17_114815_create_products', 1),
(7, '2023_02_17_144756_create_product_reviews', 1),
(8, '2023_02_17_164424_create_product_details', 1),
(9, '2023_02_17_184723_create_product_sliders', 1),
(10, '2023_02_17_191300_create_product_wishes', 1),
(11, '2023_02_17_194301_create_product_carts', 1),
(12, '2023_08_06_131501_create_sslcommerz_accounts', 1),
(13, '2023_08_06_131940_create_invoices', 1),
(14, '2023_08_06_131941_create_invoice_products', 1),
(15, '2023_08_08_051859_create_policies', 1);

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
  `type` enum('about','refund','terms','how to buy','contact','complain') NOT NULL,
  `des` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `policies`
--

INSERT INTO `policies` (`id`, `type`, `des`) VALUES
(1, 'about', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(2, 'refund', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(3, 'terms', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(4, 'how to buy', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(5, 'contact', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>'),
(6, 'complain', '<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>\r\n<p><strong>Lorem Ipsum</strong> is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.</p>');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(50) NOT NULL,
  `discount` tinyint(1) NOT NULL,
  `discount_price` varchar(50) NOT NULL,
  `image` varchar(200) NOT NULL,
  `stock` tinyint(1) NOT NULL,
  `star` double(8,2) NOT NULL,
  `remark` enum('popular','new','top','special','trending','regular') NOT NULL,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `brand_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `title`, `short_des`, `price`, `discount`, `discount_price`, `image`, `stock`, `star`, `remark`, `category_id`, `brand_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 2, '2023-08-15 12:24:06', '2024-08-28 15:16:32'),
(2, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 1, '50000', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 2, 1, '2023-08-15 12:24:06', '2024-08-30 05:11:25'),
(3, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(4, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(5, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(6, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(7, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(8, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 5, 1, '2023-08-15 12:24:06', '2024-08-28 15:20:13'),
(9, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(10, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(11, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 5, '2023-08-15 12:24:06', '2024-08-28 15:20:20'),
(12, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(13, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(14, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(15, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(16, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'popular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(17, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(18, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(19, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(20, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(21, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(22, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(23, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(24, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'new', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(25, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(26, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(27, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(28, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(29, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(30, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(31, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'top', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(32, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(33, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(34, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(35, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(36, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'special', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(37, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(38, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(39, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(40, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'trending', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51'),
(41, 'MacBook Air M1 8/256GB', 'MacBook Air M1 8/256GB 13-inch Space Gray', '94000', 0, '0', 'https://photo.teamrabbil.com/images/2023/09/09/product1.jpeg', 1, 80.00, 'regular', 1, 1, '2023-08-15 12:24:06', '2023-09-09 21:07:51');

-- --------------------------------------------------------

--
-- Table structure for table `product_carts`
--

CREATE TABLE `product_carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `qty` varchar(200) NOT NULL,
  `price` varchar(200) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_carts`
--

INSERT INTO `product_carts` (`id`, `user_id`, `product_id`, `color`, `size`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(6, 2, 1, 'Red', 'X', '5', '470000', '2023-10-10 18:41:33', '2023-10-10 18:41:33'),
(17, 3, 3, 'Black', 'M', '1', '94000', '2024-08-31 08:40:40', '2024-08-31 08:40:40'),
(19, 3, 2, 'Black', 'M', '1', '50000', '2024-08-31 08:40:52', '2024-08-31 08:40:52');

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `img1` varchar(200) NOT NULL,
  `img2` varchar(200) NOT NULL,
  `img3` varchar(200) NOT NULL,
  `img4` varchar(200) NOT NULL,
  `des` longtext NOT NULL,
  `color` varchar(200) NOT NULL,
  `size` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`id`, `img1`, `img2`, `img3`, `img4`, `des`, `color`, `size`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/09/23/Group-1.png', 'https://photo.teamrabbil.com/images/2023/09/23/Group-2.png', 'https://photo.teamrabbil.com/images/2023/09/23/Group-3.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 1, '2023-08-20 13:49:16', '2023-09-23 23:47:20'),
(2, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/09/23/Group-1.png', 'https://photo.teamrabbil.com/images/2023/09/23/Group-2.png', 'https://photo.teamrabbil.com/images/2023/09/23/Group-3.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 2, '2023-08-20 13:49:16', '2023-09-23 23:47:23'),
(3, 'https://photo.teamrabbil.com/images/2023/08/15/macbooks-2048px-2349.md.jpeg', 'https://photo.teamrabbil.com/images/2023/09/23/Group-1.png', 'https://photo.teamrabbil.com/images/2023/09/23/Group-2.png', 'https://photo.teamrabbil.com/images/2023/09/23/Group-3.png', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged.', 'Red,Green,White', 'X,2X,3X', 9, '2023-08-20 13:49:16', '2023-09-23 23:47:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_reviews`
--

CREATE TABLE `product_reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `description` varchar(1000) NOT NULL,
  `rating` varchar(10) NOT NULL,
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_reviews`
--

INSERT INTO `product_reviews` (`id`, `description`, `rating`, `customer_id`, `product_id`, `created_at`, `updated_at`) VALUES
(2, 'Reference site about Lorem Ipsum,', '90', 1, 1, '2023-10-14 21:17:09', '2023-10-14 21:17:09'),
(3, 'Lorem ipsum dolor sit amet,', '90', 1, 9, '2023-10-21 21:41:11', '2023-10-21 21:41:11'),
(4, 'Helllo This is my secound review', '99', 6, 2, '2024-08-29 20:56:18', '2024-08-29 20:57:03');

-- --------------------------------------------------------

--
-- Table structure for table `product_sliders`
--

CREATE TABLE `product_sliders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(200) NOT NULL,
  `short_des` varchar(500) NOT NULL,
  `price` varchar(100) NOT NULL,
  `image` varchar(200) NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_sliders`
--

INSERT INTO `product_sliders` (`id`, `title`, `short_des`, `price`, `image`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '50% off in all products', 'http://photo.teamrabbil.com/images/2023/09/09/s15ab2733cb4567d3d.png', 1, '2023-08-15 12:42:46', '2023-09-09 14:00:21'),
(3, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '51% off in all products', 'http://photo.teamrabbil.com/images/2023/09/09/s29b413a4aec6bec14.png', 2, '2023-08-15 12:42:46', '2023-09-09 14:00:24'),
(4, 'MacBook Air M1 New', 'Apple MacBook Air 13.3-Inch Retina Display 8-core Apple M1 chip with 8GB RAM, 256GB SSD (MGND3) Gold', '52% off in all products', 'http://photo.teamrabbil.com/images/2023/09/09/s36372954997b5719f.png', 3, '2023-08-15 12:42:46', '2023-09-09 14:00:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_wishes`
--

CREATE TABLE `product_wishes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_wishes`
--

INSERT INTO `product_wishes` (`id`, `product_id`, `user_id`, `created_at`, `updated_at`) VALUES
(5, 1, 1, '2023-09-23 20:30:24', '2023-09-23 20:30:24'),
(11, 2, 3, '2024-09-09 09:07:25', '2024-09-09 09:07:25');

-- --------------------------------------------------------

--
-- Table structure for table `sslcommerz_accounts`
--

CREATE TABLE `sslcommerz_accounts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `store_id` varchar(255) NOT NULL,
  `store_passwd` varchar(255) NOT NULL,
  `currency` varchar(255) NOT NULL,
  `success_url` varchar(255) NOT NULL,
  `fail_url` varchar(255) NOT NULL,
  `cancel_url` varchar(255) NOT NULL,
  `ipn_url` varchar(255) NOT NULL,
  `init_url` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sslcommerz_accounts`
--

INSERT INTO `sslcommerz_accounts` (`id`, `store_id`, `store_passwd`, `currency`, `success_url`, `fail_url`, `cancel_url`, `ipn_url`, `init_url`, `created_at`, `updated_at`) VALUES
(1, 'teamr64c9e84055219', 'teamr64c9e84055219@ssl', 'BDT', 'http://127.0.0.1:8000/PaymentSuccess', 'http://127.0.0.1:8000/PaymentFail', 'http://127.0.0.1:8000/PaymentCancel', 'http://127.0.0.1:8000/api/PaymentIPN', 'https://sandbox.sslcommerz.com/gwprocess/v4/api.php', '2023-08-25 21:35:23', '2023-08-25 21:35:23');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `email` varchar(50) NOT NULL,
  `otp` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `otp`, `created_at`, `updated_at`) VALUES
(1, 'engr.rabbil@yahoo.com', '0', '2023-08-20 09:13:06', '2023-10-21 21:34:20'),
(2, 'engr.rabbil@outlook.com', '0', '2023-09-23 19:16:21', '2023-10-13 23:28:08'),
(3, 'mdshahalam8283@gmail.com', '0', '2024-08-28 12:31:02', '2024-09-09 09:04:32');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `customer_profiles_user_id_unique` (`user_id`);

--
-- Indexes for table `invoices`
--
ALTER TABLE `invoices`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoices_user_id_foreign` (`user_id`);

--
-- Indexes for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `invoice_products_invoice_id_foreign` (`invoice_id`),
  ADD KEY `invoice_products_product_id_foreign` (`product_id`),
  ADD KEY `invoice_products_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_category_id_foreign` (`category_id`),
  ADD KEY `products_brand_id_foreign` (`brand_id`);

--
-- Indexes for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_carts_product_id_foreign` (`product_id`),
  ADD KEY `product_carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_details_product_id_unique` (`product_id`);

--
-- Indexes for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_reviews_customer_id_foreign` (`customer_id`),
  ADD KEY `product_reviews_product_id_foreign` (`product_id`);

--
-- Indexes for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `product_sliders_product_id_unique` (`product_id`);

--
-- Indexes for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_wishes_product_id_foreign` (`product_id`),
  ADD KEY `product_wishes_user_id_foreign` (`user_id`);

--
-- Indexes for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
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
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `invoices`
--
ALTER TABLE `invoices`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `invoice_products`
--
ALTER TABLE `invoice_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `policies`
--
ALTER TABLE `policies`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `product_carts`
--
ALTER TABLE `product_carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_reviews`
--
ALTER TABLE `product_reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_sliders`
--
ALTER TABLE `product_sliders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `product_wishes`
--
ALTER TABLE `product_wishes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `sslcommerz_accounts`
--
ALTER TABLE `sslcommerz_accounts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `customer_profiles`
--
ALTER TABLE `customer_profiles`
  ADD CONSTRAINT `customer_profiles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoices`
--
ALTER TABLE `invoices`
  ADD CONSTRAINT `invoices_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `invoice_products`
--
ALTER TABLE `invoice_products`
  ADD CONSTRAINT `invoice_products_invoice_id_foreign` FOREIGN KEY (`invoice_id`) REFERENCES `invoices` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `invoice_products_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_brand_id_foreign` FOREIGN KEY (`brand_id`) REFERENCES `brands` (`id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_carts`
--
ALTER TABLE `product_carts`
  ADD CONSTRAINT `product_carts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;

--
-- Constraints for table `product_details`
--
ALTER TABLE `product_details`
  ADD CONSTRAINT `product_details_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_reviews`
--
ALTER TABLE `product_reviews`
  ADD CONSTRAINT `product_reviews_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `customer_profiles` (`id`),
  ADD CONSTRAINT `product_reviews_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_sliders`
--
ALTER TABLE `product_sliders`
  ADD CONSTRAINT `product_sliders_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`);

--
-- Constraints for table `product_wishes`
--
ALTER TABLE `product_wishes`
  ADD CONSTRAINT `product_wishes_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `product_wishes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
