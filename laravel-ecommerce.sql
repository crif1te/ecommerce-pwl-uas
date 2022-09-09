-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2022 at 02:27 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel-ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Laptops', 'laptops', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(2, 'Desktops', 'desktops', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(3, 'Phones', 'phones', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(6, 'Cameras', 'cameras', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(7, 'Peripherals', 'peripherals', '2022-07-09 14:27:02', '2022-07-09 14:27:02');

-- --------------------------------------------------------

--
-- Table structure for table `country_visits`
--

CREATE TABLE `country_visits` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `country` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `visits` bigint(20) UNSIGNED NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `country_visits`
--

INSERT INTO `country_visits` (`id`, `country`, `visits`, `created_at`, `updated_at`) VALUES
(1, 'United States', 17, '2022-07-09 08:55:01', '2022-07-10 07:19:04');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` int(11) DEFAULT NULL,
  `percent_off` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `code`, `type`, `value`, `percent_off`, `created_at`, `updated_at`) VALUES
(7, 'ABC123', 'percent_off', 20, 20, '2022-07-10 00:36:07', '2022-07-10 00:36:07'),
(8, 'QWERTY789', 'percent_off', 30, 30, '2022-07-10 00:36:38', '2022-07-10 00:36:38');

-- --------------------------------------------------------

--
-- Table structure for table `data_rows`
--

CREATE TABLE `data_rows` (
  `id` int(10) UNSIGNED NOT NULL,
  `data_type_id` int(10) UNSIGNED NOT NULL,
  `field` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT 0,
  `browse` tinyint(1) NOT NULL DEFAULT 1,
  `read` tinyint(1) NOT NULL DEFAULT 1,
  `edit` tinyint(1) NOT NULL DEFAULT 1,
  `add` tinyint(1) NOT NULL DEFAULT 1,
  `delete` tinyint(1) NOT NULL DEFAULT 1,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_rows`
--

