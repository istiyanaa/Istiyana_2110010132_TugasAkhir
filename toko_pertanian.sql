-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2023 at 01:30 AM
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
-- Database: `toko_pertanian`
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
  `harga_beli` int(12) NOT NULL,
  `harga_jual` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id_barang`, `id_stok`, `nama_barang`, `satuan`, `harga_beli`, `harga_jual`) VALUES
(1122, 2234, 'score', '200 cc', 20000, 25000),
(1123, 2235, 'renzo', '80 cc', 40000, 46000),
(1124, 2236, 'polycur', '10 gr', 17000, 25000),
(1125, 2237, 'benstar', '200 gr', 165000, 170000),
(1126, 2238, 'roundup', '200 cc', 13500, 15000);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id_pelanggan` int(12) NOT NULL,
  `nama_Lengkap` varchar(30) NOT NULL,
  `telp_pelanggan` varchar(30) NOT NULL,
  `email_pelanggan` varchar(30) NOT NULL,
  `alamat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id_pelanggan`, `nama_Lengkap`, `telp_pelanggan`, `email_pelanggan`, `alamat`) VALUES
(1234, 'Risma Wahyuni', '083456789012', 'rismawahyuni@gmail.com', 'hst'),
(1235, 'Siti Mazidah', '098123456678', 'sitimazidah@gmail.com', 'hsu'),
(1236, 'Raras ', '082345678222', 'raras@gmail.com', 'hss'),
(1237, 'Dina Risya', '081234567899', 'dinarisya@gmail.com', 'balangan'),
(1238, 'Ibnu Kahfi', '087345687690', 'ibnukahfi@gmail.com', 'tanjung');

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

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id_pembelian`, `id_barang`, `id_supplier`, `id_user`, `nofaktur`, `tglfaktur`, `harga_beli`, `harga_jual`, `banyak_keluar`) VALUES
(9921, 1122, 3450, 5667, 1000, '20/07/2024', '20000', '25000', '10'),
(9922, 1123, 3451, 5668, 1500, '30/07/2025', '40000', '46000', '12'),
(9923, 1124, 3452, 5669, 2000, '04/10/2026', '20000', '25000', '10'),
(9924, 1125, 3453, 5670, 2500, '04/11/2024', '17000', '25000', '6'),
(9925, 1126, 3454, 5671, 4500, '07/12/2025', '13500', '15000', '11');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id_penjualan` int(12) NOT NULL,
  `id_pelanggan` int(12) NOT NULL,
  `id_barang` int(12) NOT NULL,
  `id_user` int(12) NOT NULL,
  `nofaktur` int(30) NOT NULL,
  `tglfaktur` varchar(30) NOT NULL,
  `harga_beli` int(50) NOT NULL,
  `harga_jual` int(50) NOT NULL,
  `banyak_keluar` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id_penjualan`, `id_pelanggan`, `id_barang`, `id_user`, `nofaktur`, `tglfaktur`, `harga_beli`, `harga_jual`, `banyak_keluar`) VALUES
(2457, 1235, 1123, 5668, 1500, '30/07/2025', 40000, 46000, '12'),
(3456, 1234, 1122, 5667, 1000, '20/07/2024', 20000, 25000, '10'),
(3458, 1236, 1124, 5669, 2000, '04/10/2026', 17000, 25000, '6'),
(3459, 1237, 1125, 5670, 2500, '04/11/2024', 165000, 170000, '11'),
(3460, 1238, 1126, 5671, 4500, '07/12/2025', 13500, 15000, '11');

-- --------------------------------------------------------

--
-- Table structure for table `stok`
--

CREATE TABLE `stok` (
  `id_stok` int(12) NOT NULL,
  `id_barang` int(12) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `jumlah_barang` int(12) NOT NULL,
  `sisa_stok` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stok`
--

INSERT INTO `stok` (`id_stok`, `id_barang`, `nama_barang`, `jumlah_barang`, `sisa_stok`) VALUES
(2234, 1122, 'score', 50, '40'),
(2235, 1123, 'renzo', 78, '66'),
(2236, 1124, 'polycur', 100, '90'),
(2237, 1125, 'benstar', 39, '33'),
(2238, 1126, 'roundup', 86, '75');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `id_supplier` int(12) NOT NULL,
  `nama_supplier` varchar(30) NOT NULL,
  `alamat_supplier` varchar(30) NOT NULL,
  `telp_supplier` varchar(12) NOT NULL,
  `email_supplier` varchar(30) NOT NULL,
  `jumlah_barang` int(12) NOT NULL,
  `harga_satuan` int(12) NOT NULL,
  `jumlah_harga` int(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`id_supplier`, `nama_supplier`, `alamat_supplier`, `telp_supplier`, `email_supplier`, `jumlah_barang`, `harga_satuan`, `jumlah_harga`) VALUES
