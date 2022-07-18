-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 18, 2022 at 07:17 AM
-- Server version: 10.1.19-MariaDB
-- PHP Version: 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cs_cacing`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_berita` int(11) NOT NULL,
  `slug_berita` varchar(255) NOT NULL,
  `nama_berita` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `jenis_berita` varchar(20) NOT NULL,
  `status_berita` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_user`, `id_kategori_berita`, `slug_berita`, `nama_berita`, `keterangan`, `jenis_berita`, `status_berita`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(1, 4, 3, 'warung-c-mom', 'Warung C Mom', '<p>&nbsp;</p>\r\n<p>Jual beli makanan eceran</p>', 'UMKM', 'Publish', '013211400_1549269130-Makanan_Ringan_di_Pasar_Petak_Sembilan_Glodok_1.jpg', '2016-08-04 03:52:58', '2022-07-14 15:51:32'),
(2, 4, 3, 'kerajinan-bambu', 'Kerajinan Bambu', '<p>&nbsp;</p>\r\n<p>Segala jenis kerajinan bambu</p>', 'UMKM', 'Publish', 'Kerajinan_Bambu1.jpg', '2016-08-04 04:41:24', '2022-07-14 15:50:29'),
(4, 4, 11, 'tentang', 'Tentang', '<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>\r\n<p>Contrary to popular belief, Lorem Ipsum is not simply random text. It has roots in a piece of classical Latin literature from 45 BC, making it over 2000 years old. Richard McClintock, a Latin professor at Hampden-Sydney College in Virginia, looked up one of the more obscure Latin words, consectetur, from a Lorem Ipsum passage, and going through the cites of the word in classical literature, discovered the undoubtable source. Lorem Ipsum comes from sections 1.10.32 and 1.10.33 of "de Finibus Bonorum et Malorum" (The Extremes of Good and Evil) by Cicero, written in 45 BC. This book is a treatise on the theory of ethics, very popular during the Renaissance. The first line of Lorem Ipsum, "Lorem ipsum dolor sit amet..", comes from a line in section 1.10.32.</p>\r\n<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum et Malorum" by Cicero are also reproduced in their exact original form, accompanied by English versions from the 1914 translation by H. Rackham.</p>', 'Profil', 'Publish', 'download1.png', '2016-09-22 04:30:53', '2022-07-18 04:15:42'),
(6, 4, 11, 'visi-misi', 'Visi Misi', '<p>visi misi adalah</p>', 'Profil', 'Publish', 'download.png', '2022-06-10 14:03:11', '2022-07-18 04:15:18'),
(7, 4, 3, 'warung-e-manna', 'Warung E manna', '<p>Jual Segala jenis roti, bolu dll</p>', 'UMKM', 'Publish', 'Warung_E_Manna1.jpg', '2022-06-11 11:36:52', '2022-07-14 15:49:12'),
(8, 4, 4, 'tas-kepek-gurday-collection', 'Tas Kepek Gurday Collection', '<p>Tas Kepek Gurday Collection</p>', 'UMKM', 'Publish', 'Tas_Kepek_Gorday_Collection1.jpg', '2022-06-11 11:45:34', '2022-07-14 15:47:58'),
(9, 4, 4, 'bonsai-kelapa', 'Bonsai Kelapa', '<p>Bonsai Kelapa</p>', 'UMKM', 'Publish', 'Bonsai_Kelapa1.jpg', '2022-06-11 11:59:49', '2022-07-14 15:47:09'),
(10, 4, 4, 'keripik-dan-sale-pisang-mang-adok', 'Keripik dan Sale Pisang Mang Adok', '<p>Keripik mang adok</p>', 'UMKM', 'Publish', 'Keripik_Pisang1.jpg', '2022-06-12 06:48:23', '2022-07-14 15:01:12'),
(12, 4, 11, 'workshop-1', 'Workshop 1', '<p>berita saat ini&nbsp;ada workshop tentang pengembangan bisnis untukj UMKM yang akan diadakan di desa kertamukti kecamatan tanjungmedar</p>', 'UMKM', 'Publish', 'download.jpg', '2022-06-28 08:03:59', '2022-07-18 04:14:03'),
(13, 4, 8, 'cikur-balap', 'Cikur Balap', '<p>kunyit, kencur, jahe, dll</p>', 'UMKM', 'Publish', 'Rempah1.jpg', '2022-07-14 17:54:33', '2022-07-14 15:54:33'),
(14, 4, 8, 'sale-pisang-ambon', 'Sale Pisang Ambon', '<p>Sale pisang ambon</p>', 'UMKM', 'Publish', 'Sale_Ibu_Yeyet1.jpg', '2022-07-14 17:55:28', '2022-07-14 15:55:28'),
(15, 4, 8, 'yuli-fashion', 'Yuli Fashion', '<p>Jual Beli Pakaian</p>', 'UMKM', 'Publish', 'efced7a4193556d05d4b6ccf068dc477186b6849bb9c9f65739ca040dba28930_02.JPG', '2022-07-14 17:57:16', '2022-07-14 15:57:16'),
(16, 4, 5, 'kasur-bulu', 'Kasur Bulu', '<p>Kasur bulu</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_00_59_09__4__min9.jpg', '2022-07-17 10:13:01', '2022-07-17 08:13:01'),
(17, 4, 5, 'keripik-pisang-dan-singkong-adirasa', 'Keripik Pisang dan Singkong Adirasa', '<p>Keripik Pisang dan Singkong Adirasa</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_00_59_09__3__min0.jpg', '2022-07-17 10:14:25', '2022-07-17 08:14:25'),
(18, 4, 5, 'rengginang-ibu-enes', 'Rengginang Ibu Enes', '<p>Rengginang Ibu Enes</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_03_40_min0.jpg', '2022-07-17 10:15:16', '2022-07-17 08:15:16'),
(19, 4, 10, 'seroja-semprong', 'Seroja Semprong', '<p>Seroja Semprong</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_00_59_09__1__min0.jpg', '2022-07-17 10:16:32', '2022-07-17 08:16:32'),
(20, 4, 10, 'jajanan-sunda-opak-cirendang', 'Jajanan Sunda Opak Cirendang', '<p>Jajanan Sunda Opak Cirendang</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_00_59_09_min3.jpg', '2022-07-17 10:17:53', '2022-07-17 08:17:53'),
(21, 4, 10, 'tengteng-manis-fadillah', 'Tengteng Manis Fadillah', '<p>Tengteng Manis Fadillah</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_00_59_09__2__min2.jpg', '2022-07-17 10:19:18', '2022-07-17 08:19:18'),
(22, 4, 6, 'produk-sukamukti', 'Produk Sukamukti', '<p>Produk Sukamukti</p>\r\n<p>&nbsp;</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_21_26__1_-compress1.jpg', '2022-07-17 10:29:21', '2022-07-17 08:29:21'),
(23, 4, 6, 'gula-aren', 'Gula Aren', '<p>Gula Aren Ibu Asih</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_21_25__1_2.jpg', '2022-07-17 10:29:58', '2022-07-17 08:30:41'),
(24, 4, 6, 'iris-pinang', 'Iris Pinang', '<p>Iris Pinang</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_21_252.jpg', '2022-07-17 10:30:32', '2022-07-17 08:30:32'),
(25, 4, 9, 'pagar-bambu', 'Pagar Bambu', '<p>Pagar Bambu</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_31_474.jpg', '2022-07-17 10:38:26', '2022-07-17 08:38:26'),
(26, 4, 9, 'beras-eceran', 'Beras Eceran', '<p>Beras Eceran Ibu Nuraesih</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_31_489.jpg', '2022-07-17 10:39:14', '2022-07-17 08:39:14'),
(27, 4, 9, 'kayu', 'Kayu', '<p>Hasil Bumi berupa kayu</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_32_249.jpg', '2022-07-17 10:39:53', '2022-07-17 08:39:53'),
(28, 4, 7, 'pakaian-rb', 'Pakaian RB', '<p>Pakaian RB</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_45_122.jpg', '2022-07-17 10:48:50', '2022-07-17 08:48:50'),
(29, 4, 7, 'surabi-parapatan', 'Surabi Parapatan', '<p>Surabi Parapatan</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_45_139.jpg', '2022-07-17 10:49:21', '2022-07-17 08:49:21'),
(30, 4, 7, 'mulia-seblak', 'Mulia Seblak', '<p>Mulia Seblak</p>', 'UMKM', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_45_13__1_9.jpg', '2022-07-17 10:50:16', '2022-07-17 08:50:16');

-- --------------------------------------------------------

--
-- Table structure for table `kategori_berita`
--

CREATE TABLE `kategori_berita` (
  `id_kategori_berita` int(11) NOT NULL,
  `slug_kategori_berita` varchar(255) NOT NULL,
  `nama_kategori_berita` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_berita`
