-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 10, 2021 at 12:20 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbunaki`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `foto` varchar(30) NOT NULL,
  `email` varchar(20) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`username`, `password`, `nama_lengkap`, `jenis_kelamin`, `foto`, `email`, `level`) VALUES
('admin', '$2y$10$AumfCYeqnpzeGXM/9T1GLeXhIoT7KFenQWNxiqKt4/E.HDTq.nN2K', 'admin', '', 'man.png', 'admin@admin.com', 'a');

-- --------------------------------------------------------

--
-- Table structure for table `bimbingankp`
--

CREATE TABLE `bimbingankp` (
  `id_bimbingan` int(4) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `dosen_pembimbing` varchar(50) NOT NULL,
  `tgl_input` int(11) NOT NULL,
  `semester_mulai_kp` varchar(100) NOT NULL,
  `semester_selesai_kp` varchar(100) NOT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `jenis_laporan` varchar(13) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status_kp` varchar(100) NOT NULL,
  `status` enum('New','ACC','Revisi') NOT NULL,
  `tgl_koreksi` int(11) DEFAULT NULL,
  `uraian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bimbingankp`
--

INSERT INTO `bimbingankp` (`id_bimbingan`, `nim`, `nama_lengkap`, `program_studi`, `dosen_pembimbing`, `tgl_input`, `semester_mulai_kp`, `semester_selesai_kp`, `aktivitas`, `jenis_laporan`, `file`, `status_kp`, `status`, `tgl_koreksi`, `uraian`) VALUES
(3, '222160001', 'Great Edo Charunia', 'Sistem Informasi - S1', 'Sinta Tridian Galih, S.T., M.Kom.', 20200501, 'SEMESTER GANJIL 2023/2024', 'SEMESTER GENAP 2023/2024', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'Revisi', 20200521, '..'),
(4, '222160008', 'Dani Febrian Wijadi', 'Sistem Informasi - S1', 'Dra. Tri Karyanti, M.Hum.', 20200520, 'SEMESTER GANJIL 2017/2018', 'SEMESTER GENAP 2017/2018', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20200521, 'lanjut'),
(5, '222150009', 'Malfin Maniani', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', 20200520, 'SEMESTER GANJIL 2017/2018', 'SEMESTER GANJIL 2018/2019', 'BAB II', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200521, 'aalalala'),
(6, '222150003', 'Apfia Pransiski', 'Sistem Informasi - S1', 'Dra. Tri Karyanti, M.Hum.', 20200520, 'SEMESTER GANJIL 2019/2020', 'SEMESTER GENAP 2019/2020', 'BAB III', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200521, 'lanjut'),
(7, '223160013', 'Yuswa Catur Barada', 'Sistem Informasi - S1', 'Yusup, S.Si., M.Kom.', 20200520, 'SEMESTER GANJIL 2017/2018', 'SEMESTER GANJIL 2019/2020', 'BAB IV', 'KP', 'NIM_NamaMhs.pdf', '', 'Revisi', 20200521, 'sertakan refrensi'),
(8, '223170027', 'Daniel Bagus Putra Sugiarto', 'Teknik Informatika - S1', 'Yohana Tri Widayati, S.E., M.Kom.', 20200520, 'SEMESTER GANJIL 2021/2022', 'SEMESTER GENAP 2021/2022', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200521, 'lanjut'),
(9, '223160018', 'Adriel Yonatan', 'Teknik Informatika - S1', 'Jutono Gondohanindijo, M.Kom.', 20200520, 'SEMESTER GANJIL 2017/2018', 'SEMESTER GANJIL 2017/2018', 'BAB II', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200521, 'lanjut'),
(11, '223170002', 'Eko Krristianto Fajar A. N', 'Teknik Informatika - S1', 'Ana Wahyuni, S.Si., M.Kom.', 20200520, 'SEMESTER GANJIL 2018/2019', 'SEMESTER GENAP 2018/2019', 'BAB II', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20200521, 'sedang dikoreksi'),
(12, '223170005', 'Roy Naplin Rinaldi S', 'Teknik Informatika - S1', 'Yohana Tri Widayati, S.E., M.Kom.', 20200520, 'SEMESTER GANJIL 2019/2020', 'SEMESTER GENAP 2019/2020', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20200521, 'lanjut'),
(13, '223170008', 'Meritsheba Pavita Rizki Setiawan', 'Teknik Informatika - S1', 'Yohana Tri Widayati, S.E., M.Kom.', 20200520, 'SEMESTER GENAP 2018/2019', 'SEMESTER GANJIL 2019/2020', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'Revisi', 20200521, 'perbaiki'),
(14, '223170009', 'Vinansius Ganang Dida Sukarno', 'Teknik Informatika - S1', 'Sinta Tridian Galih, S.T., M.Kom.', 20200520, 'SEMESTER GANJIL 2019/2020', 'SEMESTER GENAP 2019/2020', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20200521, 'lanjut'),
(15, '223170010', 'Kho, Sendy Ardianto Wibowo', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 20200520, 'SEMESTER GENAP 2019/2020', 'SEMESTER GANJIL 2021/2022', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200521, 'tes'),
(16, '223170011', 'Yosua Surya Kencana Gonda', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 20200520, 'SEMESTER GANJIL 2021/2022', 'SEMESTER GANJIL 2017/2018', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200521, 'lanjut'),
(17, '223170013', 'Gabriel Tonggo Pakpahan', 'Teknik Informatika - S1', 'Yani Prihati, S.Si., M.Kom.', 20200520, 'SEMESTER GANJIL 2019/2020', 'SEMESTER GANJIL 2017/2018', 'BAB II', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20200521, 'lanjut'),
(18, '223170016', 'Ahmad', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 20200520, '', '', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'Revisi', 20200521, 'perbaiki'),
(19, '223170017', 'Afif Putra Haryono', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 20200520, '', '', 'BAB I', 'KP', 'NIM_NamaMhs.pdf', '', 'Revisi', 20200521, 'perbaiki'),
(20, '223170018', 'Andreas Bayu Christian', 'Teknik Informatika - S1', 'Yani Prihati, S.Si., M.Kom.', 20200520, '', '', 'BAB II', 'KP', 'NIM_NamaMhs.pdf', '', 'Revisi', 20200521, 'perbaiki'),
(21, '223170019', 'Salom Nadeak', 'Teknik Informatika - S1', 'Yani Prihati, S.Si., M.Kom.', 20200520, '', '', 'BAB III', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20200521, 'lanjut'),
(22, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Satrio Agung Prakoso, S.T.', 20200927, '', '', 'tes', 'KP', 'NIM_NamaMhs.pdf', '', 'ACC', 20200927, 'Lanjutan'),
(34, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', 20210201, '', '', 'qaqa', 'KP', 'NIM_NamaMhs.pdf', '', 'New', 20210401, ''),
(48, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', 20210323, '', '', 'jbj', 'KP', 'nim_namalaporan.pdf', '', 'New', 20210401, ''),
(104, '223170001', 'Muhammad Yusuf Alvin Mahendra', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 1630429200, 'SEMESTER GENAP 2019/2020', '', 'BAB I', '', 'nim_namalaporan.pdf', 'NEW', 'ACC', 1630429808, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(105, '223170001', 'Muhammad Yusuf Alvin Mahendra', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 1630429213, 'SEMESTER GENAP 2019/2020', '', 'BAB II', '', 'nim_namalaporan.pdf', 'NEW', 'ACC', 1630429791, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry'),
(106, '223170001', 'Muhammad Yusuf Alvin Mahendra', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 1630429227, 'SEMESTER GENAP 2019/2020', '', 'BAB III', '', 'nim_namalaporan.pdf', 'NEW', 'Revisi', 1630429771, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.'),
(107, '223170001', 'Muhammad Yusuf Alvin Mahendra', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 1630429240, 'SEMESTER GENAP 2019/2020', '', 'BAB IV', '', 'nim_namalaporan.pdf', 'NEW', 'ACC', 1630429740, 'It is a long established fact that a reader will be distracted by the readable content.'),
(108, '223170001', 'Muhammad Yusuf Alvin Mahendra', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', 1630429253, 'SEMESTER GENAP 2019/2020', '', 'BAB V', '', 'nim_namalaporan.pdf', 'NEW', 'Revisi', 1630429888, 'It is a long established fact that a reader will be distracted by the readable.\r\ncontent of a page when looking at its layout.');

-- --------------------------------------------------------

--
-- Table structure for table `bimbinganskripsi`
--

CREATE TABLE `bimbinganskripsi` (
  `id_bimbingan` int(4) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `dosen_pembimbing` varchar(50) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `aktivitas` varchar(50) NOT NULL,
  `jenis_laporan` varchar(13) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` enum('New','ACC','Revisi') NOT NULL,
  `tgl_koreksi` date DEFAULT NULL,
  `uraian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bimbinganskripsi`
--

INSERT INTO `bimbinganskripsi` (`id_bimbingan`, `nim`, `nama_lengkap`, `program_studi`, `dosen_pembimbing`, `tgl_input`, `aktivitas`, `jenis_laporan`, `file`, `status`, `tgl_koreksi`, `uraian`) VALUES
(2, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Satrio Agung Prakoso, S.T.', '2020-01-09', 'Bab I Pendahuluan', '', '', 'Revisi', '2020-01-30', 'wofienf'),
(6, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', '2020-01-24', 'Bab I Pendahuluan', 'Skripsi', 'Nim_nama.pdf', 'Revisi', '2020-01-25', 'Perbaiki format penulisan'),
(16, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', '2020-01-02', 'Bab I Pendahuluan', 'Skripsi', 'NIM_NamaMhs.pdf', 'ACC', '2020-01-12', 'Lanjutkan'),
(18, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Satrio Agung Prakoso, S.T.', '2020-01-14', 'Bab V Pembahasan', 'Skripsi', 'NIM_NamaMhs.pdf', 'ACC', '2020-01-20', 'Lanjut Bab VI'),
(19, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', '2020-01-23', 'Bab VI Penutup', 'Skripsi', 'NIM_NamaMhs.pdf', 'New', '2020-01-24', ''),
(23, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', '2020-01-26', 'Bab VI Penutup', 'Skripsi', 'NIM_NamaMhs.pdf', 'Revisi', '2020-01-28', 'Perbaiki penulisan'),
(24, '222120022', 'Kristiani', 'Sistem Informasi - S1', 'Satrio Agung Prakoso, S.T.', '2020-01-02', 'Bab I Pendahuluan', 'Skripsi', '', 'New', '2020-01-04', 'Perbaiki format penulisan'),
(27, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', '2020-01-29', 'asdafadf', 'Skripsi', 'NIM_NamaMhs.pdf', 'New', NULL, ''),
(28, '222120022', 'Kristiani', 'Sistem Informasi - S1', 'Satrio Agung Prakoso, S.T.', '2020-01-27', 'Bab II Landasan Teori', 'Skripsi', 'NIM_NamaMhs.pdf', 'New', NULL, ''),
(29, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-05-08', 'Bab I Pendahuluan', 'Skripsi', '223150017_Bab I.pdf', 'ACC', '2019-05-08', 'ACC Bab I'),
(30, '223150017', 'Ade Kristanto', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', '2019-05-08', 'Bab I Pendahuluan', '', '223150017_Bab I.pdf', 'ACC', '2019-05-08', 'ACC Bab I'),
(31, '223150017', 'Ade Kristanto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-08-02', 'Bab II Tinjauan Pustaka', '', '223150017_Bab II.pdf', 'Revisi', '2019-08-02', 'Revisi Bab II:\r\n1. Penelitian terdahulu\r\n2. Teori, sumber gambar\r\n3. Penjelasan teori/gambar/tabel'),
(32, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', '2019-10-11', 'Bab II Tinjauan Pustaka', '', '223150017_Bab II.pdf', 'Revisi', '2019-10-11', 'Revisi Bab II:\r\n1. Testing?\r\n2. Implementasi sistem'),
(33, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-10-15', 'Bab II Tinjauan Pustaka', '', '223150017_Bab II.pdf', 'Revisi', '2019-10-15', 'Revisi Bab II:\r\n1. Penelitian yg relevan\r\n2. Pemilihan metode penelitian'),
(34, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-10-18', 'Bab III Metodologi Penelitian', '', '223150017_Bab III.pdf', 'Revisi', '2019-10-18', 'Revisi Bab III:\r\n1. Metode, jelaskan input dari langkah pada metode yang dipakai\r\n2. Flowchart'),
(35, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', '2019-10-22', 'Bab III Metodologi Penelitian', '', '223150017_Bab III.pdf', 'Revisi', '2019-10-22', 'Revisi Bab III:\r\n1. Penjelasan tahapan penelitian'),
(36, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-10-31', 'Bab IV Gambaran Umum Perusahaan', '', '223150017_Bab IV.pdf', 'Revisi', '2019-10-31', 'Revisi Bab IV:\r\n1. Sejarah Yayasan'),
(37, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Satrio Agung Prakoso, S.T.', '2019-11-05', 'Bab IV Gambaran Umum Perusahaan', '', '223150017_Bab IV.pdf', 'Revisi', '2019-11-05', 'Revisi Bab IV:\r\n1. CRM di struktur yayasan'),
(38, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-11-20', 'Bab II Tinjauan Pustaka', '', '223150017_Bab II.pdf', 'ACC', '2019-11-20', 'ACC Bab II'),
(39, '223150017', 'Ade Kristianto', 'Teknik Informatika - S1', 'Alexander Dharmawan, S.T., M.Kom.', '2019-11-20', 'Bab III Metodologi Penelitian', '', '223150017_Bab III.pdf', 'ACC', '2019-11-20', 'ACC Bab III'),
(40, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Ana Wahyuni, S.Si., M.Kom.', '2021-02-02', 'aa', 'Skripsi', 'NIM_NamaMhs.pdf', 'New', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `dekan`
--

CREATE TABLE `dekan` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dekan`
--

INSERT INTO `dekan` (`nidn`, `nama_lengkap`, `jenis_kelamin`, `email`, `jabatan_fungsional`, `jabatan_struktural`, `foto`, `username`, `password`, `level`) VALUES
('0618127802', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'L', 'harries@gmail.com', 'Dekan Fakultas Teknik dan Informatika', 'Asisten Ahli', 'female.png', '0618127802', '73b8fe9fa7a20b8f60f566841d7c62f2', 'd');

-- --------------------------------------------------------

--
-- Table structure for table `dosen`
--

CREATE TABLE `dosen` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dosen`
--

INSERT INTO `dosen` (`nidn`, `nama_lengkap`, `jenis_kelamin`, `email`, `jabatan_fungsional`, `jabatan_struktural`, `foto`, `username`, `password`, `level`) VALUES
('0601067503', 'Ana Wahyuni, S.Si., M.Kom.', 'P', 'ana@gmail.com', 'Lektor', 'Ketua LPPM', 'female.png', '0601067503', '276b6c4692e78d4799c12ada515bc3e4', 'do'),
('0602017001', 'Yani Prihati, S.Si., M.Kom.', 'P', 'yani@gmail.com', 'Lektor Kepala', 'Wakil Rektor 1 Bidang Akademik dan Kemahasiswaan', 'female.png', '0602017001', '080840925a7e2087673145d83918c658', 'do'),
('0606037001', 'Suwarno, S.Si., M.Kom.', 'L', 'suwarno@gmail.com', 'Lektor', 'Wakil Rektor 3 Bidang Teknologi Informasi', 'man.png', '0606037001', '36a8b597c250d37ef7ccfac9d724f233', 'do'),
('0606046401', 'Dra. Tri Karyanti, M.Hum.', 'P', 'tri@gmail.com', 'Lektor', 'Kepala Perpustakaan', 'female.png', '0606046401', 'd2cfe69af2d64330670e08efb2c86df7', 'do'),
('0609056102', 'Drs. Suhartoyo', 'L', 'suhartoyo@gmail.com', '', 'Dosen Teknik Informatika', 'man.png', '0609056102', 'c5421a1595a93f49acd37a1ea90de7f5', 'do'),
('0610029301', 'Adityo Putro Wicaksono, M.Kom.', 'L', 'adityo@gmail.com', '', 'Dosen Teknik Informatika', 'man.png', '0610029301', 'd92877035603f2a859bb49332cd200fa', 'do'),
('0613016603', 'Jutono Gondohanindijo, M.Kom.', 'L', 'jutono@gmail.com', 'Asisten Ahli', 'Dosen Teknik Informatika', 'man.png', '0613016603', '392ce023884f3c11ccb8c64bbf68cb20', 'do'),
('0613037101', 'Yusup, S.Si., M.Kom.', 'L', 'yusup@gmail.com', 'Lektor Kepala', 'Dosen Sistem Informasi', 'man.png', '0613037101', 'f2ec4b1440f6f15e1a6a5dca0bb704b3', 'do'),
('0613046804', 'Yohana Tri Widayati, S.E., M.Kom.', 'P', 'yohana@gmail.com', 'Lektor Kepala', 'Kepala BPM atau LP2MP', 'female.png', '0613046804', 'd1ff1c32fb0a45cdc418abe85908aba2', 'do'),
('0615057002', 'Satrio Agung Prakoso, S.T.', 'L', 'satrio@gmail.com', '', 'Kaprodi Teknik Informatika', 'man.png', '0615057002', '$2y$10$57fGXsxQzC4tP9xPIDeB7O9rrH36voobZpqX0cS8/WGUbnCt2Jto6', 'do'),
('0615107201', 'Alexander Dharmawan, S.T., M.Kom.', 'L', 'alexander@gmail.com', 'Lektor Kepala', 'Wakil Rektor 2 Bidang Sumber Daya dan Administrasi', 'man.png', '0615107201', 'dd22141acb5ea065acd5ed773729c98f', 'do'),
('0618127802', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'L', 'harries@gmail.com', 'Asisten Ahli', 'Dekan Fakultas Teknik dan Informatika', 'man.png', '0618127802', '73b8fe9fa7a20b8f60f566841d7c62f2', 'd'),
('0621066901', 'Suprapto, S.E., M.Kom.', 'L', 'suprapto@gmail.com', 'Lektor', 'Dosen Sistem Informasi', 'man.png', '0621066901', 'beb204ded84ba984ee5b74f4f4bcf9f2', 'do'),
('0625098502', 'Albert Santoso, M.Kom.', 'L', 'albert@gmai.com', 'Asisten Ahli', 'Dosen Teknik Informatika', 'man.png', '0625098502', '6c5bc43b443975b806740d8e41146479', 'do'),
('0630107301', 'Sinta Tridian Galih, S.T., M.Kom.', 'P', 'sinta@gmail.com', 'Lektor', 'Kaprodi Sistem Informasi dan Kaprodi Teknik Multimedia dan Jaringan', 'female.png', '0630107301', '08ca451b5ef1a7c86763d31e7711a522', 'k'),
('0631038901', 'Stefanus Widjaja, M.Kom.', 'L', 'stefanus@gmail.com', 'Asisten Ahli', 'Kepala Pustik', 'man.png', '0631038901', '8dd2cdcec15a6f3a4ef80d18c27ed2c2', 'do'),
('0631087902', 'Mohammad Fajarianditya Nugroho, M.Kom.', 'L', 'mohammad@gmail.com', '', 'Koordinator Kemahasiswaan', 'man.png', '0631087902', 'a219deb20f118754a4280a77f842bdbf', 'do');

-- --------------------------------------------------------

--
-- Table structure for table `jadwal`
--

CREATE TABLE `jadwal` (
  `id_jadwal` int(50) NOT NULL,
  `nidn` varchar(100) NOT NULL,
  `semester` varchar(50) NOT NULL,
  `thn_ajaran` varchar(50) NOT NULL,
  `hari_1` varchar(50) NOT NULL,
  `jam_1` varchar(50) NOT NULL,
  `hari_2` varchar(50) NOT NULL,
  `jam_2` varchar(50) NOT NULL,
  `hari_3` varchar(50) NOT NULL,
  `jam_3` varchar(50) NOT NULL,
  `tgl_input` varchar(100) NOT NULL,
  `status` int(50) NOT NULL,
  `status1` int(50) NOT NULL,
  `statuskirim` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jadwal`
--

INSERT INTO `jadwal` (`id_jadwal`, `nidn`, `semester`, `thn_ajaran`, `hari_1`, `jam_1`, `hari_2`, `jam_2`, `hari_3`, `jam_3`, `tgl_input`, `status`, `status1`, `statuskirim`) VALUES
(11, '0615057002', 'ganjil', '2020/2021', 'Senin', '10:00-15:00', 'Rabu', '10:00-15:00', '', '0', '2020-09-24', 1, 1, 0),
(12, '0631038901', 'ganjil', '2020/2021', 'Senin', '09:00-12:00', 'Rabu', '09:00-12:00', '', '0', '2020-09-24', 1, 1, 0),
(21, '0610029301', 'ganjil', '2020/2021', 'Senin', '11:30-14:00', 'Rabu', '11:30-14:00', '', '0', '2020-09-29', 1, 1, 0),
(23, '0613016603', 'ganjil', '2020/2021', 'Senin', '13:00-15:00', 'Kamis', '13:00-15:00', '', '0', '2020-09-29', 1, 1, 0),
(30, '0602017001', 'ganjil', '2020/2021', 'Senin', '11:00-12:00', 'Rabu', '10:00-12:00', 'Senin', '10:00-11:30', '2021-02-03', 0, 0, 0),
(31, '0601067503', 'ganjil', '2020/2021', 'Senin', '11:00-12:00', 'Rabu', '12:00-13:30', '', '', '2021-02-04', 0, 0, 1),
(32, '0601067503', 'ganjil', '2020/2021', 'Selasa', '10:00-12:30', 'Jumat', '11:00-13:00', '', '', '2021-02-13', 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `kaprodi`
--

CREATE TABLE `kaprodi` (
  `nidn` varchar(12) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `jabatan_fungsional` varchar(100) NOT NULL,
  `jabatan_struktural` varchar(100) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kaprodi`
--

INSERT INTO `kaprodi` (`nidn`, `nama_lengkap`, `jenis_kelamin`, `email`, `jabatan_fungsional`, `jabatan_struktural`, `foto`, `username`, `password`, `level`) VALUES
('0615057002', 'Satrio Agung Prakoso, S.T.', 'L', 'satrio@gmail.com', 'Ketua Program Studi Teknik Informatika', '', 'man.png', '0615057002', 'eec470e2f66e97a2ff82bcb62897375a', 'k'),
('0630107301', 'Sinta Tridian Galih, S.T., M.Kom.', 'P', 'sinta@gmail.com', 'Lektor', 'Ketua Program Studi Sistem Informasi dan Teknik Multimedia dan Jaringan', 'female.png', '0630107301', '08ca451b5ef1a7c86763d31e7711a522', 'k');

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(11) NOT NULL,
  `komentar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `komentar`) VALUES
(1, 'sudah dipreiksa '),
(3, '');

-- --------------------------------------------------------

--
-- Table structure for table `konsultasi`
--

CREATE TABLE `konsultasi` (
  `id_konsultasi` int(10) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `dosen` varchar(50) NOT NULL,
  `tgl_input` date DEFAULT NULL,
  `aktivitas` varchar(100) NOT NULL,
  `jenis_laporan` varchar(13) NOT NULL,
  `file` varchar(100) NOT NULL,
  `status` enum('New','ACC','Revisi') NOT NULL,
  `tgl_koreksi` date DEFAULT NULL,
  `Uraian` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konsultasi`
--

INSERT INTO `konsultasi` (`id_konsultasi`, `nim`, `nama`, `program_studi`, `dosen`, `tgl_input`, `aktivitas`, `jenis_laporan`, `file`, `status`, `tgl_koreksi`, `Uraian`) VALUES
(1, '222110005', 'Rico Santoso', 'Sistem Informasi', '', '2019-09-30', 'Bab I Pendahuluan', '', '', 'Revisi', '2019-10-01', 'Perbaiki Penulisan'),
(2, '222120022', 'Kristiani', 'SI', '', '2019-12-06', 'Bab I Pendahuluan', '', '', '', '0000-00-00', ''),
(3, '222120001', 'Oky Jayadi', 'SI', '', '2019-12-07', 'Bab I Pendahuluan', '', '', '', '0000-00-00', ''),
(20, '222110005', 'Rico Santoso', 'si', '0602017001', '0000-00-00', 'Test 1234', 'Skripsi', '17.04.3087_dp.pdf', 'ACC', '0000-00-00', ''),
(21, '222110005', 'Rico Santoso', 'si', '0609056102', '0000-00-00', 'Test 123321', 'Skripsi', '2401-4730-1-SM.pdf', 'ACC', '0000-00-00', ''),
(22, '222110005', 'Rico Santoso', 'si', '0609056102', '0000-00-00', 'Test 123321', 'Skripsi', '2401-4730-1-SM.pdf', 'ACC', '0000-00-00', ''),
(23, '222110005', 'Rico Santoso', 'si', '0609056102', '0000-00-00', 'Test 123321', 'Skripsi', '2401-4730-1-SM.pdf', 'ACC', '0000-00-00', ''),
(24, '222110005', 'Rico Santoso', 'si', '0609056102', '0000-00-00', 'Test 123321', 'Skripsi', '2401-4730-1-SM.pdf', 'ACC', '0000-00-00', ''),
(25, '222110005', 'Rico Santoso', 'si', '0609056102', '0000-00-00', 'Test 123321', 'Skripsi', '2401-4730-1-SM.pdf', 'ACC', '0000-00-00', ''),
(26, '222110005', 'Rico Santoso', 'si', '0613016603', '0000-00-00', 'Bab II Landasan Teori', 'Skripsi', '17.04.3087_dp.pdf', 'ACC', '0000-00-00', ''),
(27, '222110005', 'Rico Santoso', 'si', '0602017001', '0000-00-00', 'Bab III', 'Skripsi', '2401-4730-1-SM.pdf', 'New', '0000-00-00', ''),
(28, '222110005', 'Rico Santoso', 'si', '0602017001', '0000-00-00', 'Bab III', 'Skripsi', '17.04.3087_dp.pdf', 'New', NULL, ''),
(29, '222110005', 'Rico Santoso', 'si', '0601067503', '2019-12-11', 'Bab V', 'Skripsi', '17.04.3087_dp.pdf', 'New', NULL, ''),
(30, '222110005', 'Rico Santoso', 'si', '0601067503', '0000-00-00', 'Bab VI', 'Skripsi', '17.04.3087_dp.pdf', 'New', NULL, ''),
(31, '222110005', 'Rico Santoso', 'si', '0601067503', '0000-00-00', 'Bab II', 'Skripsi', '17.04.3087_dp.pdf', 'New', NULL, ''),
(32, '222110005', 'Rico Santoso', 'si', '0601067503', '2019-12-11', 'Bab II Lagi', 'Skripsi', '17.04.3087_dp.pdf', 'New', NULL, ''),
(33, '222110005', 'Rico Santoso', 'si', '0606037001', '2020-01-09', 'Bab III Test', 'Skripsi', 'CONTOH LAPORAN.pdf', 'New', NULL, ''),
(35, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', '0601067503', '2020-01-09', 'Bab III Test 2', 'Skripsi', 'CONTOH LAPORAN.pdf', 'New', NULL, ''),
(36, '223150017', 'Inyongk', 'Sistem Informasi - S1', '0613037101', '2020-01-13', 'Bab IV', 'Skripsi', 'NIM_NamaMhs.pdf', 'New', NULL, ''),
(37, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', '0615057002', '2020-01-23', 'Bab I Pendahuluan', 'Skripsi', 'NIM_NamaMhs.pdf', 'New', NULL, '');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `email` varchar(30) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `foto` varchar(30) NOT NULL,
  `username` varchar(9) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('d','k','a','m','do') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_lengkap`, `jenis_kelamin`, `email`, `program_studi`, `foto`, `username`, `password`, `level`) VALUES
('222110005', 'Rico Santoso', 'L', '222110005@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222110005', 'be89e250d8388c5e7ded2f1630e5daa4', 'm'),
('222110023', 'Johan Putra Perdana', 'L', '222110023@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222110023', '7fedcb034ecf9df4be8c1ea13362053b', 'm'),
('222120001', 'Oky Jayadi', 'L', '222120001@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120001', 'c4771c088a4c9f0ef9560dadf0cbc500', 'm'),
('222120006', 'Tohan Sahara Putra', 'L', '222120006@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120006', '567ebac4b73f9d014e2d20a1172b21cd', 'm'),
('222120007', 'Agnesia Andriyani', '', '222120007@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222120007', 'ff134f9ccacc1e3820e7ccb20e54d702', 'm'),
('222120010', 'Cindy Mananti', 'P', '222120010@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222120010', 'cc4b2066cfef89f2475de1d4da4b29c7', 'm'),
('222120011', 'Andra Raines Sagita', 'P', '222120011@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222120011', '14180f38f11db420937b98aa24fad581', 'm'),
('222120012', 'Zacharia Christyansen', 'L', '222120012@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120012', '93ae9dd0dd986fccf90742eea7b54fd6', 'm'),
('222120014', 'Ajeng Tria Amanda', 'P', '222120014@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222120014', '43317d3fd0d3344a7152250b9fd0dc2f', 'm'),
('222120020', 'Timious Kardia Yosel Suwarno', 'L', '222120020@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120020', 'e3759ed30939d0678940f576ef125b60', 'm'),
('222120022', 'Kristiani', 'P', '222120022@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222120022', '3330c219883cc66985db9473f9f0c6e6', 'm'),
('222120026', 'David Decvrianus', 'L', '222120026@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120026', '172522ec1028ab781d9dfd17eaca4427', 'm'),
('222120029', 'Stevanus Andinata Ginting', 'L', '222120029@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120029', 'f385ae958257e19ba5eca887b765bc65', 'm'),
('222120032', 'Indra Sugara', 'L', '222120032@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120032', 'e24f6e3ce19ee0728ff1c443e4ff488d', 'm'),
('222120033', 'Yesaya Primadianto Sutrisno', 'L', '222120033@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120033', '7084eb4055385637f7c7b2a4c98b8a5e', 'm'),
('222120035', 'Hendra Stefanus', 'L', '222120035@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120035', 'a04cca766a885687e33bc6b114230ee9', 'm'),
('222120036', 'Otniel Chandra Bale', 'L', '222120036@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120036', 'fe19bf8655db4aedadfa2ed666f16ae4', 'm'),
('222120042', 'Johan Amriyahya', 'L', '222120042@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222120042', '7fedcb034ecf9df4be8c1ea13362053b', 'm'),
('222130008', 'Yosua Christian', 'L', '222130008@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222130008', '0a810b127cc9448c08522476682769ca', 'm'),
('222140001', 'Angga Pratama', 'L', '222140001@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140001', '8479c86c7afcb56631104f5ce5d6de62', 'm'),
('222140002', 'Rezha Aditya Gunawan', 'L', '222140002@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140002', 'edfb15986d681461b02a4f837349bb38', 'm'),
('222140003', 'Ivan Rowandi Budiman', 'L', '222140003@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140003', '2c42e5cf1cdbafea04ed267018ef1511', 'm'),
('222140004', 'Satri Rahmad Apriyanto Gea', 'L', '222140004@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140004', '58b1c84d77907ff905f2081c097ae70d', 'm'),
('222140005', 'Desman Emanuel Warasi', 'L', '222140005@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140005', 'a55d721596c2766b5343ae5eca5c7319', 'm'),
('222140006', 'Rio Matius', 'L', '222140006@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140006', 'd5ed38fdbf28bc4e58be142cf5a17cf5', 'm'),
('222140007', 'Eliazer Paul Samuel Sitohang', 'L', '222140007@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140007', '74f92ce4e4af334b65537bc570f6d29d', 'm'),
('222140008', 'Yan Fredrik Tarigan', 'L', '222140008@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140008', '911f6332e7f90b94b87f15377263995c', 'm'),
('222140009', 'Stefen Wijaya Haris Siswoyo', 'L', '222140009@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222140009', 'cffb28f528043e8ef8d63ff368663051', 'm'),
('222150001', 'Muhammad Sulaiman', 'L', '222150001@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222150001', 'a7777999e260290f68a1455cacdabf6c', 'm'),
('222150003', 'Apfia Pransiski', 'P', '222150003@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222150003', '9f2c4538947b1a6e1f26f699c91bda79', 'm'),
('222150004', 'Feibe Veronika Sipota', 'P', '222150004@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222150004', 'bfdf605905316de6423eb5cf61b483ed', 'm'),
('222150005', 'Oei, Vertasia Nugraheni', 'L', '222150005@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222150005', '4a29cc3200c104cf1af49aa81c019e09', 'm'),
('222150007', 'Hold Deo Charunia', 'L', '222150007@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222150007', 'af1d8213f4a22b0f9803fec9259ff7a8', 'm'),
('222150008', 'Rimba Agustina', 'P', '222150008@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222150008', 'a6dc4c5d7d67614c6b7476ab01ae5ec7', 'm'),
('222150009', 'Malfin Maniani', 'L', '222150009@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222150009', 'b1731ba8d8e2b89bea6f62c396bf79a0', 'm'),
('222150010', 'Aliong Saputra', 'L', '222150010@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222150010', 'bc2451eeafbac1ae95ec7343d07f068b', 'm'),
('222160001', 'Great Edo Charunia', 'L', '222160001@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160001', 'acaa16770db76c1ffb9cee51c3cabfcf', 'm'),
('222160002', 'Elisabeth Victory May Ary', 'P', '222160002@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222160002', 'f11d689dda4227953e50a0c4ee2ed3f2', 'm'),
('222160003', 'Yohanes Alvena', 'L', '222160003@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160003', '493331a7321bf622460493a8cda5e4c4', 'm'),
('222160004', 'Tri Maena Krismantara', 'L', '222160004@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160004', 'd2cfe69af2d64330670e08efb2c86df7', 'm'),
('222160005', 'Lastri Agustika P', 'P', '222160005@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222160005', '707bedd98d8abd4346de94fffa35b5c5', 'm'),
('222160006', 'Danang Yudhistira', 'L', '222160006@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160006', '6a17faad3b1275fd2558d5435c58440e', 'm'),
('222160007', 'Yahya Benyamin Sabuna', 'L', '222160007@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160007', '59202463fd4c312b063293b88f6063b2', 'm'),
('222160008', 'Dani Febrian Wijadi', 'L', '222160008@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160008', '55b7e8b895d047537e672250dd781555', 'm'),
('222160009', 'Adi Sulistia', 'L', '222160009@student.unaki.ac.id', 'Sistem Informasi - S1', 'man.png', '222160009', 'c46335eb267e2e1cde5b017acb4cd799', 'm'),
('222160010', 'Kharistin Naftalia', 'P', '222160010@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222160010', 'd29372cf37df093b7915360a89117816', 'm'),
('222160011', 'Delchi', 'P', '222160011@student.unaki.ac.id', 'Sistem Informasi - S1', 'female.png', '222160011', '52a1b57d47b9a4c87684a4ffb82f4431', 'm'),
('223110018', 'Novisto Pratama Putra', 'L', '223110018@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223110018', '095ffa63360f1afec8bd0f563b41102a', 'm'),
('223110022', 'Tiara Kartikasari', 'P', '223110022@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223110022', '4600bb8b66b6a2af771fbb0566732196', 'm'),
('223110047', 'Michael Ahadi Husodo Lenggono', 'L', '223110047@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223110047', '0acf4539a14b3aa27deeb4cbdf6e989f', 'm'),
('223110090', 'Tri Wahyuni', 'P', '223110090@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223110090', 'd2cfe69af2d64330670e08efb2c86df7', 'm'),
('223120002', 'Yonathan Aditya Purnama', 'L', '223120002@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223120002', 'e9da9911788d897aa0e9e807ca90d4ce', 'm'),
('223120013', 'Merlipson Terinate', 'L', '223120013@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223120013', '77795c39bbf9c56c94f467f286d08cbd', 'm'),
('223120014', 'Temasetia Zebua', 'L', '223120014@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223120014', '4dae2052ba7f59d219f211805ca8e952', 'm'),
('223120031', 'Ruth Nesya Adelweis Sumule', 'P', '223120031@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223120031', '81ea66d57d6b827ef722f4f20f8a669c', 'm'),
('223120034', 'Kaspa Yobel Batubara', 'L', '223120034@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223120034', 'efe5206c2b6a54c9ff1bb2a9ac057210', 'm'),
('223120046', 'Devi Kurnia', 'P', '223120046@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223120046', 'f5c2db1f19bdde37e740e86b70d0534f', 'm'),
('223120048', 'Ameng Selvanus', 'L', '223120048@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223120048', 'ffb0e777a539c14e061f9ceceb6712c6', 'm'),
('223120053', 'Imam Mardani', 'L', '223120053@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223120053', 'eaccb8ea6090a40a98aa28c071810371', 'm'),
('223130001', 'Willy Andrianto Halim', 'L', '223130001@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130001', 'e7236697824fb37763235980f1061218', 'm'),
('223130002', 'Michelle Margaretha Singgih', 'P', '223130002@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223130002', '2345f10bb948c5665ef91f6773b3e455', 'm'),
('223130003', 'Jeri Warisman', 'L', '223130003@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130003', 'd63e6966c704eec1885b753d5b257b3c', 'm'),
('223130004', 'Alfatkhah Mu\'arifah', 'P', '223130004@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223130004', 'ae7b71496d5082415675cddf64283223', 'm'),
('223130005', 'Charolina Br. Sinukaban', 'P', '223130005@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223130005', 'a2a9e923c33da9e528380648ae0a6b49', 'm'),
('223130006', 'Joko Subandono', 'L', '223130006@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130006', '9ba0009aa81e794e628a04b51eaf7d7f', 'm'),
('223130008', 'Esda Hosea Rido Harianto', 'L', '223130008@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130008', '532c654e98f6ed906945dfa81351b908', 'm'),
('223130009', 'Sadi Wantoro Pane', 'L', '223130009@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130009', '48abbef8cb2a1444c87c2838aec5e93d', 'm'),
('223130010', 'Priskila Eka Kurniawati', 'P', '223130010@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223130010', 'fa43d72ae115dae0ef71221c2ff458c5', 'm'),
('223130011', 'Yan Masafi Maniani', 'L', '223130011@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130011', '911f6332e7f90b94b87f15377263995c', 'm'),
('223130012', 'Jonius Daniel', 'L', '223130012@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130012', '057e3e9d27dfbe08e07853c606195b57', 'm'),
('223130014', 'Surya Jaya Putra', '', '223130014@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130014', 'aff8fbcbf1363cd7edc85a1e11391173', 'm'),
('223130015', 'Wisnu Prabowo', 'L', '223130015@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130015', '67340a8acc49d521d7fdd25db913bf9d', 'm'),
('223130016', 'Natan Oktavian Iwan Putra', 'L', '223130016@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130016', '18dcb0929987319bcb41e933e23c4a4f', 'm'),
('223130019', 'Franstorian Ahitofel', 'L', '223130019@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130019', '8c919322092a3188addb457a44731ab5', 'm'),
('223130022', 'Iqbal Azri Aji', 'L', '223130022@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130022', 'eedae20fc3c7a6e9c5b1102098771c70', 'm'),
('223130040', 'Sofater Yonesky Simamora', 'L', '223130040@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130040', 'af7c766b368d201f1896e237fdd63781', 'm'),
('223130050', 'Haris Sastro Barneo', 'L', '223130050@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223130050', 'c0ba88b8bca79ca3b50b96abdf431766', 'm'),
('223140001', 'Tan Akira Richardo Darmawan', 'L', '223140001@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140001', '5b2d4484498235e80d61a233a7c04991', 'm'),
('223140002', 'Samuel Dwi Prasetyo S.', 'L', '223140002@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140002', 'd8ae5776067290c4712fa454006c8ec6', 'm'),
('223140003', 'Ezra Yoga Irawan', 'L', '223140003@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140003', '8beb6443d15f540099bb756f62b629a3', 'm'),
('223140004', 'Jannatun Naim', 'P', '223140004@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140004', '095d1164f8efed4b8df4c60e9377f539', 'm'),
('223140005', 'Linda Purwasih', 'P', '223140005@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140005', 'eaf450085c15c3b880c66d0b78f2c041', 'm'),
('223140006', 'Eko Amirul Sofik', 'L', '223140006@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140006', 'e5ea9b6d71086dfef3a15f726abcc5bf', 'm'),
('223140007', 'Zulia Puji Lestari', 'P', '223140007@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140007', '7995bfd03575886940fedc95d5f82082', 'm'),
('223140008', 'Nurchamim', 'L', '223140008@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140008', '13e041104c63cbaf5e687a0858ea2036', 'm'),
('223140009', 'Eli Tias Tutik', 'P', '223140009@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140009', '0a57258559de00695ffb0f1d46bba388', 'm'),
('223140010', 'Eka Nur Siswanti', 'P', '223140010@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140010', '79ee82b17dfb837b1be94a6827fa395a', 'm'),
('223140013', 'Stephani Sari Tanaka', 'P', '223140013@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140013', '4a3a932425682c8b87dac8d9f2e0128f', 'm'),
('223140016', 'Andreas Adinata Purba', 'L', '223140016@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140016', 'e024f9589c1e9d64b34cb1257d9c9dfc', 'm'),
('223140017', 'Ferra Oky Netasa', 'P', '223140017@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223140017', '824bb5a603b8706658101a2e43ce906e', 'm'),
('223140019', 'Rocky Marciano Hendico Sianturi', 'L', '223140019@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140019', '5bab541acd761a3093d7c4202b6e1da9', 'm'),
('223140020', 'Ardwi Jaya Nowama', 'L', '223140020@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223140020', 'a52f15dc2f7ce7e4e7797f8d5908c562', 'm'),
('223150001', 'Daniel Kurniawan', 'L', '223150001@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150001', 'aa47f8215c6f30a0dcdb2a36a9f4168e', 'm'),
('223150002', 'Ken Junio Ardianto', 'L', '223150002@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150002', 'f632fa6f8c3d5f551c5df867588381ab', 'm'),
('223150003', 'Imam Lilik Setiaji', 'L', '223150003@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150003', 'eaccb8ea6090a40a98aa28c071810371', 'm'),
('223150004', 'Rendis Arfendo', 'L', '223150004@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150004', '91692787c851f41a58f82b254238b222', 'm'),
('223150005', 'Agastya Pradhama Winoto', 'L', '223150005@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150005', '215b401f60fafd39ce86a7109ac71ed0', 'm'),
('223150006', 'Safkhi Nurul Huda', 'L', '223150006@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150006', 'b13e8f9797e40eac1d2ad1c68bcce9a0', 'm'),
('223150007', 'Akhmad Nasfhan Sa\'bani', 'L', '223150007@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150007', 'c85b5738485dae80d7d85efe9b3f2efc', 'm'),
('223150008', 'Michael Soni Susanto', 'L', '223150008@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150008', '0acf4539a14b3aa27deeb4cbdf6e989f', 'm'),
('223150009', 'Angeline Renita Notobudojo', 'P', '223150009@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223150009', '3c010dac299ef4aa8a2f6d9ce5187698', 'm'),
('223150010', 'Sofwatul Choiriyah', 'P', '223150010@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223150010', '0f3ed355bf2bfee885e3a9f017347223', 'm'),
('223150011', 'Roy Lando Batuara', 'L', '223150011@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150011', 'd4c285227493531d0577140a1ed03964', 'm'),
('223150013', 'Rizka Miladyna Yunash', 'P', '223150013@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223150013', 'aef2c231d5e776c0e0656eaf68767848', 'm'),
('223150014', 'Stefanus Jordan', 'L', '223150014@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150014', '8dd2cdcec15a6f3a4ef80d18c27ed2c2', 'm'),
('223150017', 'Ade Kristianto', 'L', '223150017@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150017', 'a562cfa07c2b1213b3a5c99b756fc206', 'm'),
('223150018', 'Daniel Bezaliel Aholiab Welang', 'L', '223150018@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150018', 'aa47f8215c6f30a0dcdb2a36a9f4168e', 'm'),
('223150020', 'Dimas Ardi Wicaksono', 'L', '223150020@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150020', '7d49e40f4b3d8f68c19406a58303f826', 'm'),
('223150021', 'Yupin Enumbi', 'L', '223150021@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150021', 'cc377b3c5082c205206fd4222a975066', 'm'),
('223150022', 'Farid Lukman Saputro', 'L', '223150022@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150022', 'a1d12da42d4302e53d510954344ad164', 'm'),
('223150072', 'Aris Syarifudin', 'L', '223150072@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223150072', '0ff6c3ace16359e41e37d40b8301d67f', 'm'),
('223160002', 'Ines Leonita Notobudojo', 'P', '223160002@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223160002', 'e559744627cceb9d06579d548b57bc01', 'm'),
('223160003', 'Taufiq Hafidzin', 'L', '223160003@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160003', 'f4eff635e6dfe584a1a536dbc7718f3d', 'm'),
('223160004', 'Theofilus Kharunia Djaya Parhusip', 'L', '223160004@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160004', 'b23d63849e110abecbcce586b0f7dc69', 'm'),
('223160006', 'Giovanni Anderson Rieuwpassa', 'L', '223160006@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160006', '037c70dbc1c812f6b2091688804d7b17', 'm'),
('223160007', 'Aldo Heryanto', 'L', '223160007@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160007', 'b104ab9a0e58c861b9628208b3fecd58', 'm'),
('223160008', 'Ferry Lexander', 'L', '223160008@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160008', '46171b077997b166bb30cf5494eff2f8', 'm'),
('223160009', 'Dedi Pandia', 'L', '223160009@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160009', 'c5897fbcc14ddcf30dca31b2735c3d7e', 'm'),
('223160010', 'Venny Veronika Br Tarigan', 'P', '223160010@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160010', '810e58e7657b368bbb9b1e2128254878', 'm'),
('223160011', 'Abednego', 'L', '223160011@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160011', '81895dbc8c783edfb7f8a2ce39afae5e', 'm'),
('223160012', 'Agus Stenly Maniani', 'L', '223160012@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160012', 'fdf169558242ee051cca1479770ebac3', 'm'),
('223160013', 'Yuswa Catur Barada', 'L', '223160013@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160013', '14e5c03a5f2aa96777838eadc3e40653', 'm'),
('223160014', 'Frida Vivi Rosalina', 'P', '223160014@studentt.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160014', 'f60834ce35581c434a68022f2e84f796', 'm'),
('223160015', 'Elisa Petra Rusendi Ratag', 'P', '223160015@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223160015', 'eaba1bca7df38544439d482bb60ab916', 'm'),
('223160016', 'Marthen Hery Josova', 'L', '223160016@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160016', '4787ee92357480cc1e4be08d06f88ba3', 'm'),
('223160017', 'Putriani Silalahi', 'P', '223160016@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223160017', '9b31faf63880fbcad2fc51b69a45ebba', 'm'),
('223160018', 'Adriel Yonatan', 'L', '223160018@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160018', '91e21671be6d7a68a84e7eaffc23a54d', 'm'),
('223160019', 'Cahaya Setia Elisabeth Gultom', 'P', '223160019@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223160019', 'bc5766ab6d36025412287a7703e9f46b', 'm'),
('223160020', 'Tan Lucas Andy Setiawan', 'L', '223160020@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160020', '5b2d4484498235e80d61a233a7c04991', 'm'),
('223160021', 'Maria Susanti', 'P', '223160020@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223160021', '263bce650e68ab4e23f28263760b9fa5', 'm'),
('223160023', 'Ari Yunus Hedrawan', 'L', '223160023@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160023', 'fc292bd7df071858c2d0f955545673c1', 'm'),
('223160024', 'Fransiskus Rossi Jati Nugroho', 'L', '223160024@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160024', 'ce3d31947d7ab9383a15fbe8780b2b62', 'm'),
('223160025', 'Bustomi Arifin', 'L', '223160025@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160025', '4c4d250036d2e23cbfd9cd9cdf313e4c', 'm'),
('223160026', 'Eko Sumarwan', 'L', '223160026@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160026', 'e5ea9b6d71086dfef3a15f726abcc5bf', 'm'),
('223160027', 'Natalia Kurnia Hapsari', 'P', '223160027@student.unaki.ac.id', 'Teknik Informatika - S1', 'female.png', '223160027', 'c1ed60949799e3adcd72928bb3314fe0', 'm'),
('223160028', 'Rico Sugiarto Dharmawan', 'L', '223160028@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160028', 'be89e250d8388c5e7ded2f1630e5daa4', 'm'),
('223160029', 'Moh Eksan', 'L', '223160029@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223160029', '94e510ecc1b1d7a405c0e7aa18db792b', 'm'),
('223170000', 'Coba', 'L', 'coba@email.com', 'Teknik Informatika - S1', 'masker.png', '223170000', '$2y$10$hwlGWKgBZQ0n64duVMzl1ujuNUUJfTZ/1fwxiS6dXwh0oZXBDAyni', 'm'),
('223170001', 'Muhammad Yusuf Alvin Mahendra', 'L', '223170001@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223170001', '$2y$10$RpBFWNBWHspeQbyBk7d4RuXvUKHMhO3KxNRWWovT4Uip13OR4hJgu', 'm'),
('223170006', 'Adhi Mulyanto Kawengian', 'L', '223170006@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223170006', '092bcc1028d905aa6c2c30ebe833f90f', 'm'),
('223180000', 'coba', 'L', 'coba@gmail.com', 'Teknik Informatika - S1', 'masker2.png', '223180000', '202cb962ac59075b964b07152d234b70', 'm'),
('223990162', 'Indriawan Prastono', 'L', '223990162@student.unaki.ac.id', 'Teknik Informatika - S1', 'man.png', '223990162', '4e03305eff3daaedfd746530e040cb84', 'm');

-- --------------------------------------------------------

--
-- Table structure for table `pengajuan`
--

CREATE TABLE `pengajuan` (
  `id_pengajuan` int(10) NOT NULL,
  `nim` varchar(9) NOT NULL,
  `nama_lengkap` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `file` varchar(100) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL,
  `thn_ajaran` varchar(30) NOT NULL,
  `jenis_laporan` enum('kp','skripsi') NOT NULL,
  `pembimbing1` varchar(100) NOT NULL,
  `pembimbing2` varchar(100) NOT NULL,
  `status` enum('0','1','2') NOT NULL,
  `status_dkn` enum('0','1','2') NOT NULL DEFAULT '0',
  `status_kirim` enum('0','1') NOT NULL DEFAULT '0',
  `tanggal` date NOT NULL,
  `Komentar` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengajuan`
--

INSERT INTO `pengajuan` (`id_pengajuan`, `nim`, `nama_lengkap`, `program_studi`, `judul`, `file`, `semester`, `thn_ajaran`, `jenis_laporan`, `pembimbing1`, `pembimbing2`, `status`, `status_dkn`, `status_kirim`, `tanggal`, `Komentar`) VALUES
(1, '222140002', 'Rezha Aditya Gunawan', 'Sistem Informasi - S1', 'Aplikasi Transaksi Pembelian dan Penjualan Makanan Pada Rumah Makan Mie Jempol Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'skripsi', 'Yusup, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '0', '0', '0', '2019-10-10', ''),
(2, '222150005', 'Oei, Vertasia Nugraheni', 'Sistem Informasi - S1', 'Sistem Informasi Pemasaran Di Amor Event And Wedding Organizer Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '0', '0', '0', '2019-10-10', ''),
(3, '222140008', 'Yan Fredrik Tarigan', 'Sistem Informasi - S1', 'Perancangan Sistem Informasi Perpustakaan Pada SMP Masehi PSAK Semrarang Berbasis Multiuser', 'NamaMahasiswa_NIM.rar', 'genap', '2017/2018', 'skripsi', 'Yusup, S.Si., M.Kom.', 'Suwarno, S.Si., M.Kom.', '0', '0', '0', '2019-10-11', ''),
(4, '222120033', 'Yesaya Primadianto Sutrisno', 'Sistem Informasi - S1', 'Sistem Informasi Penjualan dan Pemasran Alat Musil Berbasi Web Di Toko Surya Putra Music Semarang', 'NamaMahasiswa_NIM.rar 	', 'ganjil', '2017/2018', 'skripsi', 'Yusup, S.Si., M.Kom.', 'Suwarno, S.Si., M.Kom.', '0', '0', '0', '2019-10-15', ''),
(5, '222120022', 'Zacharia Christyansen', 'Sistem Informasi - S1', 'Sistem Informasi Penjualan Pada CV. Kurnia Jaya Berbasis Visual Basic', 'NamaMahasiswa_NIM.rar', 'ganjil', '2017/2018', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', '0', '0', '0', '2019-10-15', ''),
(6, '222120035', 'Hendra Stefanus', 'Sistem Informasi - S1', 'Aplikasi Administrasi Pada Asrama UNAKI Berbasis Visual Basic', 'NamaMahasiswa_NIM.rar', 'genap', '2015/2016', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Yusup, S.Si., M.Kom.', '0', '0', '0', '2019-10-15', ''),
(7, '222120032', 'Indra Sugara', 'Sistem Informasi - S1', 'Sistem Informasi Pada Hotel Sahabat Baru Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2015/2016', 'skripsi', 'Ana Wahyuni, S.Si., M.Kom.', 'Suprapto, S.E., M.Kom.', '0', '0', '0', '2019-10-15', ''),
(8, '223150006', 'Safkhi Nurul Huda', 'Teknik Informatika - S1', 'Perancangan Sistem Penggajian Karyawan Toko PIH FF JAYA Berbasis Visual Basic', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Sinta Tridian Galih, S.T., M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(9, '223150002', 'Ken Junio Ardianto', 'Teknik Informatika - S1', 'Perancangan Aplikasi Penjualan Mebel Berbasis Web Pada PT. LIGNA FURNITURE', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Alexander Dharmawan, S.T., M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(10, '223150011', 'Roy Lando Batuara', 'Teknik Informatika - S1', 'Perancangan Sistem Informasi Penjualan Jam Tangan  Berbasis Web Pada Toko Panen Watch', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Jutono Gondohanindijo, M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(11, '223150013', 'Rizka Miladyna Yunash', 'Teknik Informatika - S1', 'Perancangan Website Akademik Berbasis Web Dinamis Menggunakan Framework Bootstrap Pada SMA Negeri 1 Kota Mungkid', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Satrio Agung Prakoso, S.T.', '', '0', '0', '0', '2018-08-27', ''),
(12, '223150017', 'Ade Kristanto', 'Teknik Informatika - S1', 'Perancangan Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter Di Yayasan Anugrah Pressindo Indonesia (Anugrah Ministries)', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Satrio Agung Prakoso, S.T.', '', '0', '0', '0', '2018-08-27', ''),
(13, '223150018', 'Daniel Bezaliel Aholiab Welang', 'Teknik Informatika - S1', 'Aplikasi Dekstop Dokumentasi Arsip Menggunakan Bahasa Pemrograman Java Dan Database Mysql Pada SMP Kristen Gergaji Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Yohana Tri Widayati, S.E., M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(14, '223160008', 'Ferry Lexander', 'Teknik Informatika - S1', 'Aplikasi Pengolahan Data Stok Barang Dengan Java Pada CV. Pelita Mas', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Yani Prihati, S.Si., M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(15, '223160027', 'Natalia Kurnia Hapsari', 'Teknik Informatika - S1', 'Perancangan Sistem Informasi Absensi Manggunakan PHP di PT. British Gardens Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Jutono Gondohanindijo, M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(16, '223160028', 'Rico Sugiarto Dharmawan', 'Teknik Informatika - S1', 'Sistem Informasi Inventory Stok Barang Berbasis WEB pada CV. Kartika Sari', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Alexander Dharmawan, S.T., M.Kom.', '', '0', '0', '0', '2018-08-27', ''),
(17, '223170006', 'Adhi Mulyanto Kawengian', 'Teknik Informatika - S1', 'Aplikasi Desktop Inventory Dengan Java pada CV. Cempaka Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Sinta Tridian Galih, S.T., M.Kom.', '', '0', '0', '0', '0000-00-00', ''),
(18, '223160024', 'Fransiskus Rossi Jati Nugroho', 'Teknik Informatika - S1', 'Perancangan Sistem Rekomendasi Kelayalan Pemberian Kredit Pada PT. BPR Sinar Mitra Sejahtera Dengan Metode Smart (Simple Multi Attribute Rating Technique) Berbasis Web', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Satrio Agung Prakoso, S.T.', '', '1', '0', '0', '2018-08-27', ''),
(19, '223150022', 'Farid Lukman Saputro', 'Teknik Informatika - S1', 'Squid Proxy Server Berbasis Web dan CLI Pada Ubuntu 18.04 (Studi Kasus Pada SMP IT PABP Semarang)', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'kp', 'Alexander Dharmawan, S.T., M.Kom.', '', '1', '0', '0', '2018-08-27', ''),
(20, '223120013', 'Merlipson Terinate', 'Teknik Informatika - S1', 'Sistem Informasi Pendataan Umat Gereja Kristen Jawa (GKJ) Jatingaleh Berbasis Web', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', '1', '0', '0', '2018-08-27', ''),
(21, '223140016', 'Andreas Adinata Purba', 'Teknik Informatika - S1', 'Aplikasi E - Nota Rental Motor di Oke Rental Semarang Berbasis E - Commerce', 'NamaMahasiswa_NIM.rar', 'ganjil', '2018/2019', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2018-09-27', ''),
(22, '223150003', 'Imam Lilik Setiaji', 'Teknik Informatika - S1', 'Pembangunan Website Informasi Akademik Berbasis Web Dinamis Menggunakan Framework Twitter Bootstrap Pada MI Islamiyah Podorejo Semarang', 'NamaMahasiswa_NIM.rar 	', 'ganjil', '2018/2019', 'skripsi', 'Suwarno, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2018-08-27', ''),
(23, '223150007', 'Akhmad Nasfhan Sa\'bani', 'Teknik Informatika - S1', 'Aplikasi Monitoring Bimbingan Kerja Praktek Pada Universitas AKI Semarang', 'NamaMahasiswa_NIM.rar 	', 'ganjil', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2018-08-27', ''),
(24, '223150010', 'Sofwatul Choiriyah', 'Teknik Informatika - S1', 'Aplikasi Pengajuan Proposal Kerja Praktek Secara Online Pada Universitas AKI Semarang (Studi Kasus Fakultas Tenik dan Informatika)', 'NamaMahasiswa_NIM.rar 	', 'ganjil', '2018/2019', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2018-08-27', ''),
(25, '223160024', 'Fransiskus Rossi Jati Nugroho', 'Teknik Informatika - S1', 'Sistem Rekomendasi Kelayalan Pemberian Kredit Pada PT. BPR Sinar Mitra Sejahtera Dengan Metode Smart ( Simple Multi Attribute Rating Technique ) Berbasis Web', 'NamaMahasiswa_NIM.rar 	', 'ganjil', '2018/2019', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2018-08-27', ''),
(26, '223160026', 'Eko Sumarwan', 'Teknik Informatika - S1', 'Sistem Informasi Management Inventory  Multi Store Dengan Java Netbeans di Toko Komputer Multikomp', 'NamaMahasiswa_NIM.rar 	', 'ganjil', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', '1', '0', '0', '2018-08-27', ''),
(27, '223130013', 'Sadi Wantoro Pane', 'Teknik Informatika - S1', 'Membangun Aplikasi E-Learning Sekolah Trading® Berbasis Android', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2019-02-11', ''),
(28, '223150001', 'Daniel Kurniawan', 'Teknik Informatika - S1', 'Aplikasi Data Barang dan Perhitungan Stok Pada Rumah Barong Kendal Berbasis Web', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Daniel Saputro, S.Kom., M.T.', '1', '0', '0', '2019-02-11', ''),
(29, '223150004', 'Rendis Arfendo', 'Teknik Informatika - S1', 'Aplikasi Pembelajaran Pada Anak Usia Dini Dengan 2 Bahasa Berbasis Android', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yusup, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2019-02-11', ''),
(30, '223150005', 'Agastya Pradhama Winoto', 'Teknik Informatika - S1', 'Pengenalan Suara Manusia Metode Linier Predictive Coding (LPC)', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Suwarno, S.Si., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', '1', '0', '0', '2019-02-11', ''),
(31, '223150006', 'Safkhi Nurul Huda', 'Teknik Informatika - S1', 'Sistem Inventory Stock Barang Toko Fajarjaya Berbasis WEB', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', '1', '0', '0', '2019-02-11', ''),
(32, '223150008', 'Michael Soni Susanto', 'Teknik Informatika - S1', 'Sistem Pengendalian Gratifikasi Berbasis WEB Provinsi Jawa Tengah', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2019-02-11', ''),
(33, '223150009', 'Angeline Renita Notobudojo', 'Teknik Informatika - S1', 'Aplikasi Penjualan dan Perhitungan Laba Pada Rumah Barong Kendal Berbasis Web', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2019-02-11', ''),
(34, '223150011', 'Roy Lando Batuara', 'Teknik Informatika - S1', 'Aplikasi Sistem Informasi Penjualan Jam Tangan Berbasis WEB Dengan Bahasa PHP Pada Toko Panen Watch', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2019-02-11', ''),
(35, '223150013', 'Rizka Miladyna Yunash', 'Teknik Informatika - S1', 'Pembuatan Game 3 (Tiga) Dimensi Pengenalan Bahasa Inggris Untuk Siswa Sekolah Dasar Menggunakan Blender Game Engine', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Yusup, S.Si., M.Kom.', '1', '0', '0', '2019-02-11', ''),
(36, '223150014', 'Stefanus Jordan', 'Teknik Informatika - S1', 'Aplikasi Cetak Laporan Barang dan Penjualan Pada Rumah Barong Kendal Berbasis Web', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Suwarno, S.Si., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', '1', '0', '0', '2019-02-11', ''),
(37, '223150017', 'Ade Kristanto', 'Teknik Informatika - S1', 'Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter di Yayasan Anugrah Pressindo Indonesia', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Alexander Dharmawan, S.T., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2019-02-11', ''),
(38, '223150018', 'Daniel Bezaliel Aholiab Welang', 'Teknik Informatika - S1', 'Aplikasi Latihan Ujian Online Berbasis WEB Menggunakan Bahasa Pemrograman PHP Untuk Siswa SMP Kristen Gergaji', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2019-02-11', ''),
(39, '223150021', 'Yupin Enumbi', 'Teknik Informatika - S1', 'Mengola Data Buku di Yayasan Perkantas Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Sinta Tridian Galih, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', '1', '0', '0', '2019-02-11', ''),
(40, '223160002', 'Ines Leonita Notobudojo', 'Teknik Informatika - S1', 'Perancangan Sistem Pendukung Keputusan Seleksi Karya Seni Dengan Simple Additive Weighting di Semarang Contemporary Art  Gallery', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Satrio Agung Prakoso, S.T.', '', '1', '0', '0', '2019-02-11', ''),
(41, '223160003', 'Taufiq Hafidzin', 'Teknik Informatika - S1', 'Perancangan Website Pemasaran Pada Toko Online Distro Kidul Dalan', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Jutono Gondohanindijo, M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(42, '', 'Theofilus Kharunia Djaya Parhusip', 'Teknik Informatika - S1', 'Perancanngan Aplikasi Sistem Informasi Penggajian Karyawan Pada Klinik Kecantikan Venice', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Yani Prihati, S.Si., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(43, '223160007', 'Aldo Heryanto', 'Teknik Informatika - S1', 'Perancangan Sistem Informasi Data Pengunjung Pada Semarang Contemporary Art Gallery', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Sinta Tridian Galih, S.T., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(44, '223160009', 'Dedi Pandia', 'Teknik Informatika - S1', 'Rancang Bangun Sistem Informasi Penjualan Pada Apotek Viva Apotek Indraprasta Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Jutono Gondohanindijo, M. Kom.', '', '1', '0', '0', '2019-02-11', ''),
(45, '223160011', 'Abednego', 'Teknik Informatika - S1', 'Perancangan Sistem Pemesanan Sparepart Mobil di Showroom Istana Variasi Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Yohana Tri Widayati, S.E., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(46, '223160012', 'Agus Stenly Maniani', 'Teknik Informatika - S1', 'Sistem Absensi Mahasiswa Asrama UNAKI Menggunakan Metode Barcode', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Alexander Dharmawan, S.T., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(47, '223160013', 'Yuswa Catur Barada', 'Teknik Informatika - S1', 'Sistem Monitoring Perputakaan di Semarang Contemporary Art Galery', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Dra. Tri Karyanti, M.Hum.', '', '1', '0', '0', '2019-02-11', ''),
(48, '223160015', 'Elisa Petra Rusendi Ratag', 'Teknik Informatika - S1', 'Sistem Pakar Diagnosis Penyakit Tanaman Sawit Menggunakan Metode Forward Chaining', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Ana Wahyuni, S.Si., M.Kom', '', '1', '0', '0', '2019-02-11', ''),
(49, '223160017', 'Putriani Silalahi', 'Teknik Informatika - S1', 'Perancangan Sistem Informasi Penjualan Dan  Persediaan Barang Di Toko Ryosuke Men Fashion', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Suwarno, S.Si., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(50, '223160018', 'Adriel Yonatan', 'Teknik Informatika - S1', 'Sistem Informasi Akademik Berbasis Web di SMP Negeri 7 Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Sinta Tridian Galih, S.T., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(51, '223160019', 'Cahaya Setia Elisabeth Gultom', 'Teknik Informatika - S1', 'Analiisis dan Perancangan Sistem Informasi Monitoring Kesehatan Ibu Hamil di Puskesmas Poncol', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Yusup, S.Si., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(52, '223160020', 'Tan Lucas Andy Setiawan', 'Teknik Informatika - S1', 'Perancangan Sistem Informasi Gaji Guru dan Karyawan di SMA Masehu PSAK Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Satrio Agung Prakoso, S.T.', '', '1', '0', '0', '2019-02-11', ''),
(53, '223160021', 'Maria Susanti', 'Teknik Informatika - S1', 'Perancangan Sistem Informasi Gaji Guru dan Karyawan di SMA Masehu PSAK Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Satrio Agung Prakoso, S.T.', '', '1', '0', '0', '2019-02-11', ''),
(54, '223160008', 'Ferry Lexander', 'Teknik Informatika - S1', 'Aplikasi Stock Barang dan Penjualan do CV. Pelita Mas Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', '1', '0', '0', '2019-02-11', ''),
(55, '223160006', 'Giovanni Anderson Rieuwpassa', 'Teknik Informatika - S1', 'Sistem Absensi Mahasiswa Menggunakan Teknologi Fingerprint Dengan Metode Biometric Minutiae di Universitas AKI Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Alexander Dharmawan, S.T., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(57, '223160003', 'Taufiq Hafidzin', 'Teknik Informatika - S1', 'Prediksi Kemenangan dan Pemilihan Struktur TIM Pada Game Mobile Legends Bang Bang Menggunakan Algoritma Naive Bayes', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', '1', '0', '0', '2019-08-12', ''),
(58, '223160011', 'Abednego', 'Teknik Informatika - S1', 'Aplikasi Penjualan Aksesoris Mobile Dinamis Pada CV Istana Variasi Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', '1', '0', '0', '2019-08-12', ''),
(59, '223160020', 'Tan Lucas Andy Setiawan', 'Teknik Informatika - S1', 'Sistem Pendukung Keputusan Penentuan Jurusan IPA/IPS Pada SMA Masehi 1 PSAK Semarang Berbasis WEB', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2019-08-12', ''),
(60, '222150001', 'Muhammad Sulaiman', 'Sistem Informasi - S1', 'Sistem Informasi Distribusi Dosen Pembimbing Kerja Praktek di Fakultas Teknik dan Informatika Berbasis Web Pada Universitas AKI', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Suwarno, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2018-02-12', ''),
(61, '222150003', 'Apfia Pransiski', 'Sistem Informasi - S1', 'Sistem Informasi Perpustakaan di Sekolah Dasar Negeri 04 Kuningan Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', '1', '0', '0', '2018-02-12', ''),
(62, '222150004', 'Feibe Veronika Sipota', 'Sistem Informasi - S1', 'Perancangan Sistem Informasi Rumah Kost Berbasis WEB', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Suprapto, S.E., M.Kom.', '1', '0', '0', '2018-02-12', ''),
(63, '222150007', 'Hold Deo Charunia', 'Sistem Informasi - S1', 'Sistem Informasi Penjualan Pada Angkringan Pak Muklis Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Suwarno, S.Si., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', '1', '0', '0', '2018-02-12', ''),
(64, '222150008', 'Rimba Agustina', 'Sistem Informasi - S1', 'Monitoring Pencatatan Obat Non Resep Dokter Pada Apotik Muji Waras Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Sinta Tridian Galih, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', '1', '0', '0', '2018-02-12', ''),
(65, '222150010', 'Aliong Saputra', 'Sistem Informasi - S1', 'Sistem Informasi Penjualan Pada Toko Panen Watch', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'skripsi', 'Yusup, S.Si., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', '1', '0', '0', '2018-02-12', ''),
(66, '222140002', 'Rezha Aditya Gunawan', 'Sistem Informasi - S1', 'Sistem Informasi Pengendalian Persediaan Bahan Baku Berbasis Visual Basic 6.0 Pada Restoran Mie Jempol Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Suprapto, S.E., M.Kom.', '', '1', '0', '0', '2018-02-12', ''),
(67, '222160002', 'Elisabeth Victory May Ary', 'Sistem Informasi - S1', 'Perancangan Sistem Monitoring Gudang Pada Harmony Furniture Malang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Yusup, S.Si., M.Kom.', '', '1', '0', '0', '2018-02-12', ''),
(68, '222160003', 'Yohanes Alvena', 'Sistem Informasi - S1', 'Perancangan Sistem Pendukung Keputusan Kelayakan Kenaikan Jabatan Pada PT BPR Weleri Makmur Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Suprapto, S.E., M.Kom.', '', '1', '0', '0', '2018-02-12', ''),
(69, '222160005', 'Lastri Agustika P', 'Sistem Informasi - S1', 'Perancangan Sistem Informasi Pembinaan Atlet 02SN Pada Dinas Pemuda dan Olahraga Kota Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Sinta Tridian Galih, S.T., M.Kom.', '', '1', '0', '0', '2018-02-12', ''),
(70, '222160008', 'Dani Febrian Wijadi', 'Sistem Informasi - S1', 'Analisa Perancangan Sistem Informasi Perpustakaan Pada SMA Kebon Dalem Semarang', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Dra. Tri Karyanti, M.Hum.', '', '1', '0', '0', '2018-02-12', ''),
(71, '222160010', 'Kharistin Naftalia', 'Sistem Informasi - S1', 'Perancangan Sistem Informasi Perkembangan Belajar Anak Dengan SMS Gateway Pada Yayasan Pusat Perkembangan Anak Blitar', 'NamaMahasiswa_NIM.rar', 'genap', '2018/2019', 'kp', 'Ana Wahyuni, S.Si., M.Kom.', '', '1', '0', '0', '2019-02-11', ''),
(72, '222160002', 'Elisabeth Victory May Ary', 'Sistem Informasi - S1', 'Sistem Pemasaran Springbed Dinamis Pada Harmony Furniture Malang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Yani Prihati, S.Si., M.Kom.', 'Suwarno, S.Si., M.Kom.', '1', '0', '0', '2019-08-12', ''),
(73, '222160003', 'Yohanes Alvena', 'Sistem Informasi - S1', 'Sistem Rekomendasi Tempat Wisata di Jawa Tengah Dengah Metode AHP Pada Ayo Metu Travel', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Yusup, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', '1', '0', '0', '2019-08-12', ''),
(74, '222160005', 'Lastri Agustika P', 'Sistem Informasi - S1', 'Sistem Pemasaran Aksesoris Dinamis Pada Istana Variasi Mobil Kota Semarang', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Yohana Tri Widayati, S.E., M.Kom.', 'Yusup, S.Si., M.Kom.', '1', '0', '0', '2019-08-12', ''),
(75, '222160008', 'Dani Febrian Wijadi', 'Sistem Informasi - S1', 'Implementasi Sistem Informasi Perpustakaan Repository Dengan Setiadi Pada  Universitas AKI Semarang', 'NamaMahasiswa_NIM.rar ', 'ganjil', '2019/2020', 'skripsi', 'Dra. Tri Karyanti, M.Hum.', 'Ana Wahyuni, S.Si., M.Kom.', '1', '0', '0', '2019-08-12', ''),
(76, '222160010', 'Kharistin Naftalia', 'Sistem Informasi - S1', 'Media Pembelajaran Pengenalan Tata Surya Pada Yayasan Pusat Perkembangan Anak Blitar', 'NamaMahasiswa_NIM.rar', 'ganjil', '2019/2020', 'skripsi', 'Sinta Tridian Gali, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', '1', '0', '0', '2019-10-21', ''),
(77, '222160004', 'Tri Maena Krismantara', 'Sistem Informasi - S1', 'Pengelolaan Nilai Siswa Berbasis WEB di SMPN 7 Semarang', 'NamaMahasiswa_NIM.pdf', 'ganjil', '2019/2020', 'kp', 'Suprapto, S.E., M.Kom.', '', '1', '0', '0', '2019-08-12', ''),
(78, '222160007', 'Yahya Benyamin Sabuna', 'Sistem Informasi - S1', 'Sistem Informasi Data Nilai Rapor Siswa Pada SMA Negeri 3 Semarang', 'NamaMahasiswa_NIM.pdf', 'ganjil', '2019/2020', 'kp', 'Ana Wahyuni, S.Si., M.Kom.', '', '1', '0', '0', '2019-08-12', ''),
(79, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Coba', 'NIM_NamaMhs.rar', '', 'Pilih Tahun Ajaran', 'kp', '', '', '0', '0', '0', '2020-06-04', ''),
(80, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Test', 'NIM_NamaMhs.rar', 'ganjil', '2019/2020', 'kp', '', '', '0', '0', '0', '2020-06-04', ''),
(81, '222110005', 'Rico Santoso', 'Sistem Informasi - S1', 'Sss', 'NIM_NamaMhs.rar', 'ganjil', '2019/2020', 'kp', '', '', '0', '0', '0', '2021-02-13', ''),
(82, '223170001', 'Muhammad Yusuf Alvin Mahendra', 'Teknik Informatika - S1', 'Aplikasi Monitoring Penyusunan Laporan Kerja Praktek Berbasis Web Di Universitas AKI', 'nim_namalaporan.rar', 'genap', '2019/2020', 'kp', 'Satrio Agung Prakoso, S.T.', '', '1', '0', '0', '2021-04-21', '');

-- --------------------------------------------------------

--
-- Table structure for table `pengumuman`
--

CREATE TABLE `pengumuman` (
  `id_pengumuman` int(30) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `file` varchar(100) NOT NULL,
  `tgl_pengumuman` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengumuman`
--

INSERT INTO `pengumuman` (`id_pengumuman`, `judul`, `file`, `tgl_pengumuman`) VALUES
(3, 'Surat Keputusan Distribusi Dosen Pembimbing Skripsi Prodi Sistem Informasi', 'Laporan Dosbing Skripsi SI.pdf', '2019-08-22'),
(4, 'Surat Keputusan Distribusi Dosen Pembimbing Skripsi Prodi Teknik Informatika', 'Laporan Dosbing Skripsi TI.pdf', '2019-08-22'),
(5, 'Surat Keputusan Distribusi Dosen Pembimbing Kerja Praktek Prodi Sistem Informasi', 'Laporan Dosbing KP SI.pdf', '2019-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `prodi`
--

CREATE TABLE `prodi` (
  `id_prodi` varchar(5) NOT NULL,
  `pnama` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `prodi`
--

INSERT INTO `prodi` (`id_prodi`, `pnama`) VALUES
('si', 'Sistem Informasi - S1'),
('ti', 'Teknik Informatika - S1');

-- --------------------------------------------------------

--
-- Table structure for table `surat_keputusan`
--

CREATE TABLE `surat_keputusan` (
  `id_surat` int(5) NOT NULL,
  `no_sk` varchar(50) NOT NULL,
  `fsop` varchar(20) NOT NULL,
  `tanggal` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `surat_keputusan`
--

INSERT INTO `surat_keputusan` (`id_surat`, `no_sk`, `fsop`, `tanggal`) VALUES
(1, '143/SK/DEK/FTI/UNAKI/IX/2019', '04-02-02/E.01R2', '2018-09-05'),
(2, '055/SK/DEK/FTI/UNAKI/II/2019', '04-02-02/E.01R2', '2019-02-22'),
(4, '103/SK/DEK/FTI/UNAKI/VIII/2019', '04-02-02/E.01R2', '2019-08-22');

-- --------------------------------------------------------

--
-- Table structure for table `tahunajaran`
--

CREATE TABLE `tahunajaran` (
  `id` int(10) NOT NULL,
  `tahunajaran` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahunajaran`
--

INSERT INTO `tahunajaran` (`id`, `tahunajaran`) VALUES
(20, 'SEMESTER GENAP 2017/2018'),
(21, 'SEMESTER GANJIL 2018/2019'),
(22, 'SEMESTER GENAP 2018/2019'),
(23, 'SEMESTER GANJIL 2019/2020'),
(24, 'SEMESTER GENAP 2019/2020'),
(25, 'SEMESTER GANJIL 2020/2021'),
(26, 'SEMESTER GENAP 2020/2021'),
(27, 'SEMESTER GANJIL 2021/2022'),
(28, 'SEMESTER GENAP 2021/2022'),
(29, 'SEMESTER GANJIL 2022/2023'),
(30, 'SEMESTER GENAP 2022/2023'),
(31, 'SEMESTER GANJIL 2023/2024'),
(32, 'SEMESTER GENAP 2023/2024'),
(33, 'SEMESTER GANJIL 2024/2025'),
(34, 'SEMESTER GENAP  2024/2025'),
(35, 'SEMESTER GANJIL 2024/2025'),
(38, 'SEMESTER GANJIL 2017/2018');

-- --------------------------------------------------------

--
-- Table structure for table `tblkp`
--

CREATE TABLE `tblkp` (
  `NIM` varchar(12) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(250) NOT NULL,
  `pembimbing_1` varchar(50) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `tahun_ajaran` varchar(16) NOT NULL,
  `semester` enum('ganjil','genap') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblkp`
--

INSERT INTO `tblkp` (`NIM`, `nama`, `judul`, `pembimbing_1`, `program_studi`, `tahun_ajaran`, `semester`) VALUES
('222110005', 'Rico Santosa', 'Perancangan Sistem Informasi Penjualan Mobil Bekas Berbasis Web pada Showroom Santoso Motor', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sistem Informasi - S1', '2014/2015', 'ganjil'),
('222110012', 'Zacharia Christyansen', 'Sistem Informasi Penjualan Pada CV. Kurnia Jaya Berbasis Visual Basic', 'Suwarno, S.Si., M.Kom.', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222110023', 'Johan Putra Perdana', 'Sistem Informasi Penjualan Smartphone Pada Super Cellular', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2014/2015', 'genap'),
('222120001', 'Oky Jayadi', 'Sistem Informasi Penjualan Kaos Distro Dominic DMC Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120006', 'Topan Sahara Putra', 'Perancangan Sistem Informasi Pengelolaan Skripsi dan Kerja Praktek di Universitas AKI Berbasis Web Studi Kasus Pada Fakultas Ilmu Komputer', 'Satrio Agung Prakoso, S.T.', 'Sistem Informasi - S1', '2015/2016', 'genap'),
('222120007', 'Agnesia Andriyani', 'Perancangan Sistem Informasi Sales Order Berbasis Web', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sistem Informasi - S1', '2014/2015', 'genap'),
('222120010', 'Cindy Mananti', 'Perancangan Sistem Informasi Sekolah Berbasis Web Di SMP Maria Goretti Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120011', 'Andra Raines Sagita', 'Sistem Informasi Analisis Dan Sistem Penggajian Karyawan CV. Centra Media Utama Semarang Menggunakan Netbeans', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120014', 'Ajeng Tria Amanda Putri', 'Analisa Dan Perancangan Sistem Informasi Penggajian Terhadap Instansi Pemerintah DPPAD Provinsi Jawa Tengah', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120020', 'Timious Kardia Yosel Suwarno', 'Perancangan Sistem Informasi Game Edukasi Berhitung Berbasis Android Untuk Sekolah Dasar Pada Perusahaan Kanaan Mobile', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120022', 'Kristiani', 'Perancangan Aplikasi Penggajian Guru dan Staf Berbasis Komputerisasi Pada SMP Maria Goretti Semarang', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120026', 'David Decvrianus', 'Perancangan Sistem Informasi Pengolahan Data Penerimaan Siswa Baru di SMP Hasanuddin 2 Semarang ', 'Yusup, S.Si., M.Kom', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120029', 'Stevanus Andinata Ginting', 'Perancangan Sistem Informasi  Promosi Berbasis Web Pada Perusahaan PT. Triangel Motorindo', 'Alexander Dharmawan, S.T., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120032', 'Indra Sugara', 'Perancangan Aplikasi U - Note Pada Universitas AKI Semarang Berbasis Android', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222120033', 'Yesaya Primadianto Sutrisno', 'Perancangan Sistem Informasi Penjualan dan Pemesanan Alat Musik Di Toko Surya Putra Music Semarang', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222120035', 'Hendra Stefanus', 'Perancangan Aplikasi Administrasi Pada Asrama Unaki Semarang Berbasis Visual Basic', 'Alexander Dharmawan, S.T., M.Kom.', 'Sistem Informasi - S1', '2014/2015', 'ganjil'),
('222120036', 'Otniel Chandra Bale', 'Perancangan Sistem Informasi Perpustakaan Pada SMPN 40 Semarang', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', '2015/2016', 'ganjil'),
('222130002', 'Christian Davidson Runaweri', 'Sistem Informasi Penjualan Alat Musik Di Surya Putra Music Semarang', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', '2016/2017', 'ganjil'),
('222130008', 'Yosua Christian', 'Sistem Informasi Penjualan Obat Pada Apotek Griya Husada Semarang Utara Berbasis Multiuser', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2015/2016', 'genap'),
('222140001', 'Angga Pratama', 'Sistem Informasi Penjualan Obat Pada Apotek Triwira Semarang Berbasis Multiuser', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2016/2017', 'genap'),
('222140002', 'Rezha Aditya Gunawan', 'Analisa Kebutuhan dan Estimasi Biaya Konsumen IT Talk Semarang Berbasis Web', 'Yusup, S.Si., M.Kom', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222140003', 'Ivan Rowandi Budiman', 'Company Profile Pada CV. Maju Jaya Berbasis Web', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222140007', 'Eliazer Paul Samuel Sitohang', 'Sistem Informasi Pengolahan Data Nilai Siswa Pada SMP Masehi 1 PSAK Semarang', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222140008', 'Yan Fredrik Tarigan ', 'Perancangan Sistem Informasi Perpustakaan Pada SMP Masehi 1 PSAK Semarang Berbasis Multiuser', 'Suprapto, S.SE., M.Kom.', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222150001', 'Muhammad Sulaiman', 'Perancangan Sistem Informasi Sekolah Secara Online Pada SD Al-Irsyad Islamiyah', 'Suwarno, S.Si., M.Kom.', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222150003', 'Apfia Pransiski', 'Perancangan Sistem Informasi Perpustakaan di SD Negeri Kuningan 04 Semarang', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222150004', 'Feibe Veronika Sipota', 'Perancangan Sistem Informasi Penjualan Online', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222150005', 'Oei, Vertasia Nugraheni', 'Perancangan Aplikasi Sistem Informasi Penjualan Barang Karyawan Di Amor Semarang', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', '2017/2018', 'ganjil'),
('222150007', 'Hold Deo Charunia', 'Perancangan Sistem Informasi Inventaris Pada Hotel Mess In Semarang', 'Yusup, S.Si., M.Kom', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222150008', 'Rimba Agustina', 'Analisa Sistem Penyewaan Kamar Hotel (Room Accomodation) Pada Hotel Mess In Semarang', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222150009', 'Malfin Maniani', 'Analisis Sistem Informasi Perpustakaan di SD Petra School', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222150010', 'Aliong Saputra', 'Perancangan Sistem Informasi Penjualan Barang Pada Toko Jam Tangan Panen Watch', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2018/2019', 'ganjil'),
('222160009', 'Adi Sulistia', 'Sistem Informasi Pengolahan Data Stok Kayu PT. Kayu Lapis Indonesia', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', '2016/2017', 'ganjil'),
('223110072', 'Aris Syaifudin', 'Membangun Toko Online (Online Shop) Produk Baja Ringan CV. Karya Usaha Mandiri Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223120013', 'Merlipson Tarinate', 'Sistem Informasi Absensi Pegawai PT. Asuransi Jiwasraya (PERSERO), Semarang Barat Berbasis WEB', 'Suwarno, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223130001', 'Willy Andrianto Halim', 'Pembuatan Website Rental Mobil Menggunakan Macromedia Dreamweaver dan PHP MySQL', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130002', 'Michelle Margaretha Singgih', 'Perancangan Website Sebagai Sarana Promosi dan Jasa Angkutan pada CV. Tarent Utama', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130003', 'Jeri Warisman', 'Perancangan Jasa Delivery Pemesanan Makanan Berbasis Mobile Study Kasus di Swike Asli Purwaodadi Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223130004', 'Alfatkhah Mu\'arifah', 'Perancangan Sistem Informasi Penjualan Pada Distro Oldman Store Berbasis Web', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130005', 'Charolina Br. Sinukaban', 'Perancangan Sistem Informasi Perpustakaan SMKN 4 Semarang Berbasis Multiuser', 'Yohana Tri Widayati, S.E., M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130007', 'Desta Masitoch', 'Sistem Registrasi Undangan Pernikahan Dengan Teknologi Barcode', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'genap'),
('223130008', 'Esda Hosea Rido Harianto', '\"Billboard TV Online Berbasis Web\" sebagai Media Informasi pada Lemabaga Pendidikan Kota Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130009', 'Sadi Wantoro Pane', 'Perancangan Pembuatan Aplikasi Pemesanan Tiket Travel Berbasis Android di Joglo Semar', 'Suwarno, S.Si., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'ganjil'),
('223130010', 'Priskila Eka Kurniawati', 'Perancangan Aplikasi Penghubung Orangtua atau Wali Mahasiswa ke Lembaga Pendidikan di Universitas AKI Berbasis Android', 'Alexander Dharmawan, S.T., M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130011', 'Yan Mansavi Maniani', 'Perancangan Bangun Pembelajaran Bahasa Mandarin Untuk Anak-Anak Kelas V - VI Pada SD Petra School', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'ganjil'),
('223130012', 'Jonius Daniel', 'Rancang Bangun Game Edukasi Untuk Pengajaran Berhitung Pada Anak-Anak Kelas I di SD Terang Bagi Bangsa', 'Ana Wahyuni, S.Si., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'ganjil'),
('223130014', 'Surya Jaya Putra', 'Perancancangan Media Pembelajaran Matematika Kelas 3 Pada SD Terang Bangsa Berbasis Adobe Flash', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'ganjil'),
('223130015', 'Wisnu Prabowo', 'Perancangan Media Pembelajaran Bahasa Jawa Kelas 1 SD Terang Bagi Bangsa dengan Adobe Flash', 'Dra. Tri Karyanti, M.Hum.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130016', 'Natan Oktavian Iwan P', 'Billboard TV Online Berbasis Web Sebagai Media Info dan Promosi Pada Lembaga Pendidikan Kota Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2016/2017', 'ganjil'),
('223130019', 'Frantonian Ahitofel', 'Perancangan Web Promosi Pada SD Kristen Terang Bagi Bangsa Pati ', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223130050', 'Haris Sastro Barneo', 'Perancangan Sistem Informasi Penjualan Semesta Raya Motor', 'Suwarno, S.Si., M.Kom.', 'Teknik Informatika - S1', '2015/2016', 'genap'),
('223140001', 'Tan Akira Richardo Darmawan', 'Perancangan Web Sebagai Media Komunikasi Tugas dan Informasi Pada Siswa TK', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223140002', 'Samuel Dwi Prasetyo S', 'Perancangan Aplikasi Transaksi Pada Robotic Education Semarang ', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140003', 'Ezra Yoga Irawan', 'Perancangan Sistem Pemesanan Jasa Berbasis Web di CV. Dwitra Yaka Group', 'Alexander Dharmawan, S.T., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140004', 'Jannatun Naim', 'Perancangan Sistem Informasi Pengolahan Data Pembayaran Sumbangan Pembinaan Pendidikan (SPP) Pada SMK PGRI 1 Mejobo Kudus', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'genap'),
('223140005', 'Linda Purwasih', 'Sistem Pengambilan Keputusan Penilaian Kinerja Karyawan Fuzzy Logic Pada SMK PGRI 1 Mejobo Kudus Berbasis Web', 'Suwarno, S.Si., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'genap'),
('223140006', 'Eko Amirul Sofik', 'Pemeliharaan Jaringan Komputer Pada SMK PGRI 1 Mejobo Kudus', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2016/2017', 'genap'),
('223140007', 'Zulia Puji Lestari', 'Perancangan Aplikasi Penyewaan Lapangan United Futsal Kudus', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', '2016/2017', 'genap'),
('223140008', 'Nurchamim', 'Perancangan Aplikasi Helpdesk Berbasis Web di CV. Dwitra Yaka Group Semarang', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140009', 'Eli Tias Tutuik', 'Comporation Algoritma C4.5 Dan Naive Bayes Untuk Klasifikasi Kelulusan Mahasiswa Tepat Waktu di Universitas AKI Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2016/2017', 'ganjil'),
('223140010', 'Eka Nur Siswanti', 'Perancangan Sistem Pendukung Keputusan Kelayakan Pendonoh Darah di UTD PMI Kota Semarang', 'Ana Wahyuni, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140013', 'Stephani Sari Tanaka', 'Perancangan Aplikasi Pemantauan Inventori Pada Robotic Education Semarang', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140016', 'Andreas Adinata', 'Perancangan Aplikasi Media Pembelajaran Penggolongan Binatang Menggunakan Adobe Flash CS 6 Pada Sekolah Dasar Terang Bagi Bangsa', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140017', 'Ferra Oky Netasa', 'Sistem Pendataan dan Pembaptisan Anggota GITS Puring Berbasis Web', 'Suwarno, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Gasal 2017/2018', 'ganjil'),
('223140019', 'Rocky Marciano Hendico Sianturi', 'Media Informasi Digital Menggunakan Adobe Director 11.5 di Universitas AKI', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223140020', 'Ardwi Jaya Nowama', 'Informasi Pengurusan Peijinan Trayek dan Rute Angkutan Umum Berbasi Mobile di Kabupaten Demak', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223150001', 'Daniel Kurniawan', 'Perancangan Aplikasi Penjualan Meubel Berbasis Web Pada PT Alam Kayu Sakti Semarang', 'Alexander Dharmawan, S.T., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150002', 'Ken Julio A', 'Perancangan Aplikasi Penjualan Mebel Berbasis Web Pada PT. LIGNA FURNITURE', 'Alexander Dharmawan, S.T., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150003', 'Imam Lilik Setiaji', 'Perancangan Sistem E-Learning Berbasis Web Pada SMK Bina Nusantara Semarang', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150004', 'Rendis Arfendo', 'Perancangan Aplikasi Sistem Informasi Monitoring Siswa Berbasis Web Server Dan Android Client (Studi Kasus : SMK Yayasan Pharmasi Semarang)', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150005', 'Agastya Pradhama W', 'Perancangan Sistem Pengolahan Data Surat Masuk dan Keluar Pada PT. Alfa Komputer Semarang', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223150006', 'Safki Nurul Huda', 'Perancangan Sistem Penggajian Karyawan Toko PIH FF JAYA Berbasis Visual Basic', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150007', 'Akhmad Nashfan Sa\'bani', 'Perancangan Sistem Informasi Pengolahan Data Nilai Siswa Pada SMK Pelita Nusantara 2 Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150008', 'Michael Soni Susanto', 'Perancangan Sistem Rekrutmen Berbasis Web Pada PT. Karya Zirang Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150009', 'Angeline Renita Notobudojo', 'Perancangan Aplikasi Logistik Pada PT Alam Kayu Sakti Semarang Menggunakan Visual Basic 6.0', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150010', 'Sofwatul Choiriyah', 'Perancangan Sistem Absensi Guru Berbasis Web Menggunakan Bahasa PHP dan Database MySQL Pada SMK Pelita Nusantara 2 Semarang', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150011', 'Roy Lando Batuara', 'Perancangan Sistem Informasi Penjualan Jam Tangan  Berbasis Web Pada Toko Panen Watch', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150013', 'Rizka Miladyna Yunash', 'Perancangan Website Akademik Berbasis Web Dinamis Menggunakan Framework Bootstrap Pada SMA Negeri 1 Kota Mungkid', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150014', 'Stefanus Jordan', 'Perancangan Aplikasi Penggajian karyawan Pada PT. Mayora Indah TBK Dengan Menggunakan Visual Basic 6.0', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap'),
('223150017', 'Ade Kristianto', 'Perancangan Aplikasi Customer Relationship Management (CRM) Berbasis Mobile Dengan Framework Flutter Di Yayasan Anugrah Pressindo Indonesia (Anugrah Ministries)', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150018', 'Daniel Bezaliel Aholiad Welang', 'Aplikasi Dekstop Dokumentasi Arsip Menggunakan Bahasa Pemrograman Java Dan Database Mysql Pada SMP Kristen Gergaji Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223150021', 'Yupin Enumbi', 'Sistem Perpustakaan Barbasis Web di PT Perkantas Semarang Selatan', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223160008', 'Ferry Lexander', 'Aplikasi Pengolahan Data Stok Barang Dengan Java Pada CV. Pelita Mas', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223160014', 'Frida Vivi Rosalina', 'Perancangan Sistem Informasi Manajemen Pengelolaan Dana Donatur Berbasis Web Pada Lembaga Kesejahteraab Sosial Anak Putera Betlehem Semarang', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'ganjil'),
('223160027', 'Natalia Kurnia Hapsari', 'Perancangan Sistem Informasi Absensi Manggunakan PHP di PT. British Gardens Semarang', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223160028', 'Rico Sugiarto D', 'Sistem Informasi Inventory Stok Barang Berbasis WEB pada CV. Kartika Sari', 'Alexander Dharmawan, S.T. M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223170006', 'Adhi Mulyanto Kawengian', 'Aplikasi Desktop Inventory Dengan Java pada CV. Cempaka Semarang', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', '2018/2019', 'ganjil'),
('223990162', 'Indriawan Prastomo', 'Analisis Desain Sistem Pakar Konsultasi Pembuatan Surat Ijin Usaha Perdagangan Pada Dinas Penanaman Modal dan Pelayanan Terpadu Satu Pintu', 'Yani Prihati, S.Si., M.Kom.', 'Teknik Informatika - S1', '2017/2018', 'genap');

-- --------------------------------------------------------

--
-- Table structure for table `tblskripsi`
--

CREATE TABLE `tblskripsi` (
  `NIM` varchar(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(500) NOT NULL,
  `pembimbing_1` varchar(100) NOT NULL,
  `pembimbing_2` varchar(100) NOT NULL,
  `program_studi` varchar(30) NOT NULL,
  `angkatan_wisuda` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblskripsi`
--

INSERT INTO `tblskripsi` (`NIM`, `nama`, `judul`, `pembimbing_1`, `pembimbing_2`, `program_studi`, `angkatan_wisuda`) VALUES
('222110005', 'Rico Santoso', 'Sistem Informasi Promosi dan Pemasaran Mobil Bekas Pada Showroom Santosa Motor Berbasis Web', 'Alexander Dharmawan, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', 'Angkatan 36'),
('222110023', 'Johan Putra Perdana', 'Sistem Informasi Pembelian dan Penjualan Handphone Pada Gallery Sell', 'Yohana Tri Widayati, S.E., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 36'),
('222120001', 'Oky Jayadi', 'Penjualan Online Pada Shine Like Stars Semarang Berbasis Web', 'Alexander Dharmawan, S.T., M.Kom.', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 36'),
('222120006', 'Topan Sahara Putra', 'Pembuatan Sistem Informasi Penjualan Komputer Berbasis Web Pada Toko DNA Komputer', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120007', 'Agnesia Andriyani', 'Sistem Informasi Pemesanan Barang Pada PT. Pintu Mas Mulia Kimia Semarang Berbasis Web', 'Sinta Tridian Galih, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', 'Angkatan 36'),
('222120010', 'Cindy Mananti', 'Sistem Informasi Pengarsipan Surat Berbasis Website Pada SMP Negeri 36 Semarang', 'Suwarno, S.Si., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120011', 'Andra Raines Sagita', 'Sistem Informasi Pesewaan Alat Event Pada CV, Media Centre Utama Berbasis Web', 'Yusup, S.Si., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120014', 'Ajeng Tria Amanda', 'Sistem Informasi Penggajian Pada Dinas Pendapatan Aset Daerah (DPPAD) Provinsi Jawa Tengah Menggunakan Visual Basic 6.0', 'Yohana Tri Widayati, S.E., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120020', 'Timious Kardia Yosel Suwarno', 'Sistem Informasi Penjualan Barang Pada Apotek Griya Husada Semarang', 'Ana Wahyuni, S.Si., M.Kom.', 'Suprapto, S.E., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120024', 'Megasari Alaasta', 'Sistem Informasi Hotel Sleep And Sleep Semarang Berbasis Web', 'Suwarno, S.Si., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 40'),
('222120026', 'David Decvrianus', 'Sistem Informasi Pengolahan Penerimaan Siswa Baru di SMP Hasanuddin 2 Semarang Berbasis Web', 'Yohana Tri Widayati, S.E., M.Kom.', 'Suwarno, S.Si., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120029', 'Stevanus Andinata Ginting', 'Sistem Informasi Pendapatan Member dan Program Fitness Pada Rajawali Barbel Club Semarang Berbasis Web', 'Yani Prihati, S.Si., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120036', 'Otniel Chandra Bale', 'Pengenalan Golongan Hewan Berdasarkan Jenis Makanan Menggunakan Macromedia Flash Pada Murid Kelas 4 di Sekolah Dasar Daniel Creative School Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Sistem Informasi - S1', 'Angkatan 37'),
('222120042', 'Johan Amriyahya', 'Pembuatan Aplikasi Pemesanan Tiket Travel Berbasis Android Pada Travel Citra', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 38'),
('222130008', 'Yosua Christian', 'Sistem Informasi Penjualan Obat Pada Apotek Griya Husada Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 38'),
('222140001', 'Angga Pratama', 'Analisis dan Komparasi Algoritma  Naive Bayes Dan C4.5 Untuk Klasifikasi Loyalitas Pelanggan MNC Play Kota Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 39'),
('222140007', 'Eliazer Paul Samuel Sitohang', 'Sistem Informasi Akademik Nilai di SMP Masehi 1 PSAK Semarang Berbasis Web', 'Yohana Tri Widayati, S.E., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Sistem Informasi - S1', 'Angkatan 40'),
('223110018', 'Novisto Pratama Putra', 'Pembuatan Website Interaktif Untuk Gereja Pimpinan Roh Kudus (GPR) Mojokerto', 'Sinta Tridian Galih, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223110022', 'Tiara Kartikasari', 'Pembuatan Sistem Informasi Pengelolaan Data PKK (Pemberdayaan dan Kesejahteraan Keluarga) di Kecamatan Gunung Pati Kota Semarang', 'Yusup, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 39'),
('223110047', 'Michael Ahadi Husodo Lenggono', 'Implementasi Algoritma Koloni Semut Untuk Penyelesaian Kasus Pencarian Jalan Yang Tepat Pada Game Labirin', 'Yani Prihati, S.Si., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223110090', 'Tri Wahyuni', 'Aplikasi Web Untuk Penilaian Tugas Siswa Pada SMK 17 Agustus 1945 Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223120002', 'Yonathan Aditya Purnama', 'Pembuatan Aplikasi Animasi Media Pembelajaran Cerita Daniel di Petra Kids Semarang', 'Yani Prihati, S.Si., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223120014', 'Temasetia Zebua', 'Media Pembelajaran IPA untuk Sekolah Dasar Negeri 01 Lerep Ungaran Barat Kelas VI Menggunakan Adobe Flash CS3', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 36'),
('223120031', 'Ruth Nesya Adelweis Sumule', 'Alat Bantu Pembelajaran Anak Retardasi Mental Berbasis Android', 'Yusup, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223120034', 'Kaspa Yobel Batubara', 'Aplikasi Kamus Kebidanan Berbasis Android Akademi Kebidanan Soko Tunggal', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223120046', 'Devi Kurnia', 'Identifikasi Alumni Universitas AKI dengan Kartu Alumni Menggunakan QR Code', 'Sinta Tridian Galih, S.T., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223120048', 'Ameng Selvanus', 'Aplikasi Pemesanan Tiket Travel Online Pada Raja Tiket Travel', 'Alexander Dharmawan, S.T., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223120053', 'Imam Mardani', 'Aplikasi Penjualan Berbasis Web Pada Toko Bangunan Purnama Semarang Menggunakan PHP', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223130003', 'Jeri Warisman', 'Pemesanan Makanan Jasa Delivery Berbasis Mobile Di Lombok Idjo Semarang', 'Dra. Tri Karyanti, M.Hum.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 39'),
('223130005', 'Charolina Br. Sinukaban', 'Aplikasi Media Rental Mobil Berbasis Android Pada Raja Tiket Semarang', 'Alexander Dharmawan, S.T., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223130006', 'Joko Subandono', 'Aplikasi Player Music Di Studio Radio Kumbaya FM Menggunakan Visual Basic 2010', 'Yani Prihati, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223130008', 'Esda Hosea Rido Harinanto', 'Aplikasi Perizinan Online Bidang Pembinaan Pendidikan Anak Usia Dini dan Pendidikan Non Formal Pada Dinas Pendidikan Kota Semarang', 'Suwarno, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130010', 'Priskila Eka Kurniawati', 'Sistem Digitalisasi Arsip Berbasis Web (Studi Kasus Universitas AKI)', 'Alexander Dharmawan, S.T., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130011', 'Yan Masafi Maniani', 'Aplikasi Distribusi Barang Berbasis Web Pada CV. Restu Perkasa Kabupaten Kudus', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 39'),
('223130012', 'Jonius Daniel', 'Aplikasi Multimedia Kumpulan Budaya dan Cerita Daerah Di Indonesia', 'Yohana Tri Widayati, S.E., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130014', 'Surya Jaya Putra', 'Media Pembelajaran Matematika Kelas 3 Pada SD Terang Bangsa Pati Berbasis Multimedia', 'Alexander Dharmawan, S.T., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130015', 'Wisnu Prabowo', 'Media Pembelajarab Bahasa Jawa Kelas 3 SD Terang Bagi Bangsa Dengan Adobe Flash', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130016', 'Natan Oktavian Iwan Putra', 'Aplikasi Sistem Informasi Pengolahan Data di Asrama The Great Commision Semarang Berbasis Web', 'Alexander Dharmawan, S.T., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130019', 'Franstorian Ahitofel', 'Aplikasi WEB Promosi Pada SD Kristen Terang Bagi Bangsa Pati', 'Suwarno, S.Si., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130040', 'Sofater Yonesky Simamora', 'Aplikasi Flash Card Kids EE Menggunakan Phonegap Berbasis Multi Platform di GBAP', 'Sinta Tridian Galih, S.T., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 38'),
('223130050', 'Haris Sastro Barneo', 'Aplikasi Pemesanan Makanan Jasa Delivery Berbasis Android Di Idola Food Semarang', 'Yohana Tri Widayati, S.E., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', 'Angkatan 37'),
('223140', 'Tan Akira Richardo Darmawan', 'Pengenalan Tata Surya Planet Dengan Augmented Reality', 'Yohana Tri Widayati, S.E., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', 'Angkatan 41'),
('223140003', 'Ezra Yoga Irawan', 'Aplikasi Sistem Informasi Gereja Berbasis Web', 'Suwarno, S.Si., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140004', 'Jannatun Naim', 'Aplikasi Pembayaran Seumbangan Pembinaan Pendidikan (SPP) Berbasis Web dan SMS Gateway Pada SMK PGRI 1 Mejobo Kudus', 'Yani Prihati, S.Si., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 39'),
('223140005', 'Linda Purwasih', 'Sistem Penilaian Kinerja Staf TU dan Penilaian Kinerja Guru Pada SMK PGRI 1 Mejobo Kudus', 'Yohana Tri Widayati, S.E., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 39'),
('223140006', 'Eko Amirul Sofik', 'Implementasi Clonning untuk Instalasi Jaringan PC Pada Universitas AKI Semarang', 'Suwarno, S.Si., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 41'),
('223140007', 'Zulia Puji Lestari', 'Penerapan Data Mining dalam Proses Analisis Efisiensi Jasa Service Printer Pada CV. Soerya Com Kudus Berbasis Web', 'Alexander Dharmawan, S.T., M.Kom.', 'Sinta Tridian Galih, S.T., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140008', 'Nurchamim', 'Sistem Informasi Pengolahan Data Nilai Siswa Berbasis Web Pada SMK Hidayah Semarang', 'Alexander Dharmawan, S.T., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 41'),
('223140009', 'Eli Tias Tutik', 'Analisa Loyalitas Pelanggan CV. Soerya Com Kudus Berbasis Metode Data Mining dengan Algoritma C4.5', 'Yani Prihati, S.Si., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140010', 'Eka Nur Siswanti', 'Implementasi Algoritma C4.5 untuk Evaluasi Kinerja Karyawan Pada CV. Soeya Com', 'Yani Prihati, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140013', 'Stephani Sari Tanaka', 'Aplikasi Pemantauan Inventori Berbasis Android Pada PT. Wahana Cipta Multigraha', 'Alexander Dharmawan, S.T., M.Kom.', 'Dra. Tri Karyanti, M.Hum.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140017', 'Ferra Oky Netasa', 'Aplikasi Pendataan Jemaat Pada Gereja Injil di Tanah Jawa (GITJ) Puring Jepara Berbasis Web', 'Yani Prihati, S.Si., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140019', 'Rocky Marciano Hendico Sianturi', 'Aplikasi Mapping Ruang Gedung Kampus Universitas AKI di Jl. Imam Bonjol No. 15-17 Semarang', 'Alexander Dharmawan, S.T., M.Kom.', 'Yusup, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223140020', 'Ardwi Jaya Nowama', 'Klasifikasi Pengujian Kendaraan Bermotor Tipe Angkutan Barang dan Orang di Dinas Perhubungan Kabupaten Demak Menggunakan Algoritma C4.5', 'Yani Prihati, S.Si., M.Kom.', 'Ana Wahyuni, S.Si., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223150020', 'Demas Ardi Wicaksono', 'Implementasi POM-QM Untuk Optimalisasi Antrian Nasabah (Studi Pada Bank Central Asia KCU Semarang)', 'Yani Prihati, S.Si., M.Kom.', 'Jutono Gondohanindijo, M.Kom.', 'Teknik Informatika - S1', 'Angkatan 39'),
('223150072', 'Aris Syarifudin', 'Sistem Informasi Pengendalian Persediaan Berbasis Web pada CV. Karya Usaha Mandiri Semarang', 'Alexander Dharmawan, S.T., M.Kom.', 'Dr. Harries Arizonia Ismail, S.E., M.M., M.Kom.', 'Teknik Informatika - S1', 'Angkatan 40'),
('223160014', 'Frida Vivi Rosalina', 'Penatalayan Gereja Bala Keselamatan Korps 3 Surakarta Berbasis Web Telegram Bot', 'Suwarno, S.Si., M.Kom.', 'Satrio Agung Prakoso, S.T.', 'Teknik Informatika - S1', 'Angkatan 40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `bimbingankp`
--
ALTER TABLE `bimbingankp`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indexes for table `bimbinganskripsi`
--
ALTER TABLE `bimbinganskripsi`
  ADD PRIMARY KEY (`id_bimbingan`);

--
-- Indexes for table `dekan`
--
ALTER TABLE `dekan`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `dosen`
--
ALTER TABLE `dosen`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id_jadwal`);

--
-- Indexes for table `kaprodi`
--
ALTER TABLE `kaprodi`
  ADD PRIMARY KEY (`nidn`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `konsultasi`
--
ALTER TABLE `konsultasi`
  ADD PRIMARY KEY (`id_konsultasi`);

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

--
-- Indexes for table `pengajuan`
--
ALTER TABLE `pengajuan`
  ADD PRIMARY KEY (`id_pengajuan`);

--
-- Indexes for table `pengumuman`
--
ALTER TABLE `pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`);

--
-- Indexes for table `prodi`
--
ALTER TABLE `prodi`
  ADD PRIMARY KEY (`id_prodi`);

--
-- Indexes for table `surat_keputusan`
--
ALTER TABLE `surat_keputusan`
  ADD PRIMARY KEY (`id_surat`);

--
-- Indexes for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblkp`
--
ALTER TABLE `tblkp`
  ADD PRIMARY KEY (`NIM`);

--
-- Indexes for table `tblskripsi`
--
ALTER TABLE `tblskripsi`
  ADD PRIMARY KEY (`NIM`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bimbingankp`
--
ALTER TABLE `bimbingankp`
  MODIFY `id_bimbingan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT for table `bimbinganskripsi`
--
ALTER TABLE `bimbinganskripsi`
  MODIFY `id_bimbingan` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id_jadwal` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `konsultasi`
--
ALTER TABLE `konsultasi`
  MODIFY `id_konsultasi` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `pengajuan`
--
ALTER TABLE `pengajuan`
  MODIFY `id_pengajuan` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `pengumuman`
--
ALTER TABLE `pengumuman`
  MODIFY `id_pengumuman` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `surat_keputusan`
--
ALTER TABLE `surat_keputusan`
  MODIFY `id_surat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tahunajaran`
--
ALTER TABLE `tahunajaran`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
