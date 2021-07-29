-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 29, 2021 at 04:35 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blogmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `blog_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `tags` varchar(255) DEFAULT NULL,
  `blog_image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`blog_id`, `user_id`, `title`, `description`, `tags`, `blog_image`, `created_at`, `updated_at`) VALUES
(1, 2, 'Blog 1', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi finibus consequat ligula in egestas. Nam erat lorem, tincidunt et dui at, mattis facilisis lacus. Nullam laoreet, arcu ut lacinia sollicitudin, justo erat sodales lacus, nec vehicula ligula nunc ut orci. Fusce vitae luctus ligula, vestibulum ultricies leo. Sed tristique bibendum orci, id vehicula magna varius laoreet. Maecenas luctus turpis at placerat interdum. Aliquam nisl ante, luctus at erat vel, aliquam iaculis est. Aliquam tortor elit, pellentesque non aliquam a, tempor non eros. Donec fringilla est vitae nibh consequat, ac egestas tellus imperdiet. Phasellus laoreet dictum nisi, at cursus turpis rhoncus eu.\r\n\r\nMauris vel nibh metus. Praesent varius ex orci. Fusce mattis tellus et elit lacinia facilisis. Vestibulum ornare, justo vitae hendrerit porttitor, sapien dui tincidunt mi, et pulvinar augue ipsum ut purus. Morbi at risus nec tortor interdum posuere eget ut lorem. Fusce elementum iaculis rutrum. Proin bibendum pharetra dictum. Curabitur sed imperdiet metus. Morbi scelerisque nisl quis enim mollis vehicula. Donec ornare lacinia lorem, eget congue ipsum tempus et. Donec ut vulputate arcu. Vivamus in justo sapien. Curabitur quis aliquet nisl. Cras semper metus nisl, sed dignissim libero interdum vel. Aenean mollis lectus sit amet consequat euismod.\r\n\r\nAenean gravida quam odio. Proin hendrerit facilisis laoreet. Proin at mollis mi. Donec scelerisque nisl non turpis hendrerit volutpat. Nulla sit amet efficitur lacus. Nullam elementum euismod nulla sit amet accumsan. Mauris venenatis id nulla in consectetur. Integer fringilla ligula quam, mollis imperdiet tortor interdum non. Donec at tellus quis sem luctus dignissim ac eget orci. Fusce quis nunc non enim fringilla fermentum a vitae enim.\r\n\r\nQuisque a est lobortis, lacinia urna sed, semper tortor. Maecenas massa lacus, vehicula et auctor in, vestibulum a dolor. Duis ac est velit. Ut eu orci diam. Cras nec viverra tortor. Mauris tincidunt faucibus arcu a vulputate. Pellentesque a aliquam magna, eget dictum est. Donec sed augue odio. Nunc vel rhoncus lacus, ac pharetra odio. Donec rhoncus laoreet consequat. Donec sollicitudin imperdiet pellentesque. Vestibulum ultricies justo felis, quis tempor elit tempus et. Mauris nibh augue, venenatis a pretium a, commodo id mauris. Maecenas malesuada est vel velit ultrices porttitor. Ut eget diam vel odio scelerisque feugiat eget nec ex.', 'test1, test2', 'download.jfif', '2021-07-29 09:02:58', '2021-07-29 09:02:58'),
(2, 2, 'Blog 2', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi finibus consequat ligula in egestas. Nam erat lorem, tincidunt et dui at, mattis facilisis lacus. Nullam laoreet, arcu ut lacinia sollicitudin, justo erat sodales lacus, nec vehicula ligula nunc ut orci. Fusce vitae luctus ligula, vestibulum ultricies leo. Sed tristique bibendum orci, id vehicula magna varius laoreet. Maecenas luctus turpis at placerat interdum. Aliquam nisl ante, luctus at erat vel, aliquam iaculis est. Aliquam tortor elit, pellentesque non aliquam a, tempor non eros. Donec fringilla est vitae nibh consequat, ac egestas tellus imperdiet. Phasellus laoreet dictum nisi, at cursus turpis rhoncus eu.\r\n\r\nMauris vel nibh metus. Praesent varius ex orci. Fusce mattis tellus et elit lacinia facilisis. Vestibulum ornare, justo vitae hendrerit porttitor, sapien dui tincidunt mi, et pulvinar augue ipsum ut purus. Morbi at risus nec tortor interdum posuere eget ut lorem. Fusce elementum iaculis rutrum. Proin bibendum pharetra dictum. Curabitur sed imperdiet metus. Morbi scelerisque nisl quis enim mollis vehicula. Donec ornare lacinia lorem, eget congue ipsum tempus et. Donec ut vulputate arcu. Vivamus in justo sapien. Curabitur quis aliquet nisl. Cras semper metus nisl, sed dignissim libero interdum vel. Aenean mollis lectus sit amet consequat euismod.\r\n\r\nAenean gravida quam odio. Proin hendrerit facilisis laoreet. Proin at mollis mi. Donec scelerisque nisl non turpis hendrerit volutpat. Nulla sit amet efficitur lacus. Nullam elementum euismod nulla sit amet accumsan. Mauris venenatis id nulla in consectetur. Integer fringilla ligula quam, mollis imperdiet tortor interdum non. Donec at tellus quis sem luctus dignissim ac eget orci. Fusce quis nunc non enim fringilla fermentum a vitae enim.\r\n\r\nQuisque a est lobortis, lacinia urna sed, semper tortor. Maecenas massa lacus, vehicula et auctor in, vestibulum a dolor. Duis ac est velit. Ut eu orci diam. Cras nec viverra tortor. Mauris tincidunt faucibus arcu a vulputate. Pellentesque a aliquam magna, eget dictum est. Donec sed augue odio. Nunc vel rhoncus lacus, ac pharetra odio. Donec rhoncus laoreet consequat. Donec sollicitudin imperdiet pellentesque. Vestibulum ultricies justo felis, quis tempor elit tempus et. Mauris nibh augue, venenatis a pretium a, commodo id mauris. Maecenas malesuada est vel velit ultrices porttitor. Ut eget diam vel odio scelerisque feugiat eget nec ex.', 'Nice, Great', 'images (1).jfif', '2021-07-29 09:03:14', '2021-07-29 09:03:14'),
(3, 1, 'Blog 3', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi finibus consequat ligula in egestas. Nam erat lorem, tincidunt et dui at, mattis facilisis lacus. Nullam laoreet, arcu ut lacinia sollicitudin, justo erat sodales lacus, nec vehicula ligula nunc ut orci. Fusce vitae luctus ligula, vestibulum ultricies leo. Sed tristique bibendum orci, id vehicula magna varius laoreet. Maecenas luctus turpis at placerat interdum. Aliquam nisl ante, luctus at erat vel, aliquam iaculis est. Aliquam tortor elit, pellentesque non aliquam a, tempor non eros. Donec fringilla est vitae nibh consequat, ac egestas tellus imperdiet. Phasellus laoreet dictum nisi, at cursus turpis rhoncus eu.\r\n\r\nMauris vel nibh metus. Praesent varius ex orci. Fusce mattis tellus et elit lacinia facilisis. Vestibulum ornare, justo vitae hendrerit porttitor, sapien dui tincidunt mi, et pulvinar augue ipsum ut purus. Morbi at risus nec tortor interdum posuere eget ut lorem. Fusce elementum iaculis rutrum. Proin bibendum pharetra dictum. Curabitur sed imperdiet metus. Morbi scelerisque nisl quis enim mollis vehicula. Donec ornare lacinia lorem, eget congue ipsum tempus et. Donec ut vulputate arcu. Vivamus in justo sapien. Curabitur quis aliquet nisl. Cras semper metus nisl, sed dignissim libero interdum vel. Aenean mollis lectus sit amet consequat euismod.\r\n\r\nAenean gravida quam odio. Proin hendrerit facilisis laoreet. Proin at mollis mi. Donec scelerisque nisl non turpis hendrerit volutpat. Nulla sit amet efficitur lacus. Nullam elementum euismod nulla sit amet accumsan. Mauris venenatis id nulla in consectetur. Integer fringilla ligula quam, mollis imperdiet tortor interdum non. Donec at tellus quis sem luctus dignissim ac eget orci. Fusce quis nunc non enim fringilla fermentum a vitae enim.\r\n\r\nQuisque a est lobortis, lacinia urna sed, semper tortor. Maecenas massa lacus, vehicula et auctor in, vestibulum a dolor. Duis ac est velit. Ut eu orci diam. Cras nec viverra tortor. Mauris tincidunt faucibus arcu a vulputate. Pellentesque a aliquam magna, eget dictum est. Donec sed augue odio. Nunc vel rhoncus lacus, ac pharetra odio. Donec rhoncus laoreet consequat. Donec sollicitudin imperdiet pellentesque. Vestibulum ultricies justo felis, quis tempor elit tempus et. Mauris nibh augue, venenatis a pretium a, commodo id mauris. Maecenas malesuada est vel velit ultrices porttitor. Ut eget diam vel odio scelerisque feugiat eget nec ex.', 'Technical', 'images.jfif', '2021-07-29 09:03:55', '2021-07-29 09:04:00');

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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1);

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
(1, 'Dimpal', 'dimpal@mailinator.com', NULL, '$2y$10$/XZtQszmZWEyPKmQVMWd2eZlGtNUj3P8U9ABJLV.ylA5kSzbfwCzO', NULL, '2021-07-29 08:47:12', '2021-07-29 08:47:12'),
(2, 'Shivani', 'shivani@mailinator.com', NULL, '$2y$10$BoMp8kSKxNIf534BJkK1keEooi0xzGuJylqcZBzeS7329BP26uf2i', NULL, '2021-07-29 09:02:44', '2021-07-29 09:02:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`blog_id`);

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
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

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
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `blog_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
