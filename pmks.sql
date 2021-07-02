-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 09:56 AM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.1.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pmks`
--

-- --------------------------------------------------------

--
-- Table structure for table `desa`
--

CREATE TABLE `desa` (
  `id_desa` int(10) NOT NULL,
  `nm_desa` varchar(25) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `desa`
--

INSERT INTO `desa` (`id_desa`, `nm_desa`, `id_kec`, `is_delete`, `row_edit`, `creator`, `time_input`) VALUES
(29, 'Tidak Ada', 27, 1, 0, 1, '2021-01-15 17:41:03'),
(30, 'Balongan', 24, 1, 0, 10, '2021-02-07 12:27:30'),
(31, 'Sliyeg', 25, 1, 0, 10, '2021-02-07 12:28:04'),
(32, 'Kaplongan Lor', 2, 1, 0, 10, '2021-02-07 12:28:22'),
(33, 'Kedokanbunder Wetan', 1, 1, 0, 10, '2021-02-07 12:28:40'),
(34, 'Jambe', 26, 1, 0, 10, '2021-02-07 12:29:04'),
(35, 'Kedokan Agung', 1, 1, 0, 11, '2021-03-01 18:14:24');

-- --------------------------------------------------------

--
-- Table structure for table `kat_pmks`
--

CREATE TABLE `kat_pmks` (
  `id_kat_pmks` int(10) NOT NULL,
  `nm_kat` varchar(25) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kat_pmks`
--

INSERT INTO `kat_pmks` (`id_kat_pmks`, `nm_kat`, `is_delete`, `row_edit`, `creator`, `time_input`) VALUES
(1, 'Disabilitas Terlantar', 1, 0, 1, '2020-12-15 18:28:42'),
(2, 'AMPFS', 1, 0, 1, '2020-12-15 18:28:42'),
(3, 'Lansia Terlantar', 1, 0, 1, '2020-12-15 18:28:42'),
(4, 'Tuna Daksa', 0, 0, 1, '2020-12-15 18:28:42'),
(5, 'Tuna Sosial', 1, 0, 10, '2021-02-02 13:17:58'),
(6, 'Balita terlantar', 1, 0, 10, '2021-02-11 20:33:55'),
(8, 'Gelandangan', 1, 0, 11, '2021-03-07 22:31:29');

-- --------------------------------------------------------

--
-- Table structure for table `kecamatan`
--

