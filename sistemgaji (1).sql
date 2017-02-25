-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Feb 24, 2017 at 11:41 PM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 7.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistemgaji`
--

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_golongan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_golongan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `kode_golongan`, `nama_golongan`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(3, 'A-01', 'Senior', 50000, '2017-02-24 05:13:26', '2017-02-24 05:13:26'),
(4, 'A-02', 'Junior', 40000, '2017-02-24 05:13:33', '2017-02-24 05:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nama_jabatan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `kode_jabatan`, `nama_jabatan`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(5, 'KJ-01', 'Manager', 50000, '2017-02-24 05:13:04', '2017-02-24 05:13:04'),
(6, 'KJ-02', 'HRD', 40000, '2017-02-24 05:13:12', '2017-02-24 05:13:12');

-- --------------------------------------------------------

--
-- Table structure for table `kategory_lemburs`
--

CREATE TABLE `kategory_lemburs` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_lembur` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `kategory_lemburs`
--

INSERT INTO `kategory_lemburs` (`id`, `kode_lembur`, `jabatan_id`, `golongan_id`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(1, 'KL-01', 5, 3, 20000, '2017-02-24 05:15:47', '2017-02-24 05:15:47'),
(2, 'KL-02', 6, 4, 10000, '2017-02-24 05:15:59', '2017-02-24 05:15:59');

-- --------------------------------------------------------

--
-- Table structure for table `lembur_pegawais`
--

CREATE TABLE `lembur_pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_lembur_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `jumlah_jam` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `lembur_pegawais`
--

INSERT INTO `lembur_pegawais` (`id`, `kode_lembur_id`, `pegawai_id`, `jumlah_jam`, `created_at`, `updated_at`) VALUES
(1, 1, 3, 4, '2017-02-24 05:16:07', '2017-02-24 05:16:07'),
(2, 2, 4, 3, '2017-02-24 05:16:15', '2017-02-24 05:16:15');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_01_31_061527_create_jabatans_table', 1),
(4, '2017_01_31_061854_create_golongans_table', 1),
(5, '2017_02_06_013056_create_kategory_lemburs_table', 1),
(6, '2017_02_06_013212_create_tunjangans_table', 1),
(7, '2017_02_06_013335_create_pegawais_table', 1),
(8, '2017_02_06_013433_create_lembur_pegawais_table', 1),
(9, '2017_02_06_013549_create_tunjangan_pegawais_table', 1),
(10, '2017_02_06_013600_create_penggajians_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pegawais`
--

CREATE TABLE `pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `nip` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pegawais`
--

INSERT INTO `pegawais` (`id`, `nip`, `user_id`, `jabatan_id`, `golongan_id`, `photo`, `created_at`, `updated_at`) VALUES
(3, '01', 15, 5, 3, 'lia.png', '2017-02-24 05:14:17', '2017-02-24 05:14:17'),
(4, '02', 16, 6, 4, 'lala.gif', '2017-02-24 05:14:52', '2017-02-24 05:14:52');

-- --------------------------------------------------------

--
-- Table structure for table `penggajians`
--

CREATE TABLE `penggajians` (
  `id` int(10) UNSIGNED NOT NULL,
  `tunjangan_pegawai_id` int(10) UNSIGNED NOT NULL,
  `jumlah_jam_lembur` int(11) NOT NULL,
  `jumlah_uang_lembur` int(11) NOT NULL,
  `gaji_pokok` int(11) NOT NULL,
  `total_gaji` int(11) NOT NULL,
  `tgl_pengambilan` date NOT NULL,
  `status_pengambilan` tinyint(1) NOT NULL,
  `petugas_penerima` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penggajians`
--

INSERT INTO `penggajians` (`id`, `tunjangan_pegawai_id`, `jumlah_jam_lembur`, `jumlah_uang_lembur`, `gaji_pokok`, `total_gaji`, `tgl_pengambilan`, `status_pengambilan`, `petugas_penerima`, `created_at`, `updated_at`) VALUES
(1, 1, 4, 80000, 100000, 260000, '2024-02-17', 0, 'sabilla', '2017-02-24 05:17:23', '2017-02-24 05:17:23'),
(2, 2, 3, 30000, 80000, 200000, '2024-02-17', 0, 'sabilla', '2017-02-24 05:17:33', '2017-02-24 05:17:33');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangans`
--

CREATE TABLE `tunjangans` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_tunjangan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jabatan_id` int(10) UNSIGNED NOT NULL,
  `golongan_id` int(10) UNSIGNED NOT NULL,
  `status` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `jumlah_anak` int(11) NOT NULL,
  `besaran_uang` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tunjangans`
--

INSERT INTO `tunjangans` (`id`, `kode_tunjangan`, `jabatan_id`, `golongan_id`, `status`, `jumlah_anak`, `besaran_uang`, `created_at`, `updated_at`) VALUES
(1, 'KT-01', 5, 3, 'Menikah', 1, 80000, '2017-02-24 05:16:39', '2017-02-24 05:16:39'),
(2, 'KT-02', 6, 4, 'Menikah', 2, 90000, '2017-02-24 05:17:01', '2017-02-24 05:17:01');

-- --------------------------------------------------------

--
-- Table structure for table `tunjangan_pegawais`
--

CREATE TABLE `tunjangan_pegawais` (
  `id` int(10) UNSIGNED NOT NULL,
  `kode_tunjangan_id` int(10) UNSIGNED NOT NULL,
  `pegawai_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tunjangan_pegawais`
--

INSERT INTO `tunjangan_pegawais` (`id`, `kode_tunjangan_id`, `pegawai_id`, `created_at`, `updated_at`) VALUES
(1, 1, 3, '2017-02-24 05:17:11', '2017-02-24 05:17:11'),
(2, 2, 4, '2017-02-24 05:17:16', '2017-02-24 05:17:16');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `permision` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `permision`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'billa', 'BAGIANKEUANGAN', 'billa@gmail.com', '$2y$10$fZt5oVDmq.I1Saam2WdJU.pLEbFCK7uKqhuh4WMzaKibuCiny9lu.', '0fZ5t79rP4O09ucwl5dYD33TAXrw8pwAlgy0cclBwsKOONhzGZWjvqw1mPBY', '2017-02-24 01:24:17', '2017-02-24 01:25:22'),
(2, 'billa', 'BAGIANKEUANGAN', 'billa123@gmail.com', '$2y$10$fHK599UYJGrOLrGfeF6Rue5Ru8/E4rACuu/WLbbxv3MbKt6K7BEU2', '4iOJ6w32F35JLYKbguvCMSUzGuTN0w7xbDwffFBrU5YYfIJrHLwM5wY9BHE2', '2017-02-24 01:26:01', '2017-02-24 01:30:34'),
(3, 'tonga', 'BAGIANKEUANGAN', 'tonga@gmail.com', '$2y$10$LDyeOA7A3iMA2ndmLlrpD.q.eEVy7fTDF8lwiZ0X.o9xfdVKch.FW', 'X0f6jeRWBVZbpXt1FIUCNt4ItnLe8z8AFsa4eowReoGwplYAnRhJgqBE0NYD', '2017-02-24 01:31:04', '2017-02-24 01:31:47'),
(4, 'yusuf', 'BAGIANKEUANGAN', 'yusuf@gmail.com', '$2y$10$SWTUe5ZpuaajvOBhyn7lt.3mKCKuksYmG4G6/wCP94W5RS7iTE84G', 'RXNEM5kzGObtIw7Vfek28jnWYceTiYKvgubNj3CboY361a7MxX2EPv6TYjPM', '2017-02-24 01:32:13', '2017-02-24 01:32:25'),
(5, 'bibik', 'Admin', 'bibik@gmail.com', '$2y$10$CdjLtx19R4.fQtw1rK4v8Oy/IiPRi3aNMv1Ae71egiFmvHnE20ob.', 'J9OZoe0nX9p3fm0kwfTDOXx9A35WPey5l1xiINTY64DFZF4rv244W5YyWG1P', '2017-02-24 01:32:56', '2017-02-24 01:34:57'),
(6, 'cucu', 'Admin', 'cucu@gmail.com', '$2y$10$H9UcVtmq.8uuYG3aDmNAcemCP2RtD1Ts62HypzCq.yOmElxxZubTW', 'u7XsfxIiAv44T2EaStU4tVRIzfWpfFXpmhjxTIdcTbC2kMjoBKUT7d5MST9m', '2017-02-24 01:35:52', '2017-02-24 01:40:01'),
(7, 'billay', 'HRD', 'billa1236@gmail.com', '$2y$10$NFqBeFczTvqxrCQ8jGNSt.kihLpXsDcrKtte/vsjC9zLdTf2KwFJG', 'JjlAIWglMoyqjiHDOeMLEpoYhdN5hOUQ38Mla7g8jhazTcgfnL5FkzJ8DHWY', '2017-02-24 01:40:52', '2017-02-24 02:12:45'),
(8, 'vfvf', 'BAGIANKEUANGAN', 'vfvf@gmail.com', '$2y$10$QZEA54UP2O3hcsp2NTdUpudGKxOexTXv0riZ8S9.w4toAcdJNslqy', 'qu02c07K3pmGi3hI626TaKCfVKgt2KNPw8I86d5bYZdfLQ15ccKXgG7CXRT2', '2017-02-24 02:13:13', '2017-02-24 02:17:38'),
(9, 'vnn', 'KARYAWAN', 'vb@gmail.com', '$2y$10$26T/TfRfe471eCwd4Ugn9eKJahKjRypImzOjD5Fbc3YLcuVCb7EGe', 'IZnHwV7fPJq5LzkdfEwhUMWTFGoa5gy30mxoMQuocLdzqPBSz40Fn801mGtl', '2017-02-24 02:18:47', '2017-02-24 02:18:56'),
(10, 'svdfvs', 'Admin', 'vbi@gmail.com', '$2y$10$ZkvIS.ILNli8cI6Q5wicsOYNJ9xElY6bvG.Ki2IUvBMVl31aCHwte', 'jthyk59Yx8Cf17sZj4JlEn5txutzHqWyaEYnPRq9adTXTeAljKCbPAiVFJNX', '2017-02-24 02:19:20', '2017-02-24 02:19:41'),
(11, 'zcvdvcd', 'HRD', 'uiuiu@gmail.com', '$2y$10$/4K5T4pmsua2T73cOMoRruR7IL3YuVugHA4qhNmAxFtN7072kUi0i', 'CdRvNSNRBfmGfb7yeptEPhMA9zHNz0sE8DglM1IHBrm5OPoMrjhsDsZ1cnrP', '2017-02-24 02:20:01', '2017-02-24 02:22:04'),
(12, 'sabilla', 'Admin', 'sabilla01@gmail.com', '$2y$10$GXv5PVwYfOoOrAh.yk/UFuqgLHOKLziq9P1sWXo.qXsdEWwnH31yG', 'dgOavquideT24Dwh3KsKE1dQQJ3Tj8l3qrpV1tJnsqSYtIkWK7HxWdMEoSrp', '2017-02-24 05:01:52', '2017-02-24 05:31:57'),
(13, 'Marwah', 'Bagian Keuangan', 'marwah1@gmail.com', '$2y$10$PZjIhi9bWM/dVJ.PxD9YKOzudFTKE80UBVWokCNQGePlWQqWRVO8i', NULL, '2017-02-24 05:08:49', '2017-02-24 05:08:49'),
(14, 'Guntur', 'Admin', 'guntur2@gmail.com', '$2y$10$sR1RqfjIRr8eCqIad5oQ2OnsxZZHSYdeuXzbxxO5xDmI34LwDTPhW', NULL, '2017-02-24 05:10:12', '2017-02-24 05:10:12'),
(15, 'Bany', 'Admin', 'bany1@gmail.com', '$2y$10$W7LsVhXnrnojnNI2GC9dNeXIddhAPtH5VL86DTsatKHgC3U1aaXl6', NULL, '2017-02-24 05:14:17', '2017-02-24 05:14:17'),
(16, 'Kiky', 'Admin', 'kiky2@gmail.com', '$2y$10$2Kh4DbX3HMGf5jR87t0oh.ngBAcWcvkCcCHqV80AoYsGRGRSi.1oe', NULL, '2017-02-24 05:14:52', '2017-02-24 05:14:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `kategory_lemburs`
--
ALTER TABLE `kategory_lemburs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `kategory_lemburs_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `kategory_lemburs_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `lembur_pegawais_kode_lembur_id_foreign` (`kode_lembur_id`),
  ADD KEY `lembur_pegawais_pegawai_id_foreign` (`pegawai_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `pegawais_nip_unique` (`nip`),
  ADD UNIQUE KEY `pegawais_user_id_unique` (`user_id`),
  ADD KEY `pegawais_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `pegawais_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD PRIMARY KEY (`id`),
  ADD KEY `penggajians_tunjangan_pegawai_id_foreign` (`tunjangan_pegawai_id`);

--
-- Indexes for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tunjangans_jabatan_id_foreign` (`jabatan_id`),
  ADD KEY `tunjangans_golongan_id_foreign` (`golongan_id`);

--
-- Indexes for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tunjangan_pegawais_kode_tunjangan_id_foreign` (`kode_tunjangan_id`),
  ADD KEY `tunjangan_pegawais_pegawai_id_foreign` (`pegawai_id`);

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
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `kategory_lemburs`
--
ALTER TABLE `kategory_lemburs`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `pegawais`
--
ALTER TABLE `pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `penggajians`
--
ALTER TABLE `penggajians`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tunjangans`
--
ALTER TABLE `tunjangans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `kategory_lemburs`
--
ALTER TABLE `kategory_lemburs`
  ADD CONSTRAINT `kategory_lemburs_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `kategory_lemburs_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `lembur_pegawais`
--
ALTER TABLE `lembur_pegawais`
  ADD CONSTRAINT `lembur_pegawais_kode_lembur_id_foreign` FOREIGN KEY (`kode_lembur_id`) REFERENCES `kategory_lemburs` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `lembur_pegawais_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pegawais`
--
ALTER TABLE `pegawais`
  ADD CONSTRAINT `pegawais_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawais_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pegawais_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `penggajians`
--
ALTER TABLE `penggajians`
  ADD CONSTRAINT `penggajians_tunjangan_pegawai_id_foreign` FOREIGN KEY (`tunjangan_pegawai_id`) REFERENCES `tunjangan_pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangans`
--
ALTER TABLE `tunjangans`
  ADD CONSTRAINT `tunjangans_golongan_id_foreign` FOREIGN KEY (`golongan_id`) REFERENCES `golongans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangans_jabatan_id_foreign` FOREIGN KEY (`jabatan_id`) REFERENCES `jabatans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tunjangan_pegawais`
--
ALTER TABLE `tunjangan_pegawais`
  ADD CONSTRAINT `tunjangan_pegawais_kode_tunjangan_id_foreign` FOREIGN KEY (`kode_tunjangan_id`) REFERENCES `tunjangans` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tunjangan_pegawais_pegawai_id_foreign` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawais` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
