-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 29, 2024 at 05:23 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `todo_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_29_090831_create_todos_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `todos`
--

CREATE TABLE `todos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `todos`
--

INSERT INTO `todos` (`id`, `title`, `description`, `completed`, `created_at`, `updated_at`) VALUES
(6, 'Consequuntur ut ad eum molestias eum impedit.', 'Itaque ut enim perspiciatis accusamus dolor ducimus. Sed atque veritatis facilis ducimus blanditiis. Eligendi corporis cumque porro quos. Saepe et reprehenderit voluptates et dicta aut.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(7, 'Deleniti dolor illo dolorum quos quia.', 'Sed id ex ea accusamus voluptatibus voluptatem eos. Consequatur sit ut esse qui. Nobis quia a eum distinctio tempore fugiat iusto veniam. Alias inventore voluptatum deserunt ut voluptatem non.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(8, 'Deleniti ullam molestiae tempora et.', 'Eius laboriosam adipisci dolor sed harum distinctio nemo et. Consequatur laudantium molestias molestiae a eum laborum repellat. Fugit rerum magnam velit nesciunt quisquam.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(9, 'Tenetur quia molestiae omnis perspiciatis ut consequatur et.', 'Id quo aliquid est libero qui consectetur. Debitis magnam voluptas alias quo corporis eius doloribus. Fugit delectus commodi eaque sunt sit repellat sit. Eveniet dicta deleniti expedita et laborum. Soluta ut perferendis quisquam est cumque.', 1, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(10, 'Qui odio reiciendis doloribus.', 'Et deserunt quis dolores voluptas facilis quo quidem. Qui qui dolorum ratione repudiandae omnis quasi. Voluptatem dolorem blanditiis consequuntur et iste. Temporibus recusandae ullam quibusdam illo vitae dicta.', 1, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(11, 'Molestiae ut tempora quo sit quis.', 'Exercitationem facilis doloribus incidunt et consectetur necessitatibus. Aut odit totam ex quas. Dolores voluptas numquam facere ipsam rerum nihil.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(12, 'Recusandae reiciendis qui facilis alias sit ullam fugiat ut.', 'Iure vel earum aut consequatur eos dolores vel eos. Quia distinctio dolores tempore est voluptas eius possimus. Quam id rerum rerum praesentium. Ipsam reprehenderit consequatur earum. Quia repellendus maiores sit quia dolore quibusdam et.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(13, 'Adipisci eligendi fugit recusandae ut dolor ex eligendi eum.', 'Et quia natus perferendis harum maxime qui incidunt. Nulla et nihil voluptatem a sint. Fuga qui voluptatibus aut sunt reiciendis qui et. Necessitatibus quis optio fugit dolorem ipsum aut expedita.', 1, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(14, 'Et sed temporibus odio ut.', 'Laudantium error odit nam qui ea rem aut. Debitis impedit rerum in eaque ea illum. Eos ea laboriosam quis nesciunt. Omnis sed distinctio in magni aut qui aspernatur.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(15, 'Consequuntur facilis ut ipsa aliquam.', 'Reprehenderit eius praesentium et nostrum. Voluptatem labore eveniet deserunt ullam sint quas a. Non consequatur ut non aut maxime et. Similique qui iusto molestiae suscipit ea facilis.', 1, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(16, 'Omnis vel et ut error reiciendis in facere.', 'Nihil amet ut possimus consequatur adipisci natus quam. Repellendus incidunt ut porro odio debitis. Adipisci sit aliquam commodi voluptate et deleniti nemo. Provident accusantium quo et consequatur.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(17, 'Qui alias autem officiis tenetur ea.', 'Repudiandae et eum est est iusto mollitia minima. Suscipit quo dolor sunt fuga. Id earum ut est omnis sed commodi.', 1, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(18, 'Omnis nisi ipsum omnis accusantium consequuntur.', 'Et veritatis deserunt id magni reiciendis quasi totam vitae. Ut esse reiciendis consequatur delectus quia. Qui fugiat perferendis ex ut.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(19, 'Beatae molestiae praesentium labore totam hic amet quia qui.', 'Earum molestias sed consequuntur quidem est. Omnis non in temporibus rerum veritatis.', 1, '2024-03-29 04:38:25', '2024-03-29 04:38:25'),
(20, 'Recusandae similique id aspernatur tempora in fuga qui sed.', 'Reprehenderit autem molestiae sed. Laboriosam et minima dolorem ipsam aperiam. Sint sit eos vel molestiae ut qui mollitia.', 0, '2024-03-29 04:38:25', '2024-03-29 04:38:25');

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
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `todos`
--
ALTER TABLE `todos`
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
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `todos`
--
ALTER TABLE `todos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
