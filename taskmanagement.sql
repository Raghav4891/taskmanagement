-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 07:12 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 7.4.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskmanagement`
CREATE Database taskmanagement;
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
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `personal_access_tokens`
--

INSERT INTO `personal_access_tokens` (`id`, `tokenable_type`, `tokenable_id`, `name`, `token`, `abilities`, `last_used_at`, `created_at`, `updated_at`) VALUES
(1, 'App\\Models\\User', 1, 'MyApp', '94af29beab5931222c33119cfee41b72c0514daee2fdb682354d4ab9418a2e00', '[\"*\"]', NULL, '2024-02-20 06:27:35', '2024-02-20 06:27:35'),
(2, 'App\\Models\\User', 1, 'MyApp', 'af1fd567997f168b5b55a84ba012d93b7e703cc6a27edca36d0b0aeb9d0e253e', '[\"*\"]', NULL, '2024-02-20 06:33:42', '2024-02-20 06:33:42'),
(3, 'App\\Models\\User', 1, 'task', '2ad37138047ad890500a73911a34e75783145550df0b61f63c30c050ef399d06', '[\"*\"]', NULL, '2024-02-20 06:34:06', '2024-02-20 06:34:06'),
(4, 'App\\Models\\User', 1, 'task', 'c0075cba5bd9361e08f8efb87479d46a8cde2df4382e3d8fa92915a7bafe8235', '[\"*\"]', NULL, '2024-02-20 06:36:18', '2024-02-20 06:36:18'),
(5, 'App\\Models\\User', 1, 'task', '00ad85e8ba38e84e43d28c460a33da4452e30a786fc5c4ecfe69277a5ffbbf5a', '[\"*\"]', NULL, '2024-02-20 06:36:24', '2024-02-20 06:36:24'),
(6, 'App\\Models\\User', 1, 'task', 'f398d2d6b9fa714811f5e7c7c50c02a27cd7dffe2e7c76a17058b8a302f9afbe', '[\"*\"]', NULL, '2024-02-20 06:46:45', '2024-02-20 06:46:45'),
(7, 'App\\Models\\User', 1, 'task', '6023ae52b7993c9af6d2648fb78e922cc84079ab5eebcdd9c9cd13c11b86c3e9', '[\"*\"]', NULL, '2024-02-20 10:08:25', '2024-02-20 10:08:25'),
(8, 'App\\Models\\User', 1, 'task', 'e2bdfc5b0d0f2b73acd4a8b362a46a911467910a66453094b2ee0e77c93296a1', '[\"*\"]', NULL, '2024-02-21 04:43:47', '2024-02-21 04:43:47'),
(9, 'App\\Models\\User', 1, 'task', '38ea0eee9f5928769912247776d50beec4feed85dd416019a512b0177334922c', '[\"*\"]', NULL, '2024-02-21 04:48:11', '2024-02-21 04:48:11'),
(10, 'App\\Models\\User', 1, 'task', 'c79e57076f6b76b7c670bdb7b8ca6d9d64d5ce6cbe9e71a0fa8712f283520ef2', '[\"*\"]', NULL, '2024-02-21 04:55:57', '2024-02-21 04:55:57'),
(11, 'App\\Models\\User', 1, 'task', '97007ca3be1f28cea1e7765147ab5ba87c4038918e1beea3fbee926b8faaad96', '[\"*\"]', NULL, '2024-02-21 04:58:11', '2024-02-21 04:58:11'),
(12, 'App\\Models\\User', 1, 'task', '36133b4d6400db510bddefe3e0ce954253194fcb224284b57160368ba4f03280', '[\"*\"]', NULL, '2024-02-21 04:58:52', '2024-02-21 04:58:52'),
(13, 'App\\Models\\User', 1, 'task', '66e9aca099c3ad60a23c75a3fcd24b3a40f36f2feceea0d1a7c60d4d1d37f85a', '[\"*\"]', NULL, '2024-02-21 05:30:39', '2024-02-21 05:30:39'),
(14, 'App\\Models\\User', 1, 'task', 'e90ab696daaf2def6eb97d0a9d7fb286ea7f4035165cd14dd4757e9ee7b85873', '[\"*\"]', NULL, '2024-02-21 05:46:26', '2024-02-21 05:46:26'),
(15, 'App\\Models\\User', 1, 'task', '895832f4c586dbaa241d82b46e601a0e15bea95960abedc40b71e0746277f1c2', '[\"*\"]', NULL, '2024-02-21 05:49:13', '2024-02-21 05:49:13'),
(16, 'App\\Models\\User', 1, 'task', 'd2211e39a11a501217710892b2564ff8cb833e4a2e9ed20610683cafcf9c3327', '[\"*\"]', '2024-02-22 12:34:06', '2024-02-21 05:58:21', '2024-02-22 12:34:06'),
(17, 'App\\Models\\User', 1, 'task', '2fa2182d9ed68b54def692fc7a72fb8244ca45908333cd3df10ae97191437ffd', '[\"*\"]', NULL, '2024-02-22 12:16:43', '2024-02-22 12:16:43');

-- --------------------------------------------------------

--
-- Table structure for table `task`
--

CREATE TABLE `task` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `due_date` date NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0 COMMENT '0= pending, 1 = In progress, 2 = completed',
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task`
--

INSERT INTO `task` (`id`, `title`, `description`, `due_date`, `status`, `created_at`, `updated_at`) VALUES
(7, 'Home Page Banner Section 2', 'Multiple images come on banner 2', '2024-09-25', 2, '2024-02-21', '2024-02-21'),
(8, 'Home Page Banner Section', 'Multiple images come on banner', '2024-09-25', 0, '2024-02-21', '2024-02-21'),
(9, 'Home Page Banner Section', 'Multiple images come on banner', '2024-09-25', 0, '2024-02-21', '2024-02-21'),
(10, 'Home Page Banner Section', 'Multiple images come on banner', '2024-09-25', 0, '2024-02-21', '2024-02-21'),
(11, 'Home Page Banner Section', 'Multiple images come on banner', '2024-09-25', 0, '2024-02-21', '2024-02-21'),
(12, 'Home Page Banner Section', 'Multiple images come on banner', '2024-09-25', 0, '2024-02-21', '2024-02-21'),
(14, 'Home Page Banner Section', 'Multiple images come on banner', '2024-09-25', 0, '2024-02-21', '2024-02-21'),
(15, 'Home Page Banner Section 2121', 'Multiple images come on banner 2121', '2024-09-25', 1, '2024-02-22', '2024-02-22');

-- --------------------------------------------------------

--
-- Table structure for table `task_user`
--

CREATE TABLE `task_user` (
  `id` int(11) NOT NULL,
  `task_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `task_user`
--

INSERT INTO `task_user` (`id`, `task_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 7, 1, '2024-02-21', '2024-02-21');

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
(1, 'Raghavendra Patwa', 'raghav@gmail.com', NULL, '$2y$10$IMRZrFVdZwtchyv/C/iFH.TwrIdRCkbMTgCjWuUDGoYnfvhk9388W', NULL, NULL, NULL),
(2, 'Test User', 'test@gmail.com', NULL, '$2y$10$Oyoo382vy7pBMJWqJjT5nudrF6vHyiCnmhTK2k0d9hRmydllB4CO.', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dump`


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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `task`
--
ALTER TABLE `task`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `task_user`
--
ALTER TABLE `task_user`
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
-- AUTO_INCREMENT for table `dump`

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `task`
--
ALTER TABLE `task`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `task_user`
--
ALTER TABLE `task_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
