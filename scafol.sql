-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 06 Sep 2020 pada 11.10
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `scafol`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `diskusi`
--

CREATE TABLE IF NOT EXISTS `diskusi` (
`id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `judul` varchar(50) NOT NULL,
  `teks_diskusi` varchar(300) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `kategori` varchar(30) NOT NULL,
  `tanggal_diskusi` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `diskusi`
--

INSERT INTO `diskusi` (`id`, `user_id`, `judul`, `teks_diskusi`, `gambar`, `kategori`, `tanggal_diskusi`) VALUES
(7, 1, 'Lorem ipsum dolor sit amet consectetur adipisicing', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Soluta harum doloribus accusamus nobis exercitationem minus autem velit beatae obcaecati similique, tempora quis neque dolores? Laboriosam quam voluptatem impedit voluptate sint.\r\n    Lorem ipsum dolor sit amet consectetur adipisicing elit. At', NULL, 'jembatan', 1599383159),
(8, 1, 'Test Image Upload', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Atque nobis eum dolores sunt quas mollitia, quasi laudantium suscipit nulla neque praesentium impedit veritatis, quaerat a illo asperiores voluptas distinctio, doloribus.', 'kontruksi3.jpg', 'jembatan', 1599383228);

-- --------------------------------------------------------

--
-- Struktur dari tabel `komentar`
--

CREATE TABLE IF NOT EXISTS `komentar` (
`id` int(11) NOT NULL,
  `diskusi_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `teks_komentar` varchar(300) NOT NULL,
  `gambar` varchar(50) DEFAULT NULL,
  `tanggal_komentar` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `komentar`
--

INSERT INTO `komentar` (`id`, `diskusi_id`, `user_id`, `teks_komentar`, `gambar`, `tanggal_komentar`) VALUES
(17, '8', '1', 'Test image comment...', 'kontruksi31.jpg', 1599383264);

-- --------------------------------------------------------

--
-- Struktur dari tabel `subkomen`
--

CREATE TABLE IF NOT EXISTS `subkomen` (
`id` int(11) NOT NULL,
  `komen_id` varchar(10) NOT NULL,
  `user_id` varchar(10) NOT NULL,
  `teks_subkomen` varchar(300) NOT NULL,
  `tanggal_subkomen` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
`id` int(11) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `is_active` int(1) NOT NULL,
  `image` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`id`, `email`, `password`, `nama`, `is_active`, `image`) VALUES
(1, 'tester@gmail.com', 'tester', 'tester', 1, 'default.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `diskusi`
--
ALTER TABLE `diskusi`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subkomen`
--
ALTER TABLE `subkomen`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `diskusi`
--
ALTER TABLE `diskusi`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `subkomen`
--
ALTER TABLE `subkomen`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
