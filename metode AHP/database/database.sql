-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 09 Jun 2021 pada 12.15
-- Versi server: 10.4.8-MariaDB
-- Versi PHP: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `database`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id`, `nama`) VALUES
(19, 'Kafe A'),
(20, 'Kafe B'),
(21, 'Kafe C'),
(22, 'Kafe D');

-- --------------------------------------------------------

--
-- Struktur dari tabel `ir`
--

CREATE TABLE `ir` (
  `jumlah` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ir`
--

INSERT INTO `ir` (`jumlah`, `nilai`) VALUES
(1, 0),
(2, 0),
(3, 0.58),
(4, 0.9),
(5, 1.12),
(6, 1.24),
(7, 1.32),
(8, 1.41),
(9, 1.45),
(10, 1.49),
(11, 1.51),
(12, 1.48),
(13, 1.56),
(14, 1.57),
(15, 1.59);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id` int(11) NOT NULL,
  `nama` varchar(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id`, `nama`) VALUES
(28, 'Pelayanan Kafe'),
(29, 'Cita Rasa Hidangan'),
(30, 'Lokasi Kafe'),
(31, 'Kelengkapan Fasilita'),
(32, 'Lama Waktu Penyajian');

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_alternatif`
--

CREATE TABLE `perbandingan_alternatif` (
  `id` int(11) NOT NULL,
  `alternatif1` int(11) NOT NULL,
  `alternatif2` int(11) NOT NULL,
  `pembanding` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_alternatif`
--

INSERT INTO `perbandingan_alternatif` (`id`, `alternatif1`, `alternatif2`, `pembanding`, `nilai`) VALUES
(16, 19, 20, 28, 1.25),
(17, 19, 21, 28, 1.25),
(18, 19, 22, 28, 1),
(19, 20, 21, 28, 1),
(20, 20, 22, 28, 0.8),
(21, 21, 22, 28, 0.8),
(22, 19, 20, 29, 1),
(23, 19, 21, 29, 0.8),
(24, 19, 22, 29, 0.8),
(25, 20, 21, 29, 0.8),
(26, 20, 22, 29, 0.8),
(27, 21, 22, 29, 1),
(28, 19, 20, 30, 0.6),
(29, 19, 21, 30, 1),
(30, 19, 22, 30, 0.6),
(31, 20, 21, 30, 1.6),
(32, 20, 22, 30, 1),
(33, 21, 22, 30, 0.6),
(34, 19, 20, 31, 1),
(35, 19, 21, 31, 1.33333),
(36, 19, 22, 31, 1),
(37, 20, 21, 31, 1.33333),
(38, 20, 22, 31, 1),
(39, 21, 22, 31, 0.75),
(40, 19, 20, 32, 1),
(41, 19, 21, 32, 1.66667),
(42, 19, 22, 32, 1),
(43, 20, 21, 32, 1.66667),
(44, 20, 22, 32, 1),
(45, 21, 22, 32, 0.6);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perbandingan_kriteria`
--

CREATE TABLE `perbandingan_kriteria` (
  `id` int(11) NOT NULL,
  `kriteria1` int(11) NOT NULL,
  `kriteria2` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `perbandingan_kriteria`
--

INSERT INTO `perbandingan_kriteria` (`id`, `kriteria1`, `kriteria2`, `nilai`) VALUES
(7, 28, 29, 3),
(8, 28, 30, 3),
(9, 28, 31, 5),
(10, 28, 32, 5),
(11, 29, 30, 1),
(12, 29, 31, 5),
(13, 29, 32, 5),
(14, 30, 31, 5),
(15, 30, 32, 5),
(16, 31, 32, 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_alternatif`
--

CREATE TABLE `pv_alternatif` (
  `id` int(11) NOT NULL,
  `id_alternatif` int(11) NOT NULL,
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_alternatif`
--

INSERT INTO `pv_alternatif` (`id`, `id_alternatif`, `id_kriteria`, `nilai`) VALUES
(40, 19, 28, 0.277778),
(41, 20, 28, 0.222222),
(42, 21, 28, 0.222222),
(43, 22, 28, 0.277778),
(44, 19, 29, 0.222222),
(45, 20, 29, 0.222222),
(46, 21, 29, 0.277778),
(47, 22, 29, 0.277778),
(48, 19, 30, 0.18773),
(49, 20, 30, 0.309719),
(50, 21, 30, 0.189668),
(51, 22, 30, 0.312883),
(52, 19, 31, 0.266667),
(53, 20, 31, 0.266667),
(54, 21, 31, 0.2),
(55, 22, 31, 0.266667),
(56, 19, 32, 0.277778),
(57, 20, 32, 0.277778),
(58, 21, 32, 0.166667),
(59, 22, 32, 0.277778);

-- --------------------------------------------------------

--
-- Struktur dari tabel `pv_kriteria`
--

CREATE TABLE `pv_kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `pv_kriteria`
--

INSERT INTO `pv_kriteria` (`id_kriteria`, `nilai`) VALUES
(28, 0.436643),
(29, 0.223979),
(30, 0.223979),
(31, 0.0576991),
(32, 0.0576991);

-- --------------------------------------------------------

--
-- Struktur dari tabel `ranking`
--

CREATE TABLE `ranking` (
  `id_alternatif` int(11) NOT NULL,
  `nilai` float NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ranking`
--

INSERT INTO `ranking` (`id_alternatif`, `nilai`) VALUES
(19, 0.244524),
(20, 0.247589),
(21, 0.222886),
(22, 0.284999);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `ir`
--
ALTER TABLE `ir`
  ADD PRIMARY KEY (`jumlah`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `pv_kriteria`
--
ALTER TABLE `pv_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `ranking`
--
ALTER TABLE `ranking`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_alternatif`
--
ALTER TABLE `perbandingan_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `perbandingan_kriteria`
--
ALTER TABLE `perbandingan_kriteria`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `pv_alternatif`
--
ALTER TABLE `pv_alternatif`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
