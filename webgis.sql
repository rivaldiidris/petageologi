-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 25 Sep 2020 pada 02.52
-- Versi server: 10.1.36-MariaDB
-- Versi PHP: 7.2.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `maps`
--

CREATE TABLE `maps` (
  `id` int(11) NOT NULL,
  `lembar_peta` varchar(100) NOT NULL,
  `skala` varchar(255) NOT NULL,
  `tahun` int(11) NOT NULL,
  `penyusun` varchar(255) NOT NULL,
  `penerbit` varchar(255) NOT NULL,
  `img_tif` varchar(255) NOT NULL,
  `img` varchar(255) NOT NULL,
  `a` decimal(11,8) NOT NULL,
  `b` decimal(11,8) NOT NULL,
  `c` decimal(11,8) NOT NULL,
  `d` decimal(11,8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `maps`
--

INSERT INTO `maps` (`id`, `lembar_peta`, `skala`, `tahun`, `penyusun`, `penerbit`, `img_tif`, `img`, `a`, `b`, `c`, `d`) VALUES
(1, 'Banda Aceh 0421, 0521.', '1:250.000', 2001, 'J.D Bennet, N.R Cameron, A. Djunuddin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'aceh.tif', 'aceh.jpg', '5.00000000', '95.00000000', '6.00000000', '96.15000000'),
(2, 'Lhokseumawe, 0521,0621.', '1:250.000', 1981, 'W. Keats, N.R. Cameron, A. Djunuddin, S.A. Ghazali, H. Harahap, W. Kartawa, H. Ngabito, N.M.S, Rock, S.J, Thompson, & R. Handoyo', 'Pusan Penelitian dan Pengenmbangan Geologi', 'lhokseumawe.tif', 'lhoksumawe.jpg', '5.00000000', '96.15000000', '5.45000000', '97.45000000'),
(3, 'Calang, 0420', '1:250.000', 1981, 'J.D Bennet, D.McC. Bridge, N.R. Cameron, A. Djunuddin, S.A. Ghazali, D.H. Jeffery, W. Kartawa, W. Keats, N.M.S. Rock, S.J. Thompson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'calang.tif', 'calang.jpg', '4.00000000', '95.00000000', '5.00000000', '96.00000000'),
(4, 'Takengon 0520', '1:250.000', 1983, 'N.R. Cameron, J.D. Bennett, D.McC. Bridge, M.C.G. Clarke, A. Djanuddin, S.A. Ghazali, H. Harahap, D.H. Jeffery, W. Kartawa, W. Keats, H. Ngabito, N.M.S. Rocks, S.J. Thompson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'takengon.tif', 'takengon.jpg', '4.00000000', '96.00000000', '5.00000000', '97.30000000'),
(5, 'Langsa 0620', '1:250.000', 1981, 'N.R. Cameron, A. Djunuddin, S.A. Ghazali, H. Harahap, W. Keats, W. Kartawa, Miswar, H. Ngabito, N.M.S. Rock, R. Whandoyo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'langsa.tif', 'langsa.jpg', '4.00000000', '97.30000000', '5.00000000', '98.45000000'),
(6, 'Tapaktuan, 0519', '1:250.000', 1982, 'N.R. Cameron, J.D. Bennett, D.McC. Bridge, A. Djanuddin, S.A. Ghazali, H. Harahap, D.H. Jeffery, W. Kartawa, W. Keats,  N.M.S. Rocks, R. Whandoyo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tapaktuan.tif', 'tapaktuan.jpg', '3.00000000', '96.00000000', '4.00000000', '97.30000000'),
(7, 'Medan 0619', '1:250.000', 1982, 'N.R. Cameron, J.A. Aspden, D.McC. Bridge, A. Djunuddin, S.A. Ghazali, H. Harahap, Hariwidjaja, S., Johari, W. Karawa, W. Keats, H. Ngabito, N.M.S. Rock, R. Whandoyo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'medan.tif', 'medan.jpg', '3.00000000', '97.30000000', '4.00000000', '99.00000000'),
(8, 'Tebing Tinggi 0719', '1:250.000', 1981, 'N.R. Cameron, J.A. Aspden, Miswar & H.H. Syah', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tebing tinggi.tif', 'tebing tinggi.jpg', '3.00000000', '99.00000000', '4.00000000', '100.00000000'),
(9, 'Sinabang, 0418, 0518', '1:250.000', 1994, 'M. Endharto & Sukido', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sinabang.tif', 'sinabang.jpg', '2.00000000', '95.40000000', '3.00000000', '97.00000000'),
(10, 'Sidikalang 0518 - 0618', '1:250.000', 1982, 'D.T. Aldiss, R. Whandoyo, S.A. Ghazali & Kusyono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sidikalang.tif', 'sidikalang.jpg', '2.00000000', '97.00000000', '3.00000000', '99.00000000'),
(11, 'Pematang Siantar 0718', '1:250.000', 1982, 'M.C.G. Clarke, S.A. Ghazali, H. Harahap, Kusyono & B. Stephenson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pematang siantar.tif', 'pematang siantar.jpg', '2.00000000', '99.00000000', '3.00000000', '100.30000000'),
(12, 'Nias 0517, 0617, 0516, 0616', '1:250.000', 1994, 'B.Djamal, W. Gunawan, T.O. Simandjutak & N. Ratman', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'nias.tif', 'nias.jpg', '0.45000000', '97.00000000', '1.60000000', '98.00000000'),
(13, 'Padangsidempuan & Sibolga, 0617, 0717', '1:250.000', 1982, 'J.A. Aspden, W. Kartawa, D.T. Aldiss, A. Djunuddin, D. Diatma, M.C.G. Clarkem R. Whandoyo, H. Harahap', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'padang siampuan.tif', 'padang siampoang.jpg', '1.00000000', '98.30000000', '2.00000000', '100.30000000'),
(14, 'Dumai & Bagansiapiapi 0817, 0818', '1:250.000', 1982, 'N.R. Cameron, W. Kartawa & S.J. Thompson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'dumai.tif', 'dumai.jpg', '1.00000000', '100.30000000', '2.40000000', '102.00000000'),
(15, 'Bengkalis, 0917', '1:250.000', 1982, 'N.R. Cameron, S.A. Ghazali & S.J. Thompson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bengkalis.tif', 'bengkalis.jpg', '1.00000000', '102.00000000', '1.60000000', '103.00000000'),
(16, 'Lubuk Sikaping 0716', '1:250.000', 1983, 'S. Rock, D.T. Aldiss, J.A. Aspden, M.C.G. Clarke, A. Djunuddin, W. Kartawa, Miswar, S.J. Thompson, & R. Whandoyo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'lubuk sikaping.tif', 'lubuk sikaping.jpg', '0.00000000', '99.00000000', '1.00000000', '100.30000000'),
(17, 'Pekanbaru 0816', '1:250.000', 1982, 'M.C.G. Clarke, W. Kartawa, A. Djunuddin, E. Suganda & M. Bagdja', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pekanbaru.tif', 'pekanbaru.jpg', '0.00000000', '100.30000000', '1.00000000', '102.00000000'),
(18, 'Tanjung Pinang, 1016, 1017', '1:250.000', 1994, 'Kusnama, K. Sutisna, T.C. Amin, S. Koesoemadinata, Sukardi & B. Hermanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', '', 'tanjung pinang.jpg', '0.00000000', '103.30000000', '1.30000000', '105.00000000'),
(19, 'Siak Sri Inderapura & Tanjungpinang, 0916, 1016', '1:250.000', 1982, 'N.R. Cameron, S.A. Ghazali & S.J. Thompson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'siak sri.tif', 'siak sri.jpg', '0.00000000', '102.00000000', '1.00000000', '104.00000000'),
(20, 'Telo 0615, 0616', '1:250.000', 1995, 'D.S. Nas & J.B. Supandjono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'telo.tif', 'telo.jpg', '-0.75000000', '97.30000000', '0.25000000', '99.00000000'),
(21, 'Padang, 0715', '1:250.000', 1996, 'Kastowo, Gerhard W. Leo, S. Gafoer & T.C. Amin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'padang.tif', 'padang.jpg', '-1.00000000', '99.05000000', '0.00000000', '100.30000000'),
(22, 'Solok, 0815', '1:250.000', 1995, 'P.H. Silitonga & Kastowo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'solok.tif', 'solok.jpg', '-1.00000000', '100.30000000', '0.00000000', '102.00000000'),
(23, 'Rengat 0915', '1:250.000', 1994, 'N. Suwarna, T. Budhitrisna, S. Santosa & S. Andi Mangga', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'rengat.tif', 'rengat.jpg', '-1.00000000', '102.00000000', '0.00000000', '103.30000000'),
(24, 'Dabo, 1015', '1:250.000', 1994, 'K. Sutisna, G. Burhan & B. Hermanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'dabo.tif', 'dabo.jpg', '-1.00000000', '103.30000000', '0.00000000', '105.00000000'),
(25, 'Suberut, 0614, 0615, & 0714', '1:250.000', 1994, 'S. Andi Mangga, G. Burhan, Sukardi & E. Suryanila', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'suberut.tif', 'suberut.jpg', '-2.00000000', '98.30000000', '-0.75000000', '99.45000000'),
(26, 'Painan - Timurlaut Muarasiberut, 0814 - 0714', '1:250.000', 1996, 'H.M.D. Rosidi, S. Tjokkrosapoetro, B. Pendowo, S. Gafoer & Suharsono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'painan.tif', 'painan.jpg', '-2.00000000', '100.00000000', '-1.00000000', '102.00000000'),
(27, 'Muarabungo 0914', '1:250.000', 1994, 'T.O. Simandjutak, T. Budhistrisna, Surono, S. Gafoer & T.C. Amin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'muarabungo.tif', 'muarabungo.jpg', '-2.00000000', '102.00000000', '-1.00000000', '103.30000000'),
(28, 'Jambi 1014', '1:250.000', 1993, 'S. Andi Mangga, S. Santosa & B. Hermanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jambi.tif', 'jambi.jpg', '-2.00000000', '103.30000000', '-1.00000000', '105.00000000'),
(29, 'Bangka Utara, 1114 & 1113', '1:250.000', 1994, 'S.Andi Mangga & B.Djamal', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bangka utara.tif', 'bangka utara.jpg', '-2.20000000', '105.00000000', '-1.20000000', '106.30000000'),
(30, 'Pagai & Sipora 0712, 0713, 0812 & 0813', '1:250.000', 1990, 'T. Budhitrisna & S. Andi Mangga', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pagai.tif', 'pagai.jpg', '-3.45000000', '99.30000000', '-1.90000000', '100.60000000'),
(31, 'Sungai Penuh & Ketaun 0813 - 0812', '1:250.000', 1992, 'Kusnama, R. Pardede, S. Andi Mangga & Sidarto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sungai penuh.tif', 'sungai penuh.jpg', '-4.00000000', '100.60000000', '-2.00000000', '102.00000000'),
(32, 'Sarolangun (Bangko) 0913', '1:250.000', 1992, 'N. Suwarna, Suharsono, S.Gafoer, T.C. Amin, Kusnama & B. Hermanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bangko sarolangun.tif', 'bangko.jpg', '-3.00000000', '102.00000000', '-2.00000000', '103.30000000'),
(33, 'Palembang 1013', '1:250.000', 1995, 'S. Gafoer, G. Burhan & J. Purnomo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'palembang.tif', 'palembang.jpg', '-3.00000000', '103.30000000', '-2.00000000', '105.00000000'),
(34, 'Bangka Selatan, 1112, 1113,1213', '1:250.000', 1995, 'U.Margono, RJB.Supandjono & E. Partoyo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bangka selatan.tif', 'bangka selatan.jpg', '-3.30000000', '105.00000000', '-2.20000000', '107.00000000'),
(35, 'Belitung 1212, 1213, 1312, 1313', '1:250.000', 1995, 'Baharuddin & Sidarto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'belitung.tif', 'belitung.jpg', '-3.40000000', '107.00000000', '-2.30000000', '108.40000000'),
(36, 'Bengkulu 0912', '1:250.000', 1992, 'S.Gafoer, T.C. Amin & R. Pardede', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bengkulu.tif', 'bengkulu.jpg', '-4.00000000', '102.00000000', '-3.00000000', '103.30000000'),
(37, 'Lahat 1012', '1:250.000', 1986, 'S. Gafoer, T. Cobrie & J. Purnomo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'lahat.tif', 'lahat.jpg', '-4.00000000', '103.30000000', '-3.00000000', '105.00000000'),
(38, 'Tulung Selapan 1112', '1:250.000', 1993, 'S. Andi Mangga, Sukardi, & Sidarto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tulung selapan.tif', 'tulung selapan.jpg', '-4.00000000', '105.00000000', '-3.00000000', '106.30000000'),
(39, 'Manna & Enggano 0911 & 0910', '1:250.000', 1993, 'T.C. Amin, Kusnawa, E. Rustandi & S. Gafoer', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'manna enggano.tif', 'manna.jpg', '-5.60000000', '102.00000000', '-4.00000000', '103.30000000'),
(40, 'Baturaja 1011', '1:250.000', 1993, 'S. Gafoer, T.C. Amin & R. Parded', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'baturaja.tif', 'baturaj.jpg', '-5.00000000', '103.30000000', '-4.00000000', '105.00000000'),
(41, 'Menggala 1111', '1:250.000', 1993, 'G. Burhan, W. Gunawan, & Y. Noya', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'menggala.tif', 'menggala.jpg', '-5.00000000', '105.00000000', '-4.00000000', '106.30000000'),
(42, 'Kota Agung 1010', '1:250.000', 1993, 'T.C. Amin, Sidarto, S. Santosa & W. Gunawan', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kota agung.tif', 'kota agung.jpg', '-6.00000000', '103.30000000', '-5.00000000', '105.00000000'),
(43, 'Tanjung Karang 1110', '1:250.000', 1993, 'S. Andi Mangga, Amirudin, T. Suwarti, S. Gafoer & Sidarto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tanjung karang.tif', 'tanjung karang.jpg', '-5.90000000', '105.00000000', '-5.00000000', '105.90000000'),
(44, 'Talaud 2519, 2520', '1:250.000', 1986, 'R. Sukamto, & N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'talaud.tif', 'talaud.jpg', '3.30000000', '126.30000000', '5.00000000', '127.30000000'),
(45, 'Sangihe & Siau 2419, 2418', '1:250.000', 1994, 'Hanang Samodra', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sangihe.tif', 'sangihe.jpg', '2.30000000', '125.00000000', '4.00000000', '126.00000000'),
(46, 'Manado 2416, 2417', '1:250.000', 1997, 'A.C. Effendi & S.S. Bawono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'manado.tif', 'manado.jpg', '0.40000000', '124.45000000', '2.00000000', '125.33000000'),
(47, 'Kotamobagu 2316, 2317', '1:250.000', 1997, 'T. Apandi & S. Bachri', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kotamubagu.tif', 'kotamubagu.jpg', '0.15000000', '123.00000000', '1.25000000', '124.45000000'),
(48, 'Tilamuta 2216, 2217', '1:250.000', 1993, 'S. Bachri, Sukido, & N. Ratman', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tilamuta.tif', 'tilamuta.jpg', '0.15000000', '121.50000000', '1.20000000', '123.00000000'),
(49, 'Toli Toli 2016, 2116, 2117', '1:250.000', 1976, 'N. Ratman', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'toli.tif', 'toli.jpg', '0.00000000', '119.45000000', '1.45000000', '121.50000000'),
(50, 'Palu 2015, 2115', '1:250.000', 1973, 'RAB. Sukamto, H. Sumadirjdja, T. Suptandar, S. Hardjoprawiro, & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'palu tinjau.tif', 'palu.jpg', '-1.00000000', '119.22000000', '0.00000000', '120.45000000'),
(51, 'Luwuk 2215, 2315', '1:250.000', 1993, 'E. Rusmana, & T.O. Simandjutak', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'luwuk.tif', 'luwuk.jpg', '-1.00000000', '121.22000000', '0.00000000', '123.60000000'),
(52, 'Pasangkayu 2014', '1:250.000', 1993, 'Sukido, D. Sukarna, & K. Sutisna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pasangkayu.tif', 'pasangkayu.jpg', '-2.00000000', '118.30000000', '-1.00000000', '120.00000000'),
(53, 'Poso 2114', '1:250.000', 1997, 'T.O. Simandjutak, Surono, & J.B. Supandjono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'poso.tif', 'poso.jpg', '-2.00000000', '120.00000000', '-1.00000000', '121.30000000'),
(54, 'Batui 2214', '1:250.000', 1993, 'Surono, T.O Simandjuntak, R.L. Situmorang & Sukido', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'batui.tif', 'batui.jpg', '-2.00000000', '121.30000000', '-1.00000000', '123.00000000'),
(55, 'Mamuju 2013', '1:250.000', 1993, 'N. Ratman & S. Atmawinata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'mamuju.tif', 'mamuju.jpg', '-3.00000000', '118.30000000', '-2.00000000', '120.00000000'),
(56, 'Malili 2113', '1:250.000', 1991, 'T.O. Simandjutak, E. Rusmana, & J.B. Supandjono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'mamili.tif', 'malili.jpg', '-3.00000000', '120.00000000', '-2.00000000', '121.30000000'),
(57, 'Bungku 2213', '1:250.000', 1993, 'T.O. Simandjutak, E. Rusmana, J.B. Supandjono, A. Koswara', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bangku.tif', 'bungku.jpg', '-3.00000000', '121.30000000', '-2.00000000', '123.00000000'),
(58, 'Majene Palopo', '1:250.000', 1998, 'Djuri, Sudjatmiko, S. Bachri, & Sukido', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'majene palopo.tif', 'majene.jpg', '-4.00000000', '118.70000000', '-3.00000000', '120.60000000'),
(59, 'Lasusa Kendari 2112, 2212', '1:250.000', 1993, 'E. Rusmana, Sukido, D. Sukarna, E. Haryono, & T.O. Simandjutak', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'lasusa kendari.tif', 'lasusa.jpg', '-4.00000000', '120.75000000', '-3.00000000', '123.25000000'),
(60, 'Pangkajene & Watompo 2011, 2111', '1:250.000', 1982, 'RAB. Sukamto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pangkajane watompo.tif', 'pangkajene.jpg', '-5.00000000', '119.15000000', '-4.00000000', '120.45000000'),
(61, 'Kolaka 2111, 2211', '1:250.000', 1993, 'T.O. Simandjutak, Surono, & Sukido', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kolaka.tif', 'kolaka.jpg', '-5.60000000', '121.15000000', '-4.00000000', '123.00000000'),
(62, 'Ujung Pandang, Benteng, sinjai, 2010, 2109, 2110', '1:250.000', 1982, 'RAB. Sukamto & SAM Supriatna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ujung pandang.tif', 'ujung pandang.jpg', '-6.60000000', '119.00000000', '-5.00000000', '120.65000000'),
(63, 'Buton 2210, 2211, 2310, 2311', '1:250.000', 1995, 'N. Sikumbang, P. Sanyoto, R.J.B. Supandjono & S. Gafoer', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'buton.tif', 'buton.jpg', '0.00000000', '0.00000000', '0.00000000', '0.00000000'),
(64, 'Tukang Besi 2310, 2311, 2312, 2211, 2212', '1:250.000', 1994, 'A. Koswara & D. Sukarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tukang besi.tif', 'tukangbesi.jpg', '-6.07000000', '123.00000000', '-5.07000000', '124.30000000'),
(65, 'Bonerate 2108, 2208, 2109', '1:250.000', 1994, 'A. Koswara, H. Pangabean, Baharuddin & D. Sukarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bonerate.tif', 'bonerate.jpg', '-7.60000000', '120.15000000', '-6.35000000', '122.00000000'),
(66, 'Bali 1707, 1807', '1:250.000', 1998, 'M.M. Purbo Hadiwidjojo, ', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bali.tif', 'bali.jpg', '-8.90000000', '114.40000000', '-8.00000000', '115.80000000'),
(67, 'Lombok 1807', '1:250.000', 1994, 'S. Andi Mangga, S. Atmawinata, B. Hermanto, B. Setyogroho, & T.C. Amin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'lombok.tif', 'lombok.jpg', '-9.00000000', '115.80000000', '-8.00000000', '116.75000000'),
(68, 'Sumbawa', '1:250.000', 1998, 'A. Sudrajat, S. Andi Mangga, & N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sumbawa.tif', 'sumbawa.jpg', '-9.15000000', '116.75000000', '-8.00000000', '118.40000000'),
(69, 'Komodo 2007', '1:250.000', 1978, 'N. Ratman & Aswan Yasin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'komodo.tif', 'komodo.jpg', '-9.15000000', '118.40000000', '-8.00000000', '120.00000000'),
(70, 'Ruteng 2107', '1:250.000', 1994, 'S. Koesoemadinata, N. Noya, & D. Kadarisman', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ruteng.tif', 'ruteng.jpg', '-9.15000000', '120.00000000', '-8.00000000', '121.45000000'),
(71, 'Ende 2207, 2207, 2307, 2308', '1:250.000', 1989, 'N. Suwarna, S. Santosa & S. Koesoemadinata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ende.tif', 'ende.jpg', '-9.15000000', '121.45000000', '-8.00000000', '123.00000000'),
(72, 'Lomblen 2307', '1:250.000', 1989, 'S. Koesoemadinata & N. Noya', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'lomblen.tif', 'lomblen.jpg', '-9.15000000', '123.00000000', '-8.00000000', '124.30000000'),
(73, 'Wetar Barat 2407 & 2408', '1:250.000', 1997, 'Y. Noya, G. Burhan, S. Koesoemadinata, & S.A. Mangga', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'wetar barat.tif', 'wetar barat.jpg', '-8.50000000', '124.30000000', '-7.65000000', '126.00000000'),
(74, 'Wetar Timur 2508', '1:250.000', 1997, 'G. Burhan, S. Koesoemadinata, D. Kadarisman, S.A. Mangga, & Y. Noya', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'wetar timur.tif', 'wetar timur.jpg', '-8.15000000', '126.00000000', '-7.15000000', '127.00000000'),
(75, 'Dili 2406, 2407', '1:250.000', 1994, 'S. Bachri & R.L. Situmorang', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'dili.tif', 'dili.jpg', '-9.30000000', '125.00000000', '-8.25000000', '126.00000000'),
(76, 'Baucau 2507', '1:250.000', 1995, 'E. Partoyo, B. Hermanto & S. Bachri', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'baucau.tif', 'baucau.jpg', '-9.15000000', '126.00000000', '-8.15000000', '127.37000000'),
(77, 'Waikabubak 2006, Waingapu 2106, Sumba 2105', '1:250.000', 1993, 'A.C. Effendi & T. Apandi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'waika.tif', 'waika.jpg', '-10.35000000', '118.90000000', '-9.15000000', '120.90000000'),
(78, 'Kupang 2205, 2305, 2306', '1:250.000', 1996, 'H.M.D. Rosidi, S. Tjokkrosapoetro, & S. Gafoer', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kupang.tif', 'kupang.jpg', '-11.00000000', '121.30000000', '-9.15000000', '124.00000000'),
(79, 'Atmabua 2305, 2306, 2405, 2407', '1:250.000', 1996, 'K. Suwitodirjo & S. Tjokrosapoetro', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'atmabua.tif', 'atmabua.jpg', '-10.30000000', '124.00000000', '-8.45000000', '125.15000000'),
(80, 'Morotai 2517, 2617, 2618', '1:250.000', 1980, 'Sam Supriatna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'morotai.tif', 'morotai.jpg', '1.00000000', '127.20000000', '2.75000000', '128.80000000'),
(81, 'Ternate 2516, 2616', '1:250.000', 1980, 'T. Apandi & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ternate.tif', 'ternate.jpg', '0.00000000', '127.00000000', '1.00000000', '129.00000000'),
(82, 'Bacan 2515, 2615', '1:250.000', 1980, 'Aswan Yasin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bacan.tif', 'bacan.jpg', '-1.00000000', '127.00000000', '0.00000000', '128.45000000'),
(83, 'Banggai 2313, 2314, 2413, 2414', '1:250.000', 1993, 'J.B. Supandjono & E. Haryono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'banggai.tif', 'banggai.jpg', '-2.15000000', '123.00000000', '-1.00000000', '125.00000000'),
(84, 'Sanana 2413, 2414, 2513, 2514', '1:250.000', 1993, 'Surono, & D. Sukarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sanana.tif', 'sanana.jpg', '-2.60000000', '125.00000000', '-1.30000000', '126.60000000'),
(85, 'Obi 2614', '1:250.000', 1994, 'D. Sudana, A. Yasin, & K. Sutisna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'obi.tif', 'obi.jpg', '-2.00000000', '127.00000000', '-1.00000000', '128.30000000'),
(86, 'Buru 2512', '1:250.000', 1993, 'S. Tjokrosapoetro, T. Bushitrisna, & E. Rusmana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'buru.tif', 'buru.jpg', '-4.00000000', '125.90000000', '-3.00000000', '127.30000000'),
(87, 'Ambon 2612, 2613', '1:250.000', 1993, 'S. Tjokrosapoetro, E. Rusmana, & A. Achdan', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ambon.tif', 'ambon.jpg', '-3.85000000', '127.30000000', '-2.80000000', '128.45000000'),
(88, 'Masohi 2612, 2613, 27,12, 2713', '1:250.000', 1993, 'S. Tjokrosapoetro, E. Rusmana, K. Suwitodirdjo, H. Z. Abidin & A. Achdan', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'masohi.tif', 'masohi.jpg', '-3.75000000', '128.45000000', '-2.70000000', '130.00000000'),
(89, 'Bula 2712, 2713, 2811, 2812, 2813', '1:250.000', 1993, 'S. Gafoer, K. Suwitodirdjo, & Suharsono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bula.tif', 'bula.jpg', '-4.90000000', '130.00000000', '-2.70000000', '131.90000000'),
(90, 'Kai & Tayandu 2810, 2910', '1:250.000', 1994, 'A. Achdan & T. Turkandi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kai.tif', 'kai.jpg', '-6.15000000', '131.75000000', '-5.00000000', '133.25000000'),
(91, 'Aru 3010, 3009, 3008', '1:250.000', 1992, 'U. Hartono & N. Ratman', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'aru.tif', 'aru.jpg', '-7.00000000', '134.00000000', '-5.15000000', '135.00000000'),
(92, 'Moa & Damar 2607, 2707, 2708', '1:250.000', 1994, 'D.A. Agustiyanto, M. Suparman, E. Partoyo, & D. Sukarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'moa.tif', 'moa.jpg', '-8.45000000', '127.60000000', '-7.19000000', '128.36000000'),
(93, 'Babar 2607, 2707, 2708', '1:250.000', 1994, 'D. Agustiyanto, M. Suparman, A. Achdan, & D. Sukarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'babar.tif', 'babar.jpg', '-8.20000000', '129.00000000', '-7.30000000', '130.30000000'),
(94, 'Kepulauan Tanimbar 2807, 2808, 2809, 2907, 2909', '1:250.000', 1989, 'Sukardi & Sutrisno', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tanimbar.tif', 'tanimbar.jpg', '-8.40000000', '130.30000000', '-6.55000000', '132.05000000'),
(95, 'Waigeo 2715, 2716, 2815, 1816', '1:250.000', 1995, 'S. Supriatna, A.S. Hakim & T. Apandi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'waigeo.tif', 'waigeo.jpg', '-0.60000000', '129.50000000', '0.27000000', '131.50000000'),
(96, 'Mar', '1:250.000', 1989, 'U. Hartono, CH. Amri, & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'mar.tif', 'mar.jpg', '-1.00000000', '132.00000000', '0.00000000', '133.30000000'),
(97, 'Manokwari', '1:250.000', 1989, 'N. Ratman, G.P. Robinson, & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'manokwari.tif', 'manokwari.jpg', '-1.15000000', '133.30000000', '-0.20000000', '135.00000000'),
(98, 'Biak 3114, 3115, 3214, 3215', '1:250.000', 1981, 'M. Masria, N. Ratman, & K. Suwitodirdjo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'biak.tif', 'biak.jpg', '-1.40000000', '135.30000000', '-0.45000000', '136.75000000'),
(99, 'Sorong', '1:250.000', 1990, 'CH. Amri, P. Sanyoto, B. Hamonangan, S. Supriatna, W. Simanjutak, & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sorong.tif', 'sorong.jpg', '-1.35000000', '129.35000000', '-0.30000000', '132.00000000'),
(100, 'Taminabuan', '1:250.000', 1989, 'U. Sukanta & C.J. Piagram', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'taminabuan.tif', 'taminabuan.jpg', '-2.00000000', '131.30000000', '-1.00000000', '133.00000000'),
(101, 'Ransiki', '1:250.000', 1989, 'S. Atmawinata, A.S. Hakim, & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ransiki.tif', 'ransiki.jpg', '-2.00000000', '133.00000000', '-1.00000000', '134.30000000'),
(102, 'Yapen', '1:250.000', 1989, 'S. Atmawinata, N. Ratman, & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'yapen.tif', 'yapen.jpg', '-2.00000000', '135.00000000', '-1.30000000', '137.05000000'),
(103, 'Misool 2713, 2714, 2813, 2814', '1:250.000', 1989, 'E. Rusmana, U. Hartono, & C.J. Pigram', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'misool.tif', 'misool.jpg', '-2.30000000', '129.30000000', '-1.30000000', '131.00000000'),
(104, 'Fak Fak', '1:250.000', 1990, 'M. Suparman & G.P. Robinson', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'fak fak.tif', 'fak fak.jpg', '-3.00000000', '131.80000000', '-2.00000000', '133.00000000'),
(105, 'Steenkool', '1:250.000', 1990, 'S.L Tobing, A. Achdan, G.P. Robinso, & R.J. Ryburn', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'steen.tif', 'stenkool.jpg', '-3.00000000', '133.00000000', '-2.00000000', '135.00000000'),
(106, 'Waren 3113', '1:250.000', 1994, 'A.S. Hakim & B.H. Harahap', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'warren.tif', 'waren.jpg', '-3.00000000', '135.00000000', '-2.00000000', '136.30000000'),
(107, 'Sawai 3214', '1:250.000', 1995, 'Surono, S. Bachri, S.S. Bawono, & D. Sukarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', '', 'sawai.jpg', '-2.00000000', '137.00000000', '-1.00000000', '138.00000000'),
(108, 'Gunung Doom 3213', '1:250.000', 1995, 'A.S. Hakim, Baharuddin, & E. Susanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'doom.tif', 'doom.jpg', '-3.00000000', '136.30000000', '-2.00000000', '138.00000000'),
(109, 'Sarmi Bufareh 3313, 3314', '1:250.000', 1995, 'S. Gafoer & T. Budhitrisna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sarmi bufareh.tif', 'sarmi  ufareh.jpg', '-3.00000000', '138.00000000', '-1.30000000', '139.30000000'),
(110, 'Jayapura (Peg. Cycloops) 3413', '1:250.000', 1995, 'N. Suwarna & Y. Noya', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jayapura.tif', 'jayapura.jpg', '-3.00000000', '139.30000000', '-2.00000000', '141.00000000'),
(111, 'Pulau Karas', '1:250.000', 1990, 'S.L. Tobing, & G.P. Robinso', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pulau karas.tif', 'pulau karas.jpg', '-4.08000000', '132.00000000', '-3.00000000', '133.30000000'),
(112, 'Kaimana', '1:250.000', 1990, 'S.L. Tobing, G.P. Robinso, & R.J. Ryburn', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kaimana.tif', 'kalimana.jpg', '-4.00000000', '133.30000000', '-3.00000000', '135.00000000'),
(113, 'Enarotali', '1:250.000', 1990, 'B.H. Harahap, A. Sufni Hakim, & D.B. Dow', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'enarotali.tif', 'enarotali.jpg', '-4.00000000', '135.00000000', '-3.00000000', '136.30000000'),
(114, 'Beoga 3212', '1:250.000', 1995, 'H. Panggabean, Amiruddin, K. Sutisna, R.L. Situmorang, T. Turkandi, & B. Hermanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'beoga.tif', 'beoga.jpg', '-4.00000000', '136.30000000', '-3.00000000', '138.00000000'),
(115, 'Rotanburg 3312', '1:250.000', 1995, 'B.H. Harahap & Y. Noya', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'rotanburg.tif', 'rotanburg.jpg', '-4.00000000', '138.00000000', '-3.00000000', '139.30000000'),
(116, 'S. Taritatu 3412', '1:250.000', 1995, 'Achnan Koswara', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'taritatu.tif', 'taritatu.jpg', '-4.00000000', '139.30000000', '-3.00000000', '141.00000000'),
(117, 'Omba', '1:250.000', 1990, 'H. Panggabean', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'omba.tif', 'omba.jpg', '-5.00000000', '133.30000000', '-4.00000000', '135.00000000'),
(118, 'Waghete', '1:250.000', 1989, 'H. Panggabean & C.J. Pigram', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'waghete.tif', 'waghete.jpg', '-5.00000000', '135.00000000', '-4.00000000', '136.30000000'),
(119, 'Timika 3211', '1:250.000', 1995, 'E. Rusmana, K. Parris, U. Sukanta, & H. Samodra', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'timika.tif', 'timika.jpg', '-5.00000000', '136.30000000', '-4.00000000', '138.00000000'),
(120, 'Wamena 3311', '1:250.000', 1995, 'U. Sukanta, S. Wiryosujono, & A.S. Hakim', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'wamena.tif', 'wamena.jpg', '-5.00000000', '138.00000000', '-4.00000000', '139.30000000'),
(121, 'Peg. Jayawijaya 3411', '1:250.000', 1995, 'Sidarto & U. Hartono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jayawijaya.tif', 'jayawijaya.jpg', '-5.00000000', '139.30000000', '-4.00000000', '141.00000000'),
(122, 'Birufu & Yapero 3210, 3310', '1:250.000', 1995, 'R. Heryanto & U. Margono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'birufu.tif', 'birufu.jpg', '-6.00000000', '137.08000000', '-5.00000000', '139.30000000'),
(123, 'Oksibil 3410', '1:250.000', 1995, 'Soetrisno & Amiruddin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'oksibil.tif', 'oksibil.jpg', '-6.00000000', '139.30000000', '-5.00000000', '141.00000000'),
(124, 'Sarabih 3309', '1:250.000', 1995, 'N. Suwarna & T.C. Amin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sarabih.tif', 'sarabih.jpg', '-7.00000000', '138.00000000', '-6.00000000', '139.30000000'),
(125, 'Tanah Merah 3409', '1:250.000', 1995, 'D. Sudana, & N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tanah merah.tif', 'tanah merah.jpg', '-7.00000000', '139.30000000', '-6.00000000', '141.00000000'),
(126, 'U. Mapi & Mapi (Kimaan) 3208, 3308', '1:250.000', 1995, 'N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'mapi.tif', 'mapi.jpg', '-8.00000000', '137.49000000', '-7.00000000', '139.30000000'),
(127, 'Muting 3408', '1:250.000', 1995, 'N. Suwarna & Kusnama', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'muting.tif', 'muting.jpg', '-8.00000000', '139.30000000', '-7.00000000', '141.00000000'),
(128, 'Tanjung Vals & Komolom 3207, 3307', '1:250.000', 1995, 'R. Heryanto & H. Panggabean', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tanjung vals.tif', 'tanjung vals.jpg', '-8.45000000', '137.30000000', '-8.00000000', '139.30000000'),
(129, 'Merauke 3407', '1:250.000', 1995, 'R. Heryanto & H. Panggabean', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'merauke.tif', 'merauke.jpg', '-9.07000000', '139.30000000', '-8.00000000', '141.00000000'),
(130, 'Malinau 1819', '1:250.000', 1995, 'R. Heryanto, S. Supriatna, & H.Z. Abidin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'malinau.tif', 'malinau.jpg', '3.00000000', '115.30000000', '4.00000000', '117.00000000'),
(131, 'Tarakan & Sebatik 1919 & 1920', '1:250.000', 1995, 'S. Hidayat, Amiruddin, & D. Satrianas', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tarakan.tif', 'tarakan.jpg', '3.00000000', '117.00000000', '4.00000000', '118.30000000'),
(132, 'Sawah 1718', '1:250.000', 1995, 'R. Heryanto & H.Z. Abidin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sawah.tif', 'sawah.jpg', '2.00000000', '114.00000000', '3.00000000', '115.30000000'),
(133, 'Longbia 1818', '1:250.000', 1995, 'R. Heryanto & H.Z. Abidin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'longbia.tif', 'longbia.jpg', '2.00000000', '115.30000000', '3.00000000', '117.00000000'),
(134, 'Tanjung Rejeb 1918', '1:250.000', 1995, 'R.I. Situmorang, & G. Burhan', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tanjung redeb.tif', 'tanjung redeb.jpg', '2.00000000', '117.00000000', '3.00000000', '118.30000000'),
(135, 'Sambas / Siluas 1317/1417', '1:250.000', 1993, 'E. Rusmana & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sambas.tif', 'sambas.jpg', '1.00000000', '108.45000000', '2.00000000', '110.20000000'),
(136, 'Nangaboat 1517', '1:250.000', 1993, 'Y. Noya, P.E. Pieters, & Surono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'nangaboat.tif', 'nangaobat.jpg', '1.00000000', '111.00000000', '2.00000000', '112.30000000'),
(137, 'Pegunungan Kapuas 1617', '1:250.000', 1993, 'Y. Noya, P.E. Pieters, & Surono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pegunungan kapuas.tif', 'pegunungan kapuas.jpg', '1.00000000', '112.30000000', '2.00000000', '114.00000000'),
(138, 'Long Nawan 1717', '1:250.000', 1993, 'Baharuddin,P.E. Pieters, D. Sudana, & S.A. Mangga', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'long nawan.tif', 'long nawan.jpg', '1.00000000', '114.00000000', '2.00000000', '115.30000000'),
(139, 'Tanjung Mangkaliat 2016, 2017', '1:250.000', 1995, 'B. Djama, D. Sudana, Soetrisno, Baharuddin, K. Hasan', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tanjung mangkaliat.tif', 'tanjung mangkaliat.jpg', '0.45000000', '118.30000000', '1.45000000', '120.00000000'),
(140, 'Singkawang 1316', '1:250.000', 1993, 'N. Suwarna & R.P. Langford', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'singkawang.tif', 'singkawang.jpg', '0.00000000', '108.00000000', '1.00000000', '109.30000000'),
(141, 'Sanggau 1416', '1:250.000', 1993, 'S. Supriatna, U. Margono, Sutrisno, P.E. Pieters, & R.P. Langford', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sanggau.tif', 'sanggau.jpg', '0.00000000', '109.30000000', '1.00000000', '111.00000000'),
(142, 'Sintang 1516', '1:250.000', 1993, 'R. Heryanto, B.H. Harahap, P. Sanyoto, P.R. Williams, & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sintang.tif', 'sintang.jpg', '0.00000000', '111.00000000', '1.00000000', '112.30000000'),
(143, 'Putussibau 1616', '1:250.000', 1993, 'P.E. Pieters, Surono, & Y. Noya', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'putussibau.tif', 'putussibau.jpg', '0.00000000', '112.30000000', '1.00000000', '114.00000000'),
(144, 'Long Pangahai 1716', '1:250.000', 1993, 'H.Z. Abidin, P.E. Pieters, & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'long pangahai.tif', 'long pangahai.jpg', '0.00000000', '114.00000000', '1.00000000', '115.30000000'),
(145, 'Sangatta 1916', '1:250.000', 1995, 'Sukardi, N. Sikumbang, I. Umar, & R. Sunaryo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sangatta.tif', 'sanggata.jpg', '0.00000000', '117.00000000', '1.00000000', '118.30000000'),
(146, 'Pontianak Nangataman, 1315/1415', '1:250.000', 1993, 'P. Sanyoto & P.E. Pieters', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pontianak.tif', 'pontianak.jpg', '-1.00000000', '109.00000000', '0.00000000', '111.00000000'),
(147, 'Nangapinoh 1515', '1:250.000', 1993, 'Amiruddin, & D.S. Trail', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'nangaipinoh.tif', 'nangaipinoh.jpg', '-1.00000000', '111.00000000', '0.00000000', '112.30000000'),
(148, 'Tumbanghiram 1615', '1:250.000', 1995, 'U. Margono, T. Soejitno, & T. Santosa', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tumbanghiram.tif', 'tumbanghiram.jpg', '-1.00000000', '112.30000000', '0.00000000', '114.00000000'),
(149, 'Muara Tewe 1715', '1:250.000', 1995, 'S. Supriatna, A. Sudrajat, & H.Z. Abidin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'muara tewe.tif', 'muara tewe.jpg', '-1.00000000', '114.00000000', '0.00000000', '115.30000000'),
(150, 'Longiram 1815', '1:250.000', 1994, 'N. Suwarna, & T. Apandi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'longiram.tif', 'longiram.jpg', '-1.00000000', '115.30000000', '0.00000000', '116.30000000'),
(151, 'Samarinda 1815, 1915', '1:250.000', 1995, 'S. Supriatna, Sukardi, & E. Rustandi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'samarinda.tif', 'samarinda.jpg', '-1.00000000', '116.30000000', '0.00000000', '118.00000000'),
(152, 'Tumbang Manjul 1514', '1:250.000', 1995, 'U. Margono, T. Soejitno, & T. Santosa', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tumbang manjul.tif', 'tumbang manjul.jpg', '-2.00000000', '111.00000000', '-1.00000000', '112.30000000'),
(153, 'Tewah 1614, 1714', '1:250.000', 1996, 'A.S. Sumatadipura, & U. Margono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tewah.tif', 'tewah.jpg', '-2.00000000', '112.30000000', '-1.00000000', '114.00000000'),
(154, 'Buntok 1714', '1:250.000', 1994, 'Soetrisno, S. Supriatna, E. Rustandi, P. Sanyoto, K. Hasan', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'buntok.tif', 'buntok.jpg', '-2.00000000', '114.00000000', '-1.00000000', '115.30000000'),
(155, 'Balikpapan 1814, 1914', '1:250.000', 1994, 'S. Hidayat, & L. Umar', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'balikpapan.tif', 'balikpapan.jpg', '-2.00000000', '115.30000000', '-1.00000000', '117.10000000'),
(156, 'Pangkalan Buun 1513', '1:250.000', 1994, 'B. Hermanto, S. Bachri, & S. Atmawinata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pangkalan buun.tif', 'pangkalan buun.jpg', '-3.00000000', '111.00000000', '-2.00000000', '112.30000000'),
(157, 'Palangkaraya 1613', '1:250.000', 1995, 'E.S. Nila, E. Rustandi, & R. Heryanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'palangkaraya.tif', 'palangkaraya.jpg', '-3.00000000', '112.30000000', '-2.00000000', '114.00000000'),
(158, 'Sampahan 1813', '1:250.000', 1994, 'R. Heryanto, S. Supriatna, E. Rustandi, & Baharuddin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sampahan.tif', 'sampahan.jpg', '-3.00000000', '115.30000000', '-2.00000000', '116.45000000'),
(159, 'Muaradua 1512', '1:250.000', 1995, 'Soetrisno, Baharuddin, & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'muaradua.tif', 'muaradua.jpg', '-4.00000000', '111.00000000', '-3.00000000', '112.30000000'),
(160, 'Kuala Pembuang 1612', '1:250.000', 1995, 'Soetrisno, B. Jama, E. Rusmanam & S. Koesoemadinata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kuala pembuang.tif', 'kuala pembuang.jpg', '-4.00000000', '112.30000000', '-3.00000000', '114.00000000'),
(161, 'Kotabaru 1812', '1:250.000', 1995, 'E. Rustandi, E.S. Nila, P.Sanyoto, & U. Margono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kotabaru.tif', 'kotabaru.jpg', '-4.15000000', '115.30000000', '-3.00000000', '116.30000000'),
(162, 'Tepian Balai 1811', '1:250.000', 1995, 'T. Turkandi, D. Sukarna, & S.S. Bawono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tepian balai.tif', 'tapian balai.jpg', '-5.00000000', '115.00000000', '-4.00000000', '116.30000000'),
(163, 'Butun & Ranai 1219, 1220, 1319, 1320', '1:250.000', 1994, 'A.S. Hakim & N. Suryono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'butun.tif', 'butun.jpg', '3.30000000', '107.70000000', '4.50000000', '108.60000000'),
(164, 'Anyer 1109-5 & 1110-2', '1:100.000', 1991, 'S. Santosa', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'anyer.tif', 'anyer.jpg', '-6.50000000', '105.50000000', '-5.90000000', '106.00000000'),
(165, 'Cikarang 1109-2', '1:100.000', 1992, 'D. Sudana & S. Santosa', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'cikarang.tif', 'cikarang.jpg', '-7.05000000', '105.40000000', '-6.50000000', '106.00000000'),
(166, 'Serang/1109-6 & 1110-3', '1:100.000', 1991, 'E. Rusmana, K. Suwitodirdjo, & Suharsono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'serang.tif', 'serang.jpg', '-6.50000000', '106.00000000', '-5.80000000', '106.30000000'),
(167, 'Leuwidimar 1109-3', '1:100.000', 1992, 'Sujatmiko & S. Santosa', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'leuwidamar.tif', 'leuwidamar.jpg', '-7.05000000', '106.00000000', '-6.50000000', '106.50000000'),
(168, 'Jakarta & Kepulauan Seribu 1209-4, 1210-1', '1:100.000', 1992, 'T. Turkandi, Sidarto, D.A. Agustiyanto, & M.M. Purbo Hadiwodjoyo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jakarta.tif', 'jakart.jpg', '-5.30000000', '106.30000000', '-6.50000000', '107.00000000'),
(169, 'Bogor, 9/XIII-D atau 1209-1', '1:100.000', 1998, 'A.C. Effendi & B. Hermanto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bogor.tif', 'bogor.jpg', '-7.05000000', '106.50000000', '-6.50000000', '107.00000000'),
(170, 'Jampang 9/XIV-A - Balekambang 8/XIV-C', '1:100.000', 1975, 'RAB. Sukamto', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jampang.tif', 'jampang.jpg', '-7.50000000', '106.30000000', '-7.05000000', '107.00000000'),
(171, 'Karawang 1209-5 & 1210-2', '1:100.000', 1992, 'A. Achdan & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'karawang.tif', 'karawang.jpg', '-6.50000000', '107.00000000', '-5.80000000', '107.45000000'),
(172, 'Cianjur 9/XIII-E', '1:100.000', 1972, 'Sudjatmiko', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'cianjur.tif', 'cianjur.jpg', '-7.05000000', '107.00000000', '-6.50000000', '107.45000000'),
(173, 'Siandang Barang', '1:100.000', 1996, 'M. Koesmono, Kusmana, & N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'sindang.tif', 'sindang barang.jpg', '-7.05000000', '107.00000000', '-7.60000000', '107.45000000'),
(174, 'Pamanukan 1209-6', '1:100.000', 1992, 'H.Z. Abidin & Sutrisno', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pamanukan.tif', 'pamanukan.jpg', '-6.50000000', '107.45000000', '-6.00000000', '108.00000000'),
(175, 'Bandung 9/XIII-F', '1:100.000', 1973, 'P.H. Silitonga', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bandung.tif', 'bandung.jpg', '-7.05000000', '107.45000000', '-6.50000000', '108.00000000'),
(176, 'Garut 1208-6 & Pameungpeuk 1208-3', '1:100.000', 1992, 'M. Alzwar, N. Akbar, & S. Bachri', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'garut.tif', 'Garut-Pameungpeuk.jpg', '-7.05000000', '107.45000000', '-7.80000000', '108.00000000'),
(177, 'Indramayu 1309-4', '1:100.000', 1992, 'A. Achdan & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'indramayu.tif', 'indramayu.jpg', '-6.50000000', '108.00000000', '-6.00000000', '108.45000000'),
(178, 'Arjawinangun 10/XIII-D', '1:100.000', 1973, 'Djuri', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'arjawinangun.tif', 'arjawinangun.jpg', '-7.05000000', '108.00000000', '-6.50000000', '108.45000000'),
(179, 'Tasikmalaya 1308-4', '1:100.000', 1986, 'T. Budhitrisna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tasikmalaya.tif', 'tasikmalaya.jpg', '-7.05000000', '108.00000000', '-7.60000000', '108.45000000'),
(180, 'Karangnunggal 1308-1', '1:100.000', 1992, 'S. Supriatna, L. Sarmili, D. Sudana, & A. Koswara', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'karangnunggak.tif', 'karangnunggal.jpg', '-7.60000000', '108.00000000', '-7.90000000', '108.45000000'),
(181, 'Cirebon 1309-2 & 5', '1:100.000', 1996, 'P.H. Silitonga, M. Masria, & N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'cirebon.tif', 'cirebon.jpg', '-7.05000000', '108.45000000', '-6.40000000', '109.00000000'),
(182, 'Majenang 10/XIV-B', '1:100.000', 1975, 'Kastowo', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'majenang.tif', 'majenang.jpg', '-7.05000000', '108.45000000', '-7.60000000', '109.00000000'),
(183, 'Pangandaran 1308-2', '1:100.000', 1992, 'T.O. Simandjutak & Surono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pangandaran.tif', 'pangandaran.jpg', '-7.60000000', '108.45000000', '-7.90000000', '109.00000000'),
(184, 'Purwokerto & Tegal (1309-3 & 1309-6)', '1:100.000', 1996, 'M. Djuri, H. Samodra, T.C. Amin, & S. Gafoer', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tegal.tif', 'puwokerto.jpg', '-7.60000000', '109.00000000', '-6.75000000', '109.55000000'),
(185, 'Banjarnegara - Pekalongan, 1408-4, 1409-1', '1:100.000', 1996, 'W.H. Condon, L. Pardayanto, K.B. Ketner, T.C. Amin,S. Gafoer, & H. Samodra', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'banjarnegara.tif', 'Banjarnegara-Pekalongan.jpg', '-7.60000000', '109.55000000', '-6.75000000', '110.00000000'),
(186, 'Kebumen 1401-1', '1:100.000', 1992, 'S. Asikin, A. Handoyo,  & S. Gafoer', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kebumen.tif', 'Kebumen.jpg', '-7.60000000', '109.55000000', '-7.90000000', '110.00000000'),
(187, 'Magelang 11/XIV-B - Semarang 11/XIII-E', '1:100.000', 1975, 'Robert E. Thaden, Harli Sumadirdja & Paul W. Richards', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'magelang.tif', 'semarang.jpg', '-7.60000000', '110.00000000', '-6.80000000', '110.50000000'),
(188, 'Yogyakarta 1408 - 2 & 1407-5', '1:100.000', 1995, 'Wartono Rahardjo, Sukandarrumidi, H.M.D. Rosidi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'yogya.tif', 'yogyakarta.jpg', '-7.60000000', '110.00000000', '-8.20000000', '110.50000000'),
(189, 'Kudus 1409-3', '1:100.000', 1992, 'T. Suwarti & R. Wikarno', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kudus.tif', 'kudus.jpg', '-7.05000000', '110.50000000', '-6.30000000', '111.00000000'),
(190, 'Salatiga 1408-6', '1:100.000', 1992, 'Sukardi & T. Budhitrisna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'salatiga.tif', 'Salatiga.jpg', '-7.05000000', '110.50000000', '-7.60000000', '111.00000000'),
(191, 'Surakarta 1408-3 & Giritontro 1407-6', '1:100.000', 1992, 'Surono, B. Toha, & I. Sudarno', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'surakarta.tif', 'surakarta.jpg', '-7.60000000', '110.50000000', '-8.30000000', '111.00000000'),
(192, 'Rembang 1509-1 & 4', '1:100.000', 1993, 'Darwin Kadar & Sudijono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'rembang.tif', 'rembang.jpg', '-7.05000000', '111.00000000', '-6.30000000', '111.50000000'),
(193, 'Ngawi 1508-4', '1:100.000', 1996, 'M. Datun, Sukandarrumidi, B. Hermanto, & N. Suwarna', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ngawi.tif', 'Ngawi.jpg', '-7.05000000', '111.00000000', '-7.60000000', '111.50000000'),
(194, 'Ponorogo 1508-1', '1:100.000', 1997, 'Sampurno & H. Samodra', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'ponorogo.tif', 'ponorogo.jpg', '-8.00000000', '111.00000000', '-7.60000000', '111.50000000'),
(195, 'Pacitan 1507-4', '1:100.000', 1992, 'H. Samodra, S. Gafoer, & S. Tjokrosapoetro', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'pacitan.tif', 'pacitan.jpg', '-8.40000000', '111.00000000', '-8.00000000', '111.50000000'),
(196, 'Jatirogo 1509-2', '1:100.000', 1992, 'R.L. Situmorang, R. Smit, & E.J. Van Vessem', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jatirogo.tif', 'jatirogo.jpg', '-7.05000000', '111.50000000', '-6.60000000', '112.00000000'),
(197, 'Bojonegoro 1508-5', '1:100.000', 1992, 'H. Pringgoprawiro & Sukido', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'bojonegoro.tif', 'bojonegoro.jpg', '-7.05000000', '111.50000000', '-7.60000000', '112.00000000'),
(198, 'Madiun 1508-2', '1:100.000', 1992, 'U. Hartono, Baharuddin, & K. Brata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'madiun.tif', 'madiun.jpg', '-8.00000000', '111.50000000', '-7.60000000', '112.00000000'),
(199, 'Tulungagung 1057-5', '1:100.000', 1992, 'H. Samodra, S. Gafoer, & T. Suwarti', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tulungagung.tif', 'tulungagung.jpg', '-8.50000000', '111.50000000', '-8.00000000', '112.00000000'),
(200, 'Tuban 1509-3', '1:100.000', 1997, 'Hartono & Suharsono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'tuban.tif', 'tuban.jpg', '-7.05000000', '112.00000000', '-6.60000000', '112.50000000'),
(201, 'Mojokerto 1508-6', '1:100.000', 1992, 'Y. Noya, T. Suwarti, Suharsono, & L. Sarmili', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'mojokerto.tif', 'mojokerto.jpg', '-7.05000000', '112.00000000', '-7.60000000', '112.50000000'),
(202, 'Kediri 1508-3', '1:100.000', 1992, 'S. Santosa & S. Atmawinata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'kediri.tif', 'kediri.jpg', '-8.00000000', '112.00000000', '-7.60000000', '112.50000000'),
(203, 'Blitar 1507-6', '1:100.000', 1992, 'M.Z. Sjarifuddin & S. Hamidi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'blitar.tif', 'blitar.jpg', '-8.50000000', '112.00000000', '-8.00000000', '112.50000000'),
(204, 'Surabaya & Sapulu 1608-4, 1609-1', '1:100.000', 1992, 'J.B. Supandjono, K. Hasan, H. Panggabean, D. Satria, & Sukardi', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'surabaya.tif', 'surabaya.jpg', '-6.60000000', '112.50000000', '-7.60000000', '113.00000000'),
(205, 'Malang 1608-1', '1:100.000', 1992, 'S. Santosa & T. Suwarti', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'malang.tif', 'malang.jpg', '-8.00000000', '112.50000000', '-7.60000000', '113.00000000'),
(206, 'Turen 1607-4', '1:100.000', 1992, 'Sujanto, R. Hadisantono, Kusnama, R. Chaniago, & R. Baharuddin', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'turen.tif', 'turen.jpg', '-8.50000000', '112.50000000', '-8.00000000', '113.00000000'),
(207, 'Tanjung Bumi & Pamekasan 1609-2 & 1608-5', '1:100.000', 1992, 'S. Azis, Sutrisno, Y. Noya, & K. Brata', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', '', 'tanjung bumi.jpg', '-7.40000000', '113.00000000', '-6.80000000', '113.50000000'),
(208, 'Probolinggo 1608-2', '1:100.000', 1992, 'Suharsono & T. Suwarti', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'probolinggo.tif', 'probolinggo.jpg', '-8.00000000', '113.00000000', '-7.60000000', '113.50000000');
INSERT INTO `maps` (`id`, `lembar_peta`, `skala`, `tahun`, `penyusun`, `penerbit`, `img_tif`, `img`, `a`, `b`, `c`, `d`) VALUES
(209, 'Lumajang 1607-5', '1:100.000', 1992, 'T. Suwarti & Suharsono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'lumajang.tif', 'lumajang.jpg', '-8.60000000', '113.00000000', '-8.00000000', '113.50000000'),
(210, 'Waru - Sumenep 1609-3, 1608-6', '1:100.000', 1992, 'R.L. Situmorang, D.A. Agustino, & M. Suparman', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'waru.tif', 'waru.jpg', '-7.40000000', '113.50000000', '-6.80000000', '114.25000000'),
(211, 'Besuki 1608-3', '1:100.000', 1997, 'B. Pendowom & H. Samodra', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'besuki.tif', 'besuki.jpg', '-8.00000000', '113.50000000', '-7.60000000', '114.00000000'),
(212, 'Jember 1607-6', '1:100.000', 1992, 'T. Sapei, A.H. Suganda, K.A.S. Astadiredja, & Suharsono', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'jember.tif', 'jember.jpg', '-8.65000000', '113.50000000', '-8.00000000', '114.00000000'),
(213, 'Situbondo 1708-1', '1:100.000', 1993, 'D.A. Agustiyanto, & S. Santosa', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'situbondo.tif', 'situbondo.jpg', '-8.00000000', '114.00000000', '-7.50000000', '114.50000000'),
(214, 'Banyuwangi 1707-4', '1:100.000', 1993, 'Sidarto, T. Suwarti, & D. Sudana', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'banyuwangi.tif', 'banyuwangi.jpg', '-8.50000000', '114.00000000', '-8.00000000', '114.50000000'),
(215, 'Blambangan, 1707-1 & 2', '1:100.000', 1993, 'A. Achdan & S. Bachri', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'blambangan.tif', 'blamangan.jpg', '-8.90000000', '114.00000000', '-8.50000000', '114.65000000'),
(216, 'Banyumas 1308-3', '1:100.000', 1992, 'S. Asikin, A. Handoyo, B. Prastistho, & S. Gafoer', 'Pusat Penelitian dan Pengenbangan Geologi, Indonesia', 'banyumas.tif', 'banyumas.jpg', '-7.60000000', '109.00000000', '-7.90000000', '109.55000000');

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(12) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'rivaldi', '$2y$10$hdTgNP95FglvU6zKdY5XHuWtZOfKk.Kgz0TgFPSOPfAsKdnWg5TwO');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `maps`
--
ALTER TABLE `maps`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
