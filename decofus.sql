-- phpMyAdmin SQL Dump
-- version 4.0.4.1
-- http://www.phpmyadmin.net
--
-- Inang: 127.0.0.1
-- Waktu pembuatan: 16 Mar 2018 pada 07.50
-- Versi Server: 5.5.32
-- Versi PHP: 5.4.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Basis data: `decofus`
--
CREATE DATABASE IF NOT EXISTS `decofus` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `decofus`;

-- --------------------------------------------------------

--
-- Struktur dari tabel `blog`
--

CREATE TABLE IF NOT EXISTS `blog` (
  `id_blog` int(11) NOT NULL AUTO_INCREMENT,
  `Judul_Blog` varchar(100) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `isi_blog` varchar(8000) NOT NULL,
  PRIMARY KEY (`id_blog`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `hubungikami`
--

CREATE TABLE IF NOT EXISTS `hubungikami` (
  `id_hk` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `no_telp` int(11) NOT NULL,
  `subject` varchar(500) NOT NULL,
  `pesan` varchar(5000) NOT NULL,
  PRIMARY KEY (`id_hk`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmpembayaran`
--

CREATE TABLE IF NOT EXISTS `konfirmpembayaran` (
  `OrderID` int(11) NOT NULL AUTO_INCREMENT,
  `Bank_pengirim` varchar(25) NOT NULL,
  `no_rek_pengirim` varchar(30) NOT NULL,
  `nama_rekening` varchar(30) NOT NULL,
  `tanggal_transfer` date NOT NULL,
  `jumlah_transfer` varchar(15) NOT NULL,
  `foto_rekening` varchar(30) NOT NULL,
  `catatan_tambahan` varchar(500) NOT NULL,
  PRIMARY KEY (`OrderID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_bussines`
--

CREATE TABLE IF NOT EXISTS `paket_bussines` (
  `id_paket` int(11) NOT NULL,
  `opsi_paket` varchar(35) NOT NULL,
  `status` varchar(5) NOT NULL,
  `harga_paket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_pro`
--

CREATE TABLE IF NOT EXISTS `paket_pro` (
  `id_paket` int(11) NOT NULL,
  `opsi_paket` varchar(35) NOT NULL,
  `status` varchar(5) NOT NULL,
  `harga_paket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_starter`
--

CREATE TABLE IF NOT EXISTS `paket_starter` (
  `id_paket` int(11) NOT NULL,
  `opsi_paket` varchar(35) NOT NULL,
  `status` varchar(5) NOT NULL,
  `harga_paket` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `paket_website`
--

CREATE TABLE IF NOT EXISTS `paket_website` (
  `id_paket` int(11) NOT NULL AUTO_INCREMENT,
  `namaPaket` varchar(20) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`id_paket`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE IF NOT EXISTS `transaksi` (
  `id_transaksi` int(11) NOT NULL AUTO_INCREMENT,
  `id_user` int(11) NOT NULL,
  `username` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(25) NOT NULL,
  `opsi_paket` varchar(35) NOT NULL,
  `harga_paket` varchar(25) NOT NULL,
  PRIMARY KEY (`id_transaksi`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(25) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(25) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
