-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2016 at 05:21 PM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

CREATE DATABASE `cidropdown`;
USE `cidropdown`;

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cidropdown`
--

-- --------------------------------------------------------

--
-- Table structure for table `jenis`
--

CREATE TABLE `jenis` (
  `id_jenis` int(11) NOT NULL,
  `jenis` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jenis`
--

INSERT INTO `jenis` (`id_jenis`, `jenis`) VALUES
(1, 'Pengurus Organisasi Mahasiswa'),
(2, 'Kepanitiaan'),
(3, 'Kegiatan Ilmiah Mahasiswa (Seminar, Karya Ilmiah)'),
(4, 'Prestasi Bidang Penalaran Mahasiswa'),
(5, 'Pengabdian Kepada Masyarakat'),
(6, 'Peserta Pelatihan Bidang Penalaran, Minat dan Bakat'),
(7, 'Prestasi Bidang Minat dan Bakat'),
(8, 'Lankka'),
(9, 'Baksosma'),
(10, 'Aksosma');

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama_jurusan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama_jurusan`) VALUES
(1, 'Teknik Elektro'),
(2, 'Pariwisata'),
(3, 'Akuntansi'),
(4, 'Teknik Mesin'),
(5, 'Teknik Sipil'),
(6, 'Administrasi Niaga');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `id_jurusan` int(11) NOT NULL,
  `id_prodi` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`id`, `nama`, `id_jurusan`, `id_prodi`) VALUES
(3, 'Kresna', 2, 82),
(4, 'Agus', 1, 31),
(5, 'Adi', 1, 32);

-- --------------------------------------------------------

--
-- Table structure for table `prestasi`
--

CREATE TABLE `prestasi` (
  `id_prestasi` int(11) NOT NULL,
  `id_tingkat_fk` int(11) NOT NULL,
  `prestasi` varchar(255) NOT NULL,
  `bobot` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prestasi`
--

INSERT INTO `prestasi` (`id_prestasi`, `id_tingkat_fk`, `prestasi`, `bobot`) VALUES
(1, 1, 'Ketua', 5),
(2, 1, 'BPH Lainnya', 4),
(3, 1, 'Anggota', 1),
(4, 2, 'Ketua', 5),
(5, 2, 'BPH Lainnya', 4),
(6, 2, 'Anggota', 3),
(7, 3, 'Ketua', 6),
(8, 3, 'BPH Lainnya', 5),
(9, 3, 'Anggota', 4),
(10, 4, 'Ketua', 6),
(11, 4, 'BPH Lainnya', 5),
(12, 4, 'Anggota', 4),
(13, 5, 'Ketua', 8),
(14, 5, 'BPH Lainnya', 6),
(15, 5, 'Anggota', 5),
(16, 6, 'Ketua', 10),
(17, 6, 'BPH Lainnya', 8),
(18, 6, 'Anggota', 6),
(19, 12, 'Ketua/Penanggung Jawab/SC', 6),
(20, 12, 'BPH Lainnya', 5),
(21, 12, 'Anggota', 3),
(22, 11, 'Ketua/Penanggung Jawab/SC', 5),
(23, 11, 'BPH Lainnya', 4),
(24, 11, 'Anggota', 2),
(25, 10, 'Ketua/Penanggung Jawab/SC', 5),
(26, 10, 'BPH Lainnya', 4),
(27, 10, 'Anggota', 2),
(28, 9, 'Ketua/Penanggung Jawab/SC', 4),
(29, 9, 'BPH Lainnya', 3),
(30, 9, 'Anggota', 2),
(31, 8, 'Ketua/Penanggung Jawab/SC', 4),
(32, 8, 'BPH Lainnya', 3),
(33, 8, 'Anggota', 2),
(34, 13, 'Ketua/Penanggung Jawab/SC', 8),
(35, 13, 'BPH Lainnya', 6),
(36, 13, 'Anggota', 5),
(37, 15, 'Ketua/Penyaji', 8),
(38, 15, 'Anggota', 4),
(39, 15, 'Peserta', 3),
(40, 14, 'Ketua/Penyaji', 6),
(41, 14, 'Anggota', 3),
(42, 14, 'Peserta', 2),
(43, 7, 'Ketua/Penyaji', 4),
(44, 7, 'Anggota', 2),
(45, 7, 'Peserta', 1),
(46, 16, 'Juara I', 5),
(47, 16, 'Juara II', 4),
(48, 16, 'Juara III', 3),
(49, 16, 'Juara Harapan', 2),
(50, 16, 'Peserta', 1),
(51, 17, 'Juara I', 6),
(52, 17, 'Juara II', 5),
(53, 17, 'Juara III', 4),
(54, 17, 'Juara Harapan', 3),
(55, 17, 'Peserta', 2),
(56, 18, 'Juara I', 8),
(57, 18, 'Juara II', 6),
(58, 18, 'Juara III', 5),
(59, 18, 'Juara Harapan', 4),
(60, 18, 'Peserta', 3),
(61, 19, 'Ketua', 4),
(62, 19, 'BPH Lainnya', 3),
(63, 19, 'Anggota', 2),
(64, 19, 'Peserta', 1),
(65, 20, 'Ketua', 6),
(66, 20, 'BPH Lainnya', 4),
(67, 20, 'Anggota', 3),
(68, 20, 'Peserta', 2),
(69, 21, 'Ketua', 8),
(70, 21, 'BPH Lainnya', 6),
(71, 21, 'Anggota', 5),
(72, 21, 'Peserta', 4),
(73, 24, 'Peserta', 3),
(74, 23, 'Peserta', 2),
(75, 22, 'Peserta', 1),
(76, 25, 'Juara I', 5),
(77, 25, 'Juara II', 4),
(78, 25, 'Juara III', 3),
(79, 25, 'Juara Harapan', 2),
(80, 25, 'Peserta', 1),
(81, 26, 'Juara I', 6),
(82, 26, 'Juara II', 5),
(83, 26, 'Juara III', 4),
(84, 26, 'Juara Harapan', 3),
(85, 26, 'Peserta', 2),
(86, 27, 'Juara I', 8),
(87, 27, 'Juara II', 6),
(88, 27, 'Juara III', 5),
(89, 27, 'Juara Harapan', 4),
(90, 27, 'Peserta', 3),
(91, 28, 'Peserta', 5),
(92, 35, 'Peserta', 5),
(93, 36, 'Peserta', 1);

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id` int(11) NOT NULL,
  `nama_prodi` varchar(255) NOT NULL,
  `jenjang` char(2) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id`, `nama_prodi`, `jenjang`, `id_jurusan`) VALUES
