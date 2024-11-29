-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 22, 2024 at 11:22 AM
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
-- Database: `appointment`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `username` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `appointment_tbl`
--

CREATE TABLE `appointment_tbl` (
  `app_id` int(10) NOT NULL,
  `childName` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `parentName` varchar(50) DEFAULT NULL,
  `contactNumber` int(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `appointmentDate` date NOT NULL,
  `appointmentTime` time(6) NOT NULL,
  `age` int(3) NOT NULL,
  `reason` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointment_tbl`
--

INSERT INTO `appointment_tbl` (`app_id`, `childName`, `dob`, `parentName`, `contactNumber`, `email`, `appointmentDate`, `appointmentTime`, `age`, `reason`) VALUES
(1, 'Andrea Kaye', '2024-03-20', 'Maria Maria', 2147483647, 'rphrdd_dlos4b@yahoo.com', '2024-11-28', '07:31:00.000000', 0, 'kjdksdhfsdukf'),
(2, 'shaila salcedo', '2021-07-07', 'Myrna Salcedo', 2147483647, 'aileenculiat03@gmail.com', '2024-11-30', '07:00:00.000000', 20, 'dnsjfhsekf');

-- --------------------------------------------------------

--
-- Table structure for table `users_table`
--

CREATE TABLE `users_table` (
  `user_id` int(10) NOT NULL,
  `username` varchar(100) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users_table`
--

INSERT INTO `users_table` (`user_id`, `username`, `password`, `email`) VALUES
(1, 'aileen culiat', '$2y$10$W1f.g8VXYFf.bqq20Ronbul26MXNKRNkZPb8biUtmUbqklfcbed6C', 'aileenculiat03@gmail.com'),
(2, 'andrea kaye', '$2y$10$vKXNvugmih2wVr3Tfi/FOe2DVjLxixnwwPYkQi0XjOjYEO2ic.nTu', 'aileenculiat03@gmail.com'),
(3, 'aileeeen', '$2y$10$wqp1D636z71JzF3.j5OCX.xcVBwz1RRapXGw8DuFe50LvKCBUB0YC', 'aileenculiat03@gmail.com'),
(4, 'admin', '$2y$10$IBDLzHrt2YbNZjWMXZfrse2EaFkKWUztcdJiqRuc516aba84hWVE6', 'admin03@gmail.com'),
(5, 'admin', '$2y$10$KQnkDJLcbrmyl6Q9BMVgB.Vx5wVRme5VrDj2KIMuOP.Qph3U0T2Ae', 'aileenculiat03@gmail.com'),
(6, 'admin', '$2y$10$mWEyLM2zaU1giGvvJhXjx.nWqYZ5yEQ8Y8j8q6TJYe7cOHs8ZkS6G', 'aileenculiat03@gmail.com'),
(7, 'aylin', '$2y$10$YUmKvFSIRYGJMXvmETaUgePIWRF5i3IrQXFrcBA8aDZL4nU8Kfqs6', 'aylin03@gmail.com'),
(8, 'admin', '$2y$10$zxHVaf1Bqo8yWMLvD9yU2OPC3CopwhhmS.sIG9MrLCD8juu6gqaiO', 'aileenculiat03@gmail.com'),
(9, 'admin', '$2y$10$k2iTL6kVCuPTfnzucoQHBuwITD.iWOlumay1aFzZur38M1/i8Ibnm', ''),
(11, 'Andrea Kaye', '$2y$10$fFNpK09ghuubKPXmaIWNWuhEWt9tkAJm6flgmL8c4qyt2EqSaUTra', 'aileenculiat03@gmail.com'),
(12, 'Aira', '$2y$10$hTk8cBYY6xJSPsN.V6wGcOWHd/ZSoFbxuhV9CQugvWna1LNgYTQuq', 'aileenculiat03@gmail.com'),
(13, 'admin', '$2y$10$4J.kKWF7fl44wEsZxuIAQuXkgZpH2EO5JKa169CpLFr0CsiKu3VWu', 'aileenculiat03@gmail.com'),
(14, 'loida', '$2y$10$nf7g04QddIQvN6mxfVUqr.eDYcKp5fyslCbpxEcl7JZx/q2IwK50S', 'aileenculiat03@gmail.com'),
(15, 'admin', '$2y$10$RG.HqpnhZXlZ9CkRhOwmG.S7SY/N2TZW6Z8fJKN1AQpBxwd4G5dpS', ''),
(16, '', '$2y$10$RqnJ6fJSMIKPKI8/YibwdeeJ8nyuZbMs0tdCDI7mWtvflNPcibvFK', ''),
(17, 'admin', '$2y$10$mSzNhSA./B5yGC4m1L0YCedttwGbp9elrzVC0ME6KZammcpBav4e2', ''),
(18, '', '$2y$10$eDmIWEmq1DKTbgS//NH0dO3D/yNk/aEXUpahUIk/iyU4d6BiOAF.q', ''),
(19, 'Airajane', '$2y$10$1jJKNuCY7dKhgPA2b/.jWu4VBllYRRp.f1Ha1JyxPKCGjpfmKws4O', 'aileenculiat03@gmail.com'),
(20, 'shaila', '$2y$10$0vuaBtZUqjmnRtalDzQMpe4gvbK/W/u4JId8KtmVpOXECm4SuQnLG', 'shailamaysalcedo@gmail.com'),
(21, 'shaila', '$2y$10$xSxGh7vuma3DhWCi3aOywO2.Lx8joqlhAh9ojCerS9vUhONmFY4De', 'shailamaysalcedo@gmail.com'),
(22, 'shaila', '$2y$10$U1wBu/.XK6tLb4SgGanlSuMTV18JHy99HPZyhJRIZ6e.X.Vy.q5ai', 'shailamaysalcedo@gmail.com'),
(23, 'Aileen Culiat', '$2y$10$3Jb3Tsx5yFBrn8S1UAm7l.K7FeY1pUy/r9mfpn3eIJnGXc7b2OR2q', 'aileenculiat03@gmail.com'),
(24, 'admin', '$2y$10$0qipxcdbtgjy8rlK.ImjP.WnR6Cn0x1oYdTTPpboJzSPErkOrM7rG', 'aileenculiat03@gmail.com'),
(25, 'Masa', '$2y$10$SU14zdfNW4xan7Mf1aasAeyuJIQwRLhbL/9eORUBaj0zcmeZZj/9C', 'shailamaysalcedo@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  ADD PRIMARY KEY (`app_id`);

--
-- Indexes for table `users_table`
--
ALTER TABLE `users_table`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `appointment_tbl`
--
ALTER TABLE `appointment_tbl`
  MODIFY `app_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users_table`
--
ALTER TABLE `users_table`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
