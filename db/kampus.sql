-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 04, 2025 at 08:36 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kampus`
--

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nim` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `jenis_kelamin` enum('Pria','Wanita') NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `telepon` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nim`, `nama`, `jenis_kelamin`, `alamat`, `email`, `telepon`) VALUES
(1, '2310020097', 'Ruli kurniwaan rolibi', 'Pria', 'jl hksn banjir bandang', 'ruliraketpagat@gmail.com', '087793662045'),
(4, '2310020078', 'Akhmad Rizky', 'Pria', 'Newyork', 'akhmadrizkyys@gmail.com', '087775979171'),
(5, '2310020097', 'Hafiz arteta', 'Pria', 'Canada', 'hfz@gmail.com', '087775919172'),
(6, '2310020014', 'Arul barbera', 'Pria', 'Sungai Andai / london', 'arul@gmail.com', '087775979171'),
(7, '2310020020', 'Yanor kluivert', 'Pria', 'cataluna spain', 'yan@gmail.com', '087775979131');

-- --------------------------------------------------------

--
-- Table structure for table `matakuliah`
--

CREATE TABLE `matakuliah` (
  `id` int(11) NOT NULL,
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `sks` int(11) NOT NULL,
  `semester` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `matakuliah`
--

INSERT INTO `matakuliah` (`id`, `kode`, `nama`, `sks`, `semester`) VALUES
(2, 'MSI', 'Manajemen Sistem Informasi', 2, 4),
(3, 'PW', 'Pemograman Web', 2, 4),
(4, 'PB', 'Perbankan', 2, 4),
(5, 'FS', 'Filsafat', 2, 4),
(6, 'BS', 'Basis Data', 2, 4),
(7, 'MK001', 'Matakuliah 1', 2, 1),
(8, 'MK002', 'Matakuliah 2', 3, 1),
(9, 'MK003', 'Matakuliah 3', 4, 1),
(10, 'MK004', 'Matakuliah 4', 2, 2),
(11, 'MK005', 'Matakuliah 5', 3, 2),
(12, 'MK006', 'Matakuliah 6', 4, 2),
(13, 'MK007', 'Matakuliah 7', 2, 3),
(14, 'MK008', 'Matakuliah 8', 3, 3),
(15, 'MK009', 'Matakuliah 9', 4, 3),
(16, 'MK010', 'Matakuliah 10', 2, 4),
(17, 'MK011', 'Matakuliah 11', 3, 4),
(18, 'MK012', 'Matakuliah 12', 4, 4),
(19, 'MK013', 'Matakuliah 13', 2, 5),
(20, 'MK014', 'Matakuliah 14', 3, 5),
(21, 'MK015', 'Matakuliah 15', 4, 5),
(22, 'MK016', 'Matakuliah 16', 2, 6),
(23, 'MK017', 'Matakuliah 17', 3, 6),
(24, 'MK018', 'Matakuliah 18', 4, 6),
(25, 'MK019', 'Matakuliah 19', 2, 7),
(26, 'MK020', 'Matakuliah 20', 3, 7),
(27, 'MK021', 'Matakuliah 21', 4, 7),
(28, 'MK022', 'Matakuliah 22', 2, 8),
(29, 'MK023', 'Matakuliah 23', 3, 8),
(30, 'MK024', 'Matakuliah 24', 4, 8),
(31, 'MK025', 'Matakuliah 25', 2, 1),
(32, 'MK026', 'Matakuliah 26', 3, 1),
(33, 'MK027', 'Matakuliah 27', 4, 1),
(34, 'MK028', 'Matakuliah 28', 2, 2),
(35, 'MK029', 'Matakuliah 29', 3, 2),
(36, 'MK030', 'Matakuliah 30', 4, 2),
(37, 'MK001', 'Matakuliah 1', 2, 1),
(38, 'MK002', 'Matakuliah 2', 3, 1),
(39, 'MK003', 'Matakuliah 3', 4, 1),
(40, 'MK004', 'Matakuliah 4', 2, 2),
(41, 'MK005', 'Matakuliah 5', 3, 2),
(42, 'MK006', 'Matakuliah 6', 4, 2),
(43, 'MK007', 'Matakuliah 7', 2, 3),
(44, 'MK008', 'Matakuliah 8', 3, 3),
(45, 'MK009', 'Matakuliah 9', 4, 3),
(46, 'MK010', 'Matakuliah 10', 2, 4),
(47, 'MK011', 'Matakuliah 11', 3, 4),
(48, 'MK012', 'Matakuliah 12', 4, 4),
(49, 'MK013', 'Matakuliah 13', 2, 5),
(50, 'MK014', 'Matakuliah 14', 3, 5),
(51, 'MK015', 'Matakuliah 15', 4, 5),
(52, 'MK016', 'Matakuliah 16', 2, 6),
(53, 'MK017', 'Matakuliah 17', 3, 6),
(54, 'MK018', 'Matakuliah 18', 4, 6),
(55, 'MK019', 'Matakuliah 19', 2, 7),
(56, 'MK020', 'Matakuliah 20', 3, 7),
(57, 'MK021', 'Matakuliah 21', 4, 7),
(58, 'MK022', 'Matakuliah 22', 2, 8),
(59, 'MK023', 'Matakuliah 23', 3, 8),
(60, 'MK024', 'Matakuliah 24', 4, 8),
(61, 'MK025', 'Matakuliah 25', 2, 1),
(62, 'MK026', 'Matakuliah 26', 3, 1),
(63, 'MK027', 'Matakuliah 27', 4, 1),
(64, 'MK028', 'Matakuliah 28', 2, 2),
(65, 'MK029', 'Matakuliah 29', 3, 2),
(66, 'MK030', 'Matakuliah 30', 4, 2),
(67, 'MK001', 'Matakuliah 1', 2, 1),
(68, 'MK002', 'Matakuliah 2', 3, 1),
(69, 'MK003', 'Matakuliah 3', 4, 1),
(70, 'MK004', 'Matakuliah 4', 2, 2),
(71, 'MK005', 'Matakuliah 5', 3, 2),
(72, 'MK006', 'Matakuliah 6', 4, 2),
(73, 'MK007', 'Matakuliah 7', 2, 3),
(74, 'MK008', 'Matakuliah 8', 3, 3),
(75, 'MK009', 'Matakuliah 9', 4, 3),
(76, 'MK010', 'Matakuliah 10', 2, 4),
(77, 'MK011', 'Matakuliah 11', 3, 4),
(78, 'MK012', 'Matakuliah 12', 4, 4),
(79, 'MK013', 'Matakuliah 13', 2, 5),
(80, 'MK014', 'Matakuliah 14', 3, 5),
(81, 'MK015', 'Matakuliah 15', 4, 5),
(82, 'MK016', 'Matakuliah 16', 2, 6),
(83, 'MK017', 'Matakuliah 17', 3, 6),
(84, 'MK018', 'Matakuliah 18', 4, 6),
(85, 'MK019', 'Matakuliah 19', 2, 7),
(86, 'MK020', 'Matakuliah 20', 3, 7),
(87, 'MK021', 'Matakuliah 21', 4, 7),
(88, 'MK022', 'Matakuliah 22', 2, 8),
(89, 'MK023', 'Matakuliah 23', 3, 8),
(90, 'MK024', 'Matakuliah 24', 4, 8),
(91, 'MK025', 'Matakuliah 25', 2, 1),
(92, 'MK026', 'Matakuliah 26', 3, 1),
(93, 'MK027', 'Matakuliah 27', 4, 1),
(94, 'MK028', 'Matakuliah 28', 2, 2),
(95, 'MK029', 'Matakuliah 29', 3, 2),
(96, 'MK030', 'Matakuliah 30', 4, 2),
(97, 'MK027', 'Matakuliah 27', 4, 1),
(98, 'MK028', 'Matakuliah 28', 2, 2),
(99, 'MK029', 'Matakuliah 29', 3, 2),
(100, 'MK030', 'Matakuliah 30', 4, 2),
(101, 'MK027', 'Matakuliah 27', 4, 1),
(102, 'MK100', 'Matakuliah 100', 2, 8);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$0c2wkIPYqY15rpJd1PkzDOnsLFIRcdCNLbR./6i576WP0kMpAcUci');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `matakuliah`
--
ALTER TABLE `matakuliah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `matakuliah`
--
ALTER TABLE `matakuliah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
