-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2024 at 03:38 AM
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
-- Database: `householdservice`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `email`, `password`) VALUES
(1, 'admin@gmail.com', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `bookings`
--

CREATE TABLE `bookings` (
  `booking_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `provider_name` varchar(255) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL,
  `appointment_date` date NOT NULL,
  `appointment_time` time NOT NULL,
  `location` varchar(255) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `status` enum('Pending','Confirmed','Canceled','Completed','reviewed') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookings`
--

INSERT INTO `bookings` (`booking_id`, `service_name`, `provider_name`, `provider_id`, `user_name`, `user_email`, `user_phone`, `address`, `appointment_date`, `appointment_time`, `location`, `user_id`, `status`, `created_at`) VALUES
(1, 'Cleaning', 'Gita Maharjan', 19, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-08-26', '09:52:00', 'Latitude: 27.711175, Longitude: 85.296353', 1, 'Pending', '2024-08-25 03:07:31'),
(2, 'Interior Design', 'Asha Thapa', 16, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-08-30', '10:52:00', 'Latitude: 27.711175, Longitude: 85.296353', 1, 'reviewed', '2024-08-25 03:07:46'),
(6, 'Electrician', 'Bishnu Maharjan', 6, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-08-28', '13:03:00', 'Latitude: 27.711175, Longitude: 85.296353', 2, 'Pending', '2024-08-25 03:18:15'),
(7, 'Plumbing', 'Anjana Shakya', 1, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-08-29', '08:03:00', 'Latitude: 27.711175, Longitude: 85.296353', 2, 'Pending', '2024-08-25 03:18:31'),
(8, 'Plumbing', 'Sita Gurung', 3, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-08-26', '13:35:00', 'Latitude: 27.6667, Longitude: 85.3167', 1, 'Pending', '2024-08-25 06:51:18'),
(12, 'Interior Design', 'Anand Sharma', 22, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-09-23', '11:07:00', 'Manamaiju', 1, 'Completed', '2024-09-23 07:35:12'),
(13, 'Plumbing', 'Anjana Shakya', 1, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-09-29', '13:00:00', 'Latitude: 27.692996, Longitude: 85.365104', 2, 'Pending', '2024-09-28 08:26:02'),
(14, 'Plumbing', 'Anjana Shakya', 1, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-09-29', '15:00:00', 'Latitude: 27.6974, Longitude: 85.3318', 1, 'reviewed', '2024-09-28 08:55:17'),
(15, 'Painting', 'Anjana Shakya ', 23, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-09-28', '15:46:00', 'Latitude: 27.6974, Longitude: 85.3318', 1, 'Completed', '2024-09-28 09:02:14'),
(20, 'Electrician', 'Binayak Basyal', 24, 'Aasha Khadka', 'aasha@gmail.com', '9856321456', 'Samakhusi', '2024-09-29', '10:33:00', 'Latitude: 27.693043, Longitude: 85.365173', 3, 'Completed', '2024-09-28 12:52:39'),
(21, 'Interior Design', 'Anand Sharma', 22, 'Aasha Khadka', 'aasha@gmail.com', '9856321456', 'Samakhusi', '2024-09-30', '14:00:00', 'Latitude: 27.692996, Longitude: 85.365104', 3, 'Canceled', '2024-09-28 12:53:13'),
(22, 'Electrician', 'Binayak Basyal', 24, 'Aasha Khadka', 'aasha@gmail.com', '9856321456', 'Samakhusi', '2024-09-30', '10:34:00', 'Latitude: 27.692996, Longitude: 85.365104', 3, 'Canceled', '2024-09-28 12:55:08'),
(23, 'Interior Design', 'Anand Sharma', 22, 'Aasha Khadka', 'aasha@gmail.com', '9856321456', 'Samakhusi', '2024-10-01', '09:10:00', 'Latitude: 27.6974, Longitude: 85.3318', 3, 'Pending', '2024-09-28 17:31:13'),
(24, 'Carpentry', 'Jagrit Timalsina', 25, 'Aasha Khadka', 'aasha@gmail.com', '9856321456', 'Samakhusi', '2024-10-01', '08:30:00', 'Latitude: 27.711153, Longitude: 85.296446', 3, 'Confirmed', '2024-09-28 17:31:47'),
(25, 'Interior Design', 'Anand Sharma', 22, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-09-30', '08:09:00', 'Latitude: 27.6974, Longitude: 85.3318', 2, 'Confirmed', '2024-09-28 17:34:31'),
(26, 'Carpentry', 'Jagrit Timalsina', 25, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-10-01', '10:25:00', 'Latitude: 27.6974, Longitude: 85.3318', 2, 'Confirmed', '2024-09-28 17:35:14'),
(27, 'Electrician', 'Binayak Basyal', 24, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-10-02', '14:45:00', 'Latitude: 27.6974, Longitude: 85.3318', 2, 'Pending', '2024-09-28 17:35:29'),
(28, 'Carpentry', 'Jagrit Timalsina', 25, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-09-30', '10:25:00', 'Latitude: 27.711171, Longitude: 85.296425', 1, 'Confirmed', '2024-09-28 17:43:02'),
(29, 'Carpentry', 'Jagrit Timalsina', 25, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-09-30', '07:00:00', 'Latitude: 27.711171, Longitude: 85.296425', 1, 'Canceled', '2024-09-28 17:43:47'),
(30, 'Painting', 'Anjana Shakya ', 23, 'Kiara Raya', 'kiara@gmail.com', '9807654321', 'Bhaktapur', '2024-10-01', '11:00:00', 'Latitude: 27.6974, Longitude: 85.3318', 9, 'Confirmed', '2024-09-29 00:47:09'),
(31, 'Painting', 'Anjana Shakya ', 23, 'Asiya khatun', 'asiya@gmail.com', '9874563215', 'Sorwkhutte', '2024-10-02', '08:00:00', 'Latitude: 27.6974, Longitude: 85.3318', 2, 'Pending', '2024-09-29 00:48:32'),
(32, 'Painting', 'Anjana Shakya ', 23, 'Aasha Khadka', 'aasha@gmail.com', '9856321456', 'Samakhusi', '2024-10-04', '10:00:00', 'Latitude: 27.6974, Longitude: 85.3318', 3, 'Pending', '2024-09-29 00:49:40'),
(33, 'Painting', 'Anjana Shakya ', 23, 'Aditi Adhikari', 'aditi@gmail.com', '9856321456', 'Manamaiju', '2024-10-06', '13:30:00', 'Latitude: 27.6974, Longitude: 85.3318', 1, 'Pending', '2024-09-29 00:53:57');

-- --------------------------------------------------------

--
-- Table structure for table `provider_schedule`
--

CREATE TABLE `provider_schedule` (
  `schedule_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `available_date` date NOT NULL,
  `available_time` time NOT NULL,
  `is_booked` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `provider_schedule`
--

INSERT INTO `provider_schedule` (`schedule_id`, `provider_id`, `available_date`, `available_time`, `is_booked`) VALUES
(1, 1, '2024-10-02', '12:42:00', 0),
(3, 1, '2024-09-30', '03:05:00', 0),
(4, 1, '2024-09-30', '16:00:00', 0),
(5, 1, '2024-09-29', '15:00:00', 1),
(6, 1, '2024-09-29', '13:00:00', 1),
(7, 22, '2024-09-30', '14:00:00', 1),
(8, 23, '2024-09-29', '15:46:00', 1),
(9, 23, '2024-09-29', '18:50:00', 1),
(10, 23, '2024-09-30', '17:38:00', 1),
(11, 23, '2024-10-01', '17:41:00', 1),
(12, 24, '2024-09-29', '10:33:00', 1),
(13, 24, '2024-09-29', '11:34:00', 0),
(14, 24, '2024-09-30', '10:34:00', 1),
(15, 24, '2024-09-30', '09:20:00', 0),
(16, 25, '2024-09-30', '07:00:00', 1),
(17, 25, '2024-09-30', '10:25:00', 1),
(18, 25, '2024-09-30', '12:25:00', 0),
(19, 25, '2024-09-30', '14:25:00', 0),
(20, 25, '2024-10-01', '10:25:00', 1),
(21, 25, '2024-10-01', '13:26:00', 0),
(22, 25, '2024-10-01', '16:26:00', 0),
(23, 25, '2024-10-01', '08:30:00', 1),
(24, 25, '2024-10-11', '10:30:00', 0),
(25, 25, '2024-10-11', '15:30:00', 0),
(26, 24, '2024-10-01', '13:00:00', 0),
(27, 24, '2024-10-01', '08:07:00', 0),
(28, 24, '2024-10-01', '16:30:00', 0),
(29, 24, '2024-10-02', '14:45:00', 1),
(30, 24, '2024-10-03', '09:40:00', 0),
(31, 22, '2024-09-29', '07:09:00', 0),
(32, 22, '2024-09-30', '08:09:00', 1),
(33, 22, '2024-10-01', '15:10:00', 0),
(34, 22, '2024-10-01', '09:10:00', 1),
(35, 22, '2024-10-02', '08:30:00', 0),
(36, 22, '2024-10-02', '14:45:00', 0),
(37, 22, '2024-10-03', '06:14:00', 0),
(38, 22, '2024-10-29', '13:11:00', 0),
(39, 22, '2024-09-30', '11:22:00', 0),
(40, 25, '2024-10-02', '14:23:00', 0),
(41, 25, '2024-10-02', '10:24:00', 0),
(42, 25, '2024-10-02', '18:24:00', 0),
(43, 25, '2024-10-03', '06:24:00', 0),
(44, 25, '2024-10-03', '08:30:00', 0),
(45, 25, '2024-10-03', '14:30:00', 0),
(46, 25, '2024-10-04', '08:45:00', 0),
(47, 3, '2024-09-30', '09:00:00', 0),
(48, 3, '2024-09-30', '11:00:00', 0),
(49, 4, '2024-10-01', '14:00:00', 0),
(50, 4, '2024-10-02', '08:30:00', 0),
(51, 3, '2024-10-02', '10:30:00', 0),
(52, 4, '2024-10-02', '13:00:00', 0),
(53, 3, '2024-10-03', '09:00:00', 0),
(54, 3, '2024-10-03', '11:00:00', 0),
(55, 3, '2024-10-03', '15:00:00', 0),
(56, 3, '2024-10-04', '08:00:00', 0),
(57, 3, '2024-10-04', '12:00:00', 0),
(58, 3, '2024-10-05', '14:00:00', 0),
(59, 21, '2024-09-30', '09:00:00', 0),
(60, 21, '2024-09-30', '11:00:00', 0),
(61, 21, '2024-10-01', '14:00:00', 0),
(62, 21, '2024-10-02', '08:30:00', 0),
(63, 21, '2024-10-02', '10:30:00', 0),
(64, 21, '2024-10-02', '13:00:00', 0),
(65, 21, '2024-10-03', '09:00:00', 0),
(66, 21, '2024-10-03', '11:00:00', 0),
(67, 21, '2024-10-03', '15:00:00', 0),
(68, 21, '2024-10-04', '08:00:00', 0),
(69, 21, '2024-10-04', '12:00:00', 0),
(70, 21, '2024-10-05', '14:00:00', 0),
(71, 19, '2024-09-30', '09:00:00', 0),
(72, 19, '2024-09-30', '11:00:00', 0),
(73, 19, '2024-10-01', '14:00:00', 0),
(74, 19, '2024-10-02', '08:30:00', 0),
(75, 19, '2024-10-02', '10:30:00', 0),
(76, 19, '2024-10-02', '13:00:00', 0),
(77, 19, '2024-10-03', '09:00:00', 0),
(78, 19, '2024-10-03', '11:00:00', 0),
(79, 19, '2024-10-03', '15:00:00', 0),
(80, 19, '2024-10-04', '08:00:00', 0),
(81, 19, '2024-10-04', '12:00:00', 0),
(82, 19, '2024-10-05', '14:00:00', 0),
(83, 20, '2024-09-30', '09:00:00', 0),
(84, 20, '2024-09-30', '11:00:00', 0),
(85, 20, '2024-10-01', '14:00:00', 0),
(86, 20, '2024-10-02', '08:30:00', 0),
(87, 20, '2024-10-02', '10:30:00', 0),
(88, 20, '2024-10-02', '13:00:00', 0),
(89, 20, '2024-10-03', '09:00:00', 0),
(90, 20, '2024-10-03', '11:00:00', 0),
(91, 20, '2024-10-03', '15:00:00', 0),
(92, 20, '2024-10-04', '08:00:00', 0),
(93, 20, '2024-10-04', '12:00:00', 0),
(94, 20, '2024-10-05', '14:00:00', 0),
(95, 13, '2024-09-30', '09:00:00', 0),
(96, 13, '2024-09-30', '11:00:00', 0),
(97, 13, '2024-10-01', '14:00:00', 0),
(98, 13, '2024-10-02', '08:30:00', 0),
(99, 13, '2024-10-02', '10:30:00', 0),
(100, 13, '2024-10-02', '13:00:00', 0),
(101, 13, '2024-10-03', '09:00:00', 0),
(102, 13, '2024-10-03', '11:00:00', 0),
(103, 13, '2024-10-03', '15:00:00', 0),
(104, 13, '2024-10-04', '08:00:00', 0),
(105, 13, '2024-10-04', '12:00:00', 0),
(106, 13, '2024-10-05', '14:00:00', 0),
(107, 14, '2024-09-30', '09:00:00', 0),
(108, 14, '2024-09-30', '11:00:00', 0),
(109, 14, '2024-10-01', '14:00:00', 0),
(110, 14, '2024-10-02', '08:30:00', 0),
(111, 14, '2024-10-02', '10:30:00', 0),
(112, 14, '2024-10-02', '13:00:00', 0),
(113, 14, '2024-10-03', '09:00:00', 0),
(114, 14, '2024-10-03', '11:00:00', 0),
(115, 14, '2024-10-03', '15:00:00', 0),
(116, 14, '2024-10-04', '08:00:00', 0),
(117, 14, '2024-10-04', '12:00:00', 0),
(118, 14, '2024-10-05', '14:00:00', 0),
(119, 6, '2024-09-30', '09:00:00', 0),
(120, 6, '2024-09-30', '11:00:00', 0),
(121, 6, '2024-10-01', '14:00:00', 0),
(122, 6, '2024-10-02', '08:30:00', 0),
(123, 6, '2024-10-02', '10:30:00', 0),
(124, 6, '2024-10-02', '13:00:00', 0),
(125, 6, '2024-10-03', '09:00:00', 0),
(126, 6, '2024-10-03', '11:00:00', 0),
(127, 6, '2024-10-03', '15:00:00', 0),
(128, 6, '2024-10-04', '08:00:00', 0),
(129, 6, '2024-10-04', '12:00:00', 0),
(130, 6, '2024-10-05', '14:00:00', 0),
(131, 5, '2024-09-30', '09:00:00', 0),
(132, 5, '2024-09-30', '11:00:00', 0),
(133, 5, '2024-10-01', '14:00:00', 0),
(134, 5, '2024-10-02', '08:30:00', 0),
(135, 5, '2024-10-02', '10:30:00', 0),
(136, 5, '2024-10-02', '13:00:00', 0),
(137, 5, '2024-10-03', '09:00:00', 0),
(138, 5, '2024-10-03', '11:00:00', 0),
(139, 5, '2024-10-03', '15:00:00', 0),
(140, 5, '2024-10-04', '08:00:00', 0),
(141, 5, '2024-10-04', '12:00:00', 0),
(142, 5, '2024-10-05', '14:00:00', 0),
(143, 7, '2024-09-30', '09:00:00', 0),
(144, 7, '2024-09-30', '11:00:00', 0),
(145, 7, '2024-10-01', '14:00:00', 0),
(146, 7, '2024-10-02', '08:30:00', 0),
(147, 7, '2024-10-02', '10:30:00', 0),
(148, 7, '2024-10-02', '13:00:00', 0),
(149, 7, '2024-10-03', '09:00:00', 0),
(150, 7, '2024-10-03', '11:00:00', 0),
(151, 7, '2024-10-03', '15:00:00', 0),
(152, 7, '2024-10-04', '08:00:00', 0),
(153, 7, '2024-10-04', '12:00:00', 0),
(154, 7, '2024-10-05', '14:00:00', 0),
(155, 8, '2024-10-01', '09:00:00', 0),
(156, 8, '2024-10-01', '11:00:00', 0),
(157, 8, '2024-10-01', '13:00:00', 0),
(158, 8, '2024-10-02', '08:00:00', 0),
(159, 8, '2024-10-02', '10:30:00', 0),
(160, 8, '2024-10-02', '14:00:00', 0),
(161, 8, '2024-10-03', '09:00:00', 0),
(162, 8, '2024-10-03', '12:00:00', 0),
(163, 8, '2024-10-03', '15:30:00', 0),
(164, 8, '2024-10-04', '10:00:00', 0),
(165, 8, '2024-10-04', '16:00:00', 0),
(166, 8, '2024-10-05', '09:30:00', 0),
(167, 8, '2024-10-05', '14:00:00', 0),
(168, 8, '2024-10-05', '11:00:00', 0),
(169, 8, '2024-10-06', '13:30:00', 0),
(170, 8, '2024-10-06', '09:00:00', 0),
(171, 8, '2024-10-06', '15:00:00', 0),
(172, 9, '2024-10-01', '09:00:00', 0),
(173, 9, '2024-10-01', '11:00:00', 0),
(174, 9, '2024-10-01', '13:00:00', 0),
(175, 9, '2024-10-02', '08:00:00', 0),
(176, 9, '2024-10-02', '10:30:00', 0),
(177, 9, '2024-10-02', '14:00:00', 0),
(178, 9, '2024-10-03', '09:00:00', 0),
(179, 9, '2024-10-03', '12:00:00', 0),
(180, 9, '2024-10-03', '15:30:00', 0),
(181, 9, '2024-10-04', '10:00:00', 0),
(182, 9, '2024-10-04', '16:00:00', 0),
(183, 9, '2024-10-05', '09:30:00', 0),
(184, 9, '2024-10-05', '14:00:00', 0),
(185, 9, '2024-10-05', '11:00:00', 0),
(186, 9, '2024-10-06', '13:30:00', 0),
(187, 9, '2024-10-06', '09:00:00', 0),
(188, 9, '2024-10-06', '15:00:00', 0),
(189, 10, '2024-10-01', '09:00:00', 0),
(190, 10, '2024-10-01', '11:00:00', 0),
(191, 10, '2024-10-01', '13:00:00', 0),
(192, 10, '2024-10-02', '08:00:00', 0),
(193, 10, '2024-10-02', '10:30:00', 0),
(194, 10, '2024-10-02', '14:00:00', 0),
(195, 10, '2024-10-03', '09:00:00', 0),
(196, 10, '2024-10-03', '12:00:00', 0),
(197, 10, '2024-10-03', '15:30:00', 0),
(198, 10, '2024-10-04', '10:00:00', 0),
(199, 10, '2024-10-04', '16:00:00', 0),
(200, 10, '2024-10-05', '09:30:00', 0),
(201, 10, '2024-10-05', '14:00:00', 0),
(202, 10, '2024-10-05', '11:00:00', 0),
(203, 10, '2024-10-06', '13:30:00', 0),
(204, 10, '2024-10-06', '09:00:00', 0),
(205, 10, '2024-10-06', '15:00:00', 0),
(206, 11, '2024-10-01', '09:00:00', 0),
(207, 11, '2024-10-01', '11:00:00', 0),
(208, 11, '2024-10-01', '13:00:00', 0),
(209, 11, '2024-10-02', '08:00:00', 0),
(210, 11, '2024-10-02', '10:30:00', 0),
(211, 11, '2024-10-02', '14:00:00', 0),
(212, 11, '2024-10-03', '09:00:00', 0),
(213, 11, '2024-10-03', '12:00:00', 0),
(214, 11, '2024-10-03', '15:30:00', 0),
(215, 11, '2024-10-04', '10:00:00', 0),
(216, 11, '2024-10-04', '16:00:00', 0),
(217, 11, '2024-10-05', '09:30:00', 0),
(218, 11, '2024-10-05', '14:00:00', 0),
(219, 11, '2024-10-05', '11:00:00', 0),
(220, 11, '2024-10-06', '13:30:00', 0),
(221, 11, '2024-10-06', '09:00:00', 0),
(222, 11, '2024-10-06', '15:00:00', 0),
(223, 12, '2024-10-01', '09:00:00', 0),
(224, 12, '2024-10-01', '11:00:00', 0),
(225, 12, '2024-10-01', '13:00:00', 0),
(226, 12, '2024-10-02', '08:00:00', 0),
(227, 12, '2024-10-02', '10:30:00', 0),
(228, 12, '2024-10-02', '14:00:00', 0),
(229, 12, '2024-10-03', '09:00:00', 0),
(230, 12, '2024-10-03', '12:00:00', 0),
(231, 12, '2024-10-03', '15:30:00', 0),
(232, 12, '2024-10-04', '10:00:00', 0),
(233, 12, '2024-10-04', '16:00:00', 0),
(234, 12, '2024-10-05', '09:30:00', 0),
(235, 12, '2024-10-05', '14:00:00', 0),
(236, 12, '2024-10-05', '11:00:00', 0),
(237, 12, '2024-10-06', '13:30:00', 0),
(238, 12, '2024-10-06', '09:00:00', 0),
(239, 12, '2024-10-06', '15:00:00', 0),
(240, 15, '2024-10-01', '09:00:00', 0),
(241, 15, '2024-10-01', '11:00:00', 0),
(242, 15, '2024-10-01', '13:00:00', 0),
(243, 15, '2024-10-02', '08:00:00', 0),
(244, 15, '2024-10-02', '10:30:00', 0),
(245, 15, '2024-10-02', '14:00:00', 0),
(246, 15, '2024-10-03', '09:00:00', 0),
(247, 15, '2024-10-03', '12:00:00', 0),
(248, 15, '2024-10-03', '15:30:00', 0),
(249, 15, '2024-10-04', '10:00:00', 0),
(250, 15, '2024-10-04', '16:00:00', 0),
(251, 15, '2024-10-05', '09:30:00', 0),
(252, 15, '2024-10-05', '14:00:00', 0),
(253, 15, '2024-10-05', '11:00:00', 0),
(254, 15, '2024-10-06', '13:30:00', 0),
(255, 15, '2024-10-06', '09:00:00', 0),
(256, 15, '2024-10-06', '15:00:00', 0),
(257, 16, '2024-10-01', '09:00:00', 0),
(258, 16, '2024-10-01', '11:00:00', 0),
(259, 16, '2024-10-01', '13:00:00', 0),
(260, 16, '2024-10-02', '08:00:00', 0),
(261, 16, '2024-10-02', '10:30:00', 0),
(262, 16, '2024-10-02', '14:00:00', 0),
(263, 16, '2024-10-03', '09:00:00', 0),
(264, 16, '2024-10-03', '12:00:00', 0),
(265, 16, '2024-10-03', '15:30:00', 0),
(266, 16, '2024-10-04', '10:00:00', 0),
(267, 16, '2024-10-04', '16:00:00', 0),
(268, 16, '2024-10-05', '09:30:00', 0),
(269, 16, '2024-10-05', '14:00:00', 0),
(270, 16, '2024-10-05', '11:00:00', 0),
(271, 16, '2024-10-06', '13:30:00', 0),
(272, 16, '2024-10-06', '09:00:00', 0),
(273, 16, '2024-10-06', '15:00:00', 0),
(274, 17, '2024-10-01', '09:00:00', 0),
(275, 17, '2024-10-01', '11:00:00', 0),
(276, 17, '2024-10-01', '13:00:00', 0),
(277, 17, '2024-10-02', '08:00:00', 0),
(278, 17, '2024-10-02', '10:30:00', 0),
(279, 17, '2024-10-02', '14:00:00', 0),
(280, 17, '2024-10-03', '09:00:00', 0),
(281, 17, '2024-10-03', '12:00:00', 0),
(282, 17, '2024-10-03', '15:30:00', 0),
(283, 17, '2024-10-04', '10:00:00', 0),
(284, 17, '2024-10-04', '16:00:00', 0),
(285, 17, '2024-10-05', '09:30:00', 0),
(286, 17, '2024-10-05', '14:00:00', 0),
(287, 17, '2024-10-05', '11:00:00', 0),
(288, 17, '2024-10-06', '13:30:00', 0),
(289, 17, '2024-10-06', '09:00:00', 0),
(290, 17, '2024-10-06', '15:00:00', 0),
(291, 18, '2024-10-01', '09:00:00', 0),
(292, 18, '2024-10-01', '11:00:00', 0),
(293, 18, '2024-10-01', '13:00:00', 0),
(294, 18, '2024-10-02', '08:00:00', 0),
(295, 18, '2024-10-02', '10:30:00', 0),
(296, 18, '2024-10-02', '14:00:00', 0),
(297, 18, '2024-10-03', '09:00:00', 0),
(298, 18, '2024-10-03', '12:00:00', 0),
(299, 18, '2024-10-03', '15:30:00', 0),
(300, 18, '2024-10-04', '10:00:00', 0),
(301, 18, '2024-10-04', '16:00:00', 0),
(302, 18, '2024-10-05', '09:30:00', 0),
(303, 18, '2024-10-05', '14:00:00', 0),
(304, 18, '2024-10-05', '11:00:00', 0),
(305, 18, '2024-10-06', '13:30:00', 0),
(306, 18, '2024-10-06', '09:00:00', 0),
(307, 18, '2024-10-06', '15:00:00', 0),
(308, 2, '2024-10-01', '09:00:00', 0),
(309, 2, '2024-10-01', '11:00:00', 0),
(310, 2, '2024-10-01', '13:00:00', 0),
(311, 2, '2024-10-02', '08:00:00', 0),
(312, 2, '2024-10-02', '10:30:00', 0),
(313, 2, '2024-10-02', '14:00:00', 0),
(314, 2, '2024-10-03', '09:00:00', 0),
(315, 2, '2024-10-03', '12:00:00', 0),
(316, 2, '2024-10-03', '15:30:00', 0),
(317, 2, '2024-10-04', '10:00:00', 0),
(318, 2, '2024-10-04', '16:00:00', 0),
(319, 2, '2024-10-05', '09:30:00', 0),
(320, 2, '2024-10-05', '14:00:00', 0),
(321, 2, '2024-10-05', '11:00:00', 0),
(322, 2, '2024-10-06', '13:30:00', 0),
(323, 2, '2024-10-06', '09:00:00', 0),
(324, 2, '2024-10-06', '15:00:00', 0),
(325, 1, '2024-10-01', '09:00:00', 0),
(326, 1, '2024-10-01', '11:00:00', 0),
(327, 1, '2024-10-01', '13:00:00', 0),
(328, 1, '2024-10-02', '08:00:00', 0),
(329, 1, '2024-10-02', '10:30:00', 0),
(330, 1, '2024-10-02', '14:00:00', 0),
(331, 1, '2024-10-03', '09:00:00', 0),
(332, 1, '2024-10-03', '12:00:00', 0),
(333, 1, '2024-10-03', '15:30:00', 0),
(334, 1, '2024-10-04', '10:00:00', 0),
(335, 1, '2024-10-04', '16:00:00', 0),
(336, 1, '2024-10-05', '09:30:00', 0),
(337, 1, '2024-10-05', '14:00:00', 0),
(338, 1, '2024-10-05', '11:00:00', 0),
(339, 1, '2024-10-06', '13:30:00', 0),
(340, 1, '2024-10-06', '09:00:00', 0),
(341, 1, '2024-10-06', '15:00:00', 0),
(342, 25, '2024-10-01', '09:00:00', 0),
(343, 25, '2024-10-01', '11:00:00', 0),
(344, 25, '2024-10-01', '13:00:00', 0),
(345, 25, '2024-10-02', '08:00:00', 0),
(346, 25, '2024-10-02', '10:30:00', 0),
(347, 25, '2024-10-02', '14:00:00', 0),
(348, 25, '2024-10-03', '09:00:00', 0),
(349, 25, '2024-10-03', '12:00:00', 0),
(350, 25, '2024-10-03', '15:30:00', 0),
(351, 25, '2024-10-04', '10:00:00', 0),
(352, 25, '2024-10-04', '16:00:00', 0),
(353, 25, '2024-10-05', '09:30:00', 0),
(354, 25, '2024-10-05', '14:00:00', 0),
(355, 25, '2024-10-05', '11:00:00', 0),
(356, 25, '2024-10-06', '13:30:00', 0),
(357, 25, '2024-10-06', '09:00:00', 0),
(358, 25, '2024-10-06', '15:00:00', 0),
(359, 24, '2024-10-01', '09:00:00', 0),
(360, 24, '2024-10-01', '11:00:00', 0),
(361, 24, '2024-10-01', '13:00:00', 0),
(362, 24, '2024-10-02', '08:00:00', 0),
(363, 24, '2024-10-02', '10:30:00', 0),
(364, 24, '2024-10-02', '14:00:00', 0),
(365, 24, '2024-10-03', '09:00:00', 0),
(366, 24, '2024-10-03', '12:00:00', 0),
(367, 24, '2024-10-03', '15:30:00', 0),
(368, 24, '2024-10-04', '10:00:00', 0),
(369, 24, '2024-10-04', '16:00:00', 0),
(370, 24, '2024-10-05', '09:30:00', 0),
(371, 24, '2024-10-05', '14:00:00', 0),
(372, 24, '2024-10-05', '11:00:00', 0),
(373, 24, '2024-10-06', '13:30:00', 0),
(374, 24, '2024-10-06', '09:00:00', 0),
(375, 24, '2024-10-06', '15:00:00', 0),
(376, 23, '2024-10-01', '09:00:00', 0),
(377, 23, '2024-10-01', '11:00:00', 1),
(378, 23, '2024-10-01', '13:00:00', 0),
(379, 23, '2024-10-02', '08:00:00', 1),
(380, 23, '2024-10-02', '10:30:00', 0),
(381, 23, '2024-10-02', '14:00:00', 0),
(382, 23, '2024-10-03', '09:00:00', 0),
(383, 23, '2024-10-03', '12:00:00', 0),
(384, 23, '2024-10-03', '15:30:00', 0),
(385, 23, '2024-10-04', '10:00:00', 1),
(386, 23, '2024-10-04', '16:00:00', 0),
(387, 23, '2024-10-05', '09:30:00', 0),
(388, 23, '2024-10-05', '14:00:00', 0),
(389, 23, '2024-10-05', '11:00:00', 0),
(390, 23, '2024-10-06', '13:30:00', 1),
(391, 23, '2024-10-06', '09:00:00', 0),
(392, 23, '2024-10-06', '15:00:00', 0),
(393, 23, '2024-09-30', '10:04:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `review_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `provider_id` int(11) NOT NULL,
  `booking_id` int(11) NOT NULL,
  `rating` int(11) DEFAULT NULL CHECK (`rating` >= 1 and `rating` <= 5),
  `review` text NOT NULL,
  `review_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `serviceproviders`
--

CREATE TABLE `serviceproviders` (
  `provider_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `citizenship_no` varchar(50) NOT NULL,
  `address` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `service_type` varchar(100) NOT NULL,
  `profile_description` text DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `registration_date` datetime NOT NULL DEFAULT current_timestamp(),
  `status` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `serviceproviders`
--

INSERT INTO `serviceproviders` (`provider_id`, `name`, `email`, `password`, `phone`, `citizenship_no`, `address`, `image`, `service_type`, `profile_description`, `latitude`, `longitude`, `registration_date`, `status`) VALUES
(1, 'Anjana Shakya', 'anjanashakya@gmail.com', '$2y$10$VzFHJQhtJ7bOsl8QJFGC1e', '9841123456', '123456789', 'Kathmandu, Nepal', 'a.jpg', 'Plumbing', 'Expert in plumbing services for residential and commercial properties.', 27.71724500, 85.32396000, '2024-08-25 08:45:34', 1),
(2, 'Ram Shah', 'ramshah@gmail.com', '$2y$10$JlKjO0JHsb4QlsXKs4uIkO', '9841234567', '123456780', 'Lalitpur, Nepal', 'p2.jpg', 'Plumbing', 'Skilled plumber with over 10 years of experience.', 27.67100000, 85.32400000, '2024-08-25 08:45:34', 1),
(3, 'Sita Gurung', 'sita.gurung@gmail.com', '$2y$10$H0kjN7KmZc9OqgBd0p2Ib.', '9801234567', '123456781', 'Bhaktapur, Nepal', 'p1.jpg', 'Plumbing', 'Providing reliable and affordable plumbing services.', 27.66700000, 85.42900000, '2024-08-25 08:45:34', 0),
(4, 'Kamal Thapa', 'kamalthapa@gmail.com', '$2y$10$AsdQvIkZj7r5lbPf9qR9O.', '9801123456', '123456782', 'Kathmandu, Nepal', 'em1.jpeg', 'Electrician', 'Certified electrician specializing in wiring and repairs.', 27.72000000, 85.32000000, '2024-08-25 08:45:34', 1),
(5, 'Rita Sharma', 'ritasharma@gmail.com', '$2y$10$EzHTKbDfdX3QwZXHc2tRce', '9841123444', '123456783', 'Lalitpur, Nepal', 'a.jpg', 'Electrician', 'Experienced in electrical installations and troubleshooting.', 27.67300000, 85.31700000, '2024-08-25 08:45:34', 1),
(6, 'Bishnu Maharjan', 'bishnumaharjan@gmail.com', '$2y$10$C5HJN7yMZ7D9zQYmbPlj9e', '9841567890', '123456784', 'Bhaktapur, Nepal', 'em2.jpeg', 'Electrician', 'Offering a wide range of electrical services.', 27.66900000, 85.42300000, '2024-08-25 08:45:34', 1),
(7, 'Nabin Rai', 'nabinrai@gmail.com', '$2y$10$VHTJnQLM2HLK7xZHIJN1y.', '9801567890', '123456785', 'Kathmandu, Nepal', 'ab.jpg', 'Carpentry', 'Expert carpenter for custom furniture and repairs.', 27.71500000, 85.31800000, '2024-08-25 08:45:34', 1),
(8, 'Sangita Tamang', 'sangitatamang@gmail.com', '$2y$10$VJHLmk8ZLKo1zNLyQHJK9m', '9801123444', '123456786', 'Lalitpur, Nepal', 'a.jpg', 'Carpentry', 'Specialist in residential and commercial carpentry.', 27.67500000, 85.32500000, '2024-08-25 08:45:34', 1),
(9, 'Raju Prajapati', 'rajuprajapati@gmail.com', '$2y$10$HJL6kZ3M7KJhlnJNY9kOlO', '9801987654', '123456787', 'Bhaktapur, Nepal', 'ab.jpg', 'Carpentry', 'Providing high-quality carpentry services.', 27.67100000, 85.42000000, '2024-08-25 08:45:34', 1),
(10, 'Sunita Shrestha', 'sunitashrestha@gmail.com', '$2y$10$JmNl8pLnL5kJmQkNY8MLp.', '9801345678', '123456788', 'Kathmandu, Nepal', 'a.jpg', 'Painting', 'Professional painting services for homes and offices.', 27.71900000, 85.31600000, '2024-08-25 08:45:34', 1),
(11, 'Rajendra Adhikari', 'rajendraadhikari@gmail.com', '$2y$10$JLM7KoLh6JLlk8MlPQNRp.', '9841654321', '123456789', 'Lalitpur, Nepal', 'ab.jpg', 'Painting', 'Experienced painter specializing in interior and exterior painting.', 27.67900000, 85.32200000, '2024-08-25 08:45:34', 1),
(12, 'Anju Manandhar', 'anjumanandhar@gmail.com', '$2y$10$HJLn8KLZLoMjJNjMLJNpY9', '9801765432', '123456790', 'Bhaktapur, Nepal', 'a.jpg', 'Painting', 'Offering a wide range of painting services.', 27.66700000, 85.42400000, '2024-08-25 08:45:34', 0),
(13, 'Kiran Basnet', 'kiran.basnet@gmail.com', '$2y$10$LHl0nmN3nHJMmQPLKNlJ8e', '9841123555', '123456791', 'Kathmandu, Nepal', 'ab.jpg', 'Gardening', 'Providing expert gardening services for residential and commercial properties.', 27.71800000, 85.31700000, '2024-08-25 08:45:34', 1),
(14, 'Mina Singh', 'mina.singh@gmail.com', '$2y$10$LJNkLmlhMLK7NmPLNkJOlk', '9801223344', '123456792', 'Lalitpur, Nepal', 'vision.jpg', 'Gardening', 'Specializing in garden design and maintenance.', 27.67000000, 85.32700000, '2024-08-25 08:45:34', 1),
(15, 'Dilip Shrestha', 'dilipshrestha@gmail.com', '$2y$10$HJL8KoLNJLKJnmLN9mlJ0l', '9801765432', '123456793', 'Bhaktapur, Nepal', 'ab.jpg', 'Gardening', 'Offering a wide range of gardening services.', 27.66800000, 85.42500000, '2024-08-25 08:45:34', 1),
(16, 'Asha Thapa', 'ashathapa@gmail.com', '$2y$10$KLmJ8pLmL5KJmQkNLJ8Mk9', '9841223344', '123456794', 'Kathmandu, Nepal', 'a.jpg', 'Interior Design', 'Professional interior designer for residential and commercial spaces.', 27.71600000, 85.31900000, '2024-08-25 08:45:34', 1),
(17, 'Prabin Rana', 'prabinrana@gmail.com', '$2y$10$MJL8pLnmKL7NjNkLmQOPRl', '9801123344', '123456795', 'Lalitpur, Nepal', 'ab.jpg', 'Interior Design', 'Specialist in modern and contemporary interior design.', 27.67800000, 85.32100000, '2024-08-25 08:45:34', 1),
(18, 'Rekha Khadka', 'rekhakhadka@gmail.com', '$2y$10$MJLK9kLnjLm7NmJLNKMP0r', '9801456789', '123456796', 'Bhaktapur, Nepal', 'vision.jpg', 'Interior Design', 'Offering creative interior design solutions.', 27.67000000, 85.42200000, '2024-08-25 08:45:34', 1),
(19, 'Gita Maharjan', 'gitamaharjan@gmail.com', '$2y$10$NLM9koNmMLj7NjLNKOQPRp', '9801234560', '123456797', 'Kathmandu, Nepal', 'c2.jpg', 'Cleaning', 'Providing reliable and efficient cleaning services.', 27.71750000, 85.31500000, '2024-08-25 08:45:34', 1),
(20, 'Hari Shrestha', 'harishrestha@gmail.com', '$2y$10$MLk7JNL8KoMPLkJ8MLJ0L9', '9801123333', '123456798', 'Lalitpur, Nepal', 'c1.jpg', 'Cleaning', 'Expert in residential and office cleaning.', 27.67200000, 85.32800000, '2024-08-25 08:45:34', 1),
(21, 'Maya Shakya', 'mayashakya@gmail.com', '$2y$10$HLJLm8KLMo7MnJKLNPQ0lN', '9841123344', '123456799', 'Bhaktapur, Nepal', 'c.jpg', 'Cleaning', 'Offering affordable cleaning services.', 27.66850000, 85.42100000, '2024-08-25 08:45:34', 1),
(22, 'Anand Sharma', 'anandsharma1@gmail.com', '$2y$10$yEENGQ2/gvAQesAdBYs12ex.HvKbaVHNkDw3VzuiVX4Ckwma5Sqem', '9874563215', '7456321', 'Bafal', 's.jpg', 'Interior Design', 'Well Qualified for desiging and deacure', 27.68297640, 85.48258370, '2024-08-25 08:54:40', 1),
(23, 'Anjana Shakya ', 'anjanashakya1@gmail.com', '$2y$10$XQbYm8Yso7s2WiHO253kXO3qNfbLD2xw88NW3JFdQu/0csDoeVw9O', '9803308155', '45585445', 'Dallu', '1727513985-pt.JPG', 'Painting', 'Professional painting services for homes and offices.', 27.71845120, 85.32459520, '2024-09-28 14:44:45', 1),
(24, 'Binayak Basyal', 'binayakbasyal@gmail.com', '$2y$10$dSG1EQ8Z81q2pBfPX0Hx5OMl9ad/iDQn5eSqFd/plCnnQOJfdhjqm', '9845621347', '78945612', 'Pepsicola', 'b.jpg', 'Electrician', 'I am profissional electrician.', 27.72057160, 85.38271480, '2024-09-28 18:32:01', 1),
(25, 'Jagrit Timalsina', 'jagrit@gmail.com', '$2y$10$AG5Pg64kLA73thYSPOquNO6t9pHjNbZ.inCf1lS/QYo3E0kOk4rNq', '9812356485', '456321451', 'Bagbazar', '277321370_141048828426339_3163724115927108484_n.jpg', 'Carpentry', 'Without any doubt you can hire. There will no regret. I have work for many years.', 27.73923760, 85.28258370, '2024-09-28 22:14:30', 1),
(26, 'Ankit Karki', 'ankit@gmail.com', '$2y$10$Or7CGfaEq8s60hQoaiG9vONq.IY4tqJocO/2C/2tQXZgwu6LPu/a2', '9856321456', '75123654', 'Bhaktapur', '1727542414-449149260_843053680525869_9142036714619445264_n.jpg', 'Plumbing', 'Our professional plumbing service specializes in installing, repairing, and maintaining plumbing systems for residential and commercial properties. ', 27.73923760, 85.28258370, '2024-09-28 22:38:34', 1);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `service_id` int(11) NOT NULL,
  `service_name` varchar(255) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`service_id`, `service_name`, `description`) VALUES
(1, 'Plumbing', 'Repairing leaks, unclogging drains, and installing or fixing pipes, faucets, and other plumbing-related issues'),
(2, 'Electrician', 'Installation and repair of electrical systems, outlets, switches, lighting, and other electrical applicance'),
(3, 'Carpentry', 'Creating, installing, or repairing wooden structures like furniture, cabinets, and doors'),
(4, 'Painting', 'Enhancing the appearance of interiors and exteriors with professional painting, including wall preparation, priming, and finishing'),
(5, 'Gardening', 'Maintaining and beautifying outdoor spaces with tasks such as planting, lawn care, pruning, and garden design'),
(6, 'Interior Design', 'Creating functional and aesthetically pleasing interior spaces by selecting color schemes, furniture, and decor that reflect the client style'),
(7, 'Cleaning', 'Providing thorough cleaning services for homes, including dusting, vacuuming. mopping, and sanitizing various areas');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `address` varchar(255) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `latitude` decimal(10,8) DEFAULT NULL,
  `longitude` decimal(11,8) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `name`, `email`, `password`, `phone`, `address`, `image`, `latitude`, `longitude`, `created_at`) VALUES
(1, 'Aditi Adhikari', 'aditi@gmail.com', '$2y$10$T2hAKAZPFBO5ZjdfsQYsVOr9XAO1NXi6VA80tliBD4Vfjwb9LTSDa', '9856321456', 'Manamaiju', 'ad.jpg', 27.71117500, 85.29635300, '2024-08-25 03:06:34'),
(2, 'Asiya khatun', 'asiya@gmail.com', '$2y$10$pgSnYCQqH1uLnnek5evoe.trC4hfVjpfIIkvwa2QuKKR718JQYpFC', '9874563215', 'Sorwkhutte', 'mota.JPG', 27.71117500, 85.29635300, '2024-08-25 03:17:05'),
(3, 'Aasha Khadka', 'aasha@gmail.com', '$2y$10$YrmdrGcK10K8bZd4BBmKie50oy2juLefeNz8VsV7cKhlcQsfinHaO', '9856321456', 'Samakhusi', 'ab.jpg', 27.69304300, 85.36517300, '2024-09-28 12:51:21'),
(4, 'Gopal Lama', 'gopallama@gmail.com', '$2b$12$a76hBzLqhgVbbdBwaJU9QOd7hevn57aTUUYEWZTSaaf.cvMdDQ3py ​', '9801234567', 'Putalisadak', 'vision.jpg', 27.71724500, 85.32396000, '2024-09-28 23:47:34'),
(9, 'Kiara Raya', 'kiara@gmail.com', '$2y$10$HxTzkieWqAqcW8hu4/cql.uvcGAejk/dSkw0nCRqqqhmJXx.DPVm.', '9807654321', 'Bhaktapur', 'img.jpg', 27.67570200, 85.43658600, '2024-09-28 23:59:06'),
(10, 'Rajendra Shah', 'rajendra@gmail.com', '$2y$10$kFCLKlQB41oA8oijYiKik.EviwbHRJARtvIJ1o9JADr5lQMxaQqUG', '9812345678', 'Lalitpur', 'Photo.jpg', 27.71751000, 85.32245100, '2024-09-29 00:00:05');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `bookings`
--
ALTER TABLE `bookings`
  ADD PRIMARY KEY (`booking_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `provider_schedule`
--
ALTER TABLE `provider_schedule`
  ADD PRIMARY KEY (`schedule_id`),
  ADD KEY `provider_id` (`provider_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`review_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `provider_id` (`provider_id`),
  ADD KEY `booking_id` (`booking_id`);

--
-- Indexes for table `serviceproviders`
--
ALTER TABLE `serviceproviders`
  ADD PRIMARY KEY (`provider_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`service_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `bookings`
--
ALTER TABLE `bookings`
  MODIFY `booking_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `provider_schedule`
--
ALTER TABLE `provider_schedule`
  MODIFY `schedule_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=394;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `review_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `serviceproviders`
--
ALTER TABLE `serviceproviders`
  MODIFY `provider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `service_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bookings`
--
ALTER TABLE `bookings`
  ADD CONSTRAINT `bookings_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `serviceproviders` (`provider_id`),
  ADD CONSTRAINT `bookings_ibfk_2` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `provider_schedule`
--
ALTER TABLE `provider_schedule`
  ADD CONSTRAINT `provider_schedule_ibfk_1` FOREIGN KEY (`provider_id`) REFERENCES `serviceproviders` (`provider_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `reviews_ibfk_2` FOREIGN KEY (`provider_id`) REFERENCES `serviceproviders` (`provider_id`),
  ADD CONSTRAINT `reviews_ibfk_3` FOREIGN KEY (`booking_id`) REFERENCES `bookings` (`booking_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
