-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 13 Jun 2020 pada 09.54
-- Versi Server: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `si tk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `daftar_akun`
--

CREATE TABLE IF NOT EXISTS `daftar_akun` (
  `Username` varchar(30) NOT NULL,
  `First Name` varchar(30) NOT NULL,
  `Last Name` varchar(30) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `daftar_akun`
--

INSERT INTO `daftar_akun` (`Username`, `First Name`, `Last Name`, `Email`, `Password`) VALUES
('Edo fir', 'Edo', 'Fir', 'Edo@gmail.com', '53653'),
('Putra Adi', 'Putra', 'Adi', 'jhgg@gmail.com', '8910');

-- --------------------------------------------------------

--
-- Struktur dari tabel `form_login`
--

CREATE TABLE IF NOT EXISTS `form_login` (
  `Username` varchar(30) NOT NULL,
  `Password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `form_login`
--

INSERT INTO `form_login` (`Username`, `Password`) VALUES
('Edo Fir', '53653'),
('Putra Adi', '8910');

-- --------------------------------------------------------

--
-- Struktur dari tabel `hasil_belajar`
--

CREATE TABLE IF NOT EXISTS `hasil_belajar` (
  `Nama Siswa` varchar(30) NOT NULL,
  `Tahun Ajaran` int(30) NOT NULL,
  `Keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pendaftaran`
--

CREATE TABLE IF NOT EXISTS `pendaftaran` (
  `Nama` varchar(30) NOT NULL,
  `Tempat, tanggal Lahir` varchar(50) NOT NULL,
  `Agama` varchar(20) NOT NULL,
  `Jenis Kelamin` varchar(20) NOT NULL,
  `Anak Ke` int(15) NOT NULL,
  `Alamat` varchar(50) NOT NULL,
  `Ayah` varchar(30) NOT NULL,
  `Ibu` varchar(30) NOT NULL,
  `Pendidikan Terakhir Ortu` varchar(20) NOT NULL,
  `Pekerjaan Ortu` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `No Telepon` int(20) NOT NULL,
  `Bayar Biaya Pendaftaran` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `Nama Siswa` varchar(30) NOT NULL,
  `Keterangan` varchar(50) NOT NULL,
  `Jumlah Bayar` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_akun`
--
ALTER TABLE `daftar_akun`
 ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `form_login`
--
ALTER TABLE `form_login`
 ADD PRIMARY KEY (`Username`);

--
-- Indexes for table `hasil_belajar`
--
ALTER TABLE `hasil_belajar`
 ADD PRIMARY KEY (`Nama Siswa`);

--
-- Indexes for table `pendaftaran`
--
ALTER TABLE `pendaftaran`
 ADD PRIMARY KEY (`Nama`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
 ADD PRIMARY KEY (`Nama Siswa`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `form_login`
--
ALTER TABLE `form_login`
ADD CONSTRAINT `form_login_ibfk_1` FOREIGN KEY (`Username`) REFERENCES `daftar_akun` (`Username`);

--
-- Ketidakleluasaan untuk tabel `hasil_belajar`
--
ALTER TABLE `hasil_belajar`
ADD CONSTRAINT `hasil_belajar_ibfk_1` FOREIGN KEY (`Nama Siswa`) REFERENCES `pendaftaran` (`Nama`);

--
-- Ketidakleluasaan untuk tabel `pendaftaran`
--
ALTER TABLE `pendaftaran`
ADD CONSTRAINT `pendaftaran_ibfk_1` FOREIGN KEY (`Nama`) REFERENCES `form_login` (`Username`);

--
-- Ketidakleluasaan untuk tabel `transaksi`
--
ALTER TABLE `transaksi`
ADD CONSTRAINT `transaksi_ibfk_1` FOREIGN KEY (`Nama Siswa`) REFERENCES `pendaftaran` (`Nama`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
