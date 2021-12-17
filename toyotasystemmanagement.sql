-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2020 at 10:33 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toyotasystemmanagement`
--

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `kd_department` varchar(5) NOT NULL,
  `department` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`kd_department`, `department`) VALUES
('D1', 'penjualan'),
('D2', 'administrasi');

-- --------------------------------------------------------

--
-- Table structure for table `jabatann`
--

CREATE TABLE `jabatann` (
  `kd_jabatan` varchar(4) NOT NULL,
  `nama_jabatan` varchar(12) NOT NULL,
  `kd_department` varchar(5) NOT NULL,
  `gapok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jabatann`
--

INSERT INTO `jabatann` (`kd_jabatan`, `nama_jabatan`, `kd_department`, `gapok`) VALUES
('J001', 'Finance', 'D1', 3000000),
('J002', 'Sales', 'D1', 2500000),
('J003', 'Admin', 'D2', 2500000),
('J004', 'marketing su', 'D1', 2500000),
('J005', 'accounting', 'D2', 3000000),
('J006', 'front office', 'D2', 2500000),
('J007', 'cleaning ser', 'D2', 1700000);

-- --------------------------------------------------------

--
-- Table structure for table `karyawan`
--

CREATE TABLE `karyawan` (
  `id_karyawan` varchar(7) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `jenis_kelamin` enum('P','L') NOT NULL,
  `agama` enum('Islam','Katholik','Protestan','Hindu','Budha','Konghucu') NOT NULL,
  `pendidikan` varchar(25) NOT NULL,
  `no_telp` varchar(12) NOT NULL,
  `alamat` varchar(25) NOT NULL,
  `kd_jabatan` varchar(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `karyawan`
--

INSERT INTO `karyawan` (`id_karyawan`, `nama`, `jenis_kelamin`, `agama`, `pendidikan`, `no_telp`, `alamat`, `kd_jabatan`) VALUES
('A000002', 'ikyi', 'L', 'Protestan', 'S1', '081287568495', 'Busan ', 'J004'),
('A000003', 'MAHMUD', 'L', 'Islam', 'S2', '782', 'Jogja', 'J003'),
('A000005', 'syahru', 'L', 'Islam', 'S2', '08978787878', 'Busan', 'J005'),
('A000006', 'Kausar', 'L', 'Islam', 'S2', '0865362726', 'Bireuen', 'J005');

-- --------------------------------------------------------

--
-- Table structure for table `kehadiran`
--

CREATE TABLE `kehadiran` (
  `jadwal_kehadiran` datetime NOT NULL,
  `id_karyawan` varchar(17) NOT NULL,
  `status_kehadiran` enum('HADIR','ALPA','IZIN','') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kehadiran`
--

INSERT INTO `kehadiran` (`jadwal_kehadiran`, `id_karyawan`, `status_kehadiran`) VALUES
('2020-12-14 21:15:09', 'A000002', 'HADIR'),
('2020-12-08 21:15:09', 'A000002', 'HADIR'),
('2012-12-20 00:00:00', 'A000003', 'ALPA'),
('2012-12-20 00:00:00', 'A000005', 'IZIN'),
('2012-12-20 00:00:00', 'A000005', 'HADIR');

-- --------------------------------------------------------

--
-- Table structure for table `mobil`
--

