-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 12, 2021 at 12:14 PM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_passion_seekers`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admins`
--

CREATE TABLE `tbl_admins` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `phone_number` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_admins`
--

INSERT INTO `tbl_admins` (`id`, `name`, `username`, `password`, `email`, `address`, `phone_number`, `avatar`, `status`, `created_at`, `Updated_at`) VALUES
(14, 'dawa', 'dawa', '0192023a7bbd73250516f069df18b500', 'dawa@gmail.com', 'kathmandu balaju', '9812345678', 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 1, '2021-05-13 09:16:26', '2021-05-16 04:43:29'),
(15, 'Mufutau Garrett', 'aayush100', '0192023a7bbd73250516f069df18b500', 'bery@mailinator.com', 'Doloremque rerum lau', '+1 (119) 827-4674', 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 1, '2021-05-17 07:26:19', '2021-05-17 07:30:13'),
(16, 'Aphrodite Conway', 'xyz', '0192023a7bbd73250516f069df18b500', 'qamyq@mailinator.com', 'Ullamco enim iusto i', '+1 (908) 669-3336', NULL, 0, '2021-05-20 05:54:04', NULL),
(17, 'Tyrone Cochran', 'aayush1123123', '0192023a7bbd73250516f069df18b500', 'xajasaveh@mailinator.com', 'Sint tempore esse', '+1 (133) 683-2719', NULL, 0, '2021-05-20 14:57:20', NULL),
(18, 'Ursula Fleming', 'aayush3', '0192023a7bbd73250516f069df18b500', 'cykyryz@mailinator.com', 'Rerum reprehenderit', '+1 (626) 342-5214', NULL, 1, '2021-06-07 04:32:21', NULL),
(19, 'Mufutau Sawyer', 'xekuko', '0192023a7bbd73250516f069df18b500', 'fotuqoc@mailinator.com', 'Esse voluptatibus s', '+1 (181) 479-5274', NULL, 0, '2021-06-07 08:35:56', NULL),
(21, 'Naida Sanders', '333333wylukicyq', '0192023a7bbd73250516f069df18b500', 'bodexaxi@mailinator.com', '33333Perspiciatis et ut', '+1 (566) 539-2071', NULL, 1, '2021-06-11 12:08:56', NULL),
(22, 'Tatyana Hoover', 'gu', '0192023a7bbd73250516f069df18b500', 'jyluhom@mailinator.com', 'Beatae quibusdam in', '+1 (612) 559-6753', NULL, 1, '2021-06-11 12:51:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comments`
--

CREATE TABLE `tbl_comments` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `location_id` int NOT NULL,
  `comment` varchar(200) COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_comments`
--

INSERT INTO `tbl_comments` (`id`, `user_id`, `location_id`, `comment`, `status`, `created_at`, `updated_at`) VALUES
(39, 76, 115, 'hellow', 1, '2021-06-11 12:48:51', NULL),
(40, 76, 115, 'hellow', 1, '2021-06-11 12:49:00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_favorites`
--

CREATE TABLE `tbl_favorites` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `location_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_favorites`
--