--

INSERT INTO `kategori_berita` (`id_kategori_berita`, `slug_kategori_berita`, `nama_kategori_berita`, `keterangan`, `urutan`) VALUES
(2, 'desa-tanjungwangi', 'Desa Tanjungwangi', 'Tanjungwangi', 2),
(3, 'desa-sukatani', 'Desa Sukatani', 'Sukatani', 3),
(4, 'desa-cikaramas', 'Desa Cikaramas', 'Cikaramas', 4),
(5, 'desa-wargaluyu', 'Desa Wargaluyu', 'Wargaluyu', 5),
(6, 'desa-sukamukti', 'Desa Sukamukti', 'Sukamukti', 6),
(7, 'desa-kamal', 'Desa Kamal', 'Kamal', 7),
(8, 'desa-jingkang', 'Desa Jingkang', 'Jingkang', 8),
(9, 'desa-tanjungmedar', 'Desa Tanjungmedar', 'Tanjungmedar', 9),
(10, 'desa-kertamukti', 'Desa Kertamukti', 'Kertamukti', 10),
(11, 'berita', 'Berita ', 'Berita Terkini', 1);

-- --------------------------------------------------------

--
-- Table structure for table `kategori_produk`
--

CREATE TABLE `kategori_produk` (
  `id_kategori_produk` int(11) NOT NULL,
  `slug_kategori_produk` varchar(255) NOT NULL,
  `nama_kategori_produk` varchar(255) NOT NULL,
  `keterangan` text,
  `urutan` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kategori_produk`
--

INSERT INTO `kategori_produk` (`id_kategori_produk`, `slug_kategori_produk`, `nama_kategori_produk`, `keterangan`, `urutan`) VALUES
(3, 'tanaman', 'Tanaman', '', 3),
(4, 'makanan', 'Makanan', 'Makanan enak, renyah dan gurih', 2),
(5, 'aksesoris', 'Aksesoris', '', 1),
(6, 'hasil-bumi', 'Hasil Bumi', '', 4),
(7, 'kerajinan', 'Kerajinan', '', 5),
(8, 'peternakan', 'Peternakan', '', 6),
(9, 'pertanian', 'Pertanian', '', 7),
(10, 'fashion', 'Fashion', 'Pakaian', 8);

-- --------------------------------------------------------

--
-- Table structure for table `konfigurasi`
--

CREATE TABLE `konfigurasi` (
  `id_konfigurasi` int(11) NOT NULL,
  `home_setting` varchar(20) NOT NULL,
  `namaweb` varchar(200) NOT NULL,
  `tagline` varchar(200) DEFAULT NULL,
  `tentang` varchar(500) DEFAULT NULL,
  `gambar` text,
  `video` varchar(50) DEFAULT NULL,
  `yacht` text NOT NULL,
  `website` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `alamat` varchar(400) DEFAULT NULL,
  `telepon` varchar(50) DEFAULT NULL,
  `hp` varchar(50) DEFAULT NULL,
  `fax` varchar(50) DEFAULT NULL,
  `logo` varchar(255) DEFAULT NULL,
  `icon` varchar(255) DEFAULT NULL,
  `keywords` varchar(400) DEFAULT NULL,
  `metatext` text,
  `facebook` varchar(255) DEFAULT NULL,
  `twitter` varchar(255) DEFAULT NULL,
  `instagram` varchar(255) DEFAULT NULL,
  `google_map` text,
  `judul_1` varchar(200) DEFAULT NULL,
  `pesan_1` varchar(200) DEFAULT NULL,
  `judul_2` varchar(200) DEFAULT NULL,
  `pesan_2` varchar(200) DEFAULT NULL,
  `judul_3` varchar(200) DEFAULT NULL,
  `pesan_3` varchar(200) DEFAULT NULL,
  `judul_4` varchar(200) DEFAULT NULL,
  `pesan_4` varchar(200) DEFAULT NULL,
  `judul_5` varchar(200) DEFAULT NULL,
  `pesan_5` varchar(200) NOT NULL,
  `judul_6` varchar(200) DEFAULT NULL,
  `pesan_6` varchar(200) NOT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `konfigurasi`
--

INSERT INTO `konfigurasi` (`id_konfigurasi`, `home_setting`, `namaweb`, `tagline`, `tentang`, `gambar`, `video`, `yacht`, `website`, `email`, `alamat`, `telepon`, `hp`, `fax`, `logo`, `icon`, `keywords`, `metatext`, `facebook`, `twitter`, `instagram`, `google_map`, `judul_1`, `pesan_1`, `judul_2`, `pesan_2`, `judul_3`, `pesan_3`, `judul_4`, `pesan_4`, `judul_5`, `pesan_5`, `judul_6`, `pesan_6`, `id_user`, `tanggal`) VALUES
(1, 'Image', 'Kecamatan Tanjungmedar', '', '', 'Seven_Seas_Upper_Deck1.jpg', 'fsH_KhUWfho', '<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. In order to build a shared view of what can be improved, to experience a profound paradigm shift, that will indubitably lay the firm foundations for any leading company. Exploitation of core competencies as an essential enabler, exploiting the productive lifecycle by moving executive focus from lag financial indicators to more actionable lead indicators.</p>\r\n<p>An investment program where cash flows exactly match shareholders'' preferred time patterns of consumption defensive reasoning, the doom loop and doom zoom highly motivated participants contributing to a valued-added outcome. In order to build a shared view of what can be improved, in a collaborative, forward-thinking venture brought together through the merging of like minds. Combined with optimal use of human resources, from binary cause and effect to complex patterns, working through a top-down, bottom-up approach. Maximization of shareholder wealth through separation of ownership from management measure the process, not the people. While those at the coal face don''t have sufficient view of the overall goals.</p>\r\n<p>Whenever single-loop learning strategies go wrong, to focus on improvement, not cost, in order to build a shared view of what can be improved. An important ingredient of business process reengineering that will indubitably lay the firm foundations for any leading company the new golden rule gives enormous power to those individuals and units. Whenever single-loop learning strategies go wrong, building a dynamic relationship between the main players. Organizations capable of double-loop learning, through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard.</p>\r\n<p>To ensure that non-operating cash outflows are assessed. An important ingredient of business process reengineering big is no longer impregnable to experience a profound paradigm shift. The new golden rule gives enormous power to those individuals and units, while those at the coal face don''t have sufficient view of the overall goals. Taking full cognizance of organizational learning parameters and principles, working through a top-down, bottom-up approach, an investment program where cash flows exactly match shareholders'' preferred time patterns of consumption. Big is no longer impregnable in a collaborative, forward-thinking venture brought together through the merging of like minds.</p>\r\n<p>Through the adoption of a proactive stance, the astute manager can adopt a position at the vanguard. The three cs - customers, competition and change - have created a new world for business motivating participants and capturing their expectations, organizations capable of double-loop learning. To focus on improvement, not cost, exploiting the productive lifecycle taking full cognizance of organizational learning parameters and principles. Presentation of the process flow should culminate in idea generation, the balanced scorecard, like the executive dashboard, is an essential tool quantitative analysis of all the key ratios has a vital role to play in this.</p>\r\n<p> </p>', 'http://coraltrianglesafaris.com', 'coral@coraltrianglesafaris.com', 'Tanjungmedar, Sumedang', '021-xxxxxxx', '08xxxxxxxxx', ' 021-xxxxxxx', 'Lambang_Kabupaten_Sumedang1.png', 'Lambang_Kabupaten_Sumedang.png', 'Kecamatan Tanjungmedar', '', '', '', '', '<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d126791.77489262832!2d107.79145348958801!3d-6.740189027400501!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2e6928090a48c141%3A0xbf61bc50b39b87d4!2sKec.%20Tanjungmedar%2C%20Kabupaten%20Sumedang%2C%20Jawa%20Barat!5e0!3m2!1sid!2sid!4v1655299171224!5m2!1sid!2sid" width="600" height="450" style="border:0;" allowfullscreen="" loading="lazy" referrerpolicy="no-referrer-when-downgrade"></iframe>', 'MEMBANGUN BUDAYA PERUSAHAAN', 'BUDAYA', 'MEMBANGUN BUDAYA PELAYANAN', 'TEPAT WAKTU', 'MENINGKATKAN PELAYANAN CALL CENTER', 'HEMAT', 'PROGRAM PENDIDIKAN KHUSUS', 'MURAH', 'PROGRAM SEMITAINMENT TRAINING', 'DIJAMIN BISA', 'JUNGGLE SURVIVAL TRAINING', 'YA SUDAHLAH', 3, '2022-06-15 13:29:19');

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `id_produk` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori_produk` int(11) NOT NULL,
  `slug_produk` varchar(255) NOT NULL,
  `nama_produk` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `harga` int(11) NOT NULL,
  `stok` int(11) NOT NULL,
  `satuan` varchar(20) NOT NULL,
  `status_produk` varchar(20) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `tanggal_post` datetime NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`id_produk`, `id_user`, `id_kategori_produk`, `slug_produk`, `nama_produk`, `keterangan`, `harga`, `stok`, `satuan`, `status_produk`, `gambar`, `tanggal_post`, `tanggal`) VALUES
