-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 08 Jan 2024 pada 13.24
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko_online`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_barang`
--

CREATE TABLE `tb_barang` (
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(120) NOT NULL,
  `keterangan` varchar(225) NOT NULL,
  `kategori` varchar(60) NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(4) NOT NULL,
  `gambar` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_barang`
--

INSERT INTO `tb_barang` (`id_brg`, `nama_brg`, `keterangan`, `kategori`, `harga`, `stok`, `gambar`) VALUES
(1, 'Sepatu', 'Sepatu merk Allstar', 'Pakaian Pria', 300000, 7, 'sepatu.jpg'),
(2, 'Kamera', 'Kamera canon eos 700d', 'Elektronik', 5900000, 9, 'kamera.jpg'),
(3, 'HP Samsung', 'Samsung Galaxy A20', 'Elektronik', 3400000, 30, 'hp.jpg'),
(4, 'Laptop Asus', 'Laptop Asus ram 2gb', 'Elektronik', 4700000, 39, 'laptop.jpg'),
(7, 'Jam Tangan Pria', 'Asli merk Casio', 'Pakaian Pria', 400000, 29, 'jam.jpg'),
(10, 'Kemeja', 'Kemeja Wanita Bahan Katun', 'Pakaian Wanita', 120000, 23, 'kemeja1.jpg'),
(11, 'Raket', 'Raket Bulutangkis', 'Peralatan Olahraga', 70000, 11, 'raket.jpg'),
(12, 'Tas Olahraga', 'Merk Adidas', 'Peralatan Olahraga', 450000, 10, 'tasolga.jpg'),
(13, 'Tas Wanita', 'Satu set dengan dompet, stok terbatas!', 'Pakaian Wanita', 350000, 6, 'taswanita.jpg'),
(14, 'Tv Samsung', 'Tv 50 inch', 'Elektronik', 15000000, 5, 'tv.jpg'),
(15, 'Topi Anak', 'Topi anak laki-laki gambar kartun', 'Pakaian Anak-Anak', 20000, 49, 'topianak.jpg'),
(16, 'Sendal Wanita', 'Sendal wanita warna-warni', 'Pakaian Wanita', 35000, 34, 'sendalp.jpg'),
(17, 'Sendal Pria', 'Sendal pria kekinian', 'Pakaian Pria', 128000, 20, 'sendallaki.jpg'),
(18, 'Stik', 'Stik golf terbaru', 'Peralatan Olahraga', 75000, 21, 'golf.jpg'),
(19, 'Bola Basket', 'Bola basket merk molten', 'Peralatan Olahraga', 150000, 8, 'bolabasket.jpg'),
(20, 'Barbel ', 'Berat 3kg', 'Peralatan Olahraga', 56000, 15, 'barbel.jpg'),
(21, 'Cardigan', 'Cardigan wanita rajut', 'Pakaian Wanita', 60000, 70, 'cardigan.jpg'),
(22, 'Celana Anak', 'Celana kolor anak laki-laki', 'Pakaian Anak-Anak', 25000, 100, 'celanabayi.jpg'),
(23, 'Baju Anak', 'Satu set dengan celana gambar kartun', 'Pakaian Anak-Anak', 34000, 120, 'bajuanakl.jpg'),
(24, 'Baju Anak', 'Satu set dengan celana gambar kartun', 'Pakaian Anak-Anak', 32000, 120, 'bajuanakp.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_invoice`
--

CREATE TABLE `tb_invoice` (
  `id` int(11) NOT NULL,
  `nama` varchar(56) NOT NULL,
  `alamat` varchar(225) NOT NULL,
  `tgl_pesan` datetime NOT NULL,
  `batas_bayar` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_invoice`
--

INSERT INTO `tb_invoice` (`id`, `nama`, `alamat`, `tgl_pesan`, `batas_bayar`) VALUES
(3, 'Madina Hayva', 'Jepara, Jawa Tengah', '2024-01-03 15:09:00', '2024-01-04 15:09:00'),
(4, '', '', '2024-01-03 18:22:52', '2024-01-04 18:22:52'),
(5, '', '', '2024-01-03 18:23:40', '2024-01-04 18:23:40'),
(6, '', '', '2024-01-04 00:32:22', '2024-01-05 00:32:22');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_pesanan`
--

CREATE TABLE `tb_pesanan` (
  `id` int(11) NOT NULL,
  `id_invoice` int(11) NOT NULL,
  `id_brg` int(11) NOT NULL,
  `nama_brg` varchar(50) NOT NULL,
  `jumlah` int(3) NOT NULL,
  `harga` int(10) NOT NULL,
  `pilihan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_pesanan`
--

INSERT INTO `tb_pesanan` (`id`, `id_invoice`, `id_brg`, `nama_brg`, `jumlah`, `harga`, `pilihan`) VALUES
(1, 3, 7, 'Jam Tangan', 1, 400000, ''),
(2, 3, 2, 'Kamera', 1, 5900000, ''),
(3, 4, 1, 'Sepatu', 3, 300000, ''),
(4, 4, 4, 'Laptop Asus', 1, 4700000, ''),
(5, 5, 10, 'Kemeja', 2, 120000, ''),
(6, 6, 7, 'Jam Tangan Pria', 1, 400000, ''),
(7, 6, 15, 'Topi Anak', 1, 20000, ''),
(8, 6, 11, 'Raket', 1, 70000, '');

--
-- Trigger `tb_pesanan`
--
DELIMITER $$
CREATE TRIGGER `pesanan_penjualan` AFTER INSERT ON `tb_pesanan` FOR EACH ROW BEGIN 
	UPDATE tb_barang SET stok = stok-NEW.jumlah
    WHERE id_brg = NEW.id_brg;
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `role_id` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id`, `nama`, `username`, `password`, `role_id`) VALUES
(1, 'admin', 'admin', '123', 1),
(2, 'user', 'user', '123', 2),
(3, 'Cintya Della', 'Cintya', '123', 2);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  ADD PRIMARY KEY (`id_brg`);

--
-- Indeks untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_barang`
--
ALTER TABLE `tb_barang`
  MODIFY `id_brg` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT untuk tabel `tb_invoice`
--
ALTER TABLE `tb_invoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_pesanan`
--
ALTER TABLE `tb_pesanan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
