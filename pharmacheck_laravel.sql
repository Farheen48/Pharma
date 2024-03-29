-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 01, 2023 at 08:18 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pharmacheck_laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `ambulances`
--

CREATE TABLE IF NOT EXISTS `ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_plate` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `driver_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'Open',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ambulances`
--

INSERT INTO `ambulances` (`id`, `serial`, `image`, `number_plate`, `type`, `zone`, `driver_serial`, `price`, `status`, `created_at`, `updated_at`) VALUES
(1, 'amb-000001', '/public/assets/img/ambulance/1762000198197608.jpg', 'Dhaka metro Gha - 025552', 'General', 'Uttara', 'pc-0000004', 2500, 'Closed', '2023-04-01 12:38:55', '2023-04-11 23:25:26'),
(2, 'amb-000002', '/public/assets/img/ambulance/1762055922364489.jpg', 'Dhaka metro Kha- 025552', 'ICU', 'Mohakhali', 'pc-0000004', 3000, 'Closed', '2023-04-02 03:24:37', '2023-04-11 02:57:24');

-- --------------------------------------------------------

--
-- Table structure for table `blood_banks`
--

CREATE TABLE IF NOT EXISTS `blood_banks` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `group` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doners` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bag` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `blood_banks`
--

INSERT INTO `blood_banks` (`id`, `group`, `doners`, `bag`, `created_at`, `updated_at`) VALUES
(4, 'AB+', '[{\"donor_name\":\"Asif Zaman\",\"donor_contact\":\"01834754489\"},{\"donor_name\":\"Jawad Rohman\",\"donor_contact\":\"01722248982\"}]', 2, '2023-04-18 14:40:45', '2023-04-18 14:40:45'),
(5, 'B+', '[{\"donor_name\":\"Rakib Mahmud\",\"donor_contact\":\"01935283528\"}]', 1, '2023-04-18 14:42:12', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `booked_ambulances`
--

CREATE TABLE IF NOT EXISTS `booked_ambulances` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `destination` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double DEFAULT NULL,
  `total_payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `partial` double DEFAULT NULL,
  `partial_payment_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ambulance_no` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `booked_by` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Booked',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE IF NOT EXISTS `carts` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `cart_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `bought` double DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE IF NOT EXISTS `doctors` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `degree` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `speciality` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `hospital` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `day` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `serial`, `image`, `name`, `degree`, `speciality`, `hospital`, `time`, `day`, `created_at`, `updated_at`) VALUES
