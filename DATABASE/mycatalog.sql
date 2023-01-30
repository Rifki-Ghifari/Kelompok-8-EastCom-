-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2023 at 05:56 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mycatalog`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(200) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', '$2y$10$AIy0X1Ep6alaHDTofiChGeqq7k/d1Kc8vKQf1JZo0mKrzkkj6M626');

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `kode_customer` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `telp` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`kode_customer`, `nama`, `email`, `username`, `password`, `telp`) VALUES
('C0005', 'kimi', 'kimi@gmail.com', 'ki', '$2y$10$YO4atfGXHPDl7erOBkeTCOrPsyonKuYx5RQTZfzG.IH0FIERNvwdK', '+6282384759'),
('C0006', 'saddam', 'saddam@gmail.com', 'dam', '$2y$10$h5ogws1C4Zenifs9wXtekObEA/Kkomu2kjrvq3UDxzqVBtKOrAM2W', '0812575'),
('C0007', 'ghifari', 'ghifari@gmail.com', 'ghif', '$2y$10$6bNWGfOvVG0eXl/f4Hh5ROATIf3iWgkgWktfJxhwOF/9dlJYEzD9W', '0812454549543'),
('C0008', 'ryan', 'ryan@gmail.com', 'user', '$2y$10$A5pR7hoGBHUGsXAgXZUptupC/VbacT7OYna9FGyDqt.XjOAlu2jQe', '432344324');

-- --------------------------------------------------------

--
-- Table structure for table `keranjang`
--

CREATE TABLE `keranjang` (
  `id_keranjang` int(11) NOT NULL,
  `kode_customer` varchar(100) NOT NULL,
  `kode_produk` varchar(100) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `kode_produk` varchar(100) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kategori` varchar(100) NOT NULL,
  `stock` int(11) NOT NULL,
  `lokasi_rak` varchar(100) NOT NULL,
  `image` text NOT NULL,
  `harga` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`kode_produk`, `nama`, `kategori`, `stock`, `lokasi_rak`, `image`, `harga`) VALUES
('P0001', 'Better', 'Makanan', 10, '2a', 'better.jpg', 3000),
('P0002', 'Hello Panda', 'Makanan', 20, '1a', 'hello panda.jpg', 5000),
('P0003', 'Oreo Cokelat', 'Makanan', 10, '1b', 'oreo.png', 12000),
('P0004', 'Kacang 2Kelinci', 'Makanan', 13, '2a', 'kacang 2 kelinci.png', 8000),
('P0005', 'Le Minerale', 'Minuman', 30, '3c', 'le mineral.jpg', 6000),
('P0006', 'Mizone', 'Minuman', 12, '3b', 'mizone.jpg', 5000),
('P0007', 'Sprite', 'Minuman', 9, '3a', 'sprite.jpg', 6000),
('P0008', 'Teh Kotak', 'Minuman', 15, '4b', 'teh kotak.jpg', 5000),
('P0009', 'Ultra Strawbery', 'Minuman', 8, '4a', 'ultra strawbery.jpg', 7000),
('P0010', 'Al-Quran', 'Perlengkapan Santri', 50, '5a', 'al-quran.jpg', 45000),
('P0011', 'Buku Tulis', 'Perlengkapan Santri', 20, '5b', 'buku.jpg', 5000),
('P0012', 'Songko Hitam', 'Perlengkapan Santri', 20, '5c', 'songkok.jpg', 35000),
('P0013', 'Pena', 'Perlengkapan Santri', 12, '6a', 'pena.jpg', 3000),
('P0014', 'Sarung', 'Perlengkapan Santri', 10, '6b', 'sarung.jpg', 25000),
('P0015', 'Baju Muslim', 'Perlengkapan Santri', 15, '7b', 'koko.jpg', 50000),
('P0016', 'Telur', 'Sembako', 24, '7b', 'telur.jpg', 2500),
('P0017', 'Mie Sedap Goreng', 'Sembako', 24, '8a', 'indomie goreng.png', 4000),
('P0018', 'Gula', 'Sembako', 5, '8b', 'gula.jpg', 12000),
('P0019', 'Teh Pucuk', 'Minuman', 12, '8b', 'teh pucuk.jpg', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `produksi`
--

CREATE TABLE `produksi` (
  `id_order` int(11) NOT NULL,
  `invoice` varchar(200) NOT NULL,
  `kode_customer` varchar(200) NOT NULL,
  `kode_produk` varchar(200) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `qty` int(11) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(200) NOT NULL,
  `tanggal` date NOT NULL,
  `provinsi` varchar(200) NOT NULL,
  `kota` varchar(200) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `kode_pos` varchar(200) NOT NULL,
  `terima` varchar(200) NOT NULL,
  `tolak` varchar(200) NOT NULL,
  `cek` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `produksi`
--

INSERT INTO `produksi` (`id_order`, `invoice`, `kode_customer`, `kode_produk`, `nama_produk`, `qty`, `harga`, `status`, `tanggal`, `provinsi`, `kota`, `alamat`, `kode_pos`, `terima`, `tolak`, `cek`) VALUES
(21, 'INV0001', 'C0005', 'P0017', 'Mie Sedap Goreng', 1, 4000, 'Pesanan Baru', '2323-01-29', 'papua barat', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(22, 'INV0001', 'C0005', 'P0001', 'Better', 1, 3000, 'Pesanan Baru', '2323-01-29', 'papua barat', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(23, 'INV0002', 'C0005', 'P0003', 'Oreo Cokelat', 1, 12000, 'Pesanan Baru', '2323-01-29', 'papua barat', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(24, 'INV0003', 'C0006', 'P0018', 'Gula', 1, 12000, 'Pesanan Baru', '2323-01-29', 'papua barat', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(25, 'INV0003', 'C0006', 'P0008', 'Teh Kotak', 1, 5000, 'Pesanan Baru', '2323-01-29', 'papua barat', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(26, 'INV0004', 'C0007', 'P0017', 'Mie Sedap Goreng', 2, 4000, 'Pesanan Baru', '2323-01-29', 'papua barat daya', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(27, 'INV0004', 'C0007', 'P0008', 'Teh Kotak', 1, 5000, 'Pesanan Baru', '2323-01-29', 'papua barat daya', 'sorong', 'Kilo 8', '96123', '0', '0', 0),
(28, 'INV0005', 'C0008', 'P0003', 'Oreo Cokelat', 1, 12000, 'Pesanan Baru', '2323-01-30', 'papua barat daya', 'sorong', 'Kilo 8', '56564', '0', '0', 0),
(29, 'INV0005', 'C0008', 'P0007', 'Sprite', 2, 6000, 'Pesanan Baru', '2323-01-30', 'papua barat daya', 'sorong', 'Kilo 8', '56564', '0', '0', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`kode_customer`);

--
-- Indexes for table `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id_keranjang`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`kode_produk`);

--
-- Indexes for table `produksi`
--
ALTER TABLE `produksi`
  ADD PRIMARY KEY (`id_order`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id_keranjang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `produksi`
--
ALTER TABLE `produksi`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