(3450, 'PT Antar Mitra', 'Banjarmasin', '081234567899', 'ptantarmitra@gmil.com', 12, 20000, 240000),
(3451, 'PT Anugerah Lestari', 'Banjarbaruu', '084578690982', 'ptanugerahlestari@gmail.com', 12, 20000, 240000),
(3452, 'PT Bina San', 'Kotabaru', '087465444333', 'ptbinasan@gmail.com', 12, 17000, 204000),
(3453, 'PT Anugerah Argon', 'Tapin', '087633456722', 'ptanugerahargon@gmail.com', 12, 165000, 1980000),
(3454, 'PT Buana Mas', 'Martapura', '087633445678', 'ptbuanamas@gmail.com', 12, 13500, 162000);

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `id_transaksi` int(12) NOT NULL,
  `id_pembelian` int(12) NOT NULL,
  `id_barang` int(12) NOT NULL,
  `nama_barang` varchar(30) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `jumlah` varchar(50) NOT NULL,
  `harga_satuan` int(30) NOT NULL,
  `total_harga` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`id_transaksi`, `id_pembelian`, `id_barang`, `nama_barang`, `tanggal`, `jumlah`, `harga_satuan`, `total_harga`) VALUES
(1011, 9921, 1122, 'score', '20/07/2024', '2', 25000, 50000),
(1012, 9922, 1123, 'renzo', '21/08/2024', '1', 46000, 46000),
(1013, 9923, 1124, 'polycur', '21/08/2024', '13', 25000, 325000),
(1014, 9924, 1125, 'benstar', '15/09/2024', '5', 170000, 850000),
(1015, 9925, 1126, 'roundup', '15/10/2024', '1', 15000, 15000);

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
(5667, 'Fahrul Raji', 'FahrulRJ', 2345, 'L', 'Barabai', 'fahrulraji@gmail.com'),
(5668, 'Nadia Hamid', 'Nadia', 2346, 'P', 'Balangan', 'nadiahamid@gmaip.com'),
(5669, 'Rasyid Putra', 'Rasyid Putra', 2344, 'L', 'Banjarmasin', 'rasyidputra@gmail.com'),
(5670, 'Dewi Anggara', 'Dewi Anggara', 2222, 'P', 'Banjarbaru', 'dewianggara@gmaip.com'),
(5671, 'Naili Rahma', 'Naili Rahma', 9990, 'P', 'Rantau', 'nailirahma@gmaip.com');

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
  ADD UNIQUE KEY `id_barang` (`id_barang`,`id_supplier`,`id_user`),
  ADD KEY `id_supplier` (`id_supplier`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id_penjualan`),
  ADD UNIQUE KEY `id_pelanggan` (`id_pelanggan`,`id_barang`,`id_user`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_barang` (`id_barang`);

--
-- Indexes for table `stok`
--
ALTER TABLE `stok`
  ADD PRIMARY KEY (`id_stok`),
  ADD UNIQUE KEY `id_barang` (`id_barang`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`id_supplier`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`id_transaksi`),
  ADD UNIQUE KEY `id_pembelian` (`id_pembelian`,`id_barang`),
  ADD KEY `id_barang` (`id_barang`);

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
  MODIFY `id_barang` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1127;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id_penjualan` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3461;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `barang`
--
ALTER TABLE `barang`
  ADD CONSTRAINT `barang_ibfk_1` FOREIGN KEY (`id_stok`) REFERENCES `stok` (`id_stok`),
  ADD CONSTRAINT `barang_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `pembelian` (`id_barang`);

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_supplier`) REFERENCES `supplier` (`id_supplier`),
  ADD CONSTRAINT `pembelian_ibfk_3` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id_pelanggan`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_user`) REFERENCES `user` (`id_user`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);

--
-- Constraints for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`id_pembelian`) REFERENCES `pembelian` (`id_pembelian`),
  ADD CONSTRAINT `transaksi_ibfk_2` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id_barang`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