INSERT INTO `data_rows` (`id`, `data_type_id`, `field`, `type`, `display_name`, `required`, `browse`, `read`, `edit`, `add`, `delete`, `details`, `order`) VALUES
(1, 1, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(2, 1, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(3, 1, 'email', 'text', 'Email', 1, 1, 1, 1, 1, 1, NULL, 3),
(4, 1, 'password', 'password', 'Password', 1, 0, 0, 1, 1, 0, NULL, 4),
(5, 1, 'remember_token', 'text', 'Remember Token', 0, 0, 0, 0, 0, 0, NULL, 5),
(6, 1, 'created_at', 'timestamp', 'Created At', 0, 1, 1, 0, 0, 0, NULL, 6),
(7, 1, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(8, 1, 'avatar', 'image', 'Avatar', 0, 1, 1, 1, 1, 1, NULL, 8),
(9, 1, 'user_belongsto_role_relationship', 'relationship', 'Role', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsTo\",\"column\":\"role_id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"roles\",\"pivot\":0}', 10),
(10, 1, 'user_belongstomany_role_relationship', 'relationship', 'Roles', 0, 1, 1, 1, 1, 0, '{\"model\":\"TCG\\\\Voyager\\\\Models\\\\Role\",\"table\":\"roles\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"display_name\",\"pivot_table\":\"user_roles\",\"pivot\":\"1\",\"taggable\":\"0\"}', 11),
(11, 1, 'settings', 'hidden', 'Settings', 0, 0, 0, 0, 0, 0, NULL, 12),
(12, 2, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(13, 2, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(14, 2, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(15, 2, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(16, 3, 'id', 'number', 'ID', 1, 0, 0, 0, 0, 0, NULL, 1),
(17, 3, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(18, 3, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 3),
(19, 3, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 4),
(20, 3, 'display_name', 'text', 'Display Name', 1, 1, 1, 1, 1, 1, NULL, 5),
(21, 1, 'role_id', 'text', 'Role', 1, 1, 1, 1, 1, 1, NULL, 9),
(22, 1, 'provider_id', 'text', 'Provider', 0, 1, 1, 0, 0, 0, NULL, 13),
(23, 4, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(24, 4, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(25, 4, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required|unique:products,slug\"}}', 3),
(26, 4, 'details', 'text', 'Details', 0, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 4),
(27, 4, 'price', 'number', 'Price', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 5),
(28, 4, 'image', 'image', 'Image', 1, 1, 1, 1, 1, 1, NULL, 6),
(29, 4, 'images', 'multiple_images', 'Images', 0, 1, 1, 1, 1, 1, NULL, 7),
(30, 4, 'featured', 'checkbox', 'Featured', 1, 1, 1, 1, 1, 1, '{\"on\":\"Yes\",\"off\":\"No\",\"checked\":\"true\"}', 8),
(31, 4, 'category_id', 'number', 'Category Id', 1, 1, 1, 1, 1, 1, '{\"validation\":{\"rule\":\"required\"}}', 9),
(32, 4, 'description', 'rich_text_box', 'Description', 1, 1, 1, 1, 1, 0, '{\"validation\":{\"rule\":\"required\"}}', 10),
(33, 4, 'quantity', 'number', 'Quantity', 1, 1, 1, 1, 1, 0, '{\"validation\":{\"rule\":\"required\"}}', 11),
(34, 4, 'product_belongsto_category_relationship', 'relationship', 'Category', 1, 1, 1, 1, 1, 0, '{\"model\":\"App\\\\Category\",\"table\":\"category\",\"type\":\"belongsTo\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category\",\"pivot\":0}', 12),
(35, 4, 'product_belongstomany_tag_relationship', 'relationship', 'Tags', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Tag\",\"table\":\"tags\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_tag\",\"pivot\":\"1\",\"taggable\":\"on\"}', 13),
(36, 4, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 14),
(37, 4, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, NULL, 15),
(38, 5, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(39, 5, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, NULL, 2),
(40, 5, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, NULL, 3),
(41, 5, 'category_hasmany_product_relationship', 'relationship', 'Products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"hasMany\",\"column\":\"category_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"category\",\"pivot\":\"0\",\"taggable\":\"0\"}', 4),
(42, 5, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 5),
(43, 5, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(44, 6, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(45, 6, 'code', 'text', 'Code', 1, 1, 1, 1, 1, 1, NULL, 2),
(46, 6, 'type', 'select_dropdown', 'Type', 1, 1, 1, 1, 1, 1, '{\"default\":\"fixed\",\"options\":{\"fixed\":\"Fixed value\",\"percent_off\":\"Percent Off\"}}', 3),
(47, 6, 'value', 'number', 'Value', 0, 1, 1, 1, 1, 1, NULL, 4),
(48, 6, 'percent_off', 'number', 'Percent Off', 0, 1, 1, 1, 1, 1, NULL, 5),
(49, 6, 'created_at', 'timestamp', 'Created At', 0, 0, 0, 0, 0, 0, NULL, 6),
(50, 6, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 7),
(51, 7, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(52, 7, 'name', 'text', 'Name', 1, 1, 1, 1, 1, 1, '{\"rules\":\"unique:tags,name\"}', 2),
(53, 7, 'slug', 'text', 'Slug', 1, 1, 1, 1, 1, 1, '{\"rules\":\"unique:tags,slug\"}', 3),
(54, 7, 'tag_belongstomany_product_relationship', 'relationship', 'Products', 0, 1, 1, 1, 1, 1, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"product_tag\",\"pivot\":\"1\",\"taggable\":\"0\"}', 4),
(55, 7, 'create_at', 'timestamp', 'voyager::seeders.data_rows.create_at', 0, 0, 0, 0, 0, 0, NULL, 5),
(56, 7, 'updated_at', 'timestamp', 'Updated At', 0, 0, 0, 0, 0, 0, NULL, 6),
(57, 9, 'id', 'hidden', 'Id', 1, 0, 0, 0, 0, 0, NULL, 1),
(58, 9, 'user_id', 'number', 'User Id', 0, 0, 1, 0, 0, 0, NULL, 2),
(59, 9, 'billing_email', 'text', 'Email', 1, 1, 1, 1, 1, 0, NULL, 3),
(60, 9, 'billing_name', 'text', 'Name', 1, 1, 1, 1, 1, 0, NULL, 4),
(61, 9, 'billing_city', 'text', 'City', 1, 1, 1, 1, 1, 0, NULL, 5),
(62, 9, 'billing_province', 'text', 'Province', 1, 0, 1, 1, 0, 0, NULL, 6),
(63, 9, 'billing_postalcode', 'text', 'Postal Code', 1, 0, 1, 1, 0, 0, NULL, 7),
(64, 9, 'billing_phone', 'number', 'Phone', 1, 0, 1, 0, 0, 0, NULL, 8),
(65, 9, 'billing_name_on_card', 'text', 'Name on card', 1, 0, 1, 0, 0, 0, NULL, 9),
(66, 9, 'billing_discount', 'number', 'Discount', 1, 0, 1, 0, 0, 0, NULL, 10),
(67, 9, 'billing_discount_code', 'text', 'Discount code', 0, 0, 1, 0, 0, 0, NULL, 11),
(68, 9, 'billing_subtotal', 'number', 'Subtotal', 1, 0, 1, 0, 0, 0, NULL, 15),
(69, 9, 'billing_tax', 'number', 'Tax', 1, 0, 1, 0, 0, 0, NULL, 13),
(70, 9, 'billing_total', 'number', 'Total', 1, 1, 1, 0, 0, 0, NULL, 14),
(71, 9, 'payment_gateway', 'text', 'Gateway', 1, 0, 1, 0, 0, 0, '{\"null\":\"\"}', 15),
(72, 9, 'shipped', 'checkbox', 'Shipped', 1, 1, 1, 0, 0, 0, '{\"checked\":\"false\",\"on\":\"Yes\",\"off\":\"No\"}', 16),
(73, 9, 'error', 'text', 'Error', 1, 1, 1, 0, 0, 0, '{\"null\":\"\"}', 17),
(74, 9, 'order_belongstomany_product_relationship', 'relationship', 'Order Products', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\Product\",\"table\":\"products\",\"type\":\"belongsToMany\",\"column\":\"id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"order_product\",\"pivot\":1}', 18),
(75, 9, 'order_belongsto_user_relationship', 'relationship', 'User', 0, 1, 1, 0, 0, 0, '{\"model\":\"App\\\\User\",\"table\":\"users\",\"type\":\"belongsTo\",\"column\":\"user_id\",\"key\":\"id\",\"label\":\"name\",\"pivot_table\":\"orders\",\"pivot\":0}', 19),
(76, 9, 'created_at', 'timestamp', 'Created At', 0, 0, 1, 0, 0, 0, NULL, 13),
(77, 9, 'updated_at', 'timestamp', 'Updated At', 0, 0, 1, 0, 0, 0, NULL, 14);

-- --------------------------------------------------------

--
-- Table structure for table `data_types`
--

CREATE TABLE `data_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_singular` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name_plural` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `model_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `policy_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `controller` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `generate_permissions` tinyint(1) NOT NULL DEFAULT 0,
  `server_side` tinyint(4) NOT NULL DEFAULT 0,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `data_types`
--

INSERT INTO `data_types` (`id`, `name`, `slug`, `display_name_singular`, `display_name_plural`, `icon`, `model_name`, `policy_name`, `controller`, `description`, `generate_permissions`, `server_side`, `details`, `created_at`, `updated_at`) VALUES
(1, 'users', 'users', 'User', 'Users', 'voyager-person', 'TCG\\Voyager\\Models\\User', 'TCG\\Voyager\\Policies\\UserPolicy', 'TCG\\Voyager\\Http\\Controllers\\VoyagerUserController', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(2, 'menus', 'menus', 'Menu', 'Menus', 'voyager-list', 'TCG\\Voyager\\Models\\Menu', NULL, '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(3, 'roles', 'roles', 'Role', 'Roles', 'voyager-lock', 'TCG\\Voyager\\Models\\Role', NULL, '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(4, 'products', 'products', 'Product', 'Products', 'voyager-bag', 'App\\Product', '', '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(5, 'category', 'category', 'Category', 'Categories', 'voyager-categories', 'App\\Category', NULL, '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(6, 'coupons', 'coupons', 'Coupon', 'Coupons', 'voyager-buy', 'App\\Coupon', NULL, '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(7, 'tags', 'tags', 'Tag', 'Tags', 'voyager-tag', 'App\\Tag', NULL, '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(8, 'product_tag', 'product_tag', 'Product Tag', 'Products Tags', '', 'App\\ProductTag', NULL, '', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(9, 'orders', 'orders', 'Order', 'Orders', 'voyager-documentation', 'App\\Order', '', 'App\\Http\\Controllers\\Voyager\\OrdersController', '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(10, 'visits', 'country_visits', 'Country Visit', 'Country Visits', 'voyager-documentation', 'App\\CountryVisit', '', NULL, '', 1, 0, NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33');

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
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'admin', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(2, 'main', '2022-07-09 08:54:33', '2022-07-09 08:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `target` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `icon_class` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `order` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `route` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parameters` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_items`
--

INSERT INTO `menu_items` (`id`, `menu_id`, `title`, `url`, `target`, `icon_class`, `color`, `parent_id`, `order`, `created_at`, `updated_at`, `route`, `parameters`) VALUES
(1, 1, 'Dashboard', '', '_self', 'voyager-boat', NULL, NULL, 1, '2022-07-09 08:54:33', '2022-07-09 08:54:33', 'voyager.dashboard', NULL),
(3, 1, 'Users', '', '_self', 'voyager-person', NULL, NULL, 5, '2022-07-09 08:54:33', '2022-07-09 14:27:54', 'voyager.users.index', NULL),
(4, 1, 'Roles', '', '_self', 'voyager-lock', NULL, NULL, 6, '2022-07-09 08:54:33', '2022-07-10 01:22:08', 'voyager.roles.index', NULL),
(5, 1, 'Tools', '', '_self', 'voyager-tools', NULL, NULL, 8, '2022-07-09 08:54:33', '2022-07-10 01:22:08', NULL, NULL),
(6, 1, 'Menu Builder', '', '_self', 'voyager-list', NULL, 5, 1, '2022-07-09 08:54:33', '2022-07-09 14:05:54', 'voyager.menus.index', NULL),
(7, 1, 'Database', '', '_self', 'voyager-data', NULL, 5, 2, '2022-07-09 08:54:33', '2022-07-09 14:05:54', 'voyager.database.index', NULL),
(8, 1, 'Compass', '', '_self', 'voyager-compass', NULL, 5, 3, '2022-07-09 08:54:33', '2022-07-09 14:05:54', 'voyager.compass.index', NULL),
(9, 1, 'BREAD', '', '_self', 'voyager-bread', NULL, 5, 4, '2022-07-09 08:54:33', '2022-07-09 14:05:54', 'voyager.bread.index', NULL),
(10, 1, 'Settings', '', '_self', 'voyager-settings', NULL, NULL, 7, '2022-07-09 08:54:33', '2022-07-10 01:22:08', 'voyager.settings.index', NULL),
(11, 2, 'Shop', '', '_self', NULL, NULL, NULL, 2, '2022-07-09 08:54:33', '2022-07-09 10:22:22', 'shop.index', NULL),
(12, 2, 'About', '#', '_self', NULL, NULL, NULL, 1, '2022-07-09 08:54:33', '2022-07-09 10:22:22', NULL, NULL),
(13, 2, 'Blog', '#', '_self', NULL, NULL, NULL, 3, '2022-07-09 08:54:33', '2022-07-09 08:54:33', NULL, NULL),
(14, 2, 'Cart', '', '_self', NULL, NULL, NULL, 4, '2022-07-09 08:54:33', '2022-07-09 08:54:33', 'cart.index', NULL),
(15, 1, 'Products', '', '_self', 'voyager-bag', NULL, NULL, 3, '2022-07-09 08:54:33', '2022-07-10 01:22:08', 'voyager.products.index', NULL),
(16, 1, 'Categories', '', '_self', 'voyager-categories', NULL, NULL, 2, '2022-07-09 08:54:33', '2022-07-10 01:22:08', 'voyager.category.index', NULL),
(19, 1, 'Orders', '', '_self', 'voyager-documentation', NULL, NULL, 4, '2022-07-09 08:54:33', '2022-07-09 14:27:54', 'voyager.orders.index', NULL);

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
(3, '2016_01_01_000000_add_voyager_user_fields', 1),
(4, '2016_01_01_000000_create_data_types_table', 1),
(5, '2016_05_19_173453_create_menu_table', 1),
(6, '2016_10_21_190000_create_roles_table', 1),
(7, '2016_10_21_190000_create_settings_table', 1),
(8, '2016_11_30_135954_create_permission_table', 1),
(9, '2016_11_30_141208_create_permission_role_table', 1),
(10, '2016_12_26_201236_data_types__add__server_side', 1),
(11, '2017_01_13_000000_add_route_to_menu_items_table', 1),
(12, '2017_01_14_005015_create_translations_table', 1),
(13, '2017_01_15_000000_make_table_name_nullable_in_permissions_table', 1),
(14, '2017_03_06_000000_add_controller_to_data_types_table', 1),
(15, '2017_04_21_000000_add_order_to_data_rows_table', 1),
(16, '2017_07_05_210000_add_policyname_to_data_types_table', 1),
(17, '2017_08_05_000000_add_group_to_settings_table', 1),
(18, '2017_11_26_013050_add_user_role_relationship', 1),
(19, '2017_11_26_015000_create_user_roles_table', 1),
(20, '2018_03_11_000000_add_user_settings', 1),
(21, '2018_03_14_000000_add_details_to_data_types_table', 1),
(22, '2018_03_16_000000_make_settings_value_nullable', 1),
(23, '2019_08_19_000000_create_failed_jobs_table', 1),
(24, '2019_10_16_185424_create_products_table', 1),
(25, '2019_10_17_195112_create_categories_table', 1),
(26, '2019_10_17_195227_add_category_id_to_products_table', 1),
(27, '2019_10_18_002421_create_coupons_table', 1),
(28, '2019_10_19_145706_add_images_column_to_products', 1),
(29, '2019_10_20_114921_create_tags_table', 1),
(30, '2019_10_20_115306_create_products_tags_table', 1),
(31, '2019_10_22_185425_create_orders_table', 1),
(32, '2019_10_22_190613_create_order_product_table', 1),
(33, '2019_11_09_002942_add_quantity_to_products_table', 1),
(34, '2020_06_27_012504_create_visits_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `billing_email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_address` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_city` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_province` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_postalcode` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_phone` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_name_on_card` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `billing_discount` int(11) NOT NULL DEFAULT 0,
  `billing_discount_code` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `billing_subtotal` int(11) NOT NULL,
  `billing_tax` int(11) NOT NULL,
  `billing_total` int(11) NOT NULL,
  `payment_gateway` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'stripe',
  `shipped` tinyint(1) NOT NULL DEFAULT 0,
  `error` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `billing_email`, `billing_name`, `billing_address`, `billing_city`, `billing_province`, `billing_postalcode`, `billing_phone`, `billing_name_on_card`, `billing_discount`, `billing_discount_code`, `billing_subtotal`, `billing_tax`, `billing_total`, `payment_gateway`, `shipped`, `error`, `created_at`, `updated_at`) VALUES
(29, 1, 'admin@admin.com', 'Haidar Hilmy Andana', 'KETILENG INDAH RAYA BLOK F.79, SENDANGMULYO, TEMBALANG', 'Kota Semarang', 'Jawa Tengah', '50272', '+6289668447508', 'Haidar Hilmy', 0, NULL, 150, 32, 182, 'stripe', 0, NULL, '2022-07-09 11:42:43', '2022-07-09 11:42:43'),
(30, 1, 'admin@admin.com', 'Haidar Hilmy Andana', 'KETILENG INDAH RAYA BLOK F.79, SENDANGMULYO, TEMBALANG', 'Kota Semarang', 'Jawa Tengah', '50272', '+6289668447508', 'Haidar Hilmy', 0, NULL, 750, 158, 908, 'stripe', 0, NULL, '2022-07-09 14:29:36', '2022-07-09 14:29:36'),
(31, 1, 'admin@admin.com', 'Haidar Hilmy Andana', 'KETILENG INDAH RAYA BLOK F.79, SENDANGMULYO, TEMBALANG', 'Kota Semarang', 'Jawa Tengah', '50272', '+6289668447508', 'Haidar Hilmy', 0, NULL, 1500, 315, 1815, 'stripe', 0, NULL, '2022-07-09 23:21:05', '2022-07-09 23:21:05'),
(32, 1, 'admin@admin.com', 'Haidar Hilmy Andana', 'KETILENG INDAH RAYA BLOK F.79, SENDANGMULYO, TEMBALANG', 'Kota Semarang', 'Jawa Tengah', '50272', '+6289668447508', 'Haidar Hilmy', 0, NULL, 3850, 77, 3927, 'stripe', 0, NULL, '2022-07-10 00:40:59', '2022-07-10 00:40:59'),
(34, 3, 'game.anonym19@gmail.com', 'Haidar Hilmy Andana', 'KETILENG INDAH RAYA BLOK F.79, SENDANGMULYO, TEMBALANG', 'Kota Semarang', 'Jawa Tengah', '50272', '+6289668447508', 'Haidar Hilmy', 0, NULL, 350, 7, 357, 'stripe', 0, NULL, '2022-07-10 07:13:38', '2022-07-10 07:13:38');

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED DEFAULT NULL,
  `order_id` bigint(20) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`, `quantity`, `created_at`, `updated_at`) VALUES
(1, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(2, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(3, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(4, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(5, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(6, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(7, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(8, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(9, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(10, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(11, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(12, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(13, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(14, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(15, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(16, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(17, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(18, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(19, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(20, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(21, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(22, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(23, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(24, NULL, NULL, 2, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(25, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(26, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(27, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(28, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(29, NULL, NULL, 3, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(30, NULL, NULL, 1, '2022-07-09 08:54:34', '2022-07-09 08:54:34'),
(31, NULL, NULL, 1, '2022-07-09 08:56:59', '2022-07-09 08:56:59'),
(32, NULL, NULL, 1, '2022-07-09 08:57:21', '2022-07-09 08:57:21'),
(33, NULL, NULL, 1, '2022-07-09 09:03:18', '2022-07-09 09:03:18'),
(34, NULL, NULL, 1, '2022-07-09 09:13:32', '2022-07-09 09:13:32'),
(35, NULL, NULL, 1, '2022-07-09 09:15:20', '2022-07-09 09:15:20'),
(36, NULL, NULL, 1, '2022-07-09 09:18:32', '2022-07-09 09:18:32'),
(37, NULL, NULL, 1, '2022-07-09 09:22:13', '2022-07-09 09:22:13'),
(38, NULL, NULL, 1, '2022-07-09 09:24:30', '2022-07-09 09:24:30'),
(39, NULL, NULL, 1, '2022-07-09 09:27:07', '2022-07-09 09:27:07'),
(40, NULL, NULL, 1, '2022-07-09 09:27:12', '2022-07-09 09:27:12'),
(41, NULL, NULL, 1, '2022-07-09 09:34:54', '2022-07-09 09:34:54'),
(42, NULL, NULL, 1, '2022-07-09 09:34:56', '2022-07-09 09:34:56'),
(43, NULL, NULL, 1, '2022-07-09 09:39:09', '2022-07-09 09:39:09'),
(44, NULL, NULL, 1, '2022-07-09 09:45:31', '2022-07-09 09:45:31'),
(45, NULL, NULL, 1, '2022-07-09 09:45:43', '2022-07-09 09:45:43'),
(46, NULL, NULL, 1, '2022-07-09 09:48:32', '2022-07-09 09:48:32'),
(47, NULL, NULL, 1, '2022-07-09 09:50:13', '2022-07-09 09:50:13'),
(48, 121, NULL, 1, '2022-07-09 10:20:20', '2022-07-09 10:20:20'),
(49, 121, 29, 1, '2022-07-09 11:42:43', '2022-07-09 11:42:43'),
(50, 123, 30, 1, '2022-07-09 14:29:36', '2022-07-09 14:29:36'),
(51, 121, 30, 1, '2022-07-09 14:29:36', '2022-07-09 14:29:36'),
(52, 126, 31, 1, '2022-07-09 23:21:05', '2022-07-09 23:21:05'),
(53, 126, 32, 1, '2022-07-10 00:40:59', '2022-07-10 00:40:59'),
(54, 125, 32, 1, '2022-07-10 00:40:59', '2022-07-10 00:40:59'),
(55, 121, 32, 1, '2022-07-10 00:40:59', '2022-07-10 00:40:59'),
(56, 129, 32, 1, '2022-07-10 00:40:59', '2022-07-10 00:40:59'),
(57, 123, 32, 1, '2022-07-10 00:40:59', '2022-07-10 00:40:59'),
(58, 125, NULL, 1, '2022-07-10 00:45:49', '2022-07-10 00:45:49'),
(59, 130, 34, 1, '2022-07-10 07:13:38', '2022-07-10 07:13:38'),
(60, 121, 34, 1, '2022-07-10 07:13:38', '2022-07-10 07:13:38');

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
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `key`, `table_name`, `created_at`, `updated_at`) VALUES
(1, 'browse_admin', NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(2, 'browse_bread', NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(3, 'browse_database', NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(4, 'browse_media', NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(5, 'browse_compass', NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(6, 'browse_menus', 'menus', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(7, 'read_menus', 'menus', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(8, 'edit_menus', 'menus', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(9, 'add_menus', 'menus', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(10, 'delete_menus', 'menus', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(11, 'browse_roles', 'roles', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(12, 'read_roles', 'roles', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(13, 'edit_roles', 'roles', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(14, 'add_roles', 'roles', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(15, 'delete_roles', 'roles', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(16, 'browse_users', 'users', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(17, 'read_users', 'users', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(18, 'edit_users', 'users', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(19, 'add_users', 'users', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(20, 'delete_users', 'users', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(21, 'browse_settings', 'settings', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(22, 'read_settings', 'settings', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(23, 'edit_settings', 'settings', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(24, 'add_settings', 'settings', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(25, 'delete_settings', 'settings', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(26, 'browse_products', 'products', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(27, 'read_products', 'products', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(28, 'edit_products', 'products', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(29, 'add_products', 'products', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(30, 'delete_products', 'products', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(31, 'browse_category', 'category', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(32, 'read_category', 'category', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(33, 'edit_category', 'category', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(34, 'add_category', 'category', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(35, 'delete_category', 'category', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(36, 'browse_coupons', 'coupons', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(37, 'read_coupons', 'coupons', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(38, 'edit_coupons', 'coupons', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(39, 'add_coupons', 'coupons', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(40, 'delete_coupons', 'coupons', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(41, 'browse_tags', 'tags', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(42, 'read_tags', 'tags', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(43, 'edit_tags', 'tags', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(44, 'add_tags', 'tags', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(45, 'delete_tags', 'tags', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(46, 'browse_product_tag', 'product_tag', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(47, 'read_product_tag', 'product_tag', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(48, 'edit_product_tag', 'product_tag', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(49, 'add_product_tag', 'product_tag', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(50, 'delete_product_tag', 'product_tag', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(51, 'browse_orders', 'orders', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(52, 'read_orders', 'orders', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(53, 'edit_orders', 'orders', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(54, 'add_orders', 'orders', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(55, 'delete_orders', 'orders', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(56, 'browse_country_visits', 'country_visits', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(57, 'read_country_visits', 'country_visits', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(58, 'edit_country_visits', 'country_visits', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(59, 'add_country_visits', 'country_visits', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(60, 'delete_country_visits', 'country_visits', '2022-07-09 08:54:33', '2022-07-09 08:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE `permission_role` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permission_role`
--

INSERT INTO `permission_role` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(6, 1),
(7, 1),
(8, 1),
(9, 1),
(10, 1),
(11, 1),
(12, 1),
(13, 1),
(14, 1),
(15, 1),
(16, 1),
(17, 1),
(18, 1),
(19, 1),
(20, 1),
(21, 1),
(22, 1),
(23, 1),
(24, 1),
(25, 1),
(26, 1),
(27, 1),
(28, 1),
(29, 1),
(30, 1),
(31, 1),
(32, 1),
(33, 1),
(34, 1),
(35, 1),
(36, 1),
(37, 1),
(38, 1),
(39, 1),
(40, 1),
(41, 1),
(42, 1),
(43, 1),
(44, 1),
(45, 1),
(46, 1),
(47, 1),
(48, 1),
(49, 1),
(50, 1),
(51, 1),
(52, 1),
(53, 1),
(54, 1),
(55, 1),
(56, 1),
(57, 1),
(58, 1),
(59, 1),
(60, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `details` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `featured` tinyint(1) NOT NULL DEFAULT 0,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT 10,
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `details`, `price`, `image`, `images`, `featured`, `quantity`, `category_id`, `description`, `created_at`, `updated_at`) VALUES
(121, 'Keyboard Mecha', 'keyboard-mecha1', 'Gateron Yellow, Compact TKL', 150, 'products\\July2022\\mOmfnVsIcwEIwhWbnxDW.jpg', NULL, 1, 5, 7, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam ornare condimentum justo, non varius arcu interdum eget. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas auctor consectetur neque, at ultricies orci facilisis non. Suspendisse est metus, ornare id luctus a, ullamcorper nec dolor.</span></p>', '2022-07-09 10:18:32', '2022-07-10 07:13:38'),
(122, 'Poco F4', 'poco-f4', '128GB', 300, 'products\\July2022\\6v3VW3B8C9tk1eunpJvP.jpg', '[\"products\\\\July2022\\\\FRKs4JXEp4x8ggpRuRFW.jpg\"]', 1, 20, 3, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices luctus tellus ut hendrerit. Curabitur bibendum rhoncus tristique. Sed sed lacus tortor. In accumsan condimentum sem vel ullamcorper. Ut laoreet malesuada ipsum, et pharetra tortor convallis ut. Donec congue feugiat ornare. Maecenas eu felis ligula.&nbsp;</span></p>', '2022-07-09 13:31:45', '2022-07-09 13:31:45'),
(123, 'Poco F4 GT', 'poco-f4-gt', '256GB', 600, 'products\\July2022\\n8SWAybWi3eaY9JlemiF.jpg', '[\"products\\\\July2022\\\\CpwFfEQUx6HvTklYcUVJ.jpg\"]', 1, 18, 3, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices luctus tellus ut hendrerit. Curabitur bibendum rhoncus tristique. Sed sed lacus tortor. In accumsan condimentum sem vel ullamcorper. Ut laoreet malesuada ipsum, et pharetra tortor convallis ut. Donec congue feugiat ornare. Maecenas eu felis ligula.&nbsp;</span></p>', '2022-07-09 13:53:06', '2022-07-10 00:40:59'),
(125, 'Sony A5100', 'sony-a5100', '24.3 Megapixels', 400, 'products\\July2022\\QRyC46tDUeG52ClvSL8B.jpg', NULL, 1, 13, 6, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur ultrices luctus tellus ut hendrerit. Curabitur bibendum rhoncus tristique. Sed sed lacus tortor. In accumsan condimentum sem vel ullamcorper. Ut laoreet malesuada ipsum, et pharetra tortor convallis ut. Donec congue feugiat ornare. Maecenas eu felis ligula.&nbsp;</span></p>', '2022-07-09 14:24:10', '2022-07-10 00:45:49'),
(126, 'ROG Zephyrus', 'laptop-zephyrus', 'Intel Core i7, RTX 3050 Ti', 1500, 'products\\July2022\\buVdtQ0wFbt7WjYabr4i.jpg', '[\"products\\\\July2022\\\\rxi2dEmlcumeDg6HAPHc.jpg\"]', 1, 8, 1, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet vulputate mattis. Fusce mi augue, dictum sed suscipit malesuada, vulputate eget neque. Sed at mollis magna. Etiam vestibulum urna vitae ex aliquet, sit amet efficitur augue vulputate. Pellentesque sagittis, augue id tempus ultrices, sem lorem feugiat urna, et pretium nisl orci et mauris. Morbi purus urna, aliquet at suscipit a, congue et neque. Ut sapien risus, tincidunt in gravida eu, hendrerit non lacus.</span></p>', '2022-07-09 23:12:43', '2022-07-10 00:40:59'),
(127, 'Desktop PC', 'desktop-pc-1', 'Intel Core i5, 8 GB RAM. 512 GB SSD', 1000, 'products\\July2022\\FEtjStc7YAh9N1gAnBHI.jpg', NULL, 1, 5, 2, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet vulputate mattis. Fusce mi augue, dictum sed suscipit malesuada, vulputate eget neque. Sed at mollis magna. Etiam vestibulum urna vitae ex aliquet, sit amet efficitur augue vulputate. Pellentesque sagittis, augue id tempus ultrices, sem lorem feugiat urna, et pretium nisl orci et mauris. Morbi purus urna, aliquet at suscipit a, congue et neque. Ut sapien risus, tincidunt in gravida eu, hendrerit non lacus.</span></p>', '2022-07-09 23:14:37', '2022-07-09 23:14:37'),
(129, 'Dell Desktop PC', 'desktop-pc-2', 'AMD Ryzen 5, 12 GB RAM. 512 GB SSD', 1200, 'products\\July2022\\KbigRtWbYQsznJj9Y02c.jpg', NULL, 1, 4, 2, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet vulputate mattis. Fusce mi augue, dictum sed suscipit malesuada, vulputate eget neque. Sed at mollis magna. Etiam vestibulum urna vitae ex aliquet, sit amet efficitur augue vulputate. Pellentesque sagittis, augue id tempus ultrices, sem lorem feugiat urna, et pretium nisl orci et mauris. Morbi purus urna, aliquet at suscipit a, congue et neque. Ut sapien risus, tincidunt in gravida eu, hendrerit non lacus.</span></p>', '2022-07-09 23:16:38', '2022-07-10 00:40:59'),
(130, 'Asus Vivobook', 'asus-laptop', 'SSD 512GB', 200, 'products\\July2022\\zePO2nIKR2TSRYGyaZAO.jpg', NULL, 1, 9, 1, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet vulputate mattis. Fusce mi augue, dictum sed suscipit malesuada, vulputate eget neque. Sed at mollis magna. Etiam vestibulum urna vitae ex aliquet, sit amet efficitur augue vulputate. Pellentesque sagittis, augue id tempus ultrices, sem lorem feugiat urna, et pretium nisl orci et mauris. Morbi purus urna, aliquet at suscipit a, congue et neque. Ut sapien risus, tincidunt in gravida eu, hendrerit non lacus.</span></p>', '2022-07-10 06:55:05', '2022-07-10 07:13:38'),
(131, 'Basic Desktop PC', 'desktop-pc-3', 'HDD 1TB', 200, 'products\\July2022\\gMV3Wj8tpBQZPKWCZ8Le.jpg', NULL, 1, 5, 2, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet vulputate mattis. Fusce mi augue, dictum sed suscipit malesuada, vulputate eget neque. Sed at mollis magna. Etiam vestibulum urna vitae ex aliquet, sit amet efficitur augue vulputate. Pellentesque sagittis, augue id tempus ultrices, sem lorem feugiat urna, et pretium nisl orci et mauris. Morbi purus urna, aliquet at suscipit a, congue et neque. Ut sapien risus, tincidunt in gravida eu, hendrerit non lacus.</span></p>', '2022-07-10 07:02:18', '2022-07-10 07:02:18'),
(132, 'Kamera Nikon', 'kamera-nikon', '24.3 Megapixels', 300, 'products\\July2022\\YZfFJYHngZGGMuxQHvms.jpg', NULL, 1, 10, 6, '<p><span style=\"color: #000000; font-family: \'Open Sans\', Arial, sans-serif; text-align: justify;\">Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi laoreet vulputate mattis. Fusce mi augue, dictum sed suscipit malesuada, vulputate eget neque. Sed at mollis magna. Etiam vestibulum urna vitae ex aliquet, sit amet efficitur augue vulputate. Pellentesque sagittis, augue id tempus ultrices, sem lorem feugiat urna, et pretium nisl orci et mauris. Morbi purus urna, aliquet at suscipit a, congue et neque. Ut sapien risus, tincidunt in gravida eu, hendrerit non lacus.</span></p>', '2022-07-10 07:16:30', '2022-07-10 07:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `product_tag`
--

CREATE TABLE `product_tag` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `product_id` bigint(20) UNSIGNED NOT NULL,
  `tag_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `display_name`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'Administrator', '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(2, 'user', 'Normal User', '2022-07-09 08:54:33', '2022-07-09 08:54:33');

-- --------------------------------------------------------

--
-- Table structure for table `settings`
--

CREATE TABLE `settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `details` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) NOT NULL DEFAULT 1,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `settings`
--

INSERT INTO `settings` (`id`, `key`, `display_name`, `value`, `details`, `type`, `order`, `group`) VALUES
(1, 'site.title', 'Site Title', 'ABC Store', '', 'text', 1, 'Site'),
(2, 'site.description', 'Site Description', NULL, '', 'text', 2, 'Site'),
(3, 'site.logo', 'Site Logo', '', '', 'image', 3, 'Site'),
(4, 'site.google_analytics_tracking_id', 'Google Analytics Tracking ID', NULL, '', 'text', 4, 'Site'),
(5, 'admin.bg_image', 'Admin Background Image', 'settings\\July2022\\WynaLvwW83Zwj4V9fWCj.jpg', '', 'image', 5, 'Admin'),
(6, 'admin.title', 'Admin Title', 'Halaman Admin', '', 'text', 1, 'Admin'),
(7, 'admin.description', 'Admin Description', 'Halaman Admin', '', 'text', 2, 'Admin'),
(8, 'admin.loader', 'Admin Loader', '', '', 'image', 3, 'Admin'),
(9, 'admin.icon_image', 'Admin Icon Image', '', '', 'image', 4, 'Admin'),
(10, 'admin.google_analytics_client_id', 'Google Analytics Client ID (used for admin dashboard)', NULL, '', 'text', 1, 'Admin'),
(11, 'site.stock_threshold', 'Stock Threshold', NULL, '', 'number', 6, 'Site');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE `tags` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` (`id`, `name`, `slug`, `created_at`, `updated_at`) VALUES
(1, 'Tag 0', 'tag-0', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(2, 'Tag 1', 'tag-1', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(3, 'Tag 2', 'tag-2', '2022-07-09 08:54:32', '2022-07-09 08:54:32'),
(4, 'Tag 3', 'tag-3', '2022-07-09 08:54:32', '2022-07-09 08:54:32');

-- --------------------------------------------------------

--
-- Table structure for table `translations`
--

CREATE TABLE `translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `table_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `column_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `foreign_key` int(10) UNSIGNED NOT NULL,
  `locale` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'users/default.png',
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `github_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `facebook_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `settings` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `role_id`, `name`, `email`, `avatar`, `email_verified_at`, `github_id`, `facebook_id`, `google_id`, `password`, `remember_token`, `settings`, `created_at`, `updated_at`) VALUES
(1, 1, 'Admin', 'admin@admin.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$j9LT6pLTR08BVaZN5Nd66ePWGtBlLgGGX1xrR2zxOl.31b4UH3c5K', 'cI07maDRRj05bk4VdX2ask5IMCC9pmtdOoeFf8qJ1WEB8Wat88PJDsJUbDWF', NULL, '2022-07-09 08:54:33', '2022-07-09 08:54:33'),
(2, 2, 'Haidar Hilmy Andana', 'hilmy190302@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$Z5BZHXASLYhy8ZU4NVntte/.q8WQbg15UoDCkZgClTBgks14KoHje', NULL, NULL, '2022-07-09 08:55:41', '2022-07-09 08:55:41'),
(3, 2, 'Haidar Hilmy', 'game.anonym19@gmail.com', 'users/default.png', NULL, NULL, NULL, NULL, '$2y$10$WuDSx.T9KURaX1g8dAMKoO2DkurpEYBrQQB912pIdOHYTIuocMLEm', NULL, NULL, '2022-07-10 07:11:32', '2022-07-10 07:11:32');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_name_unique` (`name`),
  ADD UNIQUE KEY `category_slug_unique` (`slug`);

--
-- Indexes for table `country_visits`
--
ALTER TABLE `country_visits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `coupons_code_unique` (`code`);

--
-- Indexes for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD PRIMARY KEY (`id`),
  ADD KEY `data_rows_data_type_id_foreign` (`data_type_id`);

--
-- Indexes for table `data_types`
--
ALTER TABLE `data_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `data_types_name_unique` (`name`),
  ADD UNIQUE KEY `data_types_slug_unique` (`slug`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_name_unique` (`name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

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
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_product_product_id_foreign` (`product_id`),
  ADD KEY `order_product_order_id_foreign` (`order_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permissions_key_index` (`key`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `permission_role_permission_id_index` (`permission_id`),
  ADD KEY `permission_role_role_id_index` (`role_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `products_name_unique` (`name`),
  ADD UNIQUE KEY `products_slug_unique` (`slug`),
  ADD KEY `products_category_id_foreign` (`category_id`);

--
-- Indexes for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_tag_product_id_foreign` (`product_id`),
  ADD KEY `product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `settings`
--
ALTER TABLE `settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `settings_key_unique` (`key`);

--
-- Indexes for table `tags`
--
ALTER TABLE `tags`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tags_name_unique` (`name`),
  ADD UNIQUE KEY `tags_slug_unique` (`slug`);

--
-- Indexes for table `translations`
--
ALTER TABLE `translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_table_name_column_name_foreign_key_locale_unique` (`table_name`,`column_name`,`foreign_key`,`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`),
  ADD KEY `users_role_id_foreign` (`role_id`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`user_id`,`role_id`),
  ADD KEY `user_roles_user_id_index` (`user_id`),
  ADD KEY `user_roles_role_id_index` (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `country_visits`
--
ALTER TABLE `country_visits`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `data_rows`
--
ALTER TABLE `data_rows`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `data_types`
--
ALTER TABLE `data_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;

--
-- AUTO_INCREMENT for table `product_tag`
--
ALTER TABLE `product_tag`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=121;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `settings`
--
ALTER TABLE `settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tags`
--
ALTER TABLE `tags`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `translations`
--
ALTER TABLE `translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `data_rows`
--
ALTER TABLE `data_rows`
  ADD CONSTRAINT `data_rows_data_type_id_foreign` FOREIGN KEY (`data_type_id`) REFERENCES `data_types` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `order_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `category` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_tag`
--
ALTER TABLE `product_tag`
  ADD CONSTRAINT `product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD CONSTRAINT `user_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `user_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