INSERT INTO `tbl_favorites` (`id`, `user_id`, `location_id`, `status`, `created_at`, `updated_at`) VALUES
(26, 76, 105, 1, '2021-06-11 12:03:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_images`
--

CREATE TABLE `tbl_images` (
  `id` int NOT NULL,
  `image` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `location_id` int NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_images`
--

INSERT INTO `tbl_images` (`id`, `image`, `location_id`, `status`, `created_at`, `updated_at`) VALUES
(790, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 87, 1, '2021-05-19 14:27:27', NULL),
(791, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 87, 1, '2021-05-19 14:27:27', NULL),
(811, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 90, 1, '2021-05-19 14:57:35', NULL),
(812, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 90, 1, '2021-05-19 14:57:35', NULL),
(813, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 90, 1, '2021-05-19 14:57:35', NULL),
(814, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 90, 1, '2021-05-19 14:57:35', NULL),
(815, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 91, 1, '2021-05-19 14:59:08', NULL),
(816, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 91, 1, '2021-05-19 14:59:08', NULL),
(817, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 91, 1, '2021-05-19 14:59:08', NULL),
(818, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 91, 1, '2021-05-19 14:59:08', NULL),
(819, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 92, 1, '2021-05-19 15:05:14', NULL),
(820, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 92, 1, '2021-05-19 15:05:14', NULL),
(821, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 92, 1, '2021-05-19 15:05:14', NULL),
(822, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 92, 1, '2021-05-19 15:05:14', NULL),
(823, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 93, 1, '2021-05-19 15:06:45', NULL),
(824, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 93, 1, '2021-05-19 15:06:45', NULL),
(825, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 93, 1, '2021-05-19 15:06:45', NULL),
(826, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 94, 1, '2021-05-19 15:07:58', NULL),
(827, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 94, 1, '2021-05-19 15:07:58', NULL),
(828, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 94, 1, '2021-05-19 15:07:58', NULL),
(829, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 94, 1, '2021-05-19 15:07:58', NULL),
(830, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 95, 1, '2021-05-19 15:09:27', NULL),
(831, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 95, 1, '2021-05-19 15:09:27', NULL),
(832, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 95, 1, '2021-05-19 15:09:27', NULL),
(833, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 95, 1, '2021-05-19 15:09:27', NULL),
(834, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 95, 1, '2021-05-19 15:09:27', NULL),
(835, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 96, 1, '2021-05-19 15:10:40', NULL),
(836, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 96, 1, '2021-05-19 15:10:40', NULL),
(837, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 96, 1, '2021-05-19 15:10:40', NULL),
(838, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 96, 1, '2021-05-19 15:10:40', NULL),
(839, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 96, 1, '2021-05-19 15:10:40', NULL),
(840, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(841, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(842, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(843, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(844, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(845, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(846, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 97, 1, '2021-05-19 15:11:36', NULL),
(847, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 98, 1, '2021-05-19 15:13:24', NULL),
(848, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 98, 1, '2021-05-19 15:13:24', NULL),
(849, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 98, 1, '2021-05-19 15:13:24', NULL),
(850, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 98, 1, '2021-05-19 15:13:24', NULL),
(851, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 98, 1, '2021-05-19 15:13:24', NULL),
(852, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 98, 1, '2021-05-19 15:13:24', NULL),
(853, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 99, 1, '2021-05-19 15:14:54', NULL),
(854, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 99, 1, '2021-05-19 15:14:54', NULL),
(855, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 99, 1, '2021-05-19 15:14:54', NULL),
(856, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 100, 1, '2021-05-19 15:16:29', NULL),
(857, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 100, 1, '2021-05-19 15:16:29', NULL),
(858, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 100, 1, '2021-05-19 15:16:29', NULL),
(859, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 101, 1, '2021-05-19 15:19:03', NULL),
(860, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 101, 1, '2021-05-19 15:19:03', NULL),
(861, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 101, 1, '2021-05-19 15:19:03', NULL),
(862, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 101, 1, '2021-05-19 15:19:03', NULL),
(863, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 102, 1, '2021-05-19 15:20:16', NULL),
(864, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 102, 1, '2021-05-19 15:20:16', NULL),
(865, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 102, 1, '2021-05-19 15:20:16', NULL),
(866, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 103, 1, '2021-05-19 15:21:39', NULL),
(867, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 103, 1, '2021-05-19 15:21:39', NULL),
(868, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 103, 1, '2021-05-19 15:21:39', NULL),
(869, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 104, 1, '2021-05-19 15:24:27', NULL),
(870, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 104, 1, '2021-05-19 15:24:27', NULL),
(871, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 104, 1, '2021-05-19 15:24:27', NULL),
(872, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 104, 1, '2021-05-19 15:24:27', NULL),
(873, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 105, 1, '2021-05-19 15:25:23', NULL),
(874, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 105, 1, '2021-05-19 15:25:23', NULL),
(875, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 105, 1, '2021-05-19 15:25:23', NULL),
(876, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 105, 1, '2021-05-19 15:25:23', NULL),
(877, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 106, 1, '2021-05-19 15:26:27', NULL),
(878, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 106, 1, '2021-05-19 15:26:27', NULL),
(879, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 106, 1, '2021-05-19 15:26:27', NULL),
(880, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 107, 1, '2021-05-19 15:27:32', NULL),
(881, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 107, 1, '2021-05-19 15:27:32', NULL),
(882, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 107, 1, '2021-05-19 15:27:32', NULL),
(883, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 107, 1, '2021-05-19 15:27:33', NULL),
(884, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 108, 1, '2021-05-19 15:28:33', NULL),
(885, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 108, 1, '2021-05-19 15:28:33', NULL),
(886, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 108, 1, '2021-05-19 15:28:33', NULL),
(887, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 108, 1, '2021-05-19 15:28:33', NULL),
(888, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 109, 1, '2021-05-19 15:29:33', NULL),
(889, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 109, 1, '2021-05-19 15:29:33', NULL),
(890, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 109, 1, '2021-05-19 15:29:33', NULL),
(891, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 110, 1, '2021-05-19 15:30:31', NULL),
(892, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 110, 1, '2021-05-19 15:30:31', NULL),
(893, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 110, 1, '2021-05-19 15:30:31', NULL),
(897, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 112, 1, '2021-06-07 04:53:54', NULL),
(898, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 112, 1, '2021-06-07 04:53:54', NULL),
(899, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 112, 1, '2021-06-07 04:53:54', NULL),
(900, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 113, 1, '2021-06-07 04:55:21', NULL),
(901, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 113, 1, '2021-06-07 04:55:21', NULL),
(902, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 113, 1, '2021-06-07 04:55:21', NULL),
(903, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 114, 1, '2021-06-07 04:56:12', NULL),
(904, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 114, 1, '2021-06-07 04:56:12', NULL),
(905, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 114, 1, '2021-06-07 04:56:12', NULL),
(906, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 114, 1, '2021-06-07 04:56:12', NULL),
(907, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 115, 1, '2021-06-07 04:58:17', NULL),
(908, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 115, 1, '2021-06-07 04:58:17', NULL),
(909, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 115, 1, '2021-06-07 04:58:17', NULL),
(910, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 116, 1, '2021-06-07 04:59:23', NULL),
(911, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 116, 1, '2021-06-07 04:59:23', NULL),
(912, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 116, 1, '2021-06-07 04:59:23', NULL),
(913, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 117, 1, '2021-06-07 05:00:03', NULL),
(914, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 117, 1, '2021-06-07 05:00:03', NULL),
(915, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 117, 1, '2021-06-07 05:00:03', NULL),
(916, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 118, 1, '2021-06-07 05:00:48', NULL),
(917, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 118, 1, '2021-06-07 05:00:48', NULL),
(918, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 119, 1, '2021-06-07 05:01:28', NULL),
(919, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 119, 1, '2021-06-07 05:01:28', NULL),
(920, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 120, 1, '2021-06-07 05:02:11', NULL),
(921, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 120, 1, '2021-06-07 05:02:11', NULL),
(922, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 120, 1, '2021-06-07 05:02:11', NULL),
(923, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 121, 1, '2021-06-07 05:02:45', NULL),
(924, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 121, 1, '2021-06-07 05:02:45', NULL),
(925, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 121, 1, '2021-06-07 05:02:45', NULL),
(926, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 121, 1, '2021-06-07 05:02:45', NULL),
(927, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 122, 1, '2021-06-07 05:52:37', NULL),
(928, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 122, 1, '2021-06-07 05:52:37', NULL),
(929, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 122, 1, '2021-06-07 05:52:37', NULL),
(930, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 122, 1, '2021-06-07 05:52:37', NULL),
(931, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 123, 1, '2021-06-07 05:53:39', NULL),
(932, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 124, 1, '2021-06-07 06:00:14', NULL),
(933, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 124, 1, '2021-06-07 06:00:14', NULL),
(934, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 124, 1, '2021-06-07 06:00:14', NULL),
(935, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 124, 1, '2021-06-07 06:00:14', NULL),
(936, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 125, 1, '2021-06-07 06:01:33', NULL),
(937, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 125, 1, '2021-06-07 06:01:33', NULL),
(938, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 126, 1, '2021-06-07 06:02:35', NULL),
(939, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 126, 1, '2021-06-07 06:02:35', NULL),
(940, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 126, 1, '2021-06-07 06:02:35', NULL),
(941, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 127, 1, '2021-06-07 06:03:35', NULL),
(942, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 127, 1, '2021-06-07 06:03:35', NULL),
(943, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 128, 1, '2021-06-07 06:04:19', NULL),
(944, 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 128, 1, '2021-06-07 06:04:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_location`
--

CREATE TABLE `tbl_location` (
  `id` int NOT NULL,
  `title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `type_of_activity` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `admin_id` int NOT NULL,
  `lattitude` decimal(22,20) NOT NULL,
  `longitude` decimal(22,20) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_location`
--

INSERT INTO `tbl_location` (`id`, `title`, `description`, `type_of_activity`, `admin_id`, `lattitude`, `longitude`, `status`, `created_at`, `updated_at`) VALUES
(87, 'Pashupatinath Temple', 'Pashupatinath Temple is the oldest Hindu temple in Kathmandu. It is not known for certain when Pashupatinath Temple was built. But according to Nepal Mahatmaya and Himvatkhanda,[6] the deity here gained great fame there as Pashupati, the Lord of all Pashus, which are living as well as non-living beings. Pashupatinath Temple\'s existence dates back to 400 B.C.[citation needed] The richly ornamented pagoda houses the sacred linga or holy symbol of Lord Shiva. There are many legends describing how the temple of Lord Aalok Pashupatinath came to existence here. Some of them are narrated below.\r\n\r\nKathmandu pasupati', 'Religious Places', 14, '27.71147342184870000000', '85.35027166765624000000', 0, '2021-05-19 14:27:27', '2021-06-11 12:08:06'),
(90, 'Swayambhunath', 'Swayambhu literally means \"self-existent one\". Believed to date back to 460 A.D., it was built by King Manadeva and by the 13th century, it had become an important center of Buddhism. Legend has it that Swayambhu was born out of a lotus flower that bloomed in the middle of a lake that once spread across the Kathmandu Valley once was. The largest image of the Sakyamuni Buddha in Nepal sits on a high pedestal on the western boundary of Swayambhu beside the Ring Road. Behind the hilltop is a temple dedicated to Manjusri or Saraswati - the Goddess of learning. Chaityas, statues and shrines of Buddhist and Hindu deities fill the stupa complex. The base of the hill is almost entirely surrounded by prayer wheels and deities. Devotees can be seen circumambulating the stupa at all times.\r\n\r\nKathmandu swayambhu', 'Religious Places', 14, '27.71559393346087300000', '85.29252556710304000000', 1, '2021-05-19 14:57:35', NULL),
(91, 'Boudhanath', 'Boudhanath has been an important place of pilgrimage and meditation for Tibetan Buddhists & local Nepalis. It is located on what was a major trade route between Nepal & Tibet. Many traveling merchants used it as a resting place. It is also a popular tourist site. In 1979, Boudha became a UNESCO World Heritage Site. The Great Stupa of Boudhanath is the focal point of the district. There are at least 29 Tibetan Gompas (Monasteries & Nunneries) around Boudhanath. The culture is very much Himalayan with a strong presence of Tibetans & Sherpas, as can be evidenced by the number of restaurants selling momos, thukpa & other Tibetan favorites. Many maroon clad Tibetan Buddhist monks & nuns can be seen walking around Boudha, especially at the Stupa. As a daily ritual, many people walk three or more times around the stupa while repeating the mantra \'Om Mani Padme Hum\' either quietly or aloud.\r\n\r\nKathmandu boudha', 'Religious Places', 14, '27.72164598749106000000', '85.36194112920887000000', 1, '2021-05-19 14:59:08', '2021-05-19 15:03:23'),
(92, 'Hiranya Varna Mahavihar', 'This Buddhist temple complex is believed to have been conserved in the 12th century by the King Vaskar Dev Varma. It is full of art and architecture of the Nepalese pattern. This Vihar is also known as Kwabahal in the Newari language. Legend associates the formal name Hiranya with a rat name Hiranyaka because of its golden color and the popular Vihar located at Kwalakhu a few minutes walking distances from the Patan Durbar Square. The ground floor of the main pagoda is occupied by an image of Shakya muni Buddha. The most ancient structure is the Swoyambhu Stupa in the courtyard. The holy text of Pragya Parmita, written in letters of gold is also faith of people is preserved here since ancient times of recitation.\r\n\r\nLalitpur patan dhoka', 'Religious Places', 14, '27.67628835145507000000', '85.32592159094595000000', 1, '2021-05-19 15:05:14', NULL),
(93, 'Tharlam Monastery', 'Tharlam Monastery is a Tibetan Buddhist monastery of the Sakya sect in Boudhanath, Kathmandu, Nepal.In 1436, Ga Rabjampa Kunga Yeshe (1397 - 1470) founded Tharlam Monastery in Kham, Eastern Tibet. \r\nIt was also known as Tarlam Sabzang Namgyaling, 唐隆寺, 汤陇寺, tanglong si, and Śrī Tarlam Ganden Sabzang Namgyel Ling (thar lam dga\' ldan sa bzang rnam rgyal gling).\r\nIn 1959 the monastery was destroyed by Chinese communists.\r\nThe monastery was rebuilt by Dezhung Rinpoche in Kathmandu, Nepal in 1981.40 rooms for \"meditation and retreat\" were later built.\r\n\r\nKathmandu Jorpati', 'Religious Places', 14, '27.72387775360464000000', '85.36567011478886000000', 1, '2021-05-19 15:06:45', NULL),
(94, 'Shree Bindhyabasini Temple', 'The Bindhyabasini Temple is the oldest temple in the city of Pokhara, Nepal and is located in Ward No. 2, Miruwa. It regularly attracts a large number of locals, Nepalis from across the country and foreigners alike. The main temple is devoted to goddess Bindhyabasini, a Bhagawati who is the incarnation of Kali. There are smaller temples of goddess Saraswati, Shiva, Hanuman, Ganesha in the premises. The temple is situated atop a small hill and can be accessed via stone staircases on the East and North East. The views of the Himalayas from the North of the temple are breathtaking while from the South one can see the expanse of Pokhara city.\r\n\r\nPokhara Bagar', 'Religious Places', 14, '28.23880240466677400000', '83.98584128299832000000', 1, '2021-05-19 15:07:58', NULL),
(95, 'Bhaktapur Durbar Square', 'The ancient city Bhaktapur lies on the Eastern part of Kathmandu valley which is also known as Bhadgaon or Khwopa. The historical monument on around signifies medieval age culture and tradition of Nepal and this old city is inhabited by indigenous Newari people in large group. you can visit to this place to experience Nepali culture,tradition,religion from right way.we are here to support you for your tours.\r\n\r\nBhaktapur', 'sightseeing', 14, '27.67306256946956800000', '85.43072013586573000000', 1, '2021-05-19 15:09:27', NULL),
(96, 'Kathmandu Durbar Square ( Basantapur Durbar )', 'Kathmandu Durbar Square , is one of three squares within Kathmandu Valley in Nepal. Durbar Square (durbar translates to “palace” or “a court held by a prince”) is an important site for Buddhist and Hindu rituals, holy ceremonies, royal events, and kingly coronations.\r\nSurrounded by fountains, ancient statues, small ponds, and a series of courtyards such as Mohan Chok and Sundari Chok, Kathmandu Durbar Square is a meditative, religious site for spiritual seekers. Within the inner complex of Durbar Square is the site of the Old Royal Palaces (referred to as the Hanuman Dhoka Palace Complex). The Royal Palaces used to house the kings of the Shah and Malla Dynasty, who ruled over the city until the 19th-century. The palaces have since been turned into museums.\r\n\r\nKathmandu Basantapur', 'sightseeing', 14, '27.70500769821364000000', '85.30854057505069000000', 1, '2021-05-19 15:10:40', NULL),
(97, 'Patan durbar square', 'The Durbar Square is a marvel of Newar architecture. The square floor is tiled with red bricks. There are many temples and idols in the area. The main temples are aligned opposite of the western face of the palace. The entrance of the temples faces east, towards the palace. There is also a bell situated in the alignment beside the main temples. The Square also holds old Newari residential houses. There are other temples and structures in and around Patan Durbar Square built by the Newa People. A center of both Hinduism and Buddhism, Patan Durbar Square has 136 \"bahals\" (courtyards) and 55 major temples.\r\n\r\nLalitpur patan', 'sightseeing', 14, '27.67353423920594200000', '85.32686605231419000000', 1, '2021-05-19 15:11:36', NULL),
(98, 'Garden of dreams', 'The Garden of Dreams, a neo classical historical garden, is situated in the midst of Kathmandu city, Nepal. The Garden\'s design has much in common with formal European gardens: paved perimeter paths, punctuated by pavilions, trellises, and various planting areas, surrounded by a sunken flower garden with a large pond at its center. It is an architectural landscape that encourages the visitor to stroll around and discover the Garden\'s treasures from many different vantage points.\r\nSightseeing\r\nKathmandu thamel', 'sightseeing', 14, '27.71477196297190000000', '85.31467576136824000000', 1, '2021-05-19 15:13:24', NULL),
(99, 'Narayanhiti palace', 'The Narayanhiti Palace Museum is a public museum in Kathmandu, Nepal located east of the Kaiser Mahal and next to Thamel. The museum was created in 2008 from the complex of the former Narayanhiti Palace following the 2006 revolution. Before the revolution, the palace was the residence and principal workplace of the monarch of the Kingdom of Nepal, and hosted occasions of state. The existing palace complex was built by King Mahendra in 1963, and incorporates an impressive array of courtyards, gardens and buildings\r\n\r\nKathmandu', 'sightseeing', 14, '27.71466773204828700000', '85.31922646026183000000', 0, '2021-05-19 15:14:54', '2021-05-20 09:24:31'),
(100, 'Taleju Bhawani Deju', 'Taleju Temple is a Hindu temple dedicated to Taleju Bhawani, the royal goddess of the Malla dynasty of Nepal. It was built in 1564 by Mahendra Malla and is located in Hanuman Dhoka, Kathmandu Durbar Square, a UNESCO Heritage site. Inside the temple, there is a shire dedicated to Taleju Bhawani, and Kumari Devi. Taleju Temple is only opened once a year on the occasion of Dashain.\r\n\r\nKathmandu Indra chowk', 'sightseeing', 14, '27.70537134216671400000', '85.30916249889360000000', 1, '2021-05-19 15:16:29', NULL),
(101, 'National Museum of Nepal', 'The National Museum of Nepal is a popular attraction of the capital city of Kathmandu. About a century old, the museum stands as a tourist destination and historical symbol for Nepal. Being the largest museum of the country of Nepal, it plays an important role in nationwide archaeological works and development of museums. For the residents of Kathmandu, the monument serves to relive the battles fought on the grounds of Nepal. The main attractions are collection of historical artworks and a historical display of weapons used in the wars in the 18-19th century. The museum has separate galleries dedicated to statues, paintings, murals, coins and weapons. It has three buildings — Juddha Jayatia Khate Sala, Buddha Art Gallery and the main building which consists of natural historical section, cultural section and philatelic section. The National Museum is under the Ministry of Culture, Tourism and Civil Aviation. The museum has practical application in portraying and understanding the past and present traditions of the people of Nepal.\r\n\r\nKathmandu Tahachal', 'sightseeing', 14, '27.70594231038337400000', '85.29019725288482000000', 1, '2021-05-19 15:19:03', NULL),
(102, 'Central Zoo', 'The Central Zoo is a 6-hectare zoo in Jawalakhel, Nepal. It is home to some 870 animals in 109 species, and is operated by the National Trust for Nature Conservation. Although it was originally a private zoo, it was opened to the public in 1956. During the Bhoto Jatra festival, celebrated near the zoo, the zoo may see upwards of 34,000 visitors in a single day after they come to see a historical jeweled vest at the culmination of the Rato Machchhindranath jatra.\r\n\r\nLalitpur Jawalakhel', 'sightseeing', 14, '27.67373016989584000000', '85.31384642107686000000', 1, '2021-05-19 15:20:16', NULL),
(103, 'Aviation Museum', 'Aircraft Museum Kathmandu is an aviation museum located in Sinamangal, Kathmandu, Nepal. The museum is inside an Airbus A330-300 of Turkish Airlines that only flew for about eight months before suffering a runway excursion at Tribhuvan International Airport in Kathmandu in March 2015. It was established under a joint initiative by the Civil Aviation Authority of Nepal and pilot Bed Upreti and his trust. This museum was officially opened to public on 28 November, 2017. The museum\'s exhibits include the aircraft\'s original cockpit setting, model and miniature aircraft and items documenting the history of Nepalese aviation. The museum is the second of its kind in Nepal, after Bed Upreti had already set up a similar, yet smaller aviation museum, the Aircraft Museum Dhangadhi in Dhangadhi in Western Nepal. The museum cost around NPRs 70 million.\r\n\r\nKathmandu, sinamangal', 'sightseeing', 14, '27.69449427792884300000', '85.35520927505067000000', 1, '2021-05-19 15:21:39', NULL),
(104, 'Phewa Lake', 'Phewa Lake, Phewa Tal or Fewa Lake is a freshwater lake in Nepal formerly called Baidam Tal located in the south of the Pokhara Valley that includes Pokhara city; parts of Sarangkot and Kaskikot. The lake is stream-fed but a dam regulates the water reserves, therefore, the lake is classified as semi-natural freshwater lake. It is the second largest lake in Nepal; the largest in Gandaki Pradesh after the Rara lake in the comparison to Nepal\'s water bodies. It is the most popular and most visited lake of Nepal. It is the only lake in Nepal to have a templeTal Barahi Temple at the central part of lake. Phewa lake is located at an altitude of 742 m and covers an area of about 4.43 km². It has an average depth of about 8.6 m and a maximum depth of 24 m. Maximum water capacity of the lake is approximately 43,000,000 cubic metres. The Annapurna range on the north is only about 28 km away from the lake. The lake is also famous for the reflection of mount Machhapuchhre and other mountain peaks of the Annapurna and Dhaulagiri ranges on its surface. The Tal Barahi Temple is situated on an island in the lake. It is located 4 km from the city\'s centre Chipledhunga.\r\n\r\nPokhara', 'sightseeing', 14, '28.21676981772844400000', '83.94508465968173000000', 1, '2021-05-19 15:24:27', NULL),
(105, 'Begnas Lake', 'Begnas Lake is a freshwater lake in Pokhara Lekhnath Metropolis of Kaski district of Nepal located in the south-east of the Pokhara Valley. The lake is the third largest lake of Nepal and second largest, after Phewa Lake, among the eight lakes in Pokhara Valley. Water level in the lake fluctuates seasonally due to rain, and utilization for irrigation. The water level is regulated through a dam constructed in 1988 on the western outlet stream, Khudi Khola.\r\n \r\nPokhara', 'sightseeing', 14, '28.17541336800896000000', '84.09722758689769000000', 1, '2021-05-19 15:25:23', NULL),
(106, 'Devi\'s Falls', 'Devi\'s Falls is a waterfall located at Pokhara in Kaski District, Nepal. The water forms a tunnel after reaching the bottom. This tunnel is approximately 500 feet long and runs 100 feet below ground level. On 31 July 1961, a Swiss couple went swimming but the woman drowned in a pit because of the overflow. Her body was recovered 3 days later in river Phusre with great effort. Her father wished to name it \"David\'s falls\" after her but changed to Devi\'s Fall. Its Nepali name is Patale Chango, which means \"underworld waterfall\". This is one of the most visited places in Nepal. After exiting the tunnel, the water passes through a cave called Gupteshwor Mahadev Cave or \"cave beneath the ground\". The Phewa Lake dam is the water source. The cave also acts as a tourism site because it has complex designs and people even forget the way inside the cave.\r\n\r\nPokhara', 'sightseeing', 14, '28.19124959228333000000', '83.96127323641890000000', 1, '2021-05-19 15:26:27', NULL),
(107, 'Mahendra Cave', 'Mahendra Cave is a cave located in Pokhara-16, batulechaur, Kaski district, close to the Kali khola, is a large limestone cave. It is a rare example of a cave system in Nepal containing stalagmites and stalactites. This show cave attracts thousands of tourists every year. A statue of Hindu lord Shiva can be found inside the cave.\r\n\r\nPokhara near Gharmi Village', 'sightseeing', 14, '28.27268608832398700000', '83.98101363697212000000', 1, '2021-05-19 15:27:32', NULL),
(108, 'Matepani Gumba', 'Matepani Gumba located in Matepani, Kundahar area of Pokhara, Kaski District of the Gandaki Zone in western Nepal. It was established in 1960 A.D.by Nyeshang people who migrated to Pokhara from Manang. Situated on a small hill, east of the Pokhara city, the monastery is about five km from Mahendrapul. This gumba is situated on the top of a green hill mountain.\r\nReligious tourism\r\nPokhara Matepani', 'sightseeing', 14, '28.21712166336856200000', '84.00946343641890000000', 1, '2021-05-19 15:28:33', NULL),
(109, 'Khaste Lake', 'Khaste Lake is a freshwater lake located at the Kharane Phant in Pokhara metropolitan city, Nepal. The lake is located in Lekhnath ward numbers 3, 4 and 6. It covers an area of 24.8030 hectares and the water \'s area covers 13.7370 hectares. Since some years, Pisciculture has also been practiced in this lake. The area known as ‘Bird Wetland’ is best suited as a bird watching lake, as the Siberian, Indian and Afghani birds come here to protect themselves from the cold. Yellow bittern, a summer migratory bird species has been observed near the lake. This area is also a potential research center for migratory birds of different species.\r\n\r\nPokhara', 'sightseeing', 14, '28.19467374649927000000', '84.05046613614961000000', 1, '2021-05-19 15:29:33', NULL),
(110, 'Dipang Lake', 'Dipang Lake is a freshwater lake located in the Lekhnath municipality of Kaski, Nepal. It is the fourth-largest lake among the seven lakes of Lekhnath to be listed in the wetland list of the world. It is famous as a picnic spot from where HImalayas and green hills can be seen. It is also known for wild lotus and swan.\r\nPokhara', 'sightseeing', 14, '28.18092878599860300000', '84.06894394039978000000', 1, '2021-05-19 15:30:31', NULL),
(112, 'Everest Three Passes Trek', 'The Three Passes Trek takes you over three 5,000m+ passes and is the best way to truly experience the Everest Region for those who have the time to spend 3 weeks on the trail. The trek includes sections of the Everest Base Camp Trek, but offers even more spectacular views of the giants in the heart of the Himalaya as you cross the Renjo La, Cho La and Kongma La passes. The Three Passes trek can be combined with other variations of the Everest Base Camp Trek.\r\nMin.duration : 18days\r\nMax. elevation : 5535m', 'Trekking', 18, '27.98910066952881300000', '86.92463312395861000000', 1, '2021-06-07 04:53:54', NULL),
(113, 'Manaslu Circuit Trek', 'The Manaslu Circuit Trek has become more accessible since new lodges were built in 2010. The trek has all the great features you’d expect from a classic Himalayan trek—deep lush valleys at lower elevations, amazing views of 8,000m peaks, and a 5,000m+ pass crossing—all the while remaining largely unspoiled by visitors.\r\n\r\nDespite its rising popularity, the Manaslu Circuit still feels very remote, and has fewer trekkers than the more established classic treks of Nepal.\r\n\r\nMin.duration:13days\r\nMax. elevation : 5106m', 'Trekking', 18, '28.55529970997251600000', '84.55981829166225000000', 1, '2021-06-07 04:55:21', NULL),
(114, 'Langtang Trek', 'The Langtang trek is a trek with real heart. After having been devoid of travelers for a couple of years after the 2015 earthquake, the trails and guesthouses have been rebuilt, and trekkers are back.\r\n\r\nThe trek takes you through magnificent forests to the high alpine meadows and yak pastures around Kyangjin Gompa (a Buddhist monastery), with an optional day hike up to the top of Kyangjin Ri (peak).\r\n\r\nMin.duration:7days\r\nMax. elevation:3800m', 'Trekking', 18, '28.20722067009590000000', '85.62415208389723000000', 1, '2021-06-07 04:56:12', NULL),
(115, 'Annapurna Base Camp Trek', 'The Annapurna Base Camp Trek takes you deep into the Annapurna Massif to the foot of Annapurna South. The scenery is quite different from most other classic treks because the views are less expansive and more vertical: you find yourself looking almost straight up to see the mountains towering above you.\r\n\r\nMin.duration:12days\r\nelevation:4130m', 'Trekking', 18, '28.53120494878338700000', '83.87782818639857000000', 1, '2021-06-07 04:58:17', NULL),
(116, 'Upper Mustang Trek', 'The arid valley of the Upper Mustang Trek features a distinct landscape compared to almost all other treks in Nepal. With its many shades of brown and crumbling sandstone cliffs, this region lies in the desert rain shadow of the Himalaya. Mustang used to be its own kingdom, and its strong Tibetan-influenced traditions make this a culturally very interesting trek.\r\n\r\nMin.duration:12days\r\nelvation:3810m', 'Trekking', 18, '29.16190039279415200000', '83.86224876304509000000', 1, '2021-06-07 04:59:23', NULL),
(117, 'Gokyo Lakes Trek', 'Like the Three Passes Trek, the Gokyo Lakes Trek shares significant sections with the classic Everest Base Camp Trek but takes you into a valley west of Everest. Its main attraction are the beautiful lakes at Gokyo, at around 5,000 meters. From there, trekkers can climb Gokyo Ri (5,357m /17,575 ft), a rocky peak with one of the best expansive views on Mt Everest.\r\n\r\nMin duration:12days\r\nelevation:5357m', 'Trekking', 18, '27.97698585459509600000', '86.67586167765566000000', 1, '2021-06-07 05:00:03', NULL),
(118, 'Dhaulagiri Circuit Trek', 'The Dhaulagiri Circuit Trek is one of the most challenging treks in Nepal because of its sustained elevation, spending 3 days in a row trekking over snow above 5,000m without an easy way down. That said, if you have experience and are up for the challenge, this trek is an unforgettable adventure that takes you into the heart of some the highest mountains in the world.\r\n\r\nMin.duration:14days\r\nelevation :5360m', 'Trekking', 18, '28.70122069242267000000', '83.48707834518649000000', 1, '2021-06-07 05:00:48', NULL),
(119, 'Nar Phu Valley trek', 'The Nar Phu Valley Trek is a real Himalayan wilderness experience that is as unforgettable as it is spectacular. The area  opened to visitors relatively recently, in 2002. Tucked between the more visited Annapurna and Manaslu regions, Nar Phu is a true hidden gem that offers trekkers a rare opportunity to explore unspoiled valleys that feature a mix of raw Himalayan nature and ancient Buddhist culture.\r\n\r\nMin.duration:9days\r\nelevation:5240m', 'Trekking', 18, '28.79523034886032200000', '84.31482868431783000000', 1, '2021-06-07 05:01:28', NULL),
(120, 'Everest Base Camp Trek', 'The Everest Base Camp Trek is among the most famous treks in the world. It certainly deserves its reputation thanks to its history, its great views and the Sherpa culture you experience during the trek. However, since the trek is so popular, its main trails tend to be quite crowded. This is why we list other treks in the Everest region (Three Passes Trek and Gokyo Lakes) higher on our list. Yet despite the crowds, Everest Base Camp continues to be a great trek that deserves to be listed among Nepal’s best treks.\r\n\r\nMin.duration:14days\r\nelevation:5364m', 'Trekking', 18, '27.89869841492062000000', '86.77990071312924000000', 1, '2021-06-07 05:02:11', NULL),
(121, 'Annapurna Circuit Trek', 'The Annapurna Circuit trek is another quintessential Himalayan trek that has lost a bit of its character due to the crowds, and, in this particular case, recently constructed roads. The roads that have reduced the “unspoiled” part of this trek to about 12 days of hiking. Despite all that, the trek remains a great adventure with the crossing of the 5,416m Thorong La pass.\r\n\r\nMin.duration:12days\r\nelevation:5316m', 'Trekking', 18, '28.60085704041936000000', '83.82062116976290000000', 1, '2021-06-07 05:02:45', NULL),
(122, 'Lamatar Ranikot Pilot Baba Hike', 'Pilot Baba is the name of a sage who quit his job as a pilot, after seeing the effects of war and human conflict, to find true peace. Whereas an ashram is a sanctuary or holy place, and the ashram of Pilot Baba is set on a beautiful hill exploding with extensive views of the Kathmandu Valley. The hike is moderately easy, as you’ll gain an approximate 650m.Pilot Baba Ashram is situated on a hillock\r\nThe trail from Suryabinayak Mandir to Pilot Baba Ashram is mesmerizing. The route covers from city to countryside in the hills rising behind Surayabanayak temple. The start point is a 10-minute hike from the Suryabinayak bus stop on the Bhaktapur road. If you wish then you can visit Suryabinayak temple after a hike.From its top, you can grasp a stunning view of the hills surrounding Kathmandu Valley and the Suryabinayak jungle. There is a slow steady climb on a trail to the temple.\r\n\r\nDistance: 14km\r\nDuration: 6-7 hours', 'Hiking', 14, '27.62936780086537400000', '85.39943204168054000000', 1, '2021-06-07 05:52:37', NULL),
(123, 'Khopasi Danda Gaun Circuit Hike', 'The Khopasi Danda Gaau Circuit Hike is the perfect hike to explore the periphery of Kathmandu Valley. Sprawling terraced fields, typical Newari settlements, staggering views of snow-capped mountains on a clear day. Ladkeshwor Mahadev temple is a religious attraction of this hike. During this hike, one should pass via few suspension bridges along the way and green making the Khopasi- Balthali Circuit Hike more appealing.\r\nBalthali, a village en route is a typical village with ancient traditions and cultures untouched by today’s modernization. We will be circulating the Balthali village through the narrow trails.\r\n\r\nDistance: 16 km\r\nDuration: 6-7 hours', 'Hiking', 14, '27.56928646106225500000', '85.53256726492337000000', 1, '2021-06-07 05:53:39', NULL),
(124, 'Sankhu - Changunarayan - Telkot Circuit Hike', 'Telkot is a small village near the jungle. And the mediating point between changu Narayan temple and Nagarkot. You can choose to be there by bus. Or you can have a hike as well.\r\nIn the same sense, Telkot is famous for its beautiful sceneries too.That includes a glimpse of terraced hills, farms, village settlements, and jungles.\r\nMoreover, it has the most exciting waterways to thrill your day. The minimum 20-30 minutes ride of the bus drops you at the telkot. You can find the buses from the kamalbinyak bus park.\r\nNoticeably, telkot is good for hiking. Besides that, it is also the transit point for travelers, who aim to go to salinadi mela. That occurs once a year, continuing for a whole month.\r\n\r\nDistance: 13 km\r\nDuration: 5-6 hours', 'Hiking', 14, '27.51233253369107600000', '85.33008785807228000000', 1, '2021-06-07 06:00:14', NULL),
(125, 'Shivapuri -Nagarjun National Park Hike', 'Initially established as Shivapuri Wildlife reserve in 1976, it was later announced as a national park in 2002. Shivapuri-Nagarjun national park is a vital water catchment area that supplies several hundred thousand cubic liters of water daily to the Kathmandu Valley. The water source in Sundarial is also important for hydro-electricity production. Earlier covering 144 sq. km, this national park covers an additional 15 sq. km. of Nagarjun wildlife reserve now.\r\nLocated towards the north of the Kathmandu valley, Shivapuri-Nagarjun national park is the only national park attached to the country’s capital. This national park providing scenic beauty is spread in the areas of four districts; Kathmandu, Sindhupalchowk, Nuwakot, and Dhading.\r\n \r\nSpread around the area of 4 different districts, Shivapuri- Nagarjun national park can be accessed from numerous locations. Nearest to the valley, we can hike from Budhanilkantha. We can also get there from Sundarijal or via bypass, Balaju. We can easily get vehicles to reach these access points. The famous routes to get there is via Budhanilkantha, Tokha-Jhor, Balau- Nagarun and Balau- Kakani. This park can also be accessed through Chisapani, Jhule, Sundarijal, Mahankal, Panimuhan by paying fees at the entry points.\r\nThe Shivapuri Nagarjun national park is alive with numerous vegetation and wildlife.It is home to 2,122 plant species and comprises four different types of forest in this subtropical zone of Nepal.\r\nAlso, there is faunal diversity with 24 species of mammals including 9 threatened species. We can find the threatened animals; 318 species of birds including the Spiney babbler and 106 species of moth and butterflies are found in the park.\r\nBesides the scenic view, the peaceful forest environment, and the eye-catching biodiversity, the park includes some historical and religious places. Along with the Shivapuri peak which the source of the holy rivers Bagmati and Bishunumati, SNNP has various pilgrimage destinations. One can visit Bagdwar, Bishnudwar, Jamacho, Buddha Gupha, Manichur Mahadev, Kageshwori, Sundarimai, Baudeshwor, Tarkeshwor, Pachali Bhairav, and Nagi Gumba for recreation in the wilderness.\r\n\r\nJhor - Gurjey Bhanjyang – Bagh Bhanjyang – Bishnudwar – Pani Muhan Hike\r\n\r\nDuration: 7 -8 hours\r\nGrade: Tough', 'Hiking', 14, '27.85782234272099000000', '85.36887273504720000000', 1, '2021-06-07 06:01:33', NULL),
(126, 'Jagadol - Tarebhir - Sundarijal Hike', 'Sundarijal, named after the Hindu goddess Sundarimai, is fifteen kilometers north-east from the Kathmandu valley, and on the edge of the Shivapuri National Park. Sundarijal means “beautiful water,” and the area is known for its waterfalls.\r\nSundarijal is very famous for Canyoning and Canyoneering. It is taken as a gateway for many hikers going towards Chisapani. The gigantic waterfalls and rushing stream; boundless hilly ridges, valleys snowy ranges and green peaks; and the water reservoir site are the major attraction for the visitors.\r\nSundarijal is itself located at the center of an ancient forest, belonging to the Sivapuri National Park, and is highly diverse in vegetation like pine, oak, rhododendron and wildlife like Himalaya Black bear, leopard, jungle cat and rhesus monkey. The area is pinpoint to 177 species of birds, 102 species of butterflies, and 129 species of mushrooms. Sundarijal is a complete package of scenarios, hiking, and canyoning for any nature loving traveller.\r\n\r\nDistance: 15 km\r\nDuration: 6-7 hours', 'Hiking', 14, '27.74324279561178500000', '85.37753626314540000000', 1, '2021-06-07 06:02:35', NULL),
(127, 'Suntol Kartikey Nagarkot Hike', 'Nagarkot is 32 km NE of Kathmandu on the northern fringe of the Kathmandu valley. Nagarkot is famous for its Himalayan views- the Himalayan peaks at sunrise are a magnificent sight to behold. Nagarkot is situated at 2,195 meters above the sea level and is the second highest hill around Kathmandu Valley.Located 7000 ft above sea level,\r\n Nagarkot is a world famous international hillstation commanding the killer panorama of the snowcapped Himalayas, rolling hills, deep valleys and pine forests in a quiant rural atmosphere.Considered as the best viewpoint spot to enjoy the magnificent sunrise and sunset over the Himalayas, Nagarkot commands one of the broadest views of the Himalayas in the Kathmandu valley from where we can see the breathtaking views of the 8 major himalayan ranges of Nepal out of 13 from here. The ranges include Annapurna range, Manaslu range, Ganesh Himal range, Langtang range, Jugal range, Rolwaling range, Mahalanguar range(also known as Everest range) and numbur range with splendid views of the kathmandu valley in the west.As it is located in a strategic location, Nagarkot was an ancient fort of the Kathmandu valley to monitor external activities of another kingdom. Later, it became a summer retreat places for the royals before becoming popular as a summer retreat place. Nagarkot has been the favorite summer resort of Kings and Maharajas for its cool climate and the scenic beauty around. Rana Priminister Chandra Shumsher who was advised by his physicians to retreat at the Nagarkot built the summer palace called ‘Bhangeri Durbar’.During the Coronation of the late King Birendra in 1975, the road was metalled, so that the royal guests from 100 nations, could witness the most spectacular sunset and sunrise over the Himalayas, from the best vantage point. Nagarkot offers the panoramic view of host of 8000 m+ giant peaks of Tibet and Nepal including the Mt. Everest.So near yet so far from heat, dust, smoke and city’s hustle-bustle.\r\n\r\nDistance: 16 km\r\nDuration: 6-7 hours', 'Hiking', 14, '27.72902149490538000000', '85.48324516564867000000', 1, '2021-06-07 06:03:35', NULL),
(128, 'Bhimdhunga Batasedanda White Ghumba Hike', 'White Gumba(Seto Gumba) which is also known as Druk Amitabh Monastery.It is located at Nagarjun municipality of Kathmandu district. It is located outside the ring road north of Swoyambhunath temple.\r\nSeto Gumba is a cultural site full of natural beauty, Tibetean architecture & culture.It is surrounded by lush green valley. The picturesque topography of White Gumba is remarkable that attracts the visitors to it.The area around the White Monastery is very peaceful and quite, one can visit it for meditation practices and also for learning about Buddhism.Because it lies at the top of hill we can view the spectacular view of Kathmandu valley from Seto Gumba. If the weather is clear you even can sight the breathtaking view of mountain range.White Gumba is also the second best spot to view the sun rise and sunset after the Nagarkot.Many people visit here to view the sunrise and sunset from the hill which is inexpressible. Peace and tranquility is reflected from every part of the gumba.The architecture and the beauty of The White Gumba forces people to snap pictures.\r\n\r\nDistance: 15 km\r\nDuration: 6-7 hours', 'Hiking', 14, '27.73189777326653000000', '85.23658981832690000000', 1, '2021-06-07 06:04:19', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_reviews`
--

CREATE TABLE `tbl_reviews` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `description` text COLLATE utf8mb4_general_ci NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `id` int NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `username` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `phone_number` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `address` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `avatar` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`id`, `name`, `username`, `password`, `email`, `phone_number`, `address`, `avatar`, `status`, `created_at`, `updated_at`) VALUES
(76, 'aayush dhakal 123', 'aayush1', 'd2295ddd09aa9e94b503b88f6d78eb97', 'hekewixi@mailinator.com', '+1 (301) 198-529799', 'Qui qui excepturi sa', 'imagePost6522b0317cc8f5919988396522b0317ced4271516058.png', 1, '2021-05-13 09:17:18', '2021-06-11 12:50:02'),
(77, 'Kenyon Little', 'aayush2', 'd2295ddd09aa9e94b503b88f6d78eb97', 'weryda@mailinator.com', '+1 (931) 931-6883', 'Vel dolor magna dign', NULL, 1, '2021-05-13 09:46:28', NULL),
(78, 'Wilma Finley', 'podoqiwyw', 'd2295ddd09aa9e94b503b88f6d78eb97', 'ryqopusa@mailinator.com', '+1 (776) 418-3417', 'Eius cupiditate iste', NULL, 1, '2021-06-11 07:11:09', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_favorites`
--
ALTER TABLE `tbl_favorites`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN KEY on location_id favorite` (`location_id`),
  ADD KEY `FOREIGN KEY on user_id favorite` (`user_id`);

--
-- Indexes for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN KEY on location_id images` (`location_id`) USING BTREE,
  ADD KEY `FOREIGN KEY on location_status images` (`status`);

--
-- Indexes for table `tbl_location`
--
ALTER TABLE `tbl_location`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FOREIGN KEY on admin_id location` (`admin_id`) USING BTREE,
  ADD KEY `status` (`status`);

--
-- Indexes for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admins`
--
ALTER TABLE `tbl_admins`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `tbl_comments`
--
ALTER TABLE `tbl_comments`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `tbl_favorites`
--
ALTER TABLE `tbl_favorites`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbl_images`
--
ALTER TABLE `tbl_images`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=945;

--
-- AUTO_INCREMENT for table `tbl_location`
--
ALTER TABLE `tbl_location`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `tbl_reviews`
--
ALTER TABLE `tbl_reviews`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_favorites`
--
ALTER TABLE `tbl_favorites`
  ADD CONSTRAINT `FOREIGN KEY on location_id favorite` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  ADD CONSTRAINT `FOREIGN KEY on user_id favorite` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;

--
-- Constraints for table `tbl_images`
--
ALTER TABLE `tbl_images`
  ADD CONSTRAINT `FOREIGN KEY` FOREIGN KEY (`location_id`) REFERENCES `tbl_location` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