(1, 'dr-0000001', NULL, 'Horipodo', 'MBBS', 'Child', 'Modern Hospital', '10:00 to 14:00', '[{\"day\":\"SATURDAY\"},{\"day\":\"SUNDAY\"},{\"day\":\"MONDAY\"}]', '2023-04-30 06:42:27', NULL),
(2, 'dr-0000002', '/public/assets/img/doctors/1764702465617527.jpg', 'Abdul Goni', 'MBBS , FRCS', 'ENT', 'Medinova', '10:00 to 14:00', '[{\"day\":\"MONDAY\"},{\"day\":\"TUESDAY\"},{\"day\":\"THIRSDAY\"}]', '2023-05-01 08:30:17', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `doctor_appointments`
--

CREATE TABLE IF NOT EXISTS `doctor_appointments` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `patient_age` double DEFAULT NULL,
  `visiting_day` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `doctor` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unapproved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `doctor_appointments`
--

INSERT INTO `doctor_appointments` (`id`, `serial`, `patient_name`, `patient_age`, `visiting_day`, `doctor`, `client_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'da-0000001', 'Honufa', 18, 'MONDAY', 'dr-0000002', 'pc-0000002', 'Approved', '2023-05-01 10:05:57', '2023-05-01 10:35:58');

-- --------------------------------------------------------

--
-- Table structure for table `drug_categories`
--

CREATE TABLE IF NOT EXISTS `drug_categories` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_top` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'no',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `drug_categories`
--

INSERT INTO `drug_categories` (`id`, `category`, `is_top`, `created_at`, `updated_at`) VALUES
(7, 'Primary-care', 'no', '2023-04-02 10:15:09', NULL),
(8, 'Mother-and-baby', 'no', '2023-04-02 10:15:46', NULL),
(9, 'Supplements-and-vitamins', 'no', '2023-04-02 10:31:47', NULL),
(10, 'Personal-care', 'no', '2023-04-02 10:32:13', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `locations`
--

CREATE TABLE IF NOT EXISTS `locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `locations`
--

INSERT INTO `locations` (`id`, `zone`, `created_at`, `updated_at`) VALUES
(2, 'Uttara', '2023-03-26 01:42:13', NULL),
(3, 'Mohakhali', '2023-03-26 02:10:12', NULL),
(4, 'Mirpur', '2023-03-26 11:37:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `manufacturars`
--

CREATE TABLE IF NOT EXISTS `manufacturars` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `manufacturars`
--

INSERT INTO `manufacturars` (`id`, `name`, `created_at`, `updated_at`) VALUES
(1, 'Beximco Pharma', '2023-04-04 12:58:40', NULL),
(2, 'Dr. Reckeweg & Company', '2023-04-04 13:21:41', NULL),
(3, 'Incepta Hygiene And Hospicare LTD', '2023-04-04 13:32:16', NULL),
(4, 'Social Marketing Company (SMC)', '2023-04-05 11:08:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `medicine_lists`
--

CREATE TABLE IF NOT EXISTS `medicine_lists` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `main_image` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `medicine_type` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `drug_category` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_stock` double DEFAULT NULL,
  `price` double DEFAULT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `manufacturer` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `medicine_lists`
--

INSERT INTO `medicine_lists` (`id`, `serial`, `main_image`, `medicine_name`, `medicine_type`, `drug_category`, `total_stock`, `price`, `description`, `manufacturer`, `store_id`, `created_at`, `updated_at`) VALUES
(2, 'ml-0000001', '/public/assets/img/medicine/1762273322847606.png', 'Napa', 'Paracetamol', 'Primary-care', 425, 8, 'Napa (Paracetamol) is a fast acting and safe analgesic with marked antipyretic property. It is specially suitable for patients who, for any reason, can not tolerate aspirin or other analgesics', 'Beximco Pharma', 'str-000001', '2023-04-04 13:00:06', '2023-04-14 04:24:42'),
(3, 'ml-0000002', '/public/assets/img/medicine/1762274680685236.png', 'Pantonix 40', 'Pantoprazole', 'Primary-care', 400, 12, 'Pantonix 40 Tablet is an anti-ulcer medicine. It is used to treat various stomach and intestinal conditions that may occur due to excess production of acid. These conditions include peptic ulcers (open sores on the walls of  the stomach, small intestine, and food pipe), erosive esophagitis (swelling of the food pipe), and gastroesophageal reflux disease (a condition where the stomach acid flows back into the food pipe). Pantonix 40 Tablet reduces excess acid production in your stomach and relieves the symptoms such as heartburn, inability  to swallow food, stomach pain, and vomiting.', 'Dr. Reckeweg & Company', 'str-000001', '2023-04-04 13:21:41', '2023-04-14 05:10:07'),
(5, 'ml-0000003', '/public/assets/img/medicine/1762275197434567.png', 'Napa', 'Paracetamol', 'Primary-care', 600, 8, 'Napa (Paracetamol) is a fast acting and safe analgesic with marked antipyretic property. It is specially suitable for patients who, for any reason, can not tolerate aspirin or other analgesics', 'Beximco Pharma', 'str-000002', '2023-04-04 13:29:54', '2023-04-12 05:11:14'),
(7, 'ml-0000004', '/public/assets/img/medicine/1762275410470437.png', 'Neocare Belt System Baby Diaper XL', 'Diaper', 'Mother-and-baby', 50, 35, 'Product details of Neocare Belt System Baby Diaper XL (11-25 kg) - 30pcs\r\nProduct Type: Diaper\r\nBrand: NeoCare\r\nBelt System\r\nWeight Limit: 11-25 kg\r\nNeoCare is a premium quality baby diaper. This is a unique blend of natural and technological components. It ensures adequate protection with unparallel comfort to the users. XL 30\'s will meet your monthly need and has a handle so that you can carry it easily.\r\n\r\nSpecial features:\r\n\r\nVelcro Hook and Loop\r\nElastic Back Ear\r\nBreathable Textile Back Sheet\r\nSoft for baby\'s tender skin\r\n\r\nSpecifications of Neocare Belt System Baby Diaper XL (11-25 kg) - 30pcs\r\nBrand\r\nNeocare', 'Incepta Hygiene And Hospicare LTD', 'str-000002', '2023-04-04 13:33:17', '2023-04-07 12:58:25'),
(9, 'ml-0000005', '/public/assets/img/medicine/1762357035059258.webp', 'ORSaline-N', 'Oral rehydration salt', 'Primary-care', 500, 5.5, 'Oral rehydration salts are given orally to prevent or treat dehydration due to acute diarrhoea. Essential water and salts are lost in stools and vomiting, and dehydration results when blood volume is decreased because of fluid loss from the extracellular fluid compartment. Preservation of the facilitated glucose-sodium co-transport system in the small-bowel mucosa is the rationale of oral rehydration therapy. Glucose is actively absorbed in the normal intestine and carries sodium with it in about an equimolar ration. Therefore, there is a greater net absorption of an isotonic salt solution with glucose than one without it.\r\n\r\nPotassium replacement during acute diarrhoea prevents below-normal serum concentrations of potassium, especially in children, in whom stool potassium losses are higher than in adults. Bicarbonates are effective in correcting the metabolic acidosis caused by diarrhoea and dehydration.', 'Social Marketing Company (SMC)', 'str-000001', '2023-04-05 11:10:40', '2023-04-14 05:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(7, '2023_03_25_073557_create_user_admin_employee_accesses_table', 2),
(8, '2023_03_26_072050_create_locations_table', 3),
(9, '2023_03_26_081734_create_ambulances_table', 4),
(10, '2023_03_26_133229_create_booked_ambulances_table', 5),
(11, '2023_04_02_104758_create_drug_categories_table', 6),
(12, '2023_04_02_170335_create_vendor_stores_table', 7),
(13, '2023_04_04_152859_create_manufacturars_table', 8),
(14, '2023_04_04_164316_create_medicine_lists_table', 9),
(15, '2023_04_09_185736_create_carts_table', 10),
(18, '2023_04_12_090040_create_orders_table', 11),
(19, '2023_04_12_110353_create_vendor_order_serials_table', 12),
(20, '2023_04_18_155224_create_rider_locations_table', 13),
(21, '2023_04_18_194157_create_blood_banks_table', 14),
(23, '2023_04_30_113521_create_doctors_table', 15),
(24, '2023_05_01_154953_create_doctor_appointments_table', 16);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `client_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `product_detail_group` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total_price` double DEFAULT NULL,
  `deilvery_charge` double DEFAULT NULL,
  `total_amount` double DEFAULT NULL,
  `payment_method` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Unpaid',
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `delivery_status` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rider_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `serial`, `client_serial`, `product_detail_group`, `shipping_address`, `total_price`, `deilvery_charge`, `total_amount`, `payment_method`, `payment_token`, `payment_status`, `location`, `delivery_status`, `rider_serial`, `created_at`, `updated_at`) VALUES
(7, 'odr-000002', 'pc-0000002', '[{\"medicine_name\":\"Pantonix 40\",\"medicine_type\":\"Pantoprazole\",\"price\":12,\"bought\":83,\"description\":\"Pantonix 40 Tablet is an anti-ulcer medicine. It is used to treat various stomach and intestinal conditions that may occur due to excess production of acid. These conditions include peptic ulcers (open sores on the walls of  the stomach, small intestine, and food pipe), erosive esophagitis (swelling of the food pipe), and gastroesophageal reflux disease (a condition where the stomach acid flows back into the food pipe). Pantonix 40 Tablet reduces excess acid production in your stomach and relieves the symptoms such as heartburn, inability  to swallow food, stomach pain, and vomiting.\",\"manufacturer\":\"Dr. Reckeweg & Company\",\"vendor_name\":\"A ROB PHARMA\",\"vendor_zone\":\"Uttara\"},{\"medicine_name\":\"ORSaline-N\",\"medicine_type\":\"Oral rehydration salt\",\"price\":5.5,\"bought\":11,\"description\":\"Oral rehydration salts are given orally to prevent or treat dehydration due to acute diarrhoea. Essential water and salts are lost in stools and vomiting, and dehydration results when blood volume is decreased because of fluid loss from the extracellular fluid compartment. Preservation of the facilitated glucose-sodium co-transport system in the small-bowel mucosa is the rationale of oral rehydration therapy. Glucose is actively absorbed in the normal intestine and carries sodium with it in about an equimolar ration. Therefore, there is a greater net absorption of an isotonic salt solution with glucose than one without it.\\r\\n\\r\\nPotassium replacement during acute diarrhoea prevents below-normal serum concentrations of potassium, especially in children, in whom stool potassium losses are higher than in adults. Bicarbonates are effective in correcting the metabolic acidosis caused by diarrhoea and dehydration.\",\"manufacturer\":\"Social Marketing Company (SMC)\",\"vendor_name\":\"A ROB PHARMA\",\"vendor_zone\":\"Uttara\"}]', 'Sector 12', 1056.5, 100, 1156.5, 'COD', 'odr-0000021763149723486497', 'Paid', 'Uttara', 'Completed', 'pc-0000007', '2023-04-14 05:10:07', '2023-04-18 12:59:48');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE IF NOT EXISTS `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `rider_locations`
--

CREATE TABLE IF NOT EXISTS `rider_locations` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `user_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `rider_locations`
--

INSERT INTO `rider_locations` (`id`, `user_serial`, `location`, `created_at`, `updated_at`) VALUES
(1, 'pc-0000007', 'Uttara', NULL, '2023-04-18 10:38:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user_admin_employee_accesses`
--

CREATE TABLE IF NOT EXISTS `user_admin_employee_accesses` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `access_token` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `time_limit` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `otp` double NOT NULL DEFAULT 0,
  `path` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Active',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_admin_employee_accesses`
--

INSERT INTO `user_admin_employee_accesses` (`id`, `serial`, `name`, `phone`, `email`, `access_token`, `time_limit`, `otp`, `path`, `status`, `created_at`, `updated_at`) VALUES
(2, 'pc-0000001', 'Admin', '01622445795', 'admin@gmail.com', '81f9d058495d7d0c39d0cbb83707bfe0', '2024-04-30 16:13:00', 0, 'Admin', 'Active', '2023-03-25 11:04:40', '2023-05-01 10:13:18'),
(3, 'pc-0000002', 'User', '01525112612', 'user@gmail.com', '00ba50c7f41b0688a8c37b6b0e1c70f8', '2024-04-30 15:16:01', 0, 'User', 'Active', '2023-03-25 23:51:11', '2023-05-01 09:16:14'),
(4, 'pc-0000003', 'Hasem', '01545241802', 'ambulance.driver@gmail.com', 'f3ebe2ca554b8eef471dff6d207e5774', '2024-03-25 17:45:31', 0, 'Ambulance-driver', 'Active', '2023-03-26 00:34:35', '2023-03-26 11:45:49'),
(5, 'pc-0000004', 'Ahamed Ali', '01722445895', 'ahamed@gmail.com', 'e0f2d06fbbe8694c187d77c806d22e75', '2024-03-25 17:29:14', 0, 'Ambulance-driver', 'Active', '2023-03-26 11:29:14', '2023-03-28 13:34:46'),
(6, 'pc-0000005', 'Arob Ali', '01522445795', 'vendor@gmail.com', '7ef35f8bfd8bf7cca474a3b4c43892a7', '2024-04-02 18:35:07', 0, 'Vendor', 'Active', '2023-04-02 08:30:18', '2023-04-03 12:35:21'),
(7, 'pc-0000006', 'Ferdous Hassan', '01729824860', 'vendor2@gmail.com', 'f3972ca5adcef4992db07acc318aa8bb', '2024-04-02 18:21:57', 0, 'Vendor', 'Active', '2023-04-03 09:33:11', '2023-04-03 12:23:12'),
(12, 'pc-0000007', 'Rider', '01622558932', 'rider@gmail.com', '10c441ec3c0e5fb252ffa59865852f89', '2024-04-17 16:40:51', 0, 'Rider', 'Active', '2023-04-18 09:42:49', '2023-04-18 10:41:09');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_order_serials`
--

CREATE TABLE IF NOT EXISTS `vendor_order_serials` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `order_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_order_serials`
--

INSERT INTO `vendor_order_serials` (`id`, `order_serial`, `store_serial`, `created_at`, `updated_at`) VALUES
(6, 'odr-000001', 'str-000001', '2023-04-14 04:07:05', NULL),
(7, 'odr-000001', 'str-000001', '2023-04-14 04:07:05', NULL),
(8, 'odr-000001', 'str-000001', '2023-04-14 04:23:36', NULL),
(9, 'odr-000001', 'str-000001', '2023-04-14 04:23:36', NULL),
(10, 'odr-000001', 'str-000001', '2023-04-14 04:23:36', NULL),
(11, 'odr-000001', 'str-000001', '2023-04-14 04:24:42', NULL),
(12, 'odr-000001', 'str-000001', '2023-04-14 04:24:42', NULL),
(13, 'odr-000001', 'str-000001', '2023-04-14 04:24:42', NULL),
(14, 'odr-000002', 'str-000001', '2023-04-14 05:10:07', NULL),
(15, 'odr-000002', 'str-000001', '2023-04-14 05:10:07', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `vendor_stores`
--

CREATE TABLE IF NOT EXISTS `vendor_stores` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `serial` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `store_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Pending',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `vendor_stores`
--

INSERT INTO `vendor_stores` (`id`, `serial`, `store_name`, `address`, `phone`, `zone`, `owner`, `status`, `created_at`, `updated_at`) VALUES
(1, 'str-000001', 'A ROB PHARMA', 'Shah makhdum avenue, Uttara, Dhaka 1230', '01711144866', 'Uttara', 'pc-0000005', 'Approved', '2023-04-02 11:58:45', '2023-04-02 14:20:55'),
(2, 'str-000002', 'A ROB PHARMA', 'Mohakhali Kacha Bazar, Mohakhali, Dhaka 1230', '01812174866', 'Mohakhali', 'pc-0000005', 'Approved', '2023-04-02 12:27:32', '2023-04-02 14:21:02'),
(3, 'str-000003', 'FERDOUSI PHARMACY', '95 Gausul Azam Ave, Uttara, Dhaka -1230', '01764370677', 'Uttara', 'pc-0000006', 'Approved', '2023-04-03 12:31:52', '2023-04-03 12:33:25');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
