-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 16, 2025 at 12:04 AM
-- Server version: 8.0.30
-- PHP Version: 8.2.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_pakar`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_cf`
--

CREATE TABLE `tb_cf` (
  `id_cf` int NOT NULL,
  `id_gejala` int DEFAULT NULL,
  `id_mental` int DEFAULT NULL,
  `cf_value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_cf`
--

INSERT INTO `tb_cf` (`id_cf`, `id_gejala`, `id_mental`, `cf_value`) VALUES
(1, 1, 1, 0.3),
(2, 1, 2, 0.6),
(3, 1, 3, 0.7),
(4, 2, 1, 0),
(5, 2, 2, 0.2),
(6, 2, 3, 0.9),
(7, 3, 1, 0.2),
(8, 3, 2, 0.8),
(9, 3, 3, 0.6),
(10, 4, 1, 0.9),
(11, 4, 2, 0.4),
(12, 4, 3, 0.2),
(13, 5, 1, 0.8),
(14, 5, 2, 0.3),
(15, 5, 3, 0.7),
(16, 6, 1, 0.9),
(17, 6, 2, 0.5),
(18, 6, 3, 0.3),
(19, 7, 1, 0.3),
(20, 7, 2, 0.7),
(21, 7, 3, 0.6),
(22, 8, 1, 0.1),
(23, 8, 2, 0.2),
(24, 8, 3, 0.9),
(25, 9, 1, 0.1),
(26, 9, 2, 0.3),
(27, 9, 3, 0.9),
(28, 10, 1, 0.1),
(29, 10, 2, 0.3),
(30, 10, 3, 0.95),
(31, 11, 1, 0.6),
(32, 11, 2, 0.5),
(33, 11, 3, 0.3),
(34, 12, 1, 0.85),
(35, 12, 2, 0.3),
(36, 12, 3, 0.2),
(37, 13, 1, 0.1),
(38, 13, 2, 0.3),
(39, 13, 3, 0.9),
(40, 14, 1, 0.95),
(41, 14, 2, 0.4),
(42, 14, 3, 0.2),
(43, 15, 1, 0.4),
(44, 15, 2, 0.8),
(45, 15, 3, 0.5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_gejala`
--

CREATE TABLE `tb_gejala` (
  `id` int NOT NULL,
  `kode` varchar(5) NOT NULL,
  `gejala` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_gejala`
--

INSERT INTO `tb_gejala` (`id`, `kode`, `gejala`) VALUES
(1, 'G001', 'Merasa susah tidur atau beristirahat dengan tenang'),
(2, 'G002', 'Mengalami gangguan pernafasan secara tiba tiba'),
(3, 'G003', 'Merasa susah bersantai karena tekanan dari banyak hal'),
(4, 'G004', 'Merasa tidak bersemangat dan merasa tidak berguna untuk orang lain maupun untuk diri sendiri'),
(5, 'G005', 'Merasa tidak percaya diri ketika teman atau orang lain bisa melakukan apa yang saya tidak bisa'),
(6, 'G006', 'Merasa kehilangan motivasi'),
(7, 'G007', 'Sulit tenang dan sabar dalam  menghadapi gangguan saat menghadapi suatu hal'),
(8, 'G008', 'Merasa khawatir pada suatu keadaan ketika panik dan membuat diri sendiri malu di tempat umum'),
(9, 'G009', 'Merasa gugup ketika berada di hadapan publik'),
(10, 'G010', 'Merasakan cemas berlebihan tanpa alasan yang jelas'),
(11, 'G011', 'Merasa mengalami penurunan daya ingat'),
(12, 'G012', 'Menangis tanpa alasan yang jelas'),
(13, 'G013', 'Merasa gugup pada suatu hal yang belum terjadi'),
(14, 'G014', 'Merasa putus asa'),
(15, 'G015', 'Mudah marah kepada orang lain');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mental`
--

CREATE TABLE `tb_mental` (
  `id` int NOT NULL,
  `jenis_gangguan` varchar(64) NOT NULL,
  `deskripsi` text NOT NULL,
  `saran` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tb_mental`
--

INSERT INTO `tb_mental` (`id`, `jenis_gangguan`, `deskripsi`, `saran`) VALUES
(1, 'Depresi', 'Gangguan suasana hati yang menyebabkan perasaan sedih terus-menerus dan kehilangan minat.', 'Istirahat cukup, konseling psikologi, tetap aktif dengan kegiatan positif.'),
(2, 'Stres', 'Kondisi psikologis akibat tekanan yang berlebihan baik dari pekerjaan maupun masalah pribadi.', 'Relaksasi, meditasi, olahraga ringan, manajemen waktu yang baik.'),
(3, 'Gangguan Kecemasan', 'Gangguan mental yang ditandai dengan perasaan cemas berlebihan dan sulit dikendalikan.', 'Latihan pernapasan, terapi kognitif, batasi kafein dan alkohol.');

-- --------------------------------------------------------

--
-- Table structure for table `tb_rule`
--

CREATE TABLE `tb_rule` (
  `id` int NOT NULL,
  `G001` tinyint(1) DEFAULT NULL,
  `G002` tinyint(1) DEFAULT NULL,
  `G003` tinyint(1) DEFAULT NULL,
  `G004` tinyint(1) DEFAULT NULL,
  `G005` tinyint(1) DEFAULT NULL,
  `G006` tinyint(1) DEFAULT NULL,
  `G007` tinyint(1) DEFAULT NULL,
  `G008` tinyint(1) DEFAULT NULL,
  `G009` tinyint(1) DEFAULT NULL,
  `G010` tinyint(1) DEFAULT NULL,
  `G011` tinyint(1) DEFAULT NULL,
  `G012` tinyint(1) DEFAULT NULL,
  `G013` tinyint(1) DEFAULT NULL,
  `G014` tinyint(1) DEFAULT NULL,
  `G015` tinyint(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_rule`
--

INSERT INTO `tb_rule` (`id`, `G001`, `G002`, `G003`, `G004`, `G005`, `G006`, `G007`, `G008`, `G009`, `G010`, `G011`, `G012`, `G013`, `G014`, `G015`) VALUES
(1, 1, 0, 1, 1, 1, 1, 0, 0, 0, 0, 1, 1, 0, 0, 0),
(2, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1),
(3, 1, 1, 0, 0, 1, 0, 1, 1, 1, 1, 0, 0, 1, 0, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_cf`
--
ALTER TABLE `tb_cf`
  ADD PRIMARY KEY (`id_cf`),
  ADD KEY `id_gejala` (`id_gejala`),
  ADD KEY `id_mental` (`id_mental`);

--
-- Indexes for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_mental`
--
ALTER TABLE `tb_mental`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tb_rule`
--
ALTER TABLE `tb_rule`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_cf`
--
ALTER TABLE `tb_cf`
  MODIFY `id_cf` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tb_gejala`
--
ALTER TABLE `tb_gejala`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `tb_rule`
--
ALTER TABLE `tb_rule`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_cf`
--
ALTER TABLE `tb_cf`
  ADD CONSTRAINT `tb_cf_ibfk_1` FOREIGN KEY (`id_gejala`) REFERENCES `tb_gejala` (`id`),
  ADD CONSTRAINT `tb_cf_ibfk_2` FOREIGN KEY (`id_mental`) REFERENCES `tb_mental` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
