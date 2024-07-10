-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 10, 2024 at 09:37 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `osis`
--

-- --------------------------------------------------------

--
-- Table structure for table `anggota_osis`
--

CREATE TABLE `anggota_osis` (
  `id_OSIS` varchar(10) NOT NULL,
  `Nama_OSIS` varchar(30) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Jabatan` enum('Ketua','Humas') NOT NULL,
  `Periode` int(10) NOT NULL,
  `Email` int(15) NOT NULL,
  `Password` int(20) NOT NULL,
  `Foto` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `Id_Event` int(15) NOT NULL,
  `Id_OSIS` varchar(15) NOT NULL,
  `Judul_Event` varchar(20) NOT NULL,
  `Tanggal_Event` date NOT NULL,
  `Gambar` varchar(30) NOT NULL,
  `Isi_Event` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemilu`
--

CREATE TABLE `pemilu` (
  `Id_KetuaOSIS` varchar(15) NOT NULL,
  `Id_Siswa` varchar(15) NOT NULL,
  `Nama_C_Ketos` varchar(30) NOT NULL,
  `Nama_Calon_Wakil` varchar(30) NOT NULL,
  `Visi` varchar(60) NOT NULL,
  `Misi` varchar(60) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `Total Suara` int(10) NOT NULL,
  `Foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pendaftaran`
--

CREATE TABLE `pendaftaran` (
  `Id_Siswa` varchar(15) NOT NULL,
  `Id_OSIS` varchar(15) NOT NULL,
  `Pengalaman` varchar(30) NOT NULL,
  `Delegasi` varchar(30) NOT NULL,
  `Motivasi` varchar(30) NOT NULL,
  `Umur` int(11) NOT NULL,
  `Alamat` varchar(20) NOT NULL,
  `Tanggal_Lahir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `Id_Siswa` varchar(15) NOT NULL,
  `Nama_Siswa` varchar(30) NOT NULL,
  `No_Telpon` varchar(15) NOT NULL,
  `Kelas` varchar(10) NOT NULL,
  `suara` varchar(30) NOT NULL,
  `Absen` varchar(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `anggota_osis`
--
ALTER TABLE `anggota_osis`
  ADD PRIMARY KEY (`id_OSIS`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`Id_Event`),
  ADD UNIQUE KEY `Id_OSIS` (`Id_OSIS`);

--
-- Indexes for table `pemilu`
--
ALTER TABLE `pemilu`
  ADD PRIMARY KEY (`Id_KetuaOSIS`),
  ADD UNIQUE KEY `Id_Siswa` (`Id_Siswa`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
  ADD UNIQUE KEY `Id_Siswa` (`Id_Siswa`,`Id_OSIS`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`Id_Siswa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
