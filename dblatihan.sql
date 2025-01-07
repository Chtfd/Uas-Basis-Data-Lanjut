-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 07, 2025 at 10:46 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dblatihan`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_kategori`
--

CREATE TABLE `tbl_kategori` (
  `id` int(11) NOT NULL,
  `kategori` varchar(200) DEFAULT NULL,
  `slug` varchar(100) NOT NULL,
  `aktif` enum('y','n') NOT NULL DEFAULT 'y',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_kategori`
--

INSERT INTO `tbl_kategori` (`id`, `kategori`, `slug`, `aktif`, `created_at`, `updated_at`) VALUES
(1, 'Kategori 1', 'kategori-1', 'y', '2025-01-07 08:44:31', '2025-01-07 08:44:31'),
(2, 'Kategori 2', 'kategori-2', 'y', '2025-01-07 08:44:31', '2025-01-07 08:44:31'),
(3, 'Kategori 3', 'kategori-3', 'y', '2025-01-07 08:44:31', '2025-01-07 08:44:31');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_posts`
--

CREATE TABLE `tbl_posts` (
  `id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `slug` varchar(200) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(100) DEFAULT 'noimage.jpg',
  `hits` int(11) NOT NULL DEFAULT 0,
  `aktif` enum('y','n') NOT NULL DEFAULT 'y',
  `status` enum('publish','draft') NOT NULL DEFAULT 'publish',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_posts`
--

INSERT INTO `tbl_posts` (`id`, `title`, `slug`, `user_id`, `content`, `image`, `hits`, `aktif`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Judul Post 1', NULL, 1, 'Ini adalah konten untuk post 1.', 'noimage.jpg', 0, 'y', 'publish', NULL, NULL),
(2, 'Judul Post 2', NULL, 2, 'Ini adalah konten untuk post 2.', 'noimage.jpg', 0, 'y', 'draft', NULL, NULL),
(3, 'Judul Post 3', NULL, 1, 'Ini adalah konten untuk post 3.', 'noimage.jpg', 0, 'y', 'publish', NULL, NULL),
(4, 'Judul Post 4', NULL, 3, 'Ini adalah konten untuk post 4.', 'noimage.jpg', 0, 'y', 'draft', NULL, NULL),
(5, 'Judul Post 5', NULL, 2, 'Ini adalah konten untuk post 5.', 'noimage.jpg', 0, 'y', 'publish', NULL, NULL),
(6, 'Judul Post 6', NULL, 1, 'Ini adalah konten untuk post 6.', 'noimage.jpg', 0, 'y', 'draft', NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_kategori`
--
ALTER TABLE `tbl_kategori`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_posts`
--
ALTER TABLE `tbl_posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