(11, 'Teknik Sipil', 'D3', 5),
(12, 'Manajemen Proyek Konstruksi', 'D4', 5),
(21, 'Teknik Mesin', 'D3', 4),
(22, 'Tata Pendingin dan Tata Udara', 'D3', 4),
(31, 'Teknik Listrik', 'D3', 1),
(32, 'Manajemen Informatika', 'D3', 1),
(61, 'Akuntansi', 'D3', 3),
(64, 'Akuntansi Manajerial', 'D4', 3),
(71, 'Administrasi Bisnis', 'D3', 6),
(74, 'Manajemen Bisnis Internasional', 'D4', 6),
(81, 'Usaha Perjalanan Wisata', 'D3', 2),
(82, 'Perhotelan', 'D3', 2),
(83, 'Manajemen Bisnis Pariwisata', 'D4', 2);

-- --------------------------------------------------------

--
-- Table structure for table `skkm`
--

CREATE TABLE `skkm` (
  `id` int(11) NOT NULL,
  `nama_kegiatan` varchar(255) NOT NULL,
  `id_jenis` int(11) NOT NULL,
  `id_tingkat` int(11) NOT NULL,
  `id_prestasi` int(11) NOT NULL,
  `nilai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `skkm`
--

INSERT INTO `skkm` (`id`, `nama_kegiatan`, `id_jenis`, `id_tingkat`, `id_prestasi`, `nilai`) VALUES
(1, 'Pengurus UKM', 1, 1, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `tingkat`
--

CREATE TABLE `tingkat` (
  `id_tingkat` int(11) NOT NULL,
  `id_jenis_fk` int(11) NOT NULL,
  `tingkat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tingkat`
--

INSERT INTO `tingkat` (`id_tingkat`, `id_jenis_fk`, `tingkat`) VALUES
(1, 1, 'Pengurus Organisasi UKM'),
(2, 1, 'Pengurus Organisasi Jurusan'),
(3, 1, 'Pengurus Organisasi BEM'),
(4, 1, 'Pengurus Organisasi MPM'),
(5, 1, 'Pengurus Organisasi Nasional'),
(6, 1, 'Pengurus Organisasi Internasional'),
(7, 3, 'Kegiatan Ilmiah Politeknik'),
(8, 2, 'Kepanitiaan UKM'),
(9, 2, 'Kepanitiaan Jurusan'),
(10, 2, 'Kepanitiaan BEM'),
(11, 2, 'Kepanitiaan MPM'),
(12, 2, 'Kepanitiaan Nasional'),
(13, 2, 'Kepanitiaan Internasional'),
(14, 3, 'Kegiatan Ilmiah Nasional'),
(15, 3, 'Kegiatan Ilmiah Internasional'),
(16, 4, 'Prestasi Penalaran Politeknik'),
(17, 4, 'Prestasi Penalaran Nasional'),
(18, 4, 'Prestasi Penalaran Internasional'),
(19, 5, 'Pengabdian Politeknik'),
(20, 5, 'Pengabdian Nasional'),
(21, 5, 'Pengabdian Internasional'),
(22, 6, 'Pelatihan Politeknik'),
(23, 6, 'Pelatihan Nasional'),
(24, 6, 'Pelatihan Internasional'),
(25, 7, 'Prestasi Minat Bakat Politeknik'),
(26, 7, 'Prestasi Minat Bakat Nasional'),
(27, 7, 'Prestasi Minat Bakat Internasional'),
(28, 8, 'Lankka Politeknik'),
(35, 9, 'Baksosma Politeknik'),
(36, 10, 'Aksosma Politeknik');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `jenis`
--
ALTER TABLE `jenis`
  ADD PRIMARY KEY (`id_jenis`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prestasi`
--
ALTER TABLE `prestasi`
  ADD PRIMARY KEY (`id_prestasi`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skkm`
--
ALTER TABLE `skkm`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tingkat`
--
ALTER TABLE `tingkat`
  ADD PRIMARY KEY (`id_tingkat`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `jenis`
--
ALTER TABLE `jenis`
  MODIFY `id_jenis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `prodi`
--
ALTER TABLE `prodi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=84;
--
-- AUTO_INCREMENT for table `skkm`
--
ALTER TABLE `skkm`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