(1, 4, 5, 'tas-kepek-gurday-collection', 'Tas Kepek Gurday Collection', '<p>Tas Kepek Baduy</p>', 75000, 50, 'Pcs', 'Publish', 'Tas_Kepek_Gorday_Collection.jpg', '2016-06-20 04:27:19', '2022-07-14 14:50:53'),
(2, 4, 4, 'warung-e-manna', 'Warung E Manna', '<p>Berbagai Macam Roti</p>', 2000, 50, 'Pcs', 'Publish', 'Warung_E_Manna.jpg', '2016-06-20 04:53:40', '2022-07-14 14:50:44'),
(3, 4, 4, 'keripik-dan-sale-pisang-mang-adok', 'Keripik dan Sale Pisang Mang Adok', '<p>Keripik Mang Adok, Rasanya seperti anda menjadi Ironman. Belilah Keripik Mang Adok Rasanya Amat enak</p>', 35000, 100, 'Gram', 'Publish', 'Keripik_Pisang.jpg', '2016-06-20 04:58:41', '2022-07-14 14:50:27'),
(4, 4, 4, 'sale-pisang-ambon', 'Sale Pisang Ambon', '<p>Sale Pisang terenak se jingkang</p>', 15, 20, 'Pcs', 'Publish', 'Sale_Ibu_Yeyet.jpg', '2022-07-14 15:41:41', '2022-07-14 15:31:10'),
(5, 4, 6, 'cikur-balap', 'Cikur Balap', '<p>Jahe, kencur, kunyit, dll</p>', 6000, 200, 'Kilogram', 'Publish', 'Rempah.jpg', '2022-07-14 15:43:44', '2022-07-14 15:27:53'),
(6, 4, 7, 'kerajinan-bambu', 'Kerajinan Bambu', '<p>berbagai macam kerajinan</p>', 75000, 15, 'Pcs', 'Publish', 'Kerajinan_Bambu.jpg', '2022-07-14 15:44:55', '2022-07-14 14:48:50'),
(7, 4, 6, 'hasil-bumi-berkah', 'Hasil Bumi Berkah', '<p>Semangka</p>', 14000, 1000, 'Kilogram', 'Publish', 'ddebb093e0842283feab677b991b2d1cabc7aed6cb3b6ce117d32de4eac4450d_0.JPG', '2022-07-14 17:17:39', '2022-07-14 15:17:39'),
(8, 4, 8, 'jual-beli-ternak-bapak-ape', 'Jual Beli Ternak Bapak Ape', '<p>Kambing, ayam, bebek</p>', 2500000, 10, 'Ekor', 'Publish', '4ee0ac7a20b5112b886a6c6b02c04fb6393a1832e6045f75e1992e30b262abc9_0.JPG', '2022-07-14 17:20:12', '2022-07-14 15:20:12'),
(9, 4, 9, 'barokah-tani', 'Barokah Tani', '<p>Buah pisang dan lain-lain</p>', 50000, 100, 'Kilogram', 'Publish', '5c93c73716eed3b38681e0d78505178cfd3a5e59df4f6fa00b821d67fd10007f_0.JPG', '2022-07-14 17:22:25', '2022-07-14 15:22:25'),
(10, 4, 3, 'bonsai-kelapa', 'Bonsai Kelapa', '<p>bonsai kelapa</p>', 350000, 20, 'Pcs', 'Publish', 'Bonsai_Kelapa.jpg', '2022-07-14 17:25:11', '2022-07-14 15:35:41'),
(11, 4, 10, 'yuli-fashion', 'Yuli Fashion', '<p>Jual Beli Pakaian</p>', 50000, 200, 'Pcs', 'Publish', 'efced7a4193556d05d4b6ccf068dc477186b6849bb9c9f65739ca040dba28930_0.JPG', '2022-07-14 17:35:23', '2022-07-14 15:35:54'),
(12, 4, 4, 'warung-c-mom', 'Warung C Mom', '<p>Jual Beli Makanan Eceran</p>', 500, 200, 'Meter', 'Publish', '013211400_1549269130-Makanan_Ringan_di_Pasar_Petak_Sembilan_Glodok_.jpg', '2022-07-14 17:44:32', '2022-07-14 15:45:53'),
(13, 4, 4, 'mulia-seblak', 'Mulia Seblak', '<p>Mulia Seblak</p>', 5000, 50, 'Meter', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_45_13__1_91.jpg', '2022-07-17 10:55:46', '2022-07-17 08:55:46'),
(14, 4, 10, 'pakaian-rb', 'Pakaian RB', '<p>Pakaian RB</p>', 85000, 100, 'Meter', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_45_1221.jpg', '2022-07-17 10:56:36', '2022-07-17 08:56:36'),
(15, 4, 4, 'surabi-parapatan', 'Surabi Parapatan', '<p>Surabi Parapatan</p>', 1000, 50, 'Meter', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_45_1391.jpg', '2022-07-17 10:57:10', '2022-07-17 08:57:10'),
(16, 4, 4, 'gula-aren', 'Gula Aren', '<p>Gula Aren</p>', 20000, 8, 'Kilogram', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_21_25__1_21.jpg', '2022-07-17 10:58:38', '2022-07-17 08:58:47'),
(17, 4, 4, 'produk-sukamukti', 'Produk Sukamukti', '<p>Produk Sukamukti</p>', 35000, 25, 'Meter', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_21_26__1_-compress11.jpg', '2022-07-17 10:59:41', '2022-07-17 08:59:41'),
(18, 4, 6, 'iris-pinang', 'Iris Pinang', '<p>Iris Pinang sebagai pemasok ke papua</p>', 18000, 50000, 'Kilogram', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_21_2521.jpg', '2022-07-17 11:00:53', '2022-07-17 09:00:53'),
(19, 4, 7, 'pagar-bambu', 'Pagar Bambu', '<p>Pagar Bambu pemasok ke daerah Purwakarta</p>', 15000, 20000, 'Paket', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_31_4741.jpg', '2022-07-17 11:02:18', '2022-07-17 09:02:49'),
(20, 4, 6, 'kayu', 'Kayu', '<p>kayu ini pemasok ke daerah bandung dan kuningan</p>', 1300000, 50000, 'Kilogram', 'Publish', 'WhatsApp_Image_2022_07_17_at_01_32_2491.jpg', '2022-07-17 11:03:46', '2022-07-17 09:03:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(64) NOT NULL,
  `akses_level` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id_user`, `nama`, `email`, `username`, `password`, `akses_level`) VALUES
(4, 'Yoga Widi Anggara', 'yogayoga@gmail.com', 'yoga', 'yoga', 'Admin'),
(5, 'admin', 'admin@gmail.com', 'admin', 'admin', 'Admin');

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(11) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `posisi` varchar(20) NOT NULL,
  `keterangan` text,
  `video` varchar(200) NOT NULL,
  `urutan` int(11) DEFAULT NULL,
  `id_user` int(11) NOT NULL,
  `tanggal` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `judul`, `posisi`, `keterangan`, `video`, `urutan`, `id_user`, `tanggal`) VALUES
(1, 'Video Tutorial', 'Homepage', NULL, 'dTA3-GxQyks', 1, 4, '2022-07-17 09:06:30'),
(2, 'Video tutorial', 'Homepage', NULL, 'uNdvaTZiOHo', 1, 1, '2016-10-13 02:14:46');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  ADD PRIMARY KEY (`id_kategori_berita`);

--
-- Indexes for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  ADD PRIMARY KEY (`id_kategori_produk`);

--
-- Indexes for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  ADD PRIMARY KEY (`id_konfigurasi`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`id_produk`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `kategori_berita`
--
ALTER TABLE `kategori_berita`
  MODIFY `id_kategori_berita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `kategori_produk`
--
ALTER TABLE `kategori_produk`
  MODIFY `id_kategori_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `konfigurasi`
--
ALTER TABLE `konfigurasi`
  MODIFY `id_konfigurasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `id_produk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