CREATE TABLE `mobil` (
  `id_unit` varchar(7) NOT NULL,
  `nama_unit` varchar(15) NOT NULL,
  `tipe_unit` varchar(15) NOT NULL,
  `warna` varchar(10) NOT NULL,
  `tahun` varchar(4) NOT NULL,
  `harga_unit` varchar(16) NOT NULL,
  `stock_unit` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mobil`
--

INSERT INTO `mobil` (`id_unit`, `nama_unit`, `tipe_unit`, `warna`, `tahun`, `harga_unit`, `stock_unit`) VALUES
('M001', 'avanza', 'Matic', 'Hijau', '2017', '130000000', '10'),
('M002', 'fortuner', 'Manual', 'putih', '2018', '600000000', '5'),
('M003', 'alparth', 'Matic', 'merah', '2019', '900000000', '10'),
('M004', 'ayla', 'Matic', 'merah', '2017', '130000000', '10');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` varchar(5) NOT NULL,
  `nama_pembeli` varchar(20) NOT NULL,
  `no_hp` varchar(13) NOT NULL,
  `nik_pembeli` varchar(16) NOT NULL,
  `jenis_kel` enum('L','P') NOT NULL,
  `alamat_pembeli` varchar(20) NOT NULL,
  `pekerjaan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `nama_pembeli`, `no_hp`, `nik_pembeli`, `jenis_kel`, `alamat_pembeli`, `pekerjaan`) VALUES
('P001', 'Mahdi', '0812456754541', '1112223121241241', 'L', 'Trigandeng', 'Dosen'),
('P002', 'Malil', '081209878988', '1110003467767777', 'L', 'Lhokseumawe', 'wiraswasta'),
('P003', 'Maimunah', '081209877898', '1110007898900987', 'P', 'Lhokseumawe', 'pengacara'),
('P004', 'nurdan', '081212323433', '111000877666567', 'L', 'Lhokseumawe', 'Dokter'),
('P005', 'inem', '081223445666', '1110008999886543', 'P', 'Geudong', 'guru'),
('P006', 'Sarhan', '8989898989', '11114425241524', 'L', 'Geudong', 'MHS'),
('P007', 'GALIH', '097576755', '13241324', 'L', 'BIreuen', 'MHS'),
('P008', 'NURDINNNN', '098655545', '1111112321', 'L', 'Blang Mee', 'PNS'),
('P009', 'Ariq', '082827226267', '111111111', 'L', 'Bireuen', 'Mahasiswa');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` varchar(7) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `id_unit` varchar(7) NOT NULL,
  `id_pembeli` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `tgl_transaksi`, `id_unit`, `id_pembeli`) VALUES
('T0001', '2020-12-11', 'M003', 'P006'),
('T0002', '2020-12-16', 'M002', 'P002'),
('T0003', '2020-12-16', 'M003', 'P003'),
('T0004', '2020-12-16', 'M004', 'P004'),
('T0005', '2020-12-16', 'M002', 'P005'),
('T0008', '2020-12-12', 'M002', 'P007'),
('T0009', '2020-12-17', 'M002', 'P009');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`kd_department`);

--
-- Indexes for table `jabatann`
--
ALTER TABLE `jabatann`
  ADD PRIMARY KEY (`kd_jabatan`),
  ADD KEY `kd_department` (`kd_department`);

--
-- Indexes for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD PRIMARY KEY (`id_karyawan`),
  ADD KEY `kd_jabatan` (`kd_jabatan`);

--
-- Indexes for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD KEY `id_karyawan` (`id_karyawan`);

--
-- Indexes for table `mobil`
--
ALTER TABLE `mobil`
  ADD PRIMARY KEY (`id_unit`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD KEY `id_pembeli` (`id_pembeli`),
  ADD KEY `id_unit` (`id_unit`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `jabatann`
--
ALTER TABLE `jabatann`
  ADD CONSTRAINT `jabatann_ibfk_1` FOREIGN KEY (`kd_department`) REFERENCES `department` (`kd_department`);

--
-- Constraints for table `karyawan`
--
ALTER TABLE `karyawan`
  ADD CONSTRAINT `karyawan_ibfk_2` FOREIGN KEY (`kd_jabatan`) REFERENCES `jabatann` (`kd_jabatan`);

--
-- Constraints for table `kehadiran`
--
ALTER TABLE `kehadiran`
  ADD CONSTRAINT `kehadiran_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `karyawan` (`id_karyawan`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembeli`) REFERENCES `pembeli` (`id_pembeli`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_unit`) REFERENCES `mobil` (`id_unit`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
