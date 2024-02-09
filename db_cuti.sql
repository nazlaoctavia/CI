-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 09, 2024 at 09:02 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_cuti`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_admin`
--

CREATE TABLE `tb_admin` (
  `id_admin` int(11) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `jenis_kelamin` enum('Laki-laki','Perempuan') NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `level` enum('admin','kaprodi','mahasiswa') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_admin`
--

INSERT INTO `tb_admin` (`id_admin`, `nama_lengkap`, `jenis_kelamin`, `username`, `password`, `foto`, `email`, `level`) VALUES
(62, 'Nazla Octavia Ramadhani', 'Perempuan', 'nazla', 'eb62f6b9306db575c2d596b1279627a4', '11686931750icon.png', 'admin@gmail.com', 'admin'),
(65, 'Ayu Albi Sumarna', 'Perempuan', 'ayu', '81dc9bdb52d04dc20036dbd8313ed055', '21686932536icon.png', 'admin@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kaprodi`
--

CREATE TABLE `tb_kaprodi` (
  `id_kaprodi` int(11) NOT NULL,
  `nidn` int(30) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `approvent` varchar(255) NOT NULL,
  `level` enum('admin','mahasiswa','kaprodi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_kaprodi`
--

INSERT INTO `tb_kaprodi` (`id_kaprodi`, `nidn`, `nama_lengkap`, `jenis_kelamin`, `jabatan_struktural`, `username`, `password`, `email`, `foto`, `approvent`, `level`) VALUES
(29, 1075603, 'Triastinurmiatiningsih, S.Si., M.Si.', 'perempuan', 'Ketua Program Studi Biologi', 'trias', '202cb962ac59075b964b07152d234b70', 'kaprodi@gmail.com', '11686934234icon.png', 'approve', 'kaprodi'),
(31, 30086003, 'Dr. Ir. Fitria Virgantari, M.Si.', 'perempuan', 'Ketua Program Studi Matematika', 'pipit', '202cb962ac59075b964b07152d234b70', 'kaprodi@gmail.com', '11686934300icon.png', 'approve', 'kaprodi'),
(32, 8105809, 'Dr. Ade Heri Mulyati, S.Si., M.Si.', 'perempuan', 'Ketua Program Studi Kimia', 'ade', '202cb962ac59075b964b07152d234b70', 'kaprodi@gmail.com', '11686934349icon.png', 'approve', 'kaprodi'),
(33, 11026104, 'Arie Qur\'ania, S.Kom., M.Kom.', 'perempuan', 'Ketua Program Studi Ilmu Komputer', 'arie', '202cb962ac59075b964b07152d234b70', 'kaprodi@gmail.com', '11686934418icon.png', 'approve', 'kaprodi'),
(34, 6065805, 'apt. Dra. Ike Yulia Wiendarlina, M.Farm.', 'perempuan', 'Ketua Program Studi Farmasi', 'ike', '202cb962ac59075b964b07152d234b70', 'kaprodi@gmail.com', '11686934467icon.png', 'approve', 'kaprodi'),
(38, 0, 'Arthur Daeshim Edgar', 'laki-laki', 'Dekan', 'arthu', 'b59c67bf196a4758191e42f76670ceba', 'kaprodi@gmail.com', '11687849530icon.png', 'approve', 'kaprodi');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `id_mahasiswa` int(11) NOT NULL,
  `npm` int(100) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('laki-laki','perempuan') NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `level` enum('admin','mahasiswa','kaprodi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`id_mahasiswa`, `npm`, `nama_lengkap`, `jenis_kelamin`, `program_studi`, `username`, `password`, `email`, `foto`, `level`) VALUES
(21, 0, 'Ayu Albi Sumarna', 'perempuan', 'Ilmu Komputer', 'ayu', '0cf0613553f1dd3f98b4009b31c52618', 'studentunpak@gmail.com', '1211686933958icon.png', 'mahasiswa'),
(22, 65113042, 'RAENOFAN EKA FRADITYA', 'laki-laki', 'Biologi', 'rae', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '11686933389icon.png', 'mahasiswa'),
(23, 65113061, 'MUHAMAD RIDWAN SIDIK', 'laki-laki', 'Biologi', 'uwan', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '11686933451icon.png', 'mahasiswa'),
(24, 65113066, 'RIAN PRAYOGI', 'laki-laki', 'Matematika', 'rian', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '11686933519icon.png', 'mahasiswa'),
(25, 65113086, 'ESSA FAWWAZ AZHAR', 'laki-laki', 'Matematika', 'esa', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '11686933571icon.png', 'mahasiswa'),
(26, 65113175, 'NIKKI SHANGGAYOH KATTON', 'perempuan', 'Kimia', 'niki', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '11686933625icon.png', 'mahasiswa'),
(27, 65113390, 'RIO PAMUNGKAS', 'laki-laki', 'Kimia', 'rio', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '11686933677icon.png', 'mahasiswa'),
(28, 65114316, 'ANUGERAH AGUNG FADILLAH', 'laki-laki', 'Farmasi', 'anu', 'c6f057b86584942e415435ffb1fa93d4', 'studentunpak@gmail.com', '1281686933922icon.png', 'mahasiswa'),
(29, 65114275, 'FEBRIAWAN DWI PUTRA FAJAR', 'perempuan', 'Farmasi', 'febi', '9efc314b65237d5d646e1b817372afc6', 'studentunpak@gmail.com', '1291686933864icon.png', 'mahasiswa'),
(30, 0, 'Annisa Chika Dyandra', 'perempuan', 'Ilmu Komputer', 'cika', '4a7d1ed414474e4033ac29ccb8653d9b', 'studentunpak@gmail.com', '11687849328icon.png', 'mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `tb_pengajuancuti`
--

CREATE TABLE `tb_pengajuancuti` (
  `id_pengajuan` int(10) NOT NULL,
  `npm` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `fakultas` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `alasancuti` varchar(255) NOT NULL,
  `no_hp` int(15) NOT NULL,
  `alamat` text NOT NULL,
  `status` enum('TIDAK SETUJU','SETUJU') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_pengajuancuti`
--

INSERT INTO `tb_pengajuancuti` (`id_pengajuan`, `npm`, `nama_lengkap`, `fakultas`, `program_studi`, `semester`, `alasancuti`, `no_hp`, `alamat`, `status`) VALUES
(14, '65114296 ', 'PUTRIANI NUR HIDAYAH', 'FMIPA', 'Matematika', 'ganjil', 'Masalah Biaya', 8999999, 'Bogor', 'SETUJU'),
(15, '65114341', 'FAQIH ZULQIFLI', 'FMIPA', 'Kimia', 'genap', 'Masalah Personal', 812345678, 'Bogor', 'SETUJU'),
(16, '65115112', 'ADHESIVE TIAN PRAYOGA', 'FMIPA', 'Ilmu Komputer', 'ganjil', 'Masalah Kesehatan', 82222222, 'Bogor', 'SETUJU'),
(17, '65115160', 'MARSEL MENSEN HILTON AKYUWEN', 'FMIPA', 'Farmasi', 'ganjil', 'Masalah Biaya', 83333333, 'Bogor', 'SETUJU'),
(18, '65115270', 'KUKUH SYAWALUKITO', 'FMIPA', 'Kimia', 'ganjil', 'Masalah Personal', 844444444, 'Kalimantan', 'SETUJU'),
(19, '65115307', 'ZELLA', 'FMIPA', 'Matematika', 'genap', 'Masalah Personal', 2147483647, 'Bandung', 'SETUJU'),
(22, '3456789', 'mutiara febriani putri', 'FMIPA ', 'Kimia', 'ganjil', 'masalah personal', 823455, 'bogor', 'SETUJU'),
(23, '12345', 'Nazla Octavia Ramadhani', 'FMIPA ', 'Kimia', 'ganjil', 'masalah personal ', 81234, 'bogor', 'SETUJU'),
(24, '123456789', 'Annisa Chika Dyandra', 'FMIPA', 'Ilmu Komputer', 'ganjil', 'Masalah Personal', 834265178, 'Bogor', 'TIDAK SETUJU'),
(25, '0', 'Adella Amanda Dias', 'FMIPA', 'Farmasi', 'ganjil', 'Masalah Personal', 2147483647, 'Bogor', 'TIDAK SETUJU');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(60) NOT NULL,
  `level` enum('admin','user','kaprodi') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Indexes for table `tb_kaprodi`
--
ALTER TABLE `tb_kaprodi`
  ADD PRIMARY KEY (`id_kaprodi`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`id_mahasiswa`);

--
-- Indexes for table `tb_pengajuancuti`
--
ALTER TABLE `tb_pengajuancuti`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=66;

--
-- AUTO_INCREMENT for table `tb_kaprodi`
--
ALTER TABLE `tb_kaprodi`
  MODIFY `id_kaprodi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  MODIFY `id_mahasiswa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `tb_pengajuancuti`
--
ALTER TABLE `tb_pengajuancuti`
  MODIFY `id_pengajuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