CREATE TABLE `kecamatan` (
  `id_kec` int(11) NOT NULL,
  `nm_kec` varchar(20) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kecamatan`
--

INSERT INTO `kecamatan` (`id_kec`, `nm_kec`, `is_delete`, `row_edit`, `creator`, `time_input`) VALUES
(1, 'Kedokanbunder', 1, 0, 1, '2020-12-12 20:07:54'),
(2, 'Karangampel', 1, 0, 1, '2020-12-12 20:07:54'),
(24, 'Balongan', 1, 0, 1, '2021-01-04 12:05:02'),
(25, 'Jatibarang', 1, 0, 1, '2021-01-04 12:05:27'),
(26, 'Kertasemaya', 1, 0, 1, '2021-01-04 12:05:38'),
(27, 'Tidak Ada', 1, 0, 1, '2021-01-15 17:39:45'),
(28, 'krangkeng', 1, 0, 11, '2021-02-26 15:52:31');

-- --------------------------------------------------------

--
-- Table structure for table `kk`
--

CREATE TABLE `kk` (
  `id_kk` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `no_kk` varchar(50) NOT NULL,
  `nik_kpl` varchar(50) NOT NULL,
  `nm_kpl` varchar(50) NOT NULL,
  `tgl_lhr_kpl` date NOT NULL,
  `alamat_kpl` varchar(100) NOT NULL,
  `pekerjaan_kpl` varchar(50) NOT NULL,
  `pendidikan_kpl` varchar(50) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kk`
--

INSERT INTO `kk` (`id_kk`, `id_kec`, `id_desa`, `no_kk`, `nik_kpl`, `nm_kpl`, `tgl_lhr_kpl`, `alamat_kpl`, `pekerjaan_kpl`, `pendidikan_kpl`, `status`, `is_delete`, `row_edit`, `creator`, `time_input`) VALUES
(21, 27, 29, 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', '2021-01-01', 'Tidak Ada', 'Tidak Ada', 'Tidak Ada', 0, 1, 0, 14, '2021-01-15 17:41:03'),
(26, 1, 33, '3212101003080003', '3212100905580001', 'Toni', '1958-05-09', 'Desa Kedokanbunder Wetan blok Cemeti Rt/Rw 07/02, Kecamatan Kedokanbunder', 'Wiraswasta', 'SMP', 0, 0, 0, 14, '2021-02-13 13:48:59'),
(27, 1, 33, '3212102105050902', '3212101307320001', 'Mustaman', '1932-07-13', 'Desa Kedokanbunder wetan Blok Cemeti Rt/rw 10/02 Kecamatan Kedokanbunder', 'Petani', 'SD', 1, 1, 0, 11, '2021-02-13 14:04:52'),
(28, 24, 30, '3212280708900001', '32121001008930001', 'anwar', '0000-00-00', 'rt/rw11/02', 'petani', 'SMA/SMK', 0, 1, 0, 14, '2021-05-31 13:27:30'),
(29, 24, 30, '12234', '3456', 'er', '0000-00-00', 'rt/rtnssjcn', 'iey', 'SMP', 0, 1, 0, 14, '2021-05-31 16:39:17'),
(30, 1, 33, '3456', '345', 'err', '0000-00-00', 'refrd', 'tr', 'SMP', 0, 0, 0, 14, '2021-05-31 16:40:10'),
(31, 1, 33, '12342564432', '1231231321312', '1231231231', '0000-00-00', '12312312312312313', 'awdawdsaadasda', 'SMP', 1, 1, 0, 14, '2021-05-31 16:43:00'),
(32, 1, 33, 'Tidak Ada', '1', 'wr', '0000-00-00', 'rt/rw 011/002', 'Petani', 'Tidak Sekolah', 1, 1, 0, 14, '2021-06-14 12:44:52'),
(33, 1, 33, '321228080920001', '3212101001708930002', 'budi', '0000-00-00', 'rt/r2 11/02', 'Wiraswasta', 'SMA/SMK', 1, 1, 0, 14, '2021-06-18 16:00:49'),
(34, 2, 32, '3212280708900002', '321234', 'dada', '0000-00-00', 'rt/rw 01/01', 'mengurus rumah tangga', 'SMP', 1, 1, 0, 14, '2021-06-18 16:02:44');

-- --------------------------------------------------------

--
-- Table structure for table `pegawai`
--

CREATE TABLE `pegawai` (
  `id_pegawai` int(11) NOT NULL,
  `nm_pegawai` varchar(50) NOT NULL,
  `nip` varchar(50) NOT NULL,
  `no_telepon` varchar(50) NOT NULL,
  `alamat` varchar(100) DEFAULT NULL,
  `id_desa` int(10) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(10) NOT NULL,
  `status` int(10) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pegawai`
--

INSERT INTO `pegawai` (`id_pegawai`, `nm_pegawai`, `nip`, `no_telepon`, `alamat`, `id_desa`, `username`, `password`, `role`, `status`, `is_delete`, `row_edit`, `time_input`) VALUES
(11, 'Ahmad Fauzan', '1213141516', '08999435314', 'Kedokanbunder Wetan', 33, 'fauzan', '$2y$10$ZtOBJ6G3M.ax7OK2uz6vieRsWbAdt7UNP0s9WTOXCa7Agu7gygpUe', 'Admin', 1, 1, 0, '2021-02-18 21:26:40'),
(12, 'Aumyana Oom', '1213141518', '08215670889', 'Kedokanbunder Wetan', 0, 'oom', '$2y$10$ZtOBJ6G3M.ax7OK2uz6vieRsWbAdt7UNP0s9WTOXCa7Agu7gygpUe', 'Pimpinan', 0, 1, 0, '2021-02-23 11:54:16'),
(13, 'Kalim', '1312141515', '082321677890', 'Pabeanudik', 0, 'kalim', '$2y$10$ZtOBJ6G3M.ax7OK2uz6vieRsWbAdt7UNP0s9WTOXCa7Agu7gygpUe', 'Pimpinan', 0, 1, 0, '2021-02-23 11:55:29'),
(14, 'dede', '1213141517', '085861170801', 'Kedokanbunder Wetan', 33, 'dede', '$2y$10$ZtOBJ6G3M.ax7OK2uz6vieRsWbAdt7UNP0s9WTOXCa7Agu7gygpUe', 'Pegawai', 1, 1, 0, '2021-02-23 12:02:23'),
(18, 'ahmad', '1213141519', '0897653421', 'balongan', 30, 'ahmad', '$2y$10$ZtOBJ6G3M.ax7OK2uz6vieRsWbAdt7UNP0s9WTOXCa7Agu7gygpUe', 'pimpinan', 0, 1, 0, '2021-02-24 13:11:33'),
(19, 'tie', '12345', '34567', NULL, 31, 'tie', '$2y$10$D4pvrIsPwIWlX5qDDY6sQerBtWoUzh88pF8oCcJRAteE3uJxx6CpO', 'Pegawai', 0, 1, 0, '2021-06-03 15:17:24'),
(20, 'anwar', '1234567', '089987654', NULL, 32, 'anwar', '$2y$10$sW6ZUDFUm/HQPKO2ySCRKO0yJMPicGiLyMFYFYKCi8Oa.K/OEbdAy', 'Pegawai', 1, 1, 0, '2021-06-18 12:55:33');

-- --------------------------------------------------------

--
-- Table structure for table `pmks`
--

CREATE TABLE `pmks` (
  `id_pmks` int(11) NOT NULL,
  `id_kk` int(11) NOT NULL,
  `id_kec` int(11) NOT NULL,
  `id_desa` int(11) NOT NULL,
  `id_kat_pmks` int(11) NOT NULL,
  `id_program` int(11) NOT NULL,
  `hsl_survei` varchar(50) NOT NULL,
  `nik_pmks` varchar(50) NOT NULL,
  `nm_pmks` varchar(50) NOT NULL,
  `tgl_lhr_pmks` date NOT NULL,
  `hubungan` varchar(25) NOT NULL,
  `jns_klm_pmks` varchar(25) NOT NULL,
  `nm_ibu_pmks` varchar(50) NOT NULL,
  `pendidikan_pmks` varchar(50) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pmks`
--

INSERT INTO `pmks` (`id_pmks`, `id_kk`, `id_kec`, `id_desa`, `id_kat_pmks`, `id_program`, `hsl_survei`, `nik_pmks`, `nm_pmks`, `tgl_lhr_pmks`, `hubungan`, `jns_klm_pmks`, `nm_ibu_pmks`, `pendidikan_pmks`, `is_delete`, `row_edit`, `creator`, `time_input`) VALUES
(5, 26, 1, 33, 3, 1, 'Menunggu', '3212101307320001', 'Toni', '1958-05-09', 'Kepala Keluarga', 'Laki-Laki', 'Fatkanah', 'Tidak Sekolah', 0, 0, 10, '2021-02-13 14:01:57'),
(6, 27, 1, 33, 3, 2, 'Menunggu', '3212101307320001', 'Mustaman', '1932-07-13', 'Kepala Keluarga', 'Laki-Laki', 'Kastiwen', 'Tidak Sekolah', 1, 0, 10, '2021-02-14 12:49:44'),
(7, 28, 24, 30, 2, 5, 'Menunggu', '32122800908970001', 'lufy', '0000-00-00', 'Anak', 'Laki-Laki', 'kasem', 'SMP', 1, 0, 14, '2021-05-31 13:29:10'),
(8, 21, 2, 32, 2, 5, 'Menunggu', '12344', 'dada', '0000-00-00', 'Tidak Ada', 'Perempuan', 'ani', 'SMA/SMK', 1, 0, 14, '2021-06-18 16:11:11'),
(9, 21, 2, 32, 2, 5, 'Menunggu', '321234', 'dada', '0000-00-00', 'Tidak Ada', 'Perempuan', 'ani', 'Tidak Sekolah', 1, 0, 14, '2021-06-18 16:16:07');

-- --------------------------------------------------------

--
-- Table structure for table `program_bantuan`
--

CREATE TABLE `program_bantuan` (
  `id_program` int(10) NOT NULL,
  `nm_program` varchar(25) NOT NULL,
  `is_delete` int(11) NOT NULL,
  `row_edit` int(11) NOT NULL,
  `creator` int(11) NOT NULL,
  `time_input` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `program_bantuan`
--

INSERT INTO `program_bantuan` (`id_program`, `nm_program`, `is_delete`, `row_edit`, `creator`, `time_input`) VALUES
(1, 'PKH', 1, 0, 1, '2020-12-14 13:07:41'),
(2, 'BPJS', 1, 0, 1, '2020-12-14 13:07:41'),
(3, 'Bantuan Program Sembako', 1, 0, 1, '2020-12-15 17:58:48'),
(5, 'bansos covid', 1, 0, 11, '2021-03-07 22:36:03');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `desa`
--
ALTER TABLE `desa`
  ADD PRIMARY KEY (`id_desa`);

--
-- Indexes for table `kat_pmks`
--
ALTER TABLE `kat_pmks`
  ADD PRIMARY KEY (`id_kat_pmks`);

--
-- Indexes for table `kecamatan`
--
ALTER TABLE `kecamatan`
  ADD PRIMARY KEY (`id_kec`);

--
-- Indexes for table `kk`
--
ALTER TABLE `kk`
  ADD PRIMARY KEY (`id_kk`);

--
-- Indexes for table `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id_pegawai`);

--
-- Indexes for table `pmks`
--
ALTER TABLE `pmks`
  ADD PRIMARY KEY (`id_pmks`);

--
-- Indexes for table `program_bantuan`
--
ALTER TABLE `program_bantuan`
  ADD PRIMARY KEY (`id_program`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `desa`
--
ALTER TABLE `desa`
  MODIFY `id_desa` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `kat_pmks`
--
ALTER TABLE `kat_pmks`
  MODIFY `id_kat_pmks` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `kecamatan`
--
ALTER TABLE `kecamatan`
  MODIFY `id_kec` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `kk`
--
ALTER TABLE `kk`
  MODIFY `id_kk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id_pegawai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pmks`
--
ALTER TABLE `pmks`
  MODIFY `id_pmks` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `program_bantuan`
--
ALTER TABLE `program_bantuan`
  MODIFY `id_program` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
