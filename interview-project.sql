-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 21, 2023 at 06:01 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `interview-project`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `check_in_time` varchar(255) NOT NULL,
  `check_out_time` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `user_id`, `date`, `check_in_time`, `check_out_time`, `created_at`, `updated_at`) VALUES
(1, '1', '2023-12-01', '9:00', '18:00', '2023-12-21 10:27:56', '2023-12-21 10:27:56'),
(2, '2', '2023-12-01', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(3, '3', '2023-12-01', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(4, '4', '2023-12-01', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(5, '5', '2023-12-01', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(6, '1', '2023-12-02', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(7, '2', '2023-12-02', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(8, '3', '2023-12-02', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(9, '4', '2023-12-02', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45'),
(10, '5', '2023-12-02', '9:00', '18:00', '2023-12-21 10:29:45', '2023-12-21 10:29:45');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_12_21_145835_attendance', 2);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'bPj9cGtWmt', 'XfatUSlef4@gmail.com', NULL, '$2y$12$b9YkFKM5CT21gNhFT0tDx.Lvfje1tSPJhtUnbQmSydeAZEEpl2qEO', NULL, NULL, NULL),
(2, 'Subhabrata1', 'Subhabrata1@email.com', NULL, '$2y$12$ziIF/tZq.N4Q4oGDe221feQ3sq9xgc5fK5Jyqa9RgBd8tQypK.7Z6', NULL, '2023-12-21 10:03:43', '2023-12-21 10:03:43'),
(14, 'Subhabrata2', 'Subhabrata2@email.com', NULL, '$2y$12$ew5dD48PhautpA9oSq86fevP9BvRMagK3LIKJjRu5UhX02dLFSko2', NULL, '2023-12-21 10:07:13', '2023-12-21 10:07:13'),
(15, 'Subhabrata3', 'Subhabrata3@email.com', NULL, '$2y$12$XpQidPr2HvXSvTV06XnKC.6EY0WyYMeC.3Nec11zAYCABg31fbPnG', NULL, '2023-12-21 10:07:14', '2023-12-21 10:07:14'),
(16, 'Subhabrata4', 'Subhabrata4@email.com', NULL, '$2y$12$7QLh3fNq9O.OqOyXF3O6ueuQvJBhFrpv0tuFPvMjrjMh5jSe/39qW', NULL, '2023-12-21 10:07:14', '2023-12-21 10:07:14'),
(17, 'Subhabrata5', 'Subhabrata5@email.com', NULL, '$2y$12$T34ZBaR/Jn1sJSQxzciudOICNqQnPxsVZ5kSGktx7RYOAlfgUKhhK', NULL, '2023-12-21 10:07:14', '2023-12-21 10:07:14'),
(18, 'Subhabrata6', 'Subhabrata6@email.com', NULL, '$2y$12$2g4oGm7nepeMjjRQebx5e.QuXUJGREG5DFPpix1I0V64.Ofiuq1Am', NULL, '2023-12-21 10:07:14', '2023-12-21 10:07:14'),
(19, 'Subhabrata7', 'Subhabrata7@email.com', NULL, '$2y$12$6Uz/TpKZEqat7WbXD3615esfh9klMBLsnL4zrOvnZZ8r3fk59.uFC', NULL, '2023-12-21 10:07:14', '2023-12-21 10:07:14'),
(20, 'Subhabrata8', 'Subhabrata8@email.com', NULL, '$2y$12$TA1x4UrA07R5hZr0W0jgtOeLVQ6f6S8V8VrYm8B/8Fmv5xfRtdyy.', NULL, '2023-12-21 10:07:15', '2023-12-21 10:07:15'),
(21, 'Subhabrata9', 'Subhabrata9@email.com', NULL, '$2y$12$57hl3QbNDKh9dl806pw15u6RhrsGw0RIssfN04WooXVVIWPgIEI1W', NULL, '2023-12-21 10:07:15', '2023-12-21 10:07:15'),
(22, 'Subhabrata10', 'Subhabrata10@email.com', NULL, '$2y$12$vofCxxCEaUwjJuaLW8qumOJJvqdjdALi1XaK1.h5Ax1cRCszjVwgS', NULL, '2023-12-21 10:07:15', '2023-12-21 10:07:15');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
