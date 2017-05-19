-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 19, 2017 at 03:20 PM
-- Server version: 10.1.9-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `buku_masuk`
--

CREATE TABLE `buku_masuk` (
  `no_faktur` varchar(25) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `kd_suplier` varchar(25) NOT NULL,
  `no_po` int(20) NOT NULL,
  `lokasi` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `buku_masuk`
--

INSERT INTO `buku_masuk` (`no_faktur`, `tgl_masuk`, `kd_suplier`, `no_po`, `lokasi`) VALUES
('S-19051701', '2017-05-19', 'as', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `data_buku`
--

CREATE TABLE `data_buku` (
  `kode_buku` varchar(50) NOT NULL,
  `no_faktur` varchar(50) NOT NULL,
  `nama_buku` varchar(50) NOT NULL,
  `penerbit` varchar(50) NOT NULL,
  `hrg_distributor` bigint(50) NOT NULL,
  `hrg_satuan` bigint(50) NOT NULL,
  `stok` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_buku`
--

INSERT INTO `data_buku` (`kode_buku`, `no_faktur`, `nama_buku`, `penerbit`, `hrg_distributor`, `hrg_satuan`, `stok`) VALUES
('a0009', 'S-15051701', 'ada', 'sad', 1313, 12, 1),
('a009', 'S-15051701', 'sa', 'asde', 12, 13, 1),
('a12', 'S-15051701', 'ads', 'as', 134, 1234, 4),
('a123', 'S-15051701', 'sad', 'asd', 12, 12, 2),
('a1256', 'S-15051701', 'assd', 'asda', 123, 12, 1),
('a312', 'S-15051701', 'asda', 'asd', 12345, 12, 1),
('as123e', 'S-18051701', 'asd', 'ds', 123, 1, 1),
('d12', 'S-15051701', 'asd', 'asd', 12, 1, 1),
('d3', 'S-19051701', 'ad', 'asd', 1, 2, 1),
('f1234', 'S-15051701', 'asd', 'asd', 1244, 12, 1),
('s123', 'S-18051701', 'asd', 'asd', 123, 12, 1);

-- --------------------------------------------------------

--
-- Table structure for table `data_masuk`
--

CREATE TABLE `data_masuk` (
  `kode_buku` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `data_meta`
--

CREATE TABLE `data_meta` (
  `id_meta` int(11) NOT NULL,
  `jenis` varchar(20) NOT NULL,
  `value` int(11) NOT NULL,
  `tgl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_meta`
--

INSERT INTO `data_meta` (`id_meta`, `jenis`, `value`, `tgl`) VALUES
(1, 'faktur_buku', 0, '0000-00-00'),
(2, 'faktur_jual', 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `manager`
--

CREATE TABLE `manager` (
  `kd_manager` varchar(20) NOT NULL,
  `nama_manager` varchar(25) NOT NULL,
  `alamat_manager` varchar(25) NOT NULL,
  `no_telp_manager` int(10) NOT NULL,
  `wilayah_manager` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `manager`
--

INSERT INTO `manager` (`kd_manager`, `nama_manager`, `alamat_manager`, `no_telp_manager`, `wilayah_manager`) VALUES
('b01', 'tiara', 'dimanamana', 899021290, 'pontianak selatan'),
('b02', 'siape', 'yyuuui', 98776789, 'pontianak timur');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kd_pelanggan` varchar(25) NOT NULL,
  `kd_sales` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL,
  `alamat_pelanggan` varchar(20) NOT NULL,
  `no_telp_pelanggan` varchar(20) NOT NULL,
  `limits` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kd_pelanggan`, `kd_sales`, `nama_pelanggan`, `alamat_pelanggan`, `no_telp_pelanggan`, `limits`) VALUES
('a', 'a', 'sd', 'ape', '1', 1),
('a03-00001', 'a03', 'asidasa', 'ntahlah', '0891212131', 1000000),
('a09-00001', 'a09', 'sda', 'asdsa', '08912121', 100000),
('as', 'as', 'sa', 'dada', '012', 12);

-- --------------------------------------------------------

--
-- Table structure for table `sales`
--

CREATE TABLE `sales` (
  `kd_sales` varchar(20) NOT NULL,
  `kd_manager` varchar(20) NOT NULL,
  `nama_sales` varchar(20) NOT NULL,
  `alamat_sales` varchar(25) NOT NULL,
  `no_telp_sales` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sales`
--

INSERT INTO `sales` (`kd_sales`, `kd_manager`, `nama_sales`, `alamat_sales`, `no_telp_sales`) VALUES
('a01', 'b03', 'biarlah', 'teserahlah dmn', '08948573625'),
('a02', 'b02', 'siape', 'jalan jalan', '09894039823'),
('a03', 'b01', 'apeke', 'ntah', '0930942596');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `level` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`username`, `password`, `level`) VALUES
('admin', 'admin', 'accountant'),
('gudang', 'gudang', 'gudang');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `buku_masuk`
--
ALTER TABLE `buku_masuk`
  ADD PRIMARY KEY (`no_faktur`);

--
-- Indexes for table `data_buku`
--
ALTER TABLE `data_buku`
  ADD PRIMARY KEY (`kode_buku`);

--
-- Indexes for table `data_meta`
--
ALTER TABLE `data_meta`
  ADD PRIMARY KEY (`id_meta`);

--
-- Indexes for table `manager`
--
ALTER TABLE `manager`
  ADD PRIMARY KEY (`kd_manager`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kd_pelanggan`);

--
-- Indexes for table `sales`
--
ALTER TABLE `sales`
  ADD PRIMARY KEY (`kd_sales`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `data_meta`
--
ALTER TABLE `data_meta`
  MODIFY `id_meta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
