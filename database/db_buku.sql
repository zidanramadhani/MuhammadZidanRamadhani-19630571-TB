-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 08, 2022 at 08:45 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_buku`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku`
--

CREATE TABLE `buku` (
  `kode_buku` varchar(4) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buku`
--

INSERT INTO `buku` (`kode_buku`, `nama_buku`, `pengarang`, `penerbit`, `harga`) VALUES
('B001', 'Piknik Seru', 'Anita Hairunnisa', 'Little Serambi', 75000),
('B002', 'Kisah 7 Bayi Bisa Bicara', 'Uwais Ramadhan', 'Gema Insani', 90000),
('B003', 'Laskar Pelangi', 'Andrea Hirata', 'Gramedia', 100000),
('B004', 'Koala Kumal', 'Raditya Dika', 'Gagas Media', 80000),
('B006', 'Ilmu Pengetahuan Alam', 'Zidan', 'Banua Buku', 65000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_login_admin`
--

CREATE TABLE `tb_login_admin` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login_admin`
--

INSERT INTO `tb_login_admin` (`username`, `password`) VALUES
('admin', 'admin'),
('zidan', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `tb_login_pengunjung`
--

CREATE TABLE `tb_login_pengunjung` (
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_login_pengunjung`
--

INSERT INTO `tb_login_pengunjung` (`username`, `password`) VALUES
('ali', 'user'),
('udin', 'user'),
('user', 'user'),
('zidan', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id` int(3) NOT NULL,
  `kode_buku` varchar(50) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `pengarang` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `harga` int(20) NOT NULL,
  `jumlahbeli` int(10) NOT NULL,
  `diskon` int(20) NOT NULL,
  `hargatotal` int(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `inputuang` int(20) NOT NULL,
  `kembalian` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id`, `kode_buku`, `nama_buku`, `pengarang`, `penerbit`, `harga`, `jumlahbeli`, `diskon`, `hargatotal`, `nama`, `inputuang`, `kembalian`) VALUES
(1, 'B001', 'Piknik Seru', 'Anita Hairunnisa', 'Little Serambi', 75000, 1, 15000, 60000, 'Erwin', 75000, 15000),
(3, 'B005', 'Negeri 5 Menara', 'Ahmad Fuadi', 'Gramedia', 55000, 2, 15000, 95000, 'Udin', 100000, 5000),
(4, 'B003', 'Laskar Pelangi', 'Andrea Hirata', 'Gramedia', 100000, 1, 35000, 65000, 'Putri', 65000, 0),
(5, 'B004', 'Koala Kumal', 'Raditya Dika', 'Gagas Media', 80000, 2, 15000, 145000, 'Jefri', 150000, 5000),
(6, 'B004', 'Koala Kumal', 'Raditya Dika', 'Gagas Media', 80000, 1, 15000, 65000, 'Yuli', 100000, 35000);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku`
--
ALTER TABLE `buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `tb_login_admin`
--
ALTER TABLE `tb_login_admin`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `tb_login_pengunjung`
--
ALTER TABLE `tb_login_pengunjung`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
