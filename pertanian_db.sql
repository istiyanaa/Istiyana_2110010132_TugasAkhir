-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 30, 2023 at 12:01 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pertanian_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id_barang` int(12) NOT NULL,
  `id_stok` int(12) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `satuan` varchar(30) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(12) NOT NULL,
  `nama_Lengkap` varchar(30) NOT NULL,
  `telp_pelanggan` int(30) NOT NULL,
  `email_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id_pembelian` int(12) NOT NULL,
  `id_barang` int(12) NOT NULL,
  `id_supplier` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `nofaktur` int(12) NOT NULL,
  `tglfaktur` varchar(30) NOT NULL,
  `harga_beli` varchar(30) NOT NULL,
  `harga_jual` varchar(30) NOT NULL,
  `banyak_keluar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(12) NOT NULL,
  `id_pelanggan` int(12) NOT NULL,
  `id_barang` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `nofaktur` varchar(30) NOT NULL,
  `tglfaktur` varchar(30) NOT NULL,
  `harga_beli` varchar(30) NOT NULL,
  `harga_jual` varchar(30) NOT NULL,
  `banyak_keluar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(12) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jumlah_barang` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_stok`, `nama_barang`, `jumlah_barang`) VALUES
(3, 'Score', '12'),
(4, 'Renzo', '30'),
(5, 'Polycur', '15'),
(7, 'Roundup', '30'),
(8, 'Benstar', '20');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(12) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL,
  `telp_supplier` int(12) NOT NULL,
  `email_supplier` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(12) NOT NULL,
  `nama_Lengkap` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` int(20) NOT NULL,
  `jenis_kelamin` varchar(50) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `nama_Lengkap`, `username`, `password`, `jenis_kelamin`, `alamat`, `email`) VALUES
(2, 'Fahrul Raji', 'Fahrulrj', 2345, 'L', 'Barabai', 'fahrulraji@gmail.com'),
(3, 'Nadia Hamidah', 'Nadiahm', 2346, 'P', 'Balangan', 'nadiahamid@gmaip.com'),
(4, 'Rasyid Putra', 'Rayiddpu', 2347, 'L', 'Banjarmasin', 'rasyidputra@gmail.com'),
(5, 'Dwi Anggara', 'Dwiagra', 2348, 'L', 'Banjarbaru', 'dewianggara@gmaip.com'),
(6, 'Nayli Rahma', 'Naylirhma', 2349, 'L', 'Kotabaru', 'nailirahma@gmaip.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id_barang`),
  ADD UNIQUE KEY `id_stok` (`id_stok`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id_pelanggan`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id_pembelian`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD KEY `id_pelanggan` (`id_pelanggan`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id_barang` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id_pelanggan` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id_pembelian` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stok`
--
ALTER TABLE `stok`
  MODIFY `id_stok` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `id_supplier` int(12) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_stok`) REFERENCES `stok` (`id_stok`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`),
  ADD CONSTRAINT `pembelian_ibfk_3` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `pembelian_ibfk_4` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
