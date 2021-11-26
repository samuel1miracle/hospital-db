-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 26, 2021 at 09:56 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hospital_record`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `id` int(11) NOT NULL,
  `First_Name` varchar(55) DEFAULT NULL,
  `Last_name` varchar(55) DEFAULT NULL,
  `Middle_name` varchar(55) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `License_id` varchar(25) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`id`, `First_Name`, `Last_name`, `Middle_name`, `State`, `Phone`, `License_id`) VALUES
(1, 'Akpan', 'David', '', 'Akwa Ibom', '07078565645', '563456'),
(2, 'Lawal', 'Muktar', 'Abba', 'Borno', '0907656556', '563476'),
(3, 'Isreal', 'Olaniyi', 'Akin', 'Ogun', '090767656', '563423'),
(4, 'Adebayo', 'Waziri', 'Bature', 'Sokoto', '080787556', '564534'),
(5, 'Jonah', 'Isreal', 'Andy', 'Taraba', '0708787656', '764534'),
(6, 'Ogana', 'David', 'Sunday', 'Benue', '08078767656', '764534'),
(7, 'Timothy', 'Dauda', 'Asabe', 'Taraba', '0906764557', '875634'),
(8, 'Angel', 'Owolabi', 'Bukkola', 'Osun', '0907647456', '745567'),
(9, 'Faith', 'Ogana', '', 'Benue', '08078765645', '897645'),
(10, 'Miracle', 'Samuel', '', 'Rivers', '0807864534', '763456');

-- --------------------------------------------------------

--
-- Table structure for table `nurses`
--

CREATE TABLE `nurses` (
  `id` int(11) NOT NULL,
  `First_name` varchar(55) DEFAULT NULL,
  `Last_name` varchar(55) DEFAULT NULL,
  `Middle_name` varchar(55) DEFAULT NULL,
  `State` varchar(25) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL,
  `License_id` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `nurses`
--

INSERT INTO `nurses` (`id`, `First_name`, `Last_name`, `Middle_name`, `State`, `Phone`, `License_id`) VALUES
(1, 'Ijeoma', 'Dike', '', 'Imo', '09077678688', '653412'),
(2, 'Mariam', 'Abdulmulmin', '', 'Nasarawa', '08078563423', '098645'),
(3, 'Obianuju', 'Okerefor', 'Judy', 'Imo', '07009234898', '785634'),
(4, 'Sandra', 'Nwachukwu', 'Candi', 'Imo', '0908976453', '764534'),
(5, 'Maria', 'Olaboje', '', 'Ogun', '0808976459', '765645'),
(6, 'Efeture', 'Maduka', '', 'Rivers', '0709897553', '784523'),
(7, 'Chekube', 'Eze', 'Dike', 'Anambra', '0809886649', '997553'),
(8, 'Peace', 'Bature', 'Asabe', 'Taraba', '0709875533', '323565'),
(9, 'Mina', 'Bello', '', 'Borno', '070934782823', '972938'),
(10, 'Destiny', 'Ishaku', '', 'Pleatue', '09087878675', '937493');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `First_name` varchar(55) DEFAULT NULL,
  `Last_name` varchar(55) DEFAULT NULL,
  `Middle_name` varchar(55) DEFAULT NULL,
  `Diagnosis` varchar(255) DEFAULT NULL,
  `Phone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `First_name`, `Last_name`, `Middle_name`, `Diagnosis`, `Phone`) VALUES
(1, 'Agnes', 'Amadi', '', 'Cancer', '09078766756'),
(2, 'Gift', 'Eze', '', 'Fever', '0907876676'),
(3, 'Esther', 'Nwalobi', 'Sege', 'Typhoid', '0807876567'),
(4, 'Ekaete', 'Akapn', '', 'Covid_19', '07078765676'),
(5, 'Abdul', 'Bature', 'Ishaku', 'Ebola', '09087656767'),
(6, 'Maduka', 'Chibueze', 'Dike', 'Malaria', '090786578'),
(7, 'Ishak', 'Abbah', 'Iskauba', 'Covid_19', '0907675645'),
(8, 'Mariam', 'Nebuel', 'Efuka', 'Malaria', '0908967556'),
(9, 'Maria', 'Dickson', 'Ishaku', 'Typhoid', '07078765656'),
(10, 'Godsgift', 'Nwachukwu', '', 'Cancer', '08089563445');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `Patient_id` int(11) DEFAULT NULL,
  `Amount` int(11) DEFAULT NULL,
  `Balance` int(11) DEFAULT NULL,
  `Date_paid` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`Patient_id`, `Amount`, `Balance`, `Date_paid`) VALUES
(1, 75000, 0, '2020-02-02 00:00:00'),
(2, 45000, 15000, '2021-08-02 00:00:00'),
(3, 220000, 0, '2021-05-09 00:00:00'),
(4, 95000, 10000, '2021-05-08 00:00:00'),
(5, 25000, 9000, '2020-02-02 00:00:00'),
(6, 35000, 0, '2021-11-27 00:00:00'),
(7, 40000, 12000, '2021-09-15 00:00:00'),
(8, 10000, 50000, '2020-02-02 00:00:00'),
(9, 12000, 28000, '2021-04-22 00:00:00'),
(10, 55000, 0, '2021-08-25 00:00:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nurses`
--
ALTER TABLE `nurses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
