-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 21 Des 2020 pada 03.07
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `look4jobapp`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `jobs`
--

CREATE TABLE `jobs` (
  `id_jobs` int(11) NOT NULL,
  `posisi` varchar(100) NOT NULL,
  `gaji` int(12) DEFAULT NULL,
  `deskripsi` varchar(500) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `id_perusahaan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `jobs`
--

INSERT INTO `jobs` (`id_jobs`, `posisi`, `gaji`, `deskripsi`, `created_at`, `updated_at`, `id_perusahaan`) VALUES
(1, 'Java Programmer', 8000, 'Berusia minimal 20 Tahun, minimal pendidikan S1 di bidang IT, Pengalaman kerja minimal 2 tahun, menguasai bahasa pemrograman java', '2020-12-07 00:00:00', '2020-12-09 03:46:41', 1),
(25, 'Designer', 8000, 'dsfdsfdsfdsf', '2020-12-09 09:17:12', '2020-12-09 09:17:12', 10),
(40, 'Designer', 10000000, 'Dibutuhkan designer aplikasi \r\n- Usia minimal 20 tahun\r\n- Pengalaman minimal 2 tahun\r\n- mampu bekerja dalam tim', '2020-12-09 10:50:00', '2020-12-09 10:50:00', 1),
(42, 'UI/UX Designer', 900000, 'Minimal usia 20 tahun, minimal pengalaman 2 tahun', '2020-12-09 16:13:48', '2020-12-09 16:18:35', 1),
(46, 'Penjaga gerbang nazarik', 10000000, 'Kuat jasmani rohani', '2020-12-11 02:43:01', '2020-12-11 02:43:01', 14),
(47, 'Designer', 10000000, 'bisa aja yang penting mah', '2020-12-11 02:43:37', '2020-12-11 02:43:37', 14),
(48, 'UI/UX Designer', 8000, 'Okelah yang penting yakin', '2020-12-11 02:44:01', '2020-12-11 02:44:01', 14),
(49, 'PHP Programmer', 10000000, 'Susah bos saya saja bingung, jadi daftar aja lah', '2020-12-11 02:44:31', '2020-12-11 02:44:31', 14);

-- --------------------------------------------------------

--
-- Struktur dari tabel `perusahaan`
--

CREATE TABLE `perusahaan` (
  `id_perusahaan` int(11) NOT NULL,
  `nama_perusahaan` varchar(100) NOT NULL,
  `email_perusahaan` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `lokasi` varchar(255) NOT NULL,
  `industri` varchar(100) NOT NULL,
  `tahun_berdiri` varchar(122) NOT NULL,
  `img_perusahaan` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `perusahaan`
--

INSERT INTO `perusahaan` (`id_perusahaan`, `nama_perusahaan`, `email_perusahaan`, `password`, `alamat`, `lokasi`, `industri`, `tahun_berdiri`, `img_perusahaan`) VALUES
(1, 'Gameloft', 'gameloft@gmail.com', '', 'Jl. Kaliurang, km 12.5, Ngaglik, Sleman', 'Sleman', 'Game/IT', '', 'gameloft.png'),
(10, 'hahahccfg', 'erewr', '$2y$10$WEKvKGbOQBA2wRLy8rvjTu.wlFo8uE93k/UmL/3Ko1uCIxw4ayafm', 'jakal', 'sleman', 'weesad', '2020-12-09', 'default.jpg'),
(11, 'tescobaoooo', 'nafachru@gmail.com', '$2y$10$tMVLRjl3LmWK.3Jmy4l0iuLNAAUI6uD8l.uyl20Er93nA.UqsIvji', 'jakal', 'sleman', 'perrrn', '2020-12-10', '1607546225_09860c923a874271975d.jpg'),
(14, 'TechnoLab', 'a@a.com', '$2y$10$T4sde6rJQHbzZKLiSqusuOdnTj6GzeP4BM6BprJbHNazcFOBIPdxy', 'Nazarik', 'Isekai', 'Gayming', '1938-02-01', '1608455593_4c370cc94ef0555eee6f.jpg');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id_jobs`);

--
-- Indeks untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  ADD PRIMARY KEY (`id_perusahaan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id_jobs` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT untuk tabel `perusahaan`
--
ALTER TABLE `perusahaan`
  MODIFY `id_perusahaan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
