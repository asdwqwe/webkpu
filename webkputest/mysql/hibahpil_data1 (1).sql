-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2019 at 06:27 AM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hibahpil_data1`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `input_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id`, `judul`, `isi`, `input_date`) VALUES
(3, 'Pemberitahuan 2', '<h2>\r\n	tes 123</h2>\r\n<p>\r\n	Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed euismod lorem iaculis erat convallis, vitae pellentesque ante blandit. Quisque eu convallis lacus. Vivamus lacinia erat dui, a imperdiet velit ullamcorper nec. Mauris ultrices non nisl id dignissim. Curabitur sem massa, finibus nec ex ut, congue ultricies nulla. Curabitur sagittis maximus orci at consectetur. Curabitur porttitor interdum ipsum nec sollicitudin. Duis mi nulla, dapibus at volutpat ornare, varius in mauris. In sit amet arcu pharetra, rutrum eros non, pellentesque tortor.</p>\r\n<p>\r\n	Vestibulum quis massa finibus dui vehicula lobortis. Vivamus nec massa commodo, facilisis augue sit amet, vestibulum augue. Donec urna est, varius vel bibendum eget, pharetra id leo. Nunc vulputate gravida fringilla. Phasellus suscipit vitae libero a posuere. Etiam vulputate condimentum arcu, eget aliquet tortor fermentum sagittis. Vestibulum non arcu semper nibh interdum varius sit amet congue quam. Quisque rhoncus turpis ac efficitur laoreet. Suspendisse vestibulum erat ac dui gravida, eget aliquam tortor rhoncus. Pellentesque blandit nunc ut ex semper fermentum. Curabitur in lectus sit amet mi laoreet tempus. Proin faucibus congue condimentum.</p>\r\n<p>\r\n	In sed justo maximus, semper nulla et, fringilla eros. Quisque eleifend orci metus, ac aliquam mi tempus eu. Suspendisse tincidunt, lacus venenatis lobortis posuere, magna dolor lobortis sapien, id fringilla mi ante sit amet odio. Pellentesque rhoncus placerat pharetra. Vestibulum ac congue quam. Phasellus dictum libero non elit suscipit, in accumsan arcu maximus. Curabitur commodo bibendum felis ac efficitur. Donec at suscipit ligula. Nullam pellentesque elit sit amet sodales laoreet. Praesent a mollis nibh. Ut consequat nibh finibus porttitor fringilla. Pellentesque cursus vitae urna id mollis.</p>\r\n', '2017-09-11 04:38:51'),
(4, 'Berita 3', '<p>\r\n	Lorem ipsum condimentum posuere nam lorem conubia vitae, hendrerit at imperdiet nisl risus sit vehicula, aliquam est massa amet facilisis etiam.</p>\r\n<p>\r\n	Fermentum condimentum convallis donec id urna class tincidunt, rhoncus nam tristique consectetur iaculis aenean a eros, elementum augue lectus quis nostra elit diam neque eleifend hac sed aliquam dictumst sed leo arcu.</p>\r\n<p>\r\n	Dolor leo lacinia malesuada nam elementum curabitur mollis elit lobortis mauris rhoncus, erat metus urna ullamcorper a lacus blandit libero rutrum gravida aliquam, semper quam ad cursus donec accumsan blandit commodo mollis interdum.</p>\r\n<p>\r\n	Augue dictumst erat semper et eleifend curae blandit aliquam pellentesque, ante donec aenean vivamus dolor amet habitant magna dictum dictumst, litora non nec egestas ornare eros purus sapien convallis nec pharetra mauris dapibus velit.</p>\r\n<p>\r\n	Torquent pellentesque conubia etiam class in hac nam laoreet vulputate sodales proin, risus cubilia adipiscing suscipit nisi egestas sem adipiscing cras.</p>\r\n', '2017-09-11 05:14:51');

-- --------------------------------------------------------

--
-- Table structure for table `data1`
--

CREATE TABLE `data1` (
  `id` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_satker` int(11) NOT NULL,
  `satker` varchar(255) NOT NULL,
  `pemda` varchar(255) NOT NULL,
  `no_nphd` varchar(255) NOT NULL,
  `tanggal_nphd` date NOT NULL,
  `perihal_nphd` varchar(255) NOT NULL,
  `nilai_nphd` bigint(20) NOT NULL,
  `no_ad_nphd1` varchar(255) NOT NULL,
  `tanggal_ad_nphd1` date NOT NULL,
  `perihal_ad_nphd1` varchar(255) NOT NULL,
  `nilai_ad_nphd1` bigint(20) NOT NULL,
  `no_ad_nphd2` varchar(255) NOT NULL,
  `tanggal_ad_nphd2` date NOT NULL,
  `perihal_ad_nphd2` varchar(255) NOT NULL,
  `nilai_ad_nphd2` bigint(20) NOT NULL,
  `transfer1` bigint(20) NOT NULL,
  `transfer2` bigint(20) NOT NULL,
  `transfer3` bigint(20) NOT NULL,
  `transfer4` bigint(20) NOT NULL,
  `transfer5` bigint(20) NOT NULL,
  `transfer6` bigint(20) NOT NULL,
  `transfer7` bigint(20) NOT NULL,
  `transfer8` bigint(20) NOT NULL,
  `no_djppr` varchar(255) NOT NULL,
  `tanggal_djppr` date NOT NULL,
  `no_regis_djppr` varchar(255) NOT NULL,
  `no_kppn` varchar(255) NOT NULL,
  `tanggal_kppn` date NOT NULL,
  `nam_rek_kppn` varchar(255) NOT NULL,
  `no_rek_kppn` varchar(255) NOT NULL,
  `bank_kppn` varchar(255) NOT NULL,
  `no_djpb` varchar(255) NOT NULL,
  `tanggal_djpb` date NOT NULL,
  `nam_rek_djpb` varchar(255) NOT NULL,
  `no_rek_djpb` varchar(255) NOT NULL,
  `bank_djpb` varchar(255) NOT NULL,
  `no_dipa1` varchar(255) NOT NULL,
  `tanggal_dipa1` date NOT NULL,
  `nilai_awal_dipa1` bigint(20) NOT NULL,
  `nilai_hibah_dipa1` bigint(20) NOT NULL,
  `total_dipa1` bigint(20) NOT NULL,
  `no_dipa2` varchar(255) NOT NULL,
  `tanggal_dipa2` date NOT NULL,
  `nilai_awal_dipa2` bigint(20) NOT NULL,
  `nilai_hibah_dipa2` bigint(20) NOT NULL,
  `total_dipa2` bigint(20) NOT NULL,
  `pendapatan` bigint(20) NOT NULL,
  `belanja_521124` bigint(20) NOT NULL,
  `belanja_521213` bigint(20) NOT NULL,
  `belanja_521219` bigint(20) NOT NULL,
  `belanja_521811` bigint(20) NOT NULL,
  `belanja_522141` bigint(20) NOT NULL,
  `belanja_524111` bigint(20) NOT NULL,
  `belanja_521211` bigint(20) NOT NULL,
  `belanja_522191` bigint(20) NOT NULL,
  `belanja_523121` bigint(20) NOT NULL,
  `belanja_524113` bigint(20) NOT NULL,
  `belanja_524119` bigint(20) NOT NULL,
  `belanja_532111` bigint(20) NOT NULL,
  `belanja_533121` bigint(20) NOT NULL,
  `input_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data1`
--

INSERT INTO `data1` (`id`, `tahun`, `id_satker`, `satker`, `pemda`, `no_nphd`, `tanggal_nphd`, `perihal_nphd`, `nilai_nphd`, `no_ad_nphd1`, `tanggal_ad_nphd1`, `perihal_ad_nphd1`, `nilai_ad_nphd1`, `no_ad_nphd2`, `tanggal_ad_nphd2`, `perihal_ad_nphd2`, `nilai_ad_nphd2`, `transfer1`, `transfer2`, `transfer3`, `transfer4`, `transfer5`, `transfer6`, `transfer7`, `transfer8`, `no_djppr`, `tanggal_djppr`, `no_regis_djppr`, `no_kppn`, `tanggal_kppn`, `nam_rek_kppn`, `no_rek_kppn`, `bank_kppn`, `no_djpb`, `tanggal_djpb`, `nam_rek_djpb`, `no_rek_djpb`, `bank_djpb`, `no_dipa1`, `tanggal_dipa1`, `nilai_awal_dipa1`, `nilai_hibah_dipa1`, `total_dipa1`, `no_dipa2`, `tanggal_dipa2`, `nilai_awal_dipa2`, `nilai_hibah_dipa2`, `total_dipa2`, `pendapatan`, `belanja_521124`, `belanja_521213`, `belanja_521219`, `belanja_521811`, `belanja_522141`, `belanja_524111`, `belanja_521211`, `belanja_522191`, `belanja_523121`, `belanja_524113`, `belanja_524119`, `belanja_532111`, `belanja_533121`, `input_date`) VALUES
(1, 2020, 657342, '20', 'PEMERINTAH KABUPATEN KUDUS', '04/PKS/2016 & 900/1258KIP', '2017-05-19', 'PEMILIHAN GUBERNUR DAN WAKIL GUBERNUR PROV ACEH TAHUN 2017', 179478201600, '', '0000-00-00', '', 12345123, '', '0000-00-00', '', 0, 110000000000, 69478201600, 0, 0, 0, 0, 0, 0, '', '0000-00-00', '', 'S-00914/WPB.01/KP0130/2016', '2016-06-02', 'RPL 001 KPU PROV ACEH UTK HIBAH', '158-00-2244667-8', 'BANK MANDIRI', '', '0000-00-00', '', '', '', 'SP DIPA-076.01.2.654289/2016', '2015-12-07', 8067418000, 109999975000, 118067393000, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-09-10 16:59:23'),
(2, 2018, 659211, '115', 'PEMERINTAH KABUPATEN BONE', '', '2017-09-13', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-09-15 02:24:05'),
(3, 2018, 670316, '106', 'PEMERINTAH KAB. BOLAANG MONGONDOW UTARA', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-09-15 02:24:15'),
(4, 2018, 680750, '156', 'PEMERINTAH KABUPATEN DEIYAI', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-10-08 18:30:42'),
(5, 2018, 658312, '141', 'PEMERINTAH KABUPATEN ALOR', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-10-08 18:30:51');

-- --------------------------------------------------------

--
-- Table structure for table `data2`
--

CREATE TABLE `data2` (
  `id` int(11) NOT NULL,
  `tahun` year(4) NOT NULL,
  `id_satker` int(11) NOT NULL,
  `satker` varchar(255) NOT NULL,
  `pemda` varchar(255) NOT NULL,
  `no_nphd` varchar(255) NOT NULL,
  `tanggal_nphd` date NOT NULL,
  `perihal_nphd` varchar(255) NOT NULL,
  `nilai_nphd` bigint(20) NOT NULL,
  `no_ad_nphd1` varchar(255) NOT NULL,
  `tanggal_ad_nphd1` date NOT NULL,
  `perihal_ad_nphd1` varchar(255) NOT NULL,
  `nilai_ad_nphd1` bigint(20) NOT NULL,
  `no_djppr` varchar(255) NOT NULL,
  `tanggal_djppr` date NOT NULL,
  `no_regis_djppr` varchar(255) NOT NULL,
  `no_kppn` varchar(255) NOT NULL,
  `tanggal_kppn` date NOT NULL,
  `nam_rek_kppn` varchar(255) NOT NULL,
  `no_rek_kppn` varchar(255) NOT NULL,
  `bank_kppn` varchar(255) NOT NULL,
  `no_djpb` varchar(255) NOT NULL,
  `tanggal_djpb` date NOT NULL,
  `nam_rek_djpb` varchar(255) NOT NULL,
  `no_rek_djpb` varchar(255) NOT NULL,
  `bank_djpb` varchar(255) NOT NULL,
  `transfer1` bigint(20) NOT NULL,
  `transfer2` bigint(20) NOT NULL,
  `transfer3` bigint(20) NOT NULL,
  `transferjml1` bigint(20) NOT NULL,
  `transfer4` bigint(20) NOT NULL,
  `transfer5` bigint(20) NOT NULL,
  `transferjml2` bigint(20) NOT NULL,
  `transfertotal` bigint(20) NOT NULL,
  `no_dipa1` varchar(255) NOT NULL,
  `tanggal_dipa1` date NOT NULL,
  `nilai_awal_dipa1` bigint(20) NOT NULL,
  `nilai_hibah_dipa1` bigint(20) NOT NULL,
  `total_dipa1` bigint(20) NOT NULL,
  `no_dipa2` varchar(255) NOT NULL,
  `tanggal_dipa2` date NOT NULL,
  `nilai_awal_dipa2` bigint(20) NOT NULL,
  `nilai_hibah_dipa2` bigint(20) NOT NULL,
  `total_dipa2` bigint(20) NOT NULL,
  `total_dipa22` bigint(20) NOT NULL,
  `total_dipa23` bigint(20) NOT NULL,
  `sp2hl_pend1` bigint(20) NOT NULL,
  `sp2hl_blnj1` bigint(20) NOT NULL,
  `sp2hl_pend2` bigint(20) NOT NULL,
  `sp2hl_blnj2` bigint(20) NOT NULL,
  `sp4hl` bigint(20) NOT NULL,
  `sisa` bigint(20) NOT NULL,
  `input_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data2`
--

INSERT INTO `data2` (`id`, `tahun`, `id_satker`, `satker`, `pemda`, `no_nphd`, `tanggal_nphd`, `perihal_nphd`, `nilai_nphd`, `no_ad_nphd1`, `tanggal_ad_nphd1`, `perihal_ad_nphd1`, `nilai_ad_nphd1`, `no_djppr`, `tanggal_djppr`, `no_regis_djppr`, `no_kppn`, `tanggal_kppn`, `nam_rek_kppn`, `no_rek_kppn`, `bank_kppn`, `no_djpb`, `tanggal_djpb`, `nam_rek_djpb`, `no_rek_djpb`, `bank_djpb`, `transfer1`, `transfer2`, `transfer3`, `transferjml1`, `transfer4`, `transfer5`, `transferjml2`, `transfertotal`, `no_dipa1`, `tanggal_dipa1`, `nilai_awal_dipa1`, `nilai_hibah_dipa1`, `total_dipa1`, `no_dipa2`, `tanggal_dipa2`, `nilai_awal_dipa2`, `nilai_hibah_dipa2`, `total_dipa2`, `total_dipa22`, `total_dipa23`, `sp2hl_pend1`, `sp2hl_blnj1`, `sp2hl_pend2`, `sp2hl_blnj2`, `sp4hl`, `sisa`, `input_date`) VALUES
(1, 2020, 657342, '20', 'PEMERINTAH KABUPATEN KUDUS', '04/PKS/2016 & 900/1258KIP', '2017-05-19', 'PEMILIHAN GUBERNUR DAN WAKIL GUBERNUR PROV ACEH TAHUN 2017', 179478201600, '', '0000-00-00', '', 12345123, '', '0000-00-00', '', 'S-00914/WPB.01/KP0130/2016', '2016-06-02', 'RPL 001 KPU PROV ACEH UTK HIBAH', '158-00-2244667-8', 'BANK MANDIRI', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 'SP DIPA-076.01.2.654289/2016', '2015-12-07', 8067418000, 109999975000, 118067393000, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-09-10 16:59:23'),
(2, 2018, 659211, '115', 'PEMERINTAH KABUPATEN BONE', '', '2017-09-13', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-09-15 02:24:05'),
(3, 2018, 670316, '106', 'PEMERINTAH KAB. BOLAANG MONGONDOW UTARA', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-09-15 02:24:15'),
(4, 2018, 680750, '156', 'PEMERINTAH KABUPATEN DEIYAI', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-10-08 18:30:42'),
(5, 2018, 658312, '141', 'PEMERINTAH KABUPATEN ALOR', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-10-08 18:30:51'),
(6, 2018, 670383, '54', 'PEMERINTAH KAB. BATUBARA', '', '2017-10-10', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', '', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 0, 0, 0, '', '0000-00-00', 0, 0, 0, '', '0000-00-00', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '2017-10-23 03:49:15');

-- --------------------------------------------------------

--
-- Table structure for table `data_2017`
--

CREATE TABLE `data_2017` (
  `id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL DEFAULT '2017',
  `prov` varchar(255) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `nama_satker` varchar(255) NOT NULL,
  `pem_hibah` varchar(255) NOT NULL,
  `no_nphd` varchar(255) NOT NULL,
  `tgl_nphd` date NOT NULL,
  `per_nphd` varchar(255) NOT NULL,
  `nilai_nphd` bigint(20) NOT NULL,
  `na_1` varchar(255) NOT NULL,
  `nb_1` date NOT NULL,
  `nc_1` varchar(255) NOT NULL,
  `nd_1` bigint(20) NOT NULL,
  `ndjppr` varchar(255) NOT NULL,
  `tdjppr` date NOT NULL,
  `noreg` varchar(255) NOT NULL,
  `noijin` varchar(255) NOT NULL,
  `treg` date NOT NULL,
  `norek` varchar(255) NOT NULL,
  `nbank` varchar(255) NOT NULL,
  `tr_1` bigint(20) NOT NULL,
  `tr_2` bigint(20) NOT NULL,
  `tr_3` bigint(20) NOT NULL,
  `tr_4` bigint(20) NOT NULL,
  `tr_all` bigint(20) NOT NULL,
  `pag16` bigint(20) NOT NULL,
  `real16` bigint(20) NOT NULL,
  `sp2hl16` bigint(20) NOT NULL,
  `pag17` bigint(20) NOT NULL,
  `real17` bigint(20) NOT NULL,
  `sp2hl17` bigint(20) NOT NULL,
  `sp4hl` bigint(20) NOT NULL,
  `peng` enum('Pemda','Negara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_2017`
--

INSERT INTO `data_2017` (`id`, `tahun`, `prov`, `kode_satker`, `nama_satker`, `pem_hibah`, `no_nphd`, `tgl_nphd`, `per_nphd`, `nilai_nphd`, `na_1`, `nb_1`, `nc_1`, `nd_1`, `ndjppr`, `tdjppr`, `noreg`, `noijin`, `treg`, `norek`, `nbank`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_all`, `pag16`, `real16`, `sp2hl16`, `pag17`, `real17`, `sp2hl17`, `sp4hl`, `peng`) VALUES
(1, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 419168, 'KPU KABUPATEN BUTON TENGAH', 'KABUPATEN BUTON TENGAH', 'NOMOR :158/TAHUN 2016 DAN NOMOR : 02/Kpts/KPU-Kab.026.419168/V/2016', '2016-05-18', '', 21769400000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 18769400000, 8411497296, 8411497296, 3000000000, 11354644176, 11354644176, 2003258528, 'Pemda'),
(2, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 419169, 'KPU KABUPATEN BUTON SELATAN', 'KABUPATEN BUTON SELATAN', 'NOMOR : 910/946 DAN NOMOR 14/KPU-Kab Busel/V/2016', '2016-05-17', '', 20000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17000000000, 10038554711, 10038554711, 3000000000, 9935309744, 9935309744, 26135545, 'Pemda'),
(3, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 419170, 'KPU KABUPATEN MUNA BARAT', 'KABUPATEN MUNA BARAT', 'NOMOR ; 63 TAHUN 2016 DAN NOMOR : 19/KPU.Kab.026.419170/V/2016', '2016-05-21', '', 22488000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 22488000000, 8418247000, 8418247000, 0, 8982615150, 8982615150, 5087137850, 'Pemda'),
(4, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 654289, 'KPU PROVINSI NANGROE ACEH DARUSSALAM', ' PROVINSI NANGROE ACEH DARUSSALAM', 'NOMOR : 04/PKS/2016 DAN NOMOR : 900/1258KIP', '2016-05-19', '', 179478201600, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 179478151600, 59379797948, 59379797948, 0, 97383829052, 97383829052, 22714524600, 'Pemda'),
(5, 2017, 'KPU  PROVINSI BANGKA BELITUNG', 654361, 'KPU  PROVINSI BANGKA BELITUNG', 'PEMERINTAH PROVINSI BANGKA BELITUNG', 'NOMOR ; 980/005/BKBP/2016 DAN NOMOR : 30/KPU-Prov-009/IV/2016', '2016-04-29', 'PELAKSANAAN DANA HIBAH PENYELENGGARAAN PEMILIHAN GUBERNUR DAN WAKIL GUBERNUR TAHUN 2017', 88663139000, '', '0000-00-00', '', 0, 'S-1665/PR.8/2016', '2016-05-13', '2VXR4W7A', 'S-1439/WPB.010/KP.015/2016', '2016-05-19', '1443010237', 'BANK SUMSEL BABEL KC PANGKALPINANG', 39048047000, 49615092000, 0, 0, 88663139000, 88663139000, 26788794784, 26788794784, 0, 40608655432, 40608655432, 21265688784, 'Pemda'),
(6, 2017, 'KPU  PROVINSI DKI JAKARTA', 654382, 'KPU PROVINSI DKI JAKARTA', ' PROVINSI DKI JAKARTA', 'NOMOR :3 TAHUN 2016 DAN NOMOR :171/KPU-Prov-010/V/2016 dan NOMOR 32 Tahun 2016 dan NONOR 659/KPU-Prov-010/XII/2016', '2016-05-16', '', 472374049685, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 472375014685, 84507341610, 86469539116, 0, 326841871995, 326841871995, 59063603574, 'Pemda'),
(7, 2017, 'KPU  PROVINSI B A N T E N', 654432, 'KPU PROVINSI B A N T E N', ' PROVINSI B A N T E N', 'NOMOR : 978/19-Huk/2016 dan NOMOR : 029/KPU-Prov.015/IV/2016', '2016-04-26', '', 270000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 150000000000, 106328144773, 106328144773, 120000000000, 154839885972, 163613078493, 58776734, 'Pemda'),
(8, 2017, 'KPU  PROVINSI GORONTALO', 654556, 'KPU PROVINSI GORONTALO', ' PROVINSI GORONTALO', 'NOMOR : 107/HKM-ORG/PK/V/2016 DAN NOMOR : 336/KPU-Prov-27/09/V/2016', '2016-05-09', '', 77989407950, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 49932386700, 23230876206, 38122419234, 28056881250, 35475124254, 35475124254, 4391724462, 'Pemda'),
(9, 2017, 'KPU  PROVINSI PAPUA BARAT', 654598, 'KPU PROVINSI PAPUA BARAT', ' PROVINSI PAPUA BARAT', 'NOMOR : 978/670/GPB/2016 DAN NOMOR : 53/NPHD/KPU.Prov-032/V/2016', '2016-05-21', '', 450569169000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 306713160000, 176453711638, 176453711638, 143856009000, 229017287552, 164867462490, 109247994872, 'Pemda'),
(10, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655633, 'KPU KABUPATEN ACEH TENGGARA', ' KABUPATEN ACEH TENGGARA', 'NOMOR : 900.KU/10/2016 DAN NOMOR : 230/KPU Agara/001.434470/V/2016', '2016-05-21', '', 27914430000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 19913630000, 17398788409, 17398788409, 8000800000, 10515641000, 10515641000, 591, 'Pemda'),
(11, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655640, 'KPU KABUPATEN ACEH TIMUR', ' KABUPATEN ACEH TIMUR', 'NOMOR : 270/3602 DAN NOMOR : 186/NPHD/KIP-ATIM/V/2016', '2016-05-20', '', 34999500000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 34999500000, 12174527000, 12174527000, 0, 22233650057, 22233650057, 591322943, 'Pemda'),
(12, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655654, 'KPU KABUPATEN ACEH TENGAH', ' KABUPATEN ACEH TENGAH', 'NOMOR : 17/NPHD/2016 DAN NOMOR : 270/01/KIP-AT/NPHD/V/2016', '2016-05-19', '', 27782015384, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 27782015000, 10838647477, 10838647477, 0, 14987221532, 14987221532, 1956145991, 'Pemda'),
(13, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655661, 'KPU KABUPATEN BENER MERIAH', ' KABUPATEN BENER MERIAH', 'NOMOR : 06/NPHD/V/TAHUN 2016 DAN NOMOR : 55/NPHD/KIP-BM/V/2016', '2016-05-18', '', 31329328000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 14000000000, 13648174944, 13648174944, 17329328000, 17456949421, 17456949421, 224203635, 'Pemda'),
(14, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655675, 'KPU KABUPATEN ACEH BARAT', ' KABUPATEN ACEH BARAT', 'NOMOR : 9/NPHD/III/2016 DAN NOMOR : 226/KIP-AB-001.434512/2016', '2016-05-20', '', 20000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 12000000000, 8676969214, 8676969214, 7999949214, 10838813236, 10838813236, 484166764, 'Pemda'),
(15, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655682, 'KPU KABUPATEN ACEH BESAR', ' KABUPATEN ACEH BESAR', 'Nomor : 1/PER I/AB/2016, Nomor : 146/NPHD/KIP-AB/IV/2016', '2016-04-20', '', 42180392500, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 42180392500, 17944259750, 17944259750, 0, 20727648879, 20727648879, 3508483871, 'Pemda'),
(16, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655696, 'KPU KABUPATEN ACEH UTARA', ' KABUPATEN ACEH UTARA', 'NOMOR :900/749/2016 DAN NOMOR : 270/212.1/V/2016', '2016-05-20', '', 66841278468, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 55841253468, 25000000000, 25000000000, 8500000000, 36853728468, 36853728468, 2487525000, 'Pemda'),
(17, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655701, 'KPU KABUPATEN ACEH BARAT DAYA', ' KABUPATEN ACEH BARAT DAYA', 'NOMOR : 278/614/2016 DAN NOMOR :278/072/2016', '2016-05-23', '', 23425610000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17000000000, 10381261785, 10381261785, 6425610000, 12038183698, 12038183698, 1006164517, 'Pemda'),
(18, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655718, 'KPU KABUPATEN P I D I E', ' KABUPATEN P I D I E', 'NOMOR : 14/MoU/2016 DAN NOMOR :174/270', '2016-05-20', '', 33000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 19999925000, 10466694988, 10466694988, 12999975000, 18329337559, 18329337559, 4203867453, 'Pemda'),
(19, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655722, 'KPU KABUPATEN SIMEULEU', ' KABUPATEN SIMEULEU', 'NOMOR :900/12/PPKD/2016 DAN NOMOR : 900/256/NPHD/KIP/2016', '2016-05-20', '', 15700000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 8498350000, 6874599201, 6874599201, 7201649201, 8822644250, 8822644250, 2755750, 'Pemda'),
(20, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655739, 'KPU KABUPATEN ACEH SINGKIL', ' KABUPATEN ACEH SINGKIL', 'NOMOR : KU-900/744/2016 DAN NOMOR : 900/167/2016', '2016-04-29', '', 14000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 12000000000, 6327274800, 6327274800, 2000000000, 7151797362, 7151797362, 520927838, 'Pemda'),
(21, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655743, 'KPU KABUPATEN BIREUN', ' KABUPATEN BIREUN', 'NOMOR : 6 TAHUN 2016 DAN NOMOR : 66/KIP/V/2016', '2016-05-20', '', 36089915239, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 22000000000, 14398907284, 14294787284, 14089890239, 19596403476, 19596403476, 2198699479, 'Pemda'),
(22, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655750, 'KPU KABUPATEN ACEH GAYO LUES', ' KABUPATEN ACEH GAYO LUES', 'NOMOR : 900/11/NPHD/2016 DAN NOMOR : 05.15/KPU-KAB/001-434599/05/2016', '2016-05-17', '', 17085960322, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 7549509760, 7549509760, 7085960322, 9530000000, 9530000000, 6450562, 'Pemda'),
(23, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655764, 'KPU KABUPATEN ACEH TAMIANG', ' KABUPATEN ACEH TAMIANG', 'NOMOR : 900/3208 DAN NOMOR : 470/SESKAB-001.434600/V/2016', '2016-05-16', '', 27276990150, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17476990000, 11367495042, 11367495042, 9800000000, 15066948666, 15066948666, 842546292, 'Pemda'),
(24, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655771, 'KPU KABUPATEN ACEH JAYA', ' KABUPATEN ACEH JAYA', 'NOMOR : 5/PH/2016 DAN NOMOR : 1/PH/KIP-AJ/V/2016', '2016-05-13', '', 12493108350, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 7000000000, 5744901843, 5744901843, 5493108350, 5612782836, 5612782836, 1135423671, 'Pemda'),
(25, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655785, 'KPU KABUPATEN NAGAN RAYA', ' KABUPATEN NAGAN RAYA', 'NOMOR : 900/5/Keu/nr/2016 DAN NOMOR : 017/KIP-NR/V/2016', '2016-05-21', '', 19700000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 15200000000, 8377780000, 8377780000, 4500000000, 10768194382, 10768194382, 554025618, 'Pemda'),
(26, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655792, 'KPU KOTA BANDA ACEH', ' KOTA BANDA ACEH', 'NOMOR : 11/NPHD/2016 DAN NOMOR :270/094/KIP-BNA/NPHD/V/2016', '2016-05-20', '', 20382018953, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 20382018953, 7805500000, 7805500000, 0, 8791720000, 8791720000, 3784798953, 'Pemda'),
(27, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655807, 'KPU KOTA SABANG', ' KOTA SABANG', 'NOMOR : 900/001 DAN NOMOR : 134/KIP-SAB/V/2016', '2016-05-04', '', 7184382500, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 5999950000, 2574333464, 2574333464, 1100000000, 3220011032, 3220011032, 1305605504, 'Pemda'),
(28, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655811, 'KPU KOTA LHOKSUMAWE', ' KOTA LHOKSUMAWE', 'NOMOR : 900/?./2016 DAN NOMOR : 1/KIP-LSW-001.434656/TAHUN 2016', '2016-05-04', '', 15000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 15000000000, 5936529577, 5936529577, 0, 8364171575, 8364171575, 699298848, 'Pemda'),
(29, 2017, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655828, 'KPU KOTA LANGSA', ' KOTA LANGSA', 'NOMOR : 030/1399/2016 DAN NOMOR : 03/NPHD/KIP.Kota Langsa/V/2016', '2016-05-16', '', 15028044000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 12000000000, 8549670000, 8550000000, 3028044000, 6468266044, 6468266044, 9777956, 'Pemda'),
(30, 2017, 'KPU  PROVINSI SUMATERA UTARA', 655832, 'KPU KABUPATEN TAPANULI TENGAH', ' KABUPATEN TAPANULI TENGAH', 'NOMOR : 900/1435/2016 DAN NOMOR : 80/KPU-Kab.002.434687/V/2016', '2016-05-20', '', 27397478000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 18000000000, 11235943821, 11235943821, 9397478000, 14014721498, 14014721498, 2146812681, 'Pemda'),
(31, 2017, 'KPU  PROVINSI SUMATERA UTARA', 656066, 'KPU KOTA TEBING TINGGI', ' KOTA TEBING TINGGI', 'NOMOR : 100/3947/PEMER/2016 DAN NOMOR : 179/KPUKota-002.434914/V/2016', '2016-05-19', '', 13122023200, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 5344916349, 5344916349, 3122023200, 5006818720, 5006818720, 2770288131, 'Pemda'),
(32, 2017, 'KPU  PROVINSI SUMATERA BARAT', 656197, 'KPU KABUPATEN KEPULAUAN MENTAWAI', ' KABUPATEN KEPULAUAN MENTAWAI', 'NOMOR : 279/170/BUP-KM/NPHD/2016 DAN NOMOR : 2/KPU-Kab-003.435089/v/2016', '2016-05-20', '', 15163153780, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 3856982657, 3856982657, 5163153780, 7544669616, 7544669616, 3761501507, 'Pemda'),
(33, 2017, 'KPU  PROVINSI SUMATERA BARAT', 656251, 'KPU KOTA PAYAKUMBUH', ' KOTA PAYAKUMBUH', 'NOMOR : 3/MOU/2016 DAN NOMOR : 01/NPHD/KPU-Kota-003.435146/V/2016', '2016-05-18', '', 9100000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 9100000000, 3586051698, 3586051698, 0, 5283815862, 5283815862, 230132440, 'Pemda'),
(34, 2017, 'KPU  PROVINSI RIAU', 656329, 'KPU KABUPATEN KAMPAR', ' KABUPATEN KAMPAR', 'NOMOR : 900/BUP-KPR/7/2016 DAN NOMOR : 075/KPU-KPR.004.435228/V/2016', '2016-05-19', '', 27500000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 27500000000, 11337276203, 11337276203, 0, 16122522865, 16122522865, 40200932, 'Pemda'),
(35, 2017, 'KPU  PROVINSI RIAU', 656361, 'KPU KOTA PEKANBARU', ' KOTA PEKANBARU', 'NOMOR : 005/NPHD/PPKD-PKU/2016 DAN NOMOR : 87/KPU-Kota-004.435265/V/2016', '2016-05-17', '', 29804214000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 29804214000, 9104372411, 9104372411, 0, 18724965952, 18724965952, 1974875637, 'Pemda'),
(36, 2017, 'KPU  PROVINSI JAMBI', 656401, 'KPU KABUPATEN SAROLANGUN', ' KABUPATEN SAROLANGUN', 'NOMOR : 900/7/NPHD/DPPKAD/2016 DAN NOMOR : 19/KPUKab-005.435316/2016', '2016-05-17', '', 17092353000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 9846459000, 7669817548, 7669817548, 7245894000, 7646164964, 7646164964, 1776370488, 'Pemda'),
(37, 2017, 'KPU  PROVINSI JAMBI', 656422, 'KPU KABUPATEN MUARO JAMBI', ' KABUPATEN MUARO JAMBI', 'NOMOR : 14/NPHD/HKM/V/2016 DAN NOMOR : 8/NPHD/KPU-Kab-005.435331/2016', '2016-05-20', '', 22295375000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 22295375000, 10283026990, 10283026990, 0, 11859633137, 11859633137, 152714873, 'Pemda'),
(38, 2017, 'KPU  PROVINSI JAMBI', 656464, 'KPU KABUPATEN T E B O', ' KABUPATEN T E B O', 'NOMOR : 08/KEUANGAN/2016 DAN NOMOR 56/KPU-TEBO/IV/2016', '2016-05-03', '', 19869557518, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 19869557518, 7269640000, 7269640000, 0, 8751910939, 8751910939, 3848006579, 'Pemda'),
(39, 2017, 'KPU  PROVINSI SUMATERA SELATAN', 656492, 'KPU KABUPATEN MUSI BANYU ASIN', ' KABUPATEN MUSI BANYU ASIN', 'NOMOR : 900/436 DAN NOMOR \" 02/KPU-KAB/006.435410/III/2016', '2016-03-29', '', 49451679425, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 49451679425, 25062785303, 25062785303, 0, 23885638000, 23885638000, 503256122, 'Pemda'),
(40, 2017, 'KPU  PROVINSI BANDAR LAMPUNG', 656731, 'KPU KABUPATEN LAMPUNG BARAT', ' KABUPATEN LAMPUNG BARAT', 'NOMOR : 139/03/Pemkab-LB/01/2016 dan NOMOR : 94/Seskab.008.435579/V/2016', '2016-05-11', '', 18481419000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10963173000, 9491800554, 10963173000, 7518245000, 6306259820, 6306259820, 1211985180, 'Pemda'),
(41, 2017, 'KPU  PROVINSI BANDAR LAMPUNG', 656748, 'KPU KABUPATEN TULANG BAWANG', ' KABUPATEN TULANG BAWANG', 'NOMOR : 900/009/III.11/TB/V/2016 DAN NOMOR : 01/MOU/008.435585-SES KAB/V/ 2016', '2016-05-11', '', 22500000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17500000000, 10093856000, 10093856000, 5000000000, 10986329000, 10986329000, 1419815000, 'Pemda'),
(42, 2017, 'KPU  PROVINSI JAWA BARAT', 657033, 'KPU KABUPATEN BEKASI', ' KABUPATEN BEKASI', 'NOMOR :270/978.5/33/Bakesbangpol/2016 DAN NOMOR : 07/BA/V/2016', '2016-05-20', '', 72155379024, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 33742252200, 14824023873, 14824023873, 38413125473, 31815213934, 31815213934, 25516139866, 'Pemda'),
(43, 2017, 'KPU  PROVINSI JAWA BARAT', 657228, 'KPU KOTA TASIKMALAYA', ' KOTA TASIKMALAYA', '900/56/PPKD-NPHD/2016, NOMOR : 01/KPU-Kota/011-329197/III/2016', '2016-03-28', '', 24931805000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 24931805000, 9129505512, 9129505512, 0, 12233576269, 12233576269, 3568723219, 'Pemda'),
(44, 2017, 'KPU  PROVINSI JAWA BARAT', 657232, 'KPU KOTA CIMAHI', ' KOTA CIMAHI', 'Nomor : 180/45-Perj/2016 dan NOMOR : 22/KPU-Kota-011.329201/IV/2016', '2016-04-29', '', 34523418800, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 7077329233, 7077329233, 7077329233, 10762180900, 10762180900, 10762180900, 0, 'Pemda'),
(45, 2017, 'KPU  PROVINSI JAWA TENGAH', 657300, 'KPU KABUPATEN BATANG', ' KABUPATEN BATANG', 'NOMOR :270/0663/IV/2016 DAN NOMOR : 138/KPU-KaB-012.329285/2016', '2016-04-26', '', 25000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 25000000000, 10588289230, 10588289230, 0, 12297007462, 12297007462, 2114703308, 'Pemda'),
(46, 2017, 'KPU  PROVINSI JAWA TENGAH', 657321, 'KPU KABUPATEN BREBES', ' KABUPATEN BREBES', '020/III/2016, NOMOR 019/KPU.Kab.Brebes/012.329305/III/2016', '2016-03-29', '', 40565089000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 40565089000, 13443962855, 13443962855, 0, 19691427426, 19691427426, 7429698719, 'Pemda'),
(47, 2017, 'KPU  PROVINSI JAWA TENGAH', 657338, 'KPU KABUPATEN PATI', ' KABUPATEN PATI', '131/1616, NOMOR: 241/KPU.Pati.012.329311/IV/2016', '2016-04-29', '', 29795422000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 29795422000, 8960072058, 8960072058, 0, 16710091146, 16710091146, 4125258796, 'Pemda'),
(48, 2017, 'KPU  PROVINSI JAWA TENGAH', 657363, 'KPU KABUPATEN JEPARA', ' KABUPATEN JEPARA', '6 TAHUN 2016, NOMOR: 23/NPHD/KPU-KAB/IV/2016', '2016-04-22', '', 25535232000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 25500000000, 8685453776, 8685453776, 35232000, 13792678952, 13792678952, 3057099272, 'Pemda'),
(49, 2017, 'KPU  PROVINSI JAWA TENGAH', 657406, 'KPU KABUPATEN CILACAP', ' KABUPATEN CILACAP', 'NOMOR : 270/28/03/2016 DAN NOMOR : 132/KPU.Kab-012.329382/V/2016', '2016-05-20', '', 39265446400, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 39265446400, 14271267740, 14271267740, 0, 18600836070, 18600836070, 6393342590, 'Pemda'),
(50, 2017, 'KPU  PROVINSI JAWA TENGAH', 657427, 'KPU KABUPATEN BANJARNEGARA', ' KABUPATEN BANJARNEGARA', 'NOMOR : 900/448/Kesbangpollinmas/2016 DAN NOMOR : 110/KPU-Kab-012.329402/V/2016', '2016-05-02', '', 21637800000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 7480284405, 7480284405, 7480284405, 11886115027, 11886115027, 11886115027, 0, 'Pemda'),
(51, 2017, 'KPU  PROVINSI JAWA TENGAH', 657558, 'KPU KOTA SALATIGA', ' KOTA SALATIGA', 'NOMOR :27/Perj-IV/2016 dan NOMOR : 345/KPU-SLTG-012.329537/IV/2016', '2016-04-29', '', 7537230000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 7537230000, 2300000000, 2300000000, 0, 4462000000, 4462000000, 775230000, 'Pemda'),
(52, 2017, 'KPU  PROVINSI DI YOGYAKARTA', 657605, 'KPU KABUPATEN KULONPROGO', ' KABUPATEN KULONPROGO', 'NOMOR : 17 PRJ.KP/UKM/2016 DAN NOMOR : I/PERJ/KPU.Kab-013.329599/IV/2016', '2016-04-29', '', 14328177000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 14328177000, 4825940378, 4825940378, 0, 6308193950, 6308193950, 3194042672, 'Pemda'),
(53, 2017, 'KPU  PROVINSI DI YOGYAKARTA', 657647, 'KPU KOTA YOGYAKARTA', ' KOTA YOGYAKARTA', 'NOMOR :900/01/NPHD/2016 DAN NOMOR :60/KPU-Kota.013.329631/V/2016', '2016-05-19', '', 14917502325, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 6382400000, 3133335466, 3133335466, 8535102325, 7088473518, 7088473518, 4695693341, 'Pemda'),
(54, 2017, 'KPU  PROVINSI JAWA TIMUR', 657956, 'KPU KOTA BATU', ' KOTA BATU', 'NOMOR: 180/15/NPHD/422.012/2016 NOMOR :270/01/KPU Kota-014.329951/V/2016', '2016-05-09', '', 12727728000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 12727728000, 5069817106, 5069817106, 0, 6164765000, 6164765000, 1493145894, 'Pemda'),
(55, 2017, 'KPU  PROVINSI BALI', 658091, 'KPU KABUPATEN BULELENG', ' KABUPATEN BULELENG', 'NOMOR : 900/167/BKBP/2016 DAN NOMOR : 82/KPU-Kab-016.433727/IV/2016', '2016-04-29', '', 40226000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 40226000000, 12656080140, 12656080140, 0, 17146567696, 17146568226, 10423351634, 'Pemda'),
(56, 2017, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658330, 'KPU KABUPATEN FLORES TIMUR', ' KABUPATEN FLORES TIMUR', 'NOMOR : HK.01 Tahun 2016 dan NOMOR : 01/PBWB.FLT/KPU-KAB-081.433980/2016', '2016-03-21', '', 25818749550, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 15669777050, 8610993000, 8610993000, 10148971950, 13425286662, 13425286662, 3782469338, 'Pemda'),
(57, 2017, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658393, 'KPU KABUPATEN LEMBATA', ' KABUPATEN LEMBATA', 'NOMOR :HK.180/11/V/2016 DAN NOMOR : 01/KPU-KAB.018.434047/V/2016', '2016-05-16', '', 22666850730, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 11719930000, 9999023105, 9999023105, 10946918105, 11616367815, 11616367815, 1051457185, 'Pemda'),
(58, 2017, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658422, 'KPU KOTA KUPANG', ' KOTA KUPANG', 'NOMOR : NPHD/HK/PEMKOT/2016 DAN NOMOR : 41/KPU.Kota.018434078/IV/2016', '2016-04-01', '', 20000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 20000000000, 7619442000, 7619442000, 0, 9245308002, 9245308002, 3135249998, 'Pemda'),
(59, 2017, 'KPU  PROVINSI KALIMANTAN BARAT', 658457, 'KPU KABUPATEN L A N D A K', ' KABUPATEN L A N D A K', 'NOMOR : 903/138/I-BPKAD/2016 DN NOMOR : 058/KPUKab.019.435682/IV/2016', '2016-04-28', '', 33595366500, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17824264650, 11685545300, 11685545300, 15771101850, 15538431088, 15538431088, 6371390112, 'Pemda'),
(60, 2017, 'KPU  PROVINSI KALIMANTAN BARAT', 658546, 'KPU KOTA SINGKAWANG', ' KOTA SINGKAWANG', 'NOMOR :134.5/009/Kertas/Pem-A-2016 DAN NOMOR : 01/KPU-SKW-019-4357770/IV/2016', '2016-04-28', '', 13608630475, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10500000000, 4504690936, 5887342633, 3108630475, 7366307487, 7366307487, 354980355, 'Pemda'),
(61, 2017, 'KPU  PROVINSI KALIMANTAN SELATAN', 658550, 'KPU KABUPATEN KOTAWARINGIN BARAT', ' KABUPATEN KOTAWARINGIN BARAT', 'NOMOR : 900/690/V/DPKD/2016 DAN NOMOR : 68/KPU-Kab-020.435792/V/2016', '2016-05-21', '', 19176568000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 5815288100, 6815354400, 9176568000, 9325927212, 9325927212, 3035286388, 'Pemda'),
(62, 2017, 'KPU  PROVINSI KALIMANTAN SELATAN', 658592, 'KPU KABUPATEN BARITO SELATAN', ' KABUPATEN BARITO SELATAN', 'NOMOR ; B-72/SETDA/AS-III-KEU/821.2/900/5/2016', '2016-05-20', '', 19962242200, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 11481484200, 6889189796, 6889189796, 8480758000, 7966887548, 7966887548, 5106164856, 'Pemda'),
(63, 2017, 'KPU  PROVINSI KALIMANTAN SELATAN', 658745, 'KPU KABUPATEN HULU SUNGAI UTARA', ' KABUPATEN HULU SUNGAI UTARA', 'NOMOR :270/70/Kesbangpol/2016 DAN NOMOR : 01/NPHD/KPU-Kab-022.435993/v/2016', '2016-05-18', '', 22883964000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 22883964000, 7435604000, 7435604000, 0, 10344144000, 10344144000, 5104216000, 'Pemda'),
(64, 2017, 'KPU  PROVINSI KALIMANTAN SELATAN', 658766, 'KPU KABUPATEN BARITO KUALA', ' KABUPATEN BARITO KUALA', 'NOMOR : 181/4/KUM/2016 DAN NOMOR : 74/KPUKab-436013/IV/2016', '2016-04-28', '', 21657742000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 21657742000, 10214970000, 10214970000, 0, 8231259936, 8231259936, 3211512064, 'Pemda'),
(65, 2017, 'KPU  PROVINSI SULAWESI UTARA', 658951, 'KPU KABUPATEN BOLAANG MONGONDOW', ' KABUPATEN BOLAANG MONGONDOW', 'NOMOR : 51/MOU-HKM/VI/2016 DAN NOMOR : 54/KPU-BM/023.436220/VI/2016', '2016-06-07', '', 25380471100, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 19000000000, 14263751559, 14263751559, 6380471100, 10577705286, 10577705286, 539014255, 'Pemda'),
(66, 2017, 'KPU  PROVINSI SULAWESI UTARA', 658972, 'KPU KABUPATEN KEPULAUAN SANGIHE', ' KABUPATEN KEPULAUAN SANGIHE', 'NOMOR : 51/MOU-HKM/VI/2016 DAN NOMOR : 54/KPU-BM/023.436220/VI/2016', '2016-06-07', '', 24475234866, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 15500000000, 11968888000, 11968888000, 8975235000, 12195544300, 12195544300, 310802700, 'Pemda'),
(67, 2017, 'KPU  PROVINSI SULAWESI UTARA', 659047, 'KPU KABUPATEN BANGGAI KEPULAUAN', ' KABUPATEN BANGGAI KEPULAUAN', 'NOMOR : 7/MOU/2016, NOMOR : 1/KB/KPU-Bangkep-024/IV/2016', '2016-04-20', '', 22937624181, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 22937635000, 13357723000, 13357758000, 0, 9566377000, 9566377000, 13500000, 'Pemda'),
(68, 2017, 'KPU  PROVINSI SULAWESI TENGAH', 659101, 'KPU KABUPATEN B U O L', ' KABUPATEN B U O L', 'NOMOR : 900/34/III/2016/PPKAD, NOMOR : 29.05/KPU-KAB/024.433186/III/2016', '2016-03-01', '', 20841170425, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17408900000, 12816769170, 12816769170, 3432100000, 7908130830, 7908130830, 116100000, 'Pemda'),
(69, 2017, 'KPU  PROVINSI SULAWESI SELATAN', 659182, 'KPU KABUPATEN TAKALAR', ' KABUPATEN TAKALAR', 'NOMOR: 900/521/KEU, NOMOR : 02/KPU-PILKADA.025.433274/III/2016', '2016-03-22', '', 16000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 7997992000, 7997992000, 6000000000, 7191988000, 7191988000, 810020000, 'Pemda'),
(70, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 659431, 'KPU KABUPATEN BUTON', ' KABUPATEN BUTON', 'NOMOR :276.5/1019 DAN  NOMOR : 01/NPHD/KPU-KAB.BUTON/V/2016', '2016-05-17', '', 24641500600, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 18000000000, 8420430256, 8420430256, 6641500600, 8165278653, 8165278997, 8055791347, 'Pemda'),
(71, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 659470, 'KPU KABUPATEN BOMBANA', ' KABUPATEN BOMBANA', 'NOMOR : 900/1869/2016 DAN NOMOR : 80/270/NPHD/KPU-Kab-026.659470/V/2016', '2016-05-20', '', 25423113320, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 17350983320, 12044768364, 12044768364, 8072130000, 13351344956, 13378344956, 0, 'Pemda'),
(72, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 659491, 'KPU KABUPATEN KOLAKA UTARA', ' KABUPATEN KOLAKA UTARA', 'NOMOR : 908/4/2016 DAN NOMOR :01/NPHD/KPU-Kab/027.433594/2016', '2016-05-19', '', 20261789738, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 20261789738, 7853333000, 7853333000, 0, 9255466098, 9255466098, 3152990640, 'Pemda'),
(73, 2017, 'KPU  PROVINSI SULAWESI TENGGARA', 659509, 'KPU KOTA KENDARI', ' KOTA KENDARI', 'NOMOR : 11/Perj/2016 DAN NOMOR ; 72/KB/KPU-KOTA-026.433608/TAHUN 2016', '2016-05-16', '', 31803955250, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 19361723800, 13067370281, 13067370281, 8585217450, 14528854096, 14528854096, 350716873, 'Pemda'),
(74, 2017, 'KPU  PROVINSI GORONTALO', 659534, 'KPU KABUPATEN BOALEMO', ' KABUPATEN BOALEMO', 'NOMOR : 18/NPHD/UANG/2016 DAN NOMOR : 02/KptS/KPU Kab.Boalemo/027.436540/V/2016', '2016-05-04', '', 13000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 13000000000, 6509556858, 6509556858, 0, 6237436728, 6237436728, 253006414, 'Pemda'),
(75, 2017, 'KPU  PROVINSI MALUKU', 659576, 'KPU KABUPATEN MALUKU TENGAH', ' KABUPATEN MALUKU TENGAH', 'NOMOR : 900/69/PJ/2016, NOMOR : 01/NPHD/KPU-KAB/028.433639/IV/2016', '2016-04-27', '', 38660283500, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 33119527300, 13882192982, 13882192982, 5540756200, 15871167450, 19235150718, 5542939800, 'Pemda'),
(76, 2017, 'KPU  PROVINSI MALUKU', 659580, 'KPU KABUPATEN SERAM BAGIAN BARAT', ' KABUPATEN SERAM BAGIAN BARAT', 'NOMOR : 270/067 DAN NOMOR : 01/KPU-NPHD/IV/2016', '2016-04-25', '', 28425285000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 20000000000, 11050000000, 11050000000, 6000000000, 12981663171, 12981663171, 1968336829, 'Pemda'),
(77, 2017, 'KPU  PROVINSI MALUKU', 659623, 'KPU KABUPATEN MALUKU TENGGARA BARAT', ' KABUPATEN MALUKU TENGGARA BARAT', 'NOMOR : 900/598/2016 DAN NOMOR 36/KPU-KAB.MTB/IV/2016', '2016-04-20', '', 29885892685, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 20300000000, 20300000000, 13786270000, 5442500000, 10068584000, 10068584000, 1887646000, 'Pemda'),
(78, 2017, 'KPU  PROVINSI MALUKU', 659630, 'KPU KABUPATEN BURU', ' KABUPATEN BURU', 'NOMOR : 270/127 ', '2016-04-21', '', 20600000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 12000000000, 11453941772, 11453941772, 8599999772, 9146058000, 9146058000, 0, 'Pemda'),
(79, 2017, 'KPU  PROVINSI MALUKU', 659644, 'KPU KOTA AMBON', ' KOTA AMBON', 'NOMOR : 910/2443/SETKOT dan NOMOR : 03/KPU KOTA AMBON/V/2016', '2016-05-04', '', 17160231000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 14671231000, 7004568401, 7004568401, 2489000000, 9358023215, 9358023215, 797639384, 'Pemda'),
(80, 2017, 'KPU  PROVINSI MALUKU UTARA', 659665, 'KPU KABUPATEN HALMAHERA TENGAH', ' KABUPATEN HALMAHERA TENGAH', 'NOMOR : 180/HK/2/2016, NOMOR : 01/NPHD-KPUHT/I/2016', '2016-01-14', '', 12500000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 8000000000, 6091305500, 6091305500, 4500000000, 6238802911, 6408253500, 441000, 'Pemda'),
(81, 2017, 'KPU  PROVINSI MALUKU UTARA', 659733, 'KPU KABUPATEN JAYAPURA', ' KABUPATEN JAYAPURA', '900/ii/nk/set dan nomor : 13 SWS/KAB JPR/030/IV/2016', '2016-04-27', '', 47218504388, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 38354006700, 30595207264, 17429303632, 8864497688, 29767265000, 29767266756, 21934000, 'Pemda'),
(82, 2017, 'KPU  PROVINSI PAPUA', 659754, 'KPU KABUPATEN YAPEN WAROPEN', ' KABUPATEN YAPEN WAROPEN', '', '0000-00-00', '', 51554055895, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 22500350000, 21048176670, 21048176670, 29053705895, 26505663865, 26505663865, 4000215360, 'Pemda'),
(83, 2017, 'KPU  PROVINSI PAPUA', 659801, 'KPU KABUPATEN PUNCAK JAYA', ' KABUPATEN PUNCAK JAYA', 'NOMOR : 270/39/DPKAD 2016 DAN NOMOR : 7/KB/KPU-KAB.030.434166/TAHUN 2016', '2016-04-22', '', 62793829500, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 59998694500, 18364143232, 18364143232, 2795135000, 42741530633, 42741530633, 1688155635, 'Pemda'),
(84, 2017, 'KPU  PROVINSI PAPUA', 659822, 'KPU KABUPATEN SARMI', ' KABUPATEN SARMI', '279/229/BUP/2016 DAN NOMOR 01/KPU-KS/IV/2016', '2016-04-26', '', 34000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 34000000000, 34000000000, 34000000000, 0, 'Pemda'),
(85, 2017, 'KPU  PROVINSI PAPUA', 659864, 'KPU KABUPATEN TOLIKARA', ' KABUPATEN TOLIKARA', 'NOMOR : 900/940/BPKAD/2016 DAN NOMOR : 001/NPHD/KPU-TLK/IV/2016', '2016-04-19', '', 84667547030, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 40000000000, 40000000000, 40000000000, 44667547000, 37772740897, 37772740897, 6894806103, 'Pemda'),
(86, 2017, 'KPU  PROVINSI PAPUA', 659892, 'KPU KABUPATEN MAPPI', ' KABUPATEN MAPPI', 'NOMOR : 900/940/BPKAD/2016 DAN NOMOR : 001/NPHD/KPU-TLK/IV/2016', '2016-04-19', '', 63872014000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 38865063000, 28456920400, 28456920400, 25006951000, 22910116419, 22910116419, 12504977181, 'Pemda'),
(87, 2017, 'KPU  PROVINSI PAPUA', 659911, 'KPU KOTA JAYAPURA', ' KOTA JAYAPURA', 'NOMOR : 900/939/2016 DAN NOMOR : 31/KPU-Kota/030.434279/IV/2016', '2016-04-29', '', 46000211550, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 46000211550, 18000000000, 14651444851, 0, 25343874762, 25343874762, 6004891937, 'Pemda'),
(88, 2017, 'KPU  PROVINSI PAPUA BARAT', 659949, 'KPU KABUPATEN SORONG', ' KABUPATEN SORONG', 'NOMOR : 903/428 DAN  NOMOR : 279/01/IV/2016', '2016-04-27', '', 52733491000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 35000000000, 10754673821, 10661457540, 0, 13082152199, 13082152199, 11256390261, 'Pemda'),
(89, 2017, 'KPU  PROVINSI PAPUA BARAT', 660010, 'KPU KOTA SORONG', ' KOTA SORONG', 'NOMOR : 910/31/NPHD/2016 DAN NOMOR : 79/NPHD/KPU-SRG/V/2016', '2016-05-18', '', 22000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 11000000000, 10999680000, 10999680000, 11000000000, 10997122924, 10997122924, 3197076, 'Pemda'),
(90, 2017, 'KPU  PROVINSI PAPUA', 670824, 'KPU KAB. NDUGA', 'KAB. NDUGA', 'NOMOR : 279/73/SET DAN NOMOR : 9/KB/KPU-Nduga/030/Ztahun 2016', '2016-03-16', '', 61847000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 30000000000, 25412698000, 25412698000, 31847000000, 31205998207, 31205998207, 5228303793, 'Pemda'),
(91, 2017, 'KPU  PROVINSI PAPUA', 670831, 'KPU KAB. LANNY JAYA', 'KAB. LANNY JAYA', '001/NPHD/KPU-LJ/IV/2016', '2016-04-24', '', 64999957000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 40000000000, 28902500000, 28902500000, 24995450000, 23602223227, 34699723227, 1393226773, 'Pemda'),
(92, 2017, 'KPU  PROVINSI PAPUA', 670845, 'KPU KAB. DOGIYAI', 'KAB. DOGIYAI', 'NOMOR : 910/I-01/NPHD-2016 DAN NOMOR : 01/SET/KPU/I-1/2016', '2016-04-27', '', 56803560700, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 28000000000, 26736662374, 26736662374, 28803560700, 30065173210, 30065173210, 1725116, 'Pemda'),
(93, 2017, 'KPU  PROVINSI BENGKULU', 670941, 'KPU KAB. BENGKULU TENGAH', 'KAB. BENGKULU TENGAH', 'NOMOR : 08 TAHUN 2015 DAN NOMOR : 01/NPHD/2016', '2016-05-18', '', 15955372000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10324153900, 7553534677, 7553534677, 5631218100, 6095624138, 6095624138, 2306213185, 'Pemda'),
(94, 2017, 'KPU  PROVINSI BANDAR LAMPUNG', 680696, 'KPU KABUPATEN TULANGBAWANG BARAT', 'KABUPATEN TULANGBAWANG BARAT', 'NOMOR : 900/2/NPHD/I.02/HK/TUBABA/2016 DAN NOMOR : 01/NPHD/KPU.Kab-008.680696/2016', '2016-05-11', '', 15000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 7862732658, 7862732658, 5000000000, 6454211719, 6454211719, 683055623, 'Pemda'),
(95, 2017, 'KPU  PROVINSI BANDAR LAMPUNG', 680701, 'KPU KABUPATEN PRING SEWU', 'KABUPATEN PRING SEWU', 'NOMOR : NPHD/B.06/I.03/2016 DAN NOMOR :68/KB/KPU-Kab-008.680701/TAHUN 2016', '2016-05-16', '', 15500000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 10000000000, 5776492268, 5776492268, 5500000000, 7710365682, 7710365682, 2013142050, 'Pemda'),
(96, 2017, 'KPU  PROVINSI BANDAR LAMPUNG', 680718, 'KPU KABUPATEN MESUJI', 'KABUPATEN MESUJI', 'NOMOR : B/12/I/02/HK/NPHD/MSJ/2016 DAN NOMOR : 021/NPHD/KPU.Kab-08.680718/V/2016', '2016-05-16', '', 13795564000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 7967364000, 7700000000, 7700000000, 5828200000, 5900000000, 5900000000, 195564000, 'Pemda'),
(97, 2017, 'KPU  PROVINSI MALUKU UTARA', 680739, 'KPU KABUPATEN KEPULAUAN MOROTAI', 'KABUPATEN KEPULAUAN MOROTAI', 'NOMOR : 279/346/PM/IV/2016 dan NOMOR : 004/KPU-PM/IV/2016', '2016-04-20', '', 16582717000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 16582717000, 9374561600, 10199033600, 0, 7204049805, 6379577805, 4105595, 'Pemda'),
(98, 2017, 'KPU  PROVINSI PAPUA', 680743, 'KPU KABUPATEN INTAN JAYA', 'KABUPATEN INTAN JAYA', 'NOM0R : 900/22/BUP DAN NOMOR :016/NPHD-KPU/IJ/IV/2016', '2016-04-01', '', 79366611000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 62945773375, 44291223890, 44291223890, 16420838000, 34901147667, 34901147667, 174239818, 'Pemda'),
(99, 2017, 'KPU  PROVINSI PAPUA', 680764, 'KPU KABUPATEN TAMBRAUW', 'KABUPATEN TAMBRAUW', 'NOMOR : 900/197/2016 DAN NOMOR : 01/NPHD/KPU-TMB/IV/2016', '2016-04-30', '', 43995426200, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 43995426200, 17782934400, 17782934400, 0, 22029985800, 22029985800, 4182506000, 'Pemda'),
(100, 2017, 'KPU  PROVINSI PAPUA', 680771, 'KPU KABUPATEN MAYBRAT', 'KABUPATEN MAYBRAT', 'NOMOR : 900/116/BUP-MBT/V/2016 DAN NOMOR : 08/KPU.MBT-032/V/2016', '2016-05-20', '', 45000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 30000000000, 26955819984, 26955819984, 15000000000, 18040564939, 18040564939, 3615077, 'Pemda'),
(101, 2017, 'KPU  PROVINSI SULAWESI BARAT', 984767, 'KPU PROPINSI SULAWESI BARAT', 'PROPINSI SULAWESI BARAT', 'NOMOR : 456/1431/SET DAN NOMOR : 12/BA/V/2016', '2016-05-20', '', 103088739025, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 75000000000, 48556674509, 48556674509, 28088739025, 46707980600, 46707980600, 7824083916, 'Pemda'),
(102, 0, '', 0, '', '', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', '', '', '0000-00-00', '', '', 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `data_2018`
--

CREATE TABLE `data_2018` (
  `id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL DEFAULT '2018',
  `prov` varchar(255) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `nama_satker` varchar(255) NOT NULL,
  `pem_hibah` varchar(255) NOT NULL,
  `no_nphd` varchar(255) NOT NULL,
  `tgl_nphd` date NOT NULL,
  `per_nphd` varchar(255) NOT NULL,
  `nilai_nphd` bigint(20) NOT NULL,
  `na_1` varchar(255) NOT NULL,
  `nb_1` date NOT NULL,
  `nc_1` varchar(255) NOT NULL,
  `nd_1` bigint(20) NOT NULL,
  `ndjppr` varchar(255) NOT NULL,
  `tdjppr` date NOT NULL,
  `noreg` varchar(255) NOT NULL,
  `noijin` varchar(255) NOT NULL,
  `treg` date NOT NULL,
  `nrek` varchar(255) NOT NULL,
  `norek` varchar(255) NOT NULL,
  `nbank` varchar(255) NOT NULL,
  `tr_1` bigint(20) NOT NULL,
  `tr_2` bigint(20) NOT NULL,
  `tr_3` bigint(20) NOT NULL,
  `tr_4` bigint(20) NOT NULL,
  `tr_all` bigint(20) NOT NULL,
  `pag17` bigint(20) NOT NULL,
  `real17` bigint(20) NOT NULL,
  `sp2hl17` bigint(20) NOT NULL,
  `tr18_1` bigint(20) NOT NULL,
  `tr18_2` bigint(20) NOT NULL,
  `tr18_all` bigint(20) NOT NULL,
  `pag18` bigint(20) NOT NULL,
  `real18_1` bigint(20) NOT NULL,
  `real18_2` bigint(20) NOT NULL,
  `real18_3` bigint(20) NOT NULL,
  `real18_4` bigint(20) NOT NULL,
  `real18_5` bigint(20) NOT NULL,
  `real18_6` bigint(20) NOT NULL,
  `real18_7` bigint(20) NOT NULL,
  `real18_8` bigint(20) NOT NULL,
  `real18_9` bigint(20) NOT NULL,
  `real18_10` bigint(20) NOT NULL,
  `real18_11` bigint(20) NOT NULL,
  `real18_12` bigint(20) NOT NULL,
  `real18_all` bigint(20) NOT NULL,
  `sp2hl18` bigint(20) NOT NULL,
  `sp4hl` bigint(20) NOT NULL,
  `peng` enum('Pemda','Negara') NOT NULL DEFAULT 'Pemda'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_2018`
--

INSERT INTO `data_2018` (`id`, `tahun`, `prov`, `kode_satker`, `nama_satker`, `pem_hibah`, `no_nphd`, `tgl_nphd`, `per_nphd`, `nilai_nphd`, `na_1`, `nb_1`, `nc_1`, `nd_1`, `ndjppr`, `tdjppr`, `noreg`, `noijin`, `treg`, `nrek`, `norek`, `nbank`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_all`, `pag17`, `real17`, `sp2hl17`, `tr18_1`, `tr18_2`, `tr18_all`, `pag18`, `real18_1`, `real18_2`, `real18_3`, `real18_4`, `real18_5`, `real18_6`, `real18_7`, `real18_8`, `real18_9`, `real18_10`, `real18_11`, `real18_12`, `real18_all`, `sp2hl18`, `sp4hl`, `peng`) VALUES
(1, 2018, 'KPU  PROVINSI SUMATERA UTARA', 654293, 'KPU PROVINSI SUMATERA UTARA', 'PEMERINTAH PROVINSI SUMATERA UTARA', ' 270/6673/2017 dan 316/PP.01.3-SPj/12/Prov/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 855940086000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02TDR4A8A', '', '0000-00-00', '', '', '', 327000000000, 0, 0, 0, 327000000000, 327366961000, 54522412897, 54522412897, 528940086000, 0, 528940086000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(2, 2018, 'KPU  PROVINSI RIAU', 654315, 'KPU PROVINSI RIAU', 'PEMERINTAH PROVINSI RIAU', ' 2/NPHD-HK/VII/2017 Tanggal 4 July 2017 ', '2017-07-04', '', 324000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J021H25GNA', '', '0000-00-00', '', '', '', 25000000000, 50000000000, 0, 0, 75000000000, 25000050000, 13205864436, 13205864436, 100000000000, 149000000000, 249000000000, 61794135000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(3, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 654336, 'KPU PROVINSI SUMATERA SELATAN', 'PEMERINTAH PROVINSI SUMATERA SELATAN', ' 900/01721/BPKAD-II/2017 DAN 72/KPTS/KPU-PROV-006/VII/2017 DAN 25 Juli 2017 ', '2017-07-25', '', 318000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'JO2WB55DGA', '', '0000-00-00', '', '', '', 21237000000, 18763000000, 0, 0, 40000000000, 36646653000, 29277916898, 29277916898, 50000000000, 208000000000, 258000000000, 298000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(4, 2018, 'KPU  PROVINSI LAMPUNG', 654357, 'KPU PROVINSI LAMPUNG', 'PEMERINTAH PROVINSI LAMPUNG', ' 112/PR.07-NK/18/Prov/VII/2017 tanggal 26 Juli 2017 ', '2017-07-26', '', 267931324424, '', '0000-00-00', '', 0, '', '0000-00-00', 'J024GHP21A', '', '0000-00-00', '', '', '', 44000000000, 0, 0, 0, 44000000000, 44000050000, 27827138177, 27827138177, 80000000000, 140000000000, 220000000000, 223931324424, 0, 13486385331, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13486385331, 0, 0, ''),
(5, 2018, 'KPU  PROVINSI JAWA BARAT', 654399, 'KPU  PROVINSI JAWA BARAT', ' PROVINSI JAWA BARAT', ' 270/33/Bakesbangpol; 210/PR.07-NK/32/Prov/IV/2017 Adendum 270/161/bakesbangpol dan 864/PR.07-NK/32/Prov/XII/2017 tggl 19 Des 2017 ', '2016-12-19', '', 1169069888655, '', '0000-00-00', '', 0, '', '0000-00-00', 'J03VG4L6UA', '', '0000-00-00', '', '', '', 724900014308, 0, 0, 0, 724900014308, 400013790000, 97522951647, 97522951647, 400000000000, 0, 400000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(6, 2018, 'KPU  PROVINSI JAWA TENGAH', 654404, 'KPU PROVINSI JAWA TENGAH', 'PEMERINTAH PROVINSI JAWA TENGAH', ' 120/39 TAHUN 2017 dan 66/PP.01.3-NPHD/33/Prov/VII/2017 tanggal 25 Juli 2017 ', '2017-07-25', '', 992241792000, '', '0000-00-00', '', 0, 'S-2620/WPB.14/2017', '2017-08-15', '26F7SBSA', 'S-2381/WPB.14/KP.134/2017', '2017-07-25', '', '1350066000090', 'Mandiri', 250000000000, 183575404000, 0, 0, 433575404000, 56800100000, 56668027132, 56668027132, 558666363000, 0, 558666363000, 561885000000, 23898022375, 72693289430, 73168196833, 0, 0, 0, 0, 0, 0, 0, 0, 0, 169759508638, 96591311805, 0, ''),
(7, 2018, 'KPU  PROVINSI JAWA TIMUR', 654425, 'KPU PROVINSI JAWA TIMUR', 'PEMERINTAH PROVINSI JAWA TIMUR', ' 131/464/011.2/2017 dan 14/PR.07-SPj/35/KPUProv/VIII/2017 tanggal 28 Agustus 2017 ', '2017-08-28', '', 817246782439, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02ZTTFEMA', 'S-2150/WPB.016/KP.031/2017', '2017-08-31', '', '', 'RPL 031 KPU Provinsi Jawa Timur', 69547741000, 50356606000, 0, 0, 119904347000, 119904347000, 11686859922, 11686859922, 697342415339, 0, 697342415339, 805559817000, 40454424205, 61267179793, 48632774914, 54743143708, 0, 0, 0, 0, 0, 0, 0, 0, 205097522620, 205097522620, 0, ''),
(8, 2018, 'KPU  PROVINSI BALI', 654446, 'KPU PROVINSI BALI', 'PEMERINTAH PROVINSI BALI', ' 113/04-G/HK/2017 dan 912/KB/KPU.Prov-016/2017 tanggal 9 Juni 2017 ', '2017-06-09', '', 229360000000, '', '0000-00-00', '', 185313126000, 'S-2054/PR.8/2017', '2017-07-04', 'J029FGWJ3A', 'S-001/WPB.21/KP.037/2017', '0000-00-00', '', '', 'Bank Pembangunan Daerah (BPD) Bali', 100000000000, 25000000000, 0, 0, 125000000000, 125000000000, 17206687664, 17206687664, 30000000000, 30313126000, 60313126000, 0, 4375930021, 13853240238, 10749511618, 9652150131, 8976868191, 0, 0, 0, 0, 0, 0, 0, 47607700199, 38630832008, 0, ''),
(9, 2018, 'KPU  PROVINSI NUSA TENGGARA BARAT', 654450, 'KPU PROVINSI NUSA TENGGARA BARAT', 'PEMERINTAH PROVINSI NUSA TENGGARA BARAT', '23/612/V/BKBPDN/2017 dan 43/HM.03.1-NK/52/Prov/V/2017', '2017-05-05', 'Pemberian Dana Hibah Kepada KPU Provinsi NTB Untuk Penyelenggaraan Pemilihan Gubernur dan Wakil Gubernur NTB Tahun 2018 TA 2017', 167515450000, ' 900/1161.b/BPKAD/2017 dan 64/HM.03.1-NK/52/Prov/2017 tanggal 21 Juli 2017 ', '2017-07-21', 'Pemberian Dana Hibah Kepada KPU Provinsi NTB Untuk Penyelenggaraan Pemilihan Gubernur dan Wakil Gubernur NTB Tahun 2018 TA 2017 dan TA 2018', 167515450000, 'S-1536/PR.8/2017', '2017-05-12', '23ZNCYSA', 'S-852/WPB.22/KP.038/2017', '2017-05-17', '', '0012107124006', 'PT Bank NTB Cabang Utama Pejanggik', 15000000000, 6500000000, 0, 0, 21500000000, 18559076000, 15965840328, 15965840328, 56015450000, 90000000000, 146015450000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(10, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 654467, 'KPU  PROVINSI NUSA TENGGARA TIMUR', ' PROVINSI NUSA TENGGARA TIMUR', ' HBH.655 tahun 2017 dan 496/KPU-Prov-018/VIII/2017 tanggal 24 Agustus 2017 ', '2017-08-24', '', 318530930000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02BF8QH4A', '', '0000-00-00', '', '', '', 62913430000, 0, 0, 0, 62913430000, 62913480000, 21081780592, 21081780592, 248006080000, 0, 248006080000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(11, 2018, 'KPU  PROVINSI KALIMANTAN BARAT', 654471, 'KPU  PROVINSI KALIMANTAN BARAT', ' PROVINSI KALIMANTAN BARAT', ' 972/2334/BPKPD dan 1/PR.07-SPj/01/Prov/VII/2017 tanggal 28 Juli 2017  ', '2017-07-28', '', 260217000000, '', '0000-00-00', '', 0, '', '0000-00-00', '23ANGGJA', '', '0000-00-00', '', '', '', 25000000000, 15000000000, 0, 0, 40000000000, 40000050000, 17043839167, 17043839167, 150000000000, 70217000000, 220217000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(12, 2018, 'KPU  PROVINSI KALIMANTAN TIMUR', 654500, 'KPU  PROVINSI KALIMANTAN TIMUR', ' PROVINSI KALIMANTAN TIMUR', ' 273/506/TU-BKP/VII/2017 dan 549/KU.04-SPj/64/KPU/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 310000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02LGAJ4CA', '', '0000-00-00', '', '', '', 20000000000, 50000000000, 0, 0, 70000000000, 60100605000, 23475159237, 23475159237, 240000000000, 0, 240000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(13, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 654535, 'KPU  PROVINSI SULAWESI SELATAN', ' PROVINSI SULAWESI SELATAN', ' 011/VII/PEM-PKS/2017 dan 434/KPU-Prov-025/VII/2017 tanggal 25 Juli 2017 ', '2017-07-25', '', 456420738454, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0262BP5RA', '', '0000-00-00', '', '', '', 77314800100, 0, 0, 0, 77314800100, 77314850000, 40967712979, 40967712979, 108748836795, 248294380729, 357043217524, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(14, 2018, 'KPU  PROVINSI SULAWESI TENGGARA', 654542, 'KPU  PROVINSI SULAWESI TENGGARA', ' PROVINSI SULAWESI TENGGARA', ' 903/041/BKKP/VI/2017 dan 123/SPJ.07.1/74/Prov/VI/2017 ', '2017-06-09', '', 258680582000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J026GXTHAA', '', '0000-00-00', '', '', '', 93000000000, 0, 0, 0, 93000000000, 117165243000, 47441674425, 47441674425, 165680582000, 0, 165680582000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(15, 2018, 'KPU  PROVINSI MALUKU', 654560, 'KPU PROVINSI MALUKU', 'PEMERINTAH PROVINSI MALUKU', ' 130-122 Tahun 2017 dan 220/PR.07.SPj/01/KPU-MALUKU/VII/2017 ', '2017-07-25', '', 200000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02NAVA98A', 'S-1631/WPB.31/KP.061.3/2017', '2017-08-14', '', '00000024-01-30-000179-6', 'BANK BTN', 15000000000, 17000000000, 0, 0, 32000000000, 32000000000, 14158970000, 14158970000, 30000000000, 138000000000, 168000000000, 200000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(16, 2018, 'KPU  PROVINSI MALUKU UTARA', 654577, 'KPU PROVINSI MALUKU UTARA', 'PEMERINTAH PROVINSI MALUKU UTARA', ' 995/497/G/2017 dan 01/KB/KPUProv-29/TAHUN 2017 Tanggal 25 April 2017 ', '2017-04-25', '', 222643663495, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02RU7PPAA', '', '0000-00-00', '', '', '', 19499800000, 35000000000, 0, 0, 54499800000, 19499850000, 19499800000, 19499800000, 60000000000, 100000000000, 160000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(17, 2018, 'KPU  PROVINSI PAPUA', 654581, 'KPU PROVINSI PAPUA', 'PEMERINTAH PROVINSI PAPUA', '', '0000-00-00', '', 850000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J025AE29RA', '', '0000-00-00', '', '', '', 100000000000, 0, 0, 0, 100000000000, 100000000000, 29273195623, 29273195623, 375000000000, 375000000000, 750000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(18, 2018, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 655629, 'KPU  KABUPATEN ACEH SELATAN', ' KABUPATEN ACEH SELATAN', ' 28/KIP.Kab.001.434461/VII/2017 tanggal 31 July 2017 ', '0000-00-00', '', 28991809000, '', '0000-00-00', '', 0, '', '0000-00-00', '2S6VQR2A', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000050000, 766841471, 766841471, 23991809000, 0, 23991809000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(19, 2018, 'KPU  PROVINSI SUMATERA UTARA', 655849, 'KPU KABUPATEN TAPANULI UTARA', 'PEMERINTAH KABUPATEN TAPANULI UTARA', ' 139/NPHD/TU/VIII/2017 dan 251/PP.01.3-SPj/1202/Kab/VIII/2017 tanggal 15 Agustus 2017  ', '2017-08-15', '', 35911617950, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GBP4SPA', '', '0000-00-00', '', '', '', 5660939770, 0, 0, 0, 5660939770, 10841716000, 4421791631, 4421791631, 5180727530, 25069950650, 30250678180, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(20, 2018, 'KPU  PROVINSI SUMATERA UTARA', 655874, 'KPU  KABUPATEN LANGKAT', ' KABUPATEN LANGKAT', ' 59/BUP/2017 dan 321/KPUkab.002.434722/VIII/2017 tanggal 24 Agustus 2017  ', '2017-08-24', '', 52277000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J)2M6DVPMA', '', '0000-00-00', '', '', '', 12389353100, 0, 0, 0, 12389353100, 12389401000, 5100000000, 5100000000, 39887646900, 0, 39887646900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(21, 2018, 'KPU  PROVINSI SUMATERA UTARA', 655895, 'KPU  KABUPATEN DELI SERDANG', ' KABUPATEN DELI SERDANG', ' 900/3135 dan 528/PP.01.3-SPj/1207/KT/VIII/2017 tanggal 31 Agustus 2017 ', '2017-08-31', '', 28219849250, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02U2R9RUA', '', '0000-00-00', '', '', '', 17520246800, 0, 0, 0, 17520246800, 17520296000, 5281702500, 5281702500, 10699602450, 0, 10699602450, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(22, 2018, 'KPU  PROVINSI SUMATERA UTARA', 655942, 'KPU KABUPATEN DAIRI', 'PEMERINTAH KABUPATEN DAIRI', ' 18 tahun 2017 dan 272/PR.07-SPj/1211/KPU-Kab/VIII/2017 tanggal 8 Agustus 2017 ', '2017-08-08', '', 34933377800, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02LN7F8FA', '', '0000-00-00', '', '', '', 3148376000, 7431867000, 0, 0, 10580243000, 10580293000, 3400173874, 3400173874, 24353134800, 0, 24353134800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(23, 2018, 'KPU  PROVINSI SUMATERA UTARA', 656070, 'KPU KOTA PADANG SIDEMPUAN', 'PEMERINTAH KOTA PADANG SIDEMPUAN', ' 270/3675/2017 dan 461/PP.01.3-SPj/1277/KPU-Kota/VIII/2017 tanggal 18 Agustus 2017 ', '2017-08-18', '', 13557547800, '900/1303/2018 dan 285/PP.01.3SPj/1277/KPU-Kota/III/2018', '2018-03-14', '', 10057547800, '', '0000-00-00', 'J02Q6GR8DA', '', '0000-00-00', '', '', '', 1500000000, 4559145600, 0, 0, 6059145600, 1500050000, 757992100, 757992100, 3998402200, 0, 3998402200, 9299637700, 1321017000, 1495653747, 71722500, 1393382198, 274655000, 1884103323, 1622339205, 0, 0, 0, 0, 0, 8062872973, 0, 0, ''),
(24, 2018, 'KPU  PROVINSI SUMATERA BARAT', 656202, 'KPU KOTA PADANG', 'PEMERINTAH KOTA PADANG', ' 250.018/HB/BPKAD/VI/2017 dan 1/PR.07-NK/1371/KPU-Kot/VI/2017 ', '2017-06-09', '', 37000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02R71C23A', '', '0000-00-00', '', '', '', 3000000000, 7173590000, 0, 0, 10173590000, 3860689000, 3721545108, 3721545108, 26702781400, 0, 26702781400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(25, 2018, 'KPU  PROVINSI SUMATERA BARAT', 656223, 'KPU KOTA SAWAHLUNTO', 'PEMERINTAH KOTA SAWAHLUNTO', ' 134.4/4/HUK-HAM/2017 dan 130/PR.07-NK/1373/KPU-Kota/VII/2017 tanggal 24 Juli 2017 ', '2017-07-24', '', 10701053526, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02QDD1F9A', '', '0000-00-00', '', '', '', 2000000000, 0, 0, 0, 2000000000, 2000050000, 1926795376, 1926795376, 8701053536, 0, 8701053536, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(26, 2018, 'KPU  PROVINSI SUMATERA BARAT', 656230, 'KPU  KOTA PADANG PANJANG', ' KOTA PADANG PANJANG', ' 188/317BPBDKESBANGPOL/PP/VIII/2017 dan 31/PP.01.3-SPj/1374/KPI-Kota/VIII/VIII/2017 tanggal 16 Agustus 2017 ', '2017-08-16', '', 8539677300, '', '0000-00-00', '', 0, '', '0000-00-00', 'TIDAK ADA RG', '', '0000-00-00', '', '', '', 1486466000, 0, 0, 0, 1486466000, 1486516000, 630583545, 630583545, 7053211300, 0, 7053211300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(27, 2018, 'KPU  PROVINSI SUMATERA BARAT', 656265, 'KPU  KOTA PARIAMAN', ' KOTA PARIAMAN', ' 89/BKD/PPJ/2017 dan I/PR.07-NK/1377/KPU-Kota/VIII/2017 tanggal 7 Agustus 2017  ', '2017-08-07', '', 11449818650, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02S1KCTMA', '', '0000-00-00', '', '', '', 6500000000, 0, 0, 0, 6500000000, 2407770000, 1801796247, 1801796247, 4949818650, 0, 4949818650, 4698203000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(28, 2018, 'KPU  PROVINSI RIAU', 656290, 'KPU KABUPATEN INDRAGIRI HILIR', 'PEMERINTAH KABUPATEN INDRAGIRI HILIR', ' 14/NPHD/VII/HK-2017 dan 75/KU.01.1/1404/KPU-Kab/VII/2017 tgl 25 Juli 2017 ', '2017-07-25', '', 45077000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02WGFK7BA', '', '0000-00-00', '', '', '', 12000000000, 0, 0, 0, 12000000000, 12000050000, 1053545000, 1053545000, 2000000000, 0, 2000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(29, 2018, 'KPU  PROVINSI JAMBI', 656382, 'KPU KABUPATEN KERINCI', 'PEMERINTAH KABUPATEN KERINCI', ' 05/HK-2017 dan 01/PP.01.3-NK/1501/KPU-Kab/VII/2017 tanggal 17 Juli 2017 ', '2017-07-17', 'Pelaksanaan Dana Hibah Penyelenggaraan Pemilihan Bupati dan Wakil Bupati Kabupaten Kerinci Tahun 2018', 18200000000, '', '0000-00-00', '', 0, 'S-2269/PR.8/2017', '2017-07-21', '245FK7SA', 'S-482/WPB.06/KP.03/2017', '2017-07-26', '', '0117-01-002275-30-5', 'BRI Cabang Sungai Penuh', 7500000000, 0, 0, 0, 7500000000, 7500000000, 990891000, 990891000, 10700000000, 0, 10700000000, 0, 243047825, 3319449275, 512606400, 2107272650, 2806177500, 4500042820, 0, 0, 0, 0, 0, 0, 13488596470, 13843045520, 0, ''),
(30, 2018, 'KPU  PROVINSI JAMBI', 656396, 'KPU KABUPATEN MERANGIN', 'PEMERINTAH KABUPATEN MERANGIN', ' 81/HK/tahun 2017 dan 121/PP.01.3-SPj/1502/KPU-Kab/VIII/2017 tanggal 3 Agustus 2017 ', '2017-08-03', 'PELAKSANAAN PENYELENGGARAAN DANA HIBAH PEMILIHAN BUPATI DAN WAKIL BUPATI KABUPATEN MERANGIN TAHUN 2018', 26082926000, '-', '0000-00-00', '', 0, 'S-1541/WPB.06/BD.0203/2017', '2017-08-25', 'J02LLN59BA', 'S-606/WPB.06/KP.0503/2017', '2017-08-25', '', '3001351407', 'BANK JAMBI CABANG BANGKO', 6944483000, 0, 0, 0, 6944483000, 6944533000, 3632033364, 3632033364, 11500000000, 7638443000, 19138443000, 19138443000, 768624187, 1404153251, 2527786669, 1686639239, 1715930503, 0, 0, 0, 0, 0, 0, 0, 8103133849, 2172777438, 0, ''),
(31, 2018, 'KPU  PROVINSI JAMBI', 656471, 'KPU  KOTA JAMBI', ' KOTA JAMBI', ' 280/745/Umum/VII/2017 dan 07/NPHD/KPU.Kota-005.435384/2017 tanggal 13 Juli 2017 ', '2017-07-13', '', 24445224275, '', '0000-00-00', '', 0, '', '0000-00-00', 'J027ZR3QCA', '', '0000-00-00', '', '', '', 6042545000, 0, 0, 0, 6042545000, 6042595000, 501163650, 501163650, 18402679275, 0, 18402679275, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(32, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656485, 'KPU KABUPATEN BANYUASIN', 'PEMERINTAH KABUPATEN BANYUASIN', ' 302/NPHD/BA/2017 dan 10/KPU.BA.006-435384/VII/2017 tanggal 20 Juli 2017 ', '2017-07-20', '', 70513684170, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0223YK1AA', '', '0000-00-00', '', '', '', 13000000000, 0, 0, 0, 13000000000, 13000050000, 5816185933, 5816185933, 15853553853, 41660130137, 57513683990, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(33, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656511, 'KPU  KABUPATEN L A H A T', ' KABUPATEN L A H A T', ' 900/04/BKD/2017 dan 48/PR.07/1604/KPU-Ksb/II/2017 tanggal 27 Feb 2017 ', '2017-02-27', '', 45644582650, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02D6VKHLA', '', '0000-00-00', '', '', '', 10983759225, 0, 0, 0, 10983759225, 8465889000, 3308994280, 3308994280, 34660823425, 0, 34660823425, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(34, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656528, 'KPU  KABUPATEN MUARA ENIM', ' KABUPATEN MUARA ENIM', ' 415.4/0955/BPKAD/2017 dan 218/PR.07-SPJ/1603/KPU-Kab/VII/2017 tanggal 25 Juli 2017 ', '2017-07-25', '', 54220265000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0262BP5RA', '', '0000-00-00', '', '', '', 13926558500, 0, 0, 0, 13926558500, 13926608000, 9165179981, 9165179981, 40293706500, 0, 40293706500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(35, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656532, 'KPU KABUPATEN OGAN KOMERING ILIR', 'PEMERINTAH KABUPATEN OGAN KOMERING ILIR', ' 12/III/BPKAD/2017 DAN 18/KPTS/KPU.KAB.OKI-006.435450/VII/2017 Tanggal 18 Juli 2017 ', '2017-07-18', '', 66108448000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02Z5DC1ZA', '', '0000-00-00', '', '', '', 16212332500, 0, 0, 0, 16212332500, 16462382000, 7039242260, 7039242260, 20000000000, 18700000000, 38700000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(36, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656581, 'KPU  KOTA PALEMBANG ', ' KOTA PALEMBANG ', ' 07/SPJ/BPKAD/2017 dan 042/SPK/V/2017 tanggal 30 Mei 2017 ', '2017-05-30', '', 63965261650, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02CMPQ2QA', '', '0000-00-00', '', '', '', 7148401000, 0, 0, 0, 7148401000, 7148451000, 3701238611, 3701238611, 56816860650, 0, 56816860650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(37, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656595, 'KPU KOTA PAGAR ALAM', 'PEMERINTAH KOTA PAGAR ALAM', ' 900/22/NPHD/2017 dan 02/PP.01.3-SPJ/1672/KPU-Kot/VII/2017 tanggal 20 Juli 2017 ', '2017-07-20', '', 27681031000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J025FXU5PA', '', '0000-00-00', '', '', '', 4200000000, 0, 0, 0, 4200000000, 5700050000, 4278153614, 4278153614, 5000000000, 15371031000, 20371031000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(38, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656600, 'KPU KOTA LUBUK LINGGAU', 'PEMERINTAH KOTA LUBUK LINGGAU', ' 049/BKD.IINPHD/2017 dan 01/KU.05/1673/kota/VIII/2017 tanggal 28 Juli 2017 ', '2017-07-28', '', 26100000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J023RJWHA', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 9350902000, 8582000111, 8582000111, 14500000000, 5600000000, 20100000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(39, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 656617, 'KPU KOTA PRABUMULIH', 'PEMERINTAH KOTA PRABUMULIH', ' 7/II/2017 DAN 05/NPHD/1674/KPU-Kota/VI/2017 ', '2017-06-09', '', 28696243600, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02ZDARWRA', '', '0000-00-00', '', '', '', 5113377600, 0, 0, 0, 5113377600, 5113427000, 3720156500, 3720156500, 2467754000, 7447769985, 9915523985, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(40, 2018, 'KPU  PROVINSI BENGKULU', 656706, 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU', ' 900/01/NPHD/I/BPKAD/2017 dan 01/PR.07/1881/KPU-KOT/V/2017 ', '2017-07-31', '', 25669895388, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02PK1L6WA', '', '0000-00-00', '', '', '', 5712975000, 0, 0, 0, 5712975000, 5712925000, 4254439154, 4254439154, 19956934705, 0, 19956934705, 21415421000, 1342904062, 2116523625, 1939042095, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5398469782, 0, 0, ''),
(41, 2018, 'KPU  PROVINSI LAMPUNG', 656727, 'KPU KABUPATEN LAMPUNG UTARA', 'PEMERINTAH KABUPATEN LAMPUNG UTARA', ' 180/934/35-LU/02/2017 dan 1/PR.07-NPHD/1803/KPU-Kab/X/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 31990992640, '', '0000-00-00', '', 0, '', '0000-00-00', 'J021N2W21A', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 10000050000, 3146574925, 3146574925, 5000000000, 16990992640, 21990992640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(42, 2018, 'KPU  PROVINSI LAMPUNG', 656752, 'KPU KABUPATEN TANGGAMUS', 'PEMERINTAH KABUPATEN TANGGAMUS', ' 270/5222/52/2017 dan 272/KPU-Kab-008.43559/VII/2017 tanggal 31 juli 2017  ', '2017-07-31', '', 32567890654, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02868W8RA', '', '0000-00-00', '', '', '', 3600000000, 0, 0, 0, 3600000000, 3600050000, 136183867, 136183867, 6400000000, 22567890654, 28967890654, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(43, 2018, 'KPU  PROVINSI BANGKA BELITUNG', 656816, 'KPU KABUPATEN BELITUNG', 'PEMERINTAH KABUPATEN BELITUNG', ' 181/008/NPHD/II/2017 tanggal 14 Juni 2017  ', '2017-06-14', '', 16846480000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0272REPBA', '', '0000-00-00', '', '', '', 3526799000, 0, 0, 0, 3526799000, 3526849000, 2418750300, 2418750300, 13319681000, 0, 13319681000, 14427729700, 329832200, 1098213200, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1428045400, 0, 0, ''),
(44, 2018, 'KPU  PROVINSI BANGKA BELITUNG', 656837, 'KPU KABUPATEN BANGKA', 'PEMERINTAH KABUPATEN BANGKA', ' 900/775/KESBANGPOL/2017 dan 01/PP.01.33-NK/1901/KPU-Kab/VII/2017 tanggal 31 Juli 2017  ', '2017-07-31', '', 22808733000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02HA8Z5RA', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 4170883000, 3485806562, 3485806562, 12808733000, 0, 12808733000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(45, 2018, 'KPU  PROVINSI BANGKA BELITUNG', 656879, 'KPU KOTA PANGKALPINANG', 'PEMERINTAH KOTA PANGKALPINANG', ' 03/SP/BAKEUDA/VII/2017 dan 1/PR.07-SPj/1971/KPU-Kot/VII/2017 tanggal 31 Juli 2017  ', '2017-07-31', '', 15016938000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02RMGZG1A', '', '0000-00-00', '', '', '', 4344295000, 0, 0, 0, 4344295000, 2446801000, 1864481650, 1864481650, 10672643000, 0, 10672643000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(46, 2018, 'KPU  PROVINSI KEPULAUAN RIAU', 656930, 'KPU KOTA TANJUNG PINANG', 'PEMERINTAH KOTA TANJUNG PINANG', ' 270/03/1.1.02/2017 DAN 01/NPHD/KPU.KotaKota-031.436741/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 16866462000, '', '0000-00-00', '', 0, '', '0000-00-00', '28APQXFA', '', '0000-00-00', '', '', '', 9000000000, 0, 0, 0, 9000000000, 1974727000, 988420700, 988420700, 7866427000, 0, 7866427000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(47, 2018, 'KPU  PROVINSI JAWA BARAT', 657008, 'KPU  KABUPATEN BOGOR', ' KABUPATEN BOGOR', ' 910/29/PRJN/PER-UU/2017 dan 178/PR.07-NK/3201/KPU-Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 89344473925, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02CMDPJ6A', '', '0000-00-00', '', '', '', 5794833400, 4140942900, 0, 0, 9935776300, 11135826000, 4927224248, 4927224248, 79408697625, 0, 79408697625, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(48, 2018, 'KPU  PROVINSI JAWA BARAT', 657054, 'KPU  KABUPATEN PURWAKARTA', ' KABUPATEN PURWAKARTA', ' 180/90/HUK/2017; 01/PP.01.3-Spj/3214/KPU-Kab/V/2017 3 Mei 2017 ', '2017-05-03', '', 27000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '22T6VYNA', '', '0000-00-00', '', '', '', 13000000000, 0, 0, 0, 13000000000, 2456560000, 2431030000, 2431030000, 14000000000, 0, 14000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(49, 2018, 'KPU  PROVINSI JAWA BARAT', 657061, 'KPU  KABUPATEN SUBANG', ' KABUPATEN SUBANG', ' 902/NPHD.1-Pem/2017 dan 109/PP.01.3-SPj/3213/Kab/VII/2017 tanggal 17 Juli 2017 ', '2017-07-17', '', 35000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02S285GUA', '', '0000-00-00', '', '', '', 13000000000, 0, 0, 0, 13000000000, 13000050000, 2550652000, 2550652000, 22000000000, 0, 22000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(50, 2018, 'KPU  PROVINSI JAWA BARAT', 657082, 'KPU  KABUPATEN SUMEDANG', ' KABUPATEN SUMEDANG', ' 278/NPHD.62.KS/2017 dan 09/PR.04-SP/KPU-Kab.311/VII/2017 tanggal 18 Juli 2017 ', '2017-07-18', '', 32103288900, '', '0000-00-00', '', 0, '', '0000-00-00', 'J022VNLXPA', '', '0000-00-00', '', '', '', 32103288900, 0, 0, 0, 32103288900, 13103338000, 2656233600, 2656233600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(51, 2018, 'KPU  PROVINSI JAWA BARAT', 657096, 'KPU  KABUPATEN G A R U T', ' KABUPATEN G A R U T', ' 270/1844/BPKAD dan 1/PP.02.3-SPJ/3205/KPU-Kab/VII/2017 tanggal 10 Juli 2017 ', '2017-07-10', '', 55174543472, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02TE12JEA', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 5494050000, 2574527909, 2574527909, 45174543472, 0, 45174543472, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(52, 2018, 'KPU  PROVINSI JAWA BARAT', 657118, 'KPU  KABUPATEN CIAMIS', ' KABUPATEN CIAMIS', ' 210/343/Kesbangpol/2017 dan 121/PP.01.3-NK/3207/KPU-Kab/VII/2017 tanggal 28 Juli 2017  ', '2017-07-28', '', 26665586450, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GH6DNBA', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 1820162000, 1815335014, 1815335014, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(53, 2018, 'KPU  PROVINSI JAWA BARAT', 657122, 'KPU  KABUPATEN CIREBON', ' KABUPATEN CIREBON', ' 13 Tahun 2017 dan 140/PP.01.3-SPj/3209/KPU-Kab/VII/2017 tanggal 21 Juli 2017 ', '2017-07-21', '', 33700000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02LPDZPRA', '', '0000-00-00', '', '', '', 19457100000, 0, 0, 0, 19457100000, 1954604000, 696601640, 696601640, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(54, 2018, 'KPU  PROVINSI JAWA BARAT', 657139, 'KPU  KABUPATEN KUNINGAN', ' KABUPATEN KUNINGAN', ' PKS/23/2017 dan 94/PP.01.3-SPj/3208/KPU-Kab/VII/2017 tanggal 14 Juli 2017 ', '2017-07-14', '', 23000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J)2VPSVL&A', '', '0000-00-00', '', '', '', 23000000000, 0, 0, 0, 23000000000, 3143827000, 1683323154, 1683323154, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(55, 2018, 'KPU  PROVINSI JAWA BARAT', 657150, 'KPU  KABUPATEN MAJALENGKA', ' KABUPATEN MAJALENGKA', ' No: 6 Tahun 2017 dan 206/PP.01.3-SPj/3210/KPU-Kab/VII/2017 Tanggal 28 Juli 2017 ', '2017-07-28', '', 18000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02K1H54XA', '', '0000-00-00', '', '', '', 15000000000, 0, 0, 0, 15000000000, 860828000, 495268500, 495268500, 3000000000, 0, 3000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(56, 2018, 'KPU  PROVINSI JAWA BARAT', 657164, 'KPU  KOTA BANDUNG', ' KOTA BANDUNG', ' 119/1481-Bag.Pem dan 13/PR-07-NK/3273/KPU-Kot/VII/2017 24 Juli 2017 ', '2017-07-24', '', 66020476335, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GZVBFUA', '', '0000-00-00', '', '', '', 8096707365, 55481967970, 0, 0, 63578675335, 8096792000, 1337671415, 1337671415, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(57, 2018, 'KPU  PROVINSI JAWA BARAT', 657171, 'KPU KOTA BOGOR', 'PEMERINTAH KOTA BOGOR', ' 460/NPHD.92/Adkesra/2017 dan 166/PP.01.3-PR/3271/KPU-Kot/VII/2017', '2017-07-31', 'Pemberian Hibah untuk Penyelenggaraan Pemilihan Walikota dan Wakil Walikota Bogor tahun 2018', 37943101650, ' 460/NPHD.487/Adkesra/2017 dan 507/PP.01.3-SD/3271/KPU-Kot/XII/2017 ', '2017-12-27', 'Pemberian Hibah untuk Penyelenggaraan Pemilihan Walikota dan Wakil Walikota Bogor tahun 2018', 379431016500, '', '0000-00-00', 'J024ZGR9VA', 'S-4547/WPB.13/KP.023/2017', '2017-08-24', '', '081610827001', 'Bank BJB', 9000000000, 4438281400, 0, 0, 13438281400, 1935641000, 1385917117, 1385917117, 24504820250, 0, 24504820250, 36553504000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(58, 2018, 'KPU  PROVINSI JAWA BARAT', 657185, 'KPU  KOTA SUKABUMI', ' KOTA SUKABUMI', ' 466/448/BPKD/2017 dan 112/PR.07-NPHD/3272/KPU-Kot/VII/2017 tanggal 28 Juli 2017 ', '2017-07-28', '', 15219842550, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02A1MW6VA', '', '0000-00-00', '', '', '', 6514641160, 5000000000, 0, 0, 11514641160, 5002138000, 1736665950, 1736665950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(59, 2018, 'KPU  PROVINSI JAWA BARAT', 657192, 'KPU  KOTA CIREBON', ' KOTA CIREBON', ' 903/HIBAH 11-KESBANG.POLDN/2017 dan 50/KPU Kota-011329166/II/2017 Tanggal 9 April 2017 ', '2017-04-09', '', 19457100000, '', '0000-00-00', '', 0, '', '0000-00-00', 'JO21HNVB8A', '', '0000-00-00', '', '', '', 4800000000, 0, 0, 0, 4800000000, 4816944000, 1223981045, 1223981045, 14657100000, 0, 14657100000, 18233118000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(60, 2018, 'KPU  PROVINSI JAWA BARAT', 657207, 'KPU  KOTA BEKASI', ' KOTA BEKASI', ' 819 tahun 2017 dan 55/PR.07-NK/3275/KPU-Kot/VII/2017 tanggal 10 Juli 2017 ', '2017-07-10', '', 43780000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02DKTDGZA', '', '0000-00-00', '', '', '', 4900000000, 0, 0, 0, 4900000000, 4900050000, 1798452100, 1798452100, 38880000000, 0, 38880000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(61, 2018, 'KPU  PROVINSI JAWA BARAT', 657249, 'KPU  KOTA BANJAR', ' KOTA BANJAR', ' 073/Kjs.16-Huk/2017 dan 03/PP.02.3-NK/3279/KPU-Kot/VII/2017 tanggal 5 Juli 2017 ', '2017-07-05', '', 7940698731, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02ZUGFS8A', '', '0000-00-00', '', '', '', 3000000000, 2000000000, 0, 0, 5000000000, 1703850000, 784013533, 784013533, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(62, 2018, 'KPU  PROVINSI JAWA TENGAH', 657317, 'KPU  KABUPATEN TEGAL', ' KABUPATEN TEGAL', ' 120/39 TAHUN 2017 dan 66/PP.01.3-NPHD/33/Prov/VII/2017 tanggal 25 Juli 2017 ', '2017-07-25', '', 24958257395, '', '0000-00-00', '', 0, '', '0000-00-00', '29WB8BMA', '', '0000-00-00', '', '', '', 13159438900, 0, 0, 0, 13159438900, 4970666000, 1251387334, 1251387334, 11798818495, 0, 11798818495, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(63, 2018, 'KPU  PROVINSI JAWA TENGAH', 657342, 'KPU  KABUPATEN KUDUS', ' KABUPATEN KUDUS', ' 2 Tahun 2017 dan 8/NPHD/3328/KPU-Kab/VII/2017 tanggal 12 Juli 2017 ', '2017-07-12', '', 15059510000, '', '0000-00-00', '', 0, '', '0000-00-00', '21JPHCKA', '', '0000-00-00', '', '', '', 2600000000, 0, 0, 0, 2600000000, 1916115000, 1895761583, 1895761583, 12459510000, 0, 12459510000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(64, 2018, 'KPU  PROVINSI JAWA TENGAH', 657391, 'KPU KABUPATEN BANYUMAS', 'PEMERINTAH KABUPATEN BANYUMAS', '900/34/2017 dan 05/PR.07-NK/3302/KPU-Kab/VII/2017', '2017-07-26', 'DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI BANYUMAS TAHUN 2018', 22450000000, '', '0000-00-00', '', 0, 'S-2659/WPB.14/01/2017', '2017-08-18', '2K7X9MDA', 'S-1185/WPB.14/KP.029/2017', '2017-08-23', '', '0151-01-000720-30-2', 'PT.BRI CABANG AJIBARANG', 12000000000, 0, 0, 0, 12000000000, 4791540000, 1499085344, 1499085344, 10450000000, 0, 0, 18387000000, 1080115475, 1023559649, 1008960851, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3112635975, 0, 0, ''),
(65, 2018, 'KPU  PROVINSI JAWA TENGAH', 657431, 'KPU  KABUPATEN MAGELANG', ' KABUPATEN MAGELANG', ' 900/34/2017 dan 05/PR.07-NK/3302/KPU-Kab/VII/2017 tanggal 26 Juli 2017 ', '2017-07-26', '', 28864600000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02CKF3TJA', '', '0000-00-00', '', '', '', 4208541000, 0, 0, 0, 4208541000, 4208591000, 2449365353, 2449365353, 24656059000, 0, 24656059000, 4195000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(66, 2018, 'KPU  PROVINSI JAWA TENGAH', 657448, 'KPU  KABUPATEN TEMANGGUNG', ' KABUPATEN TEMANGGUNG', ' 019.6/10/01.01/2017 dan 179/PR.07-NK/3308/KPU-Kab/VII/2017 tanggal 18 Juli 2017 ', '2017-07-18', '', 22254041500, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02B6YKNKA', '', '0000-00-00', '', '', '', 2153186000, 0, 0, 0, 2153186000, 2153236000, 1533437750, 1533437750, 20100855500, 0, 20100855500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(67, 2018, 'KPU  PROVINSI JAWA TENGAH', 657520, 'KPU  KABUPATEN KARANGANYAR', ' KABUPATEN KARANGANYAR', ' 050/3/VII/2017 dan 90/PR.07-SPj/01/KPU-Kab/VII/2017 tanggal 18 Juli 2017 ', '2017-07-18', '', 17000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0237SHBVA', '', '0000-00-00', '', '', '', 2344000000, 0, 0, 0, 2344000000, 1377094000, 1360521865, 1360521865, 14656000000, 0, 14656000000, 0, 749548874, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 749548874, 0, 0, ''),
(68, 2018, 'KPU  PROVINSI JAWA TENGAH', 657579, 'KPU  KOTA TEGAL', ' KOTA TEGAL', ' 270/271 tahun 2017 dan 593/PR.07-NK/3313/KPU-Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 6392000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J021H7C5NA', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 899309000, 431741802, 431741802, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(69, 2018, 'KPU  PROVINSI JAWA TIMUR', 657651, 'KPU KABUPATEN BANGKALAN', 'PEMERINTAH KABUPATEN BANGKALAN', ' 270/002 dan 24/PR.07-NK/3376/KPU-Kot/VIII/2017 tanggal 9 Agustus 2017  ', '2017-08-09', '', 44149222688, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GK3Y7HA', 'S-1069/WPB.16/KP.036/2017', '2017-09-04', '', '00028.01.30.000515.2', 'BTN', 30000000000, 0, 0, 0, 30000000000, 6145984000, 4688426299, 4688426299, 14149222688, 0, 14149222688, 39460796000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(70, 2018, 'KPU  PROVINSI JAWA TIMUR', 657689, 'KPU  KABUPATEN BOJONEGORO', ' KABUPATEN BOJONEGORO', ' 188/12/412.013/2017 dan 258/PR.07-NK/3522/KPU.Kab/VII/2017 tanggal 31 Juli ', '2017-07-31', '', 50181286361, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02B91B8KA', '', '0000-00-00', '', '', '', 7928292068, 0, 0, 0, 7928292068, 5506377000, 3218928350, 3218928350, 42252924293, 0, 42252924293, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(71, 2018, 'KPU  PROVINSI JAWA TIMUR', 657693, 'KPU KABUPATEN BONDOWOSO', 'PEMERINTAH KABUPATEN BONDOWOSO', '180/11/430.4.2/2017 dan 01/PP.01.03/KPU-Kab/3511/VI/2017 ', '2017-06-21', 'HIBAH DAERAH ATAS PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI TAHUN 2018 UNTUK MASA JABATAN TAHUN 2018 - 2023', 40684887000, '', '0000-00-00', '', 0, 'S-2469/WPB.16/BD.02/2017', '2017-08-30', '2JCL4MNA', 'S-724/WPB.16/KP.0930/2017 TANGGAL 05 SEPTEMBER 2017', '2017-08-30', '', '0311021192', 'BANK JATIM CABANG BONDOWOSO', 5000000000, 600000000, 0, 0, 5600000000, 4481510000, 3647880208, 3647880208, 35084887000, 0, 35084887000, 36716564000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(72, 2018, 'KPU  PROVINSI JAWA TIMUR', 657722, 'KPU KABUPATEN JOMBANG', 'PEMERINTAH KABUPATEN JOMBANG', ' 900/1795/NPHD/415.44/2017 dan 408/KPU/Kab-014.329722/VIII/2017 tanggal 16 Agustus 2017  ', '2017-08-16', '', 46464048000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02DXXXP8A', '', '0000-00-00', '', '', '', 6348015000, 0, 0, 0, 6348015000, 6348065000, 4252113370, 4252113370, 40116033000, 0, 40116033000, 42212016000, 828007518, 2350608042, 2722929277, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5901544837, 0, 0, ''),
(73, 2018, 'KPU  PROVINSI JAWA TIMUR', 657757, 'KPU  KABUPATEN LUMAJANG', ' KABUPATEN LUMAJANG', ' 130/11/427.11/2017 dan 104/PR.07-NK/3508/KPU-Kab/VII/2017 tanggal 28 Juli 2017 ', '2017-07-28', '', 38567646000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02LDJPFXA', '', '0000-00-00', '', '', '', 3967380000, 0, 0, 0, 3967380000, 3967430000, 1074685087, 1074685087, 14757599825, 0, 14757599825, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(74, 2018, 'KPU  PROVINSI JAWA TIMUR', 657761, 'KPU  KABUPATEN MADIUN', ' KABUPATEN MADIUN', ' 900/02/401.205/2017 dan 03/PP.01.3-NK/3357/KPU.Kot/VII/2017 tanggal 31 Agustus 2017 ', '2017-08-31', '', 31788549360, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02A&FPEMA', '', '0000-00-00', '', '', '', 7000000000, 0, 0, 0, 7000000000, 3034233000, 2206976966, 2206976966, 24788549360, 0, 24788549360, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(75, 2018, 'KPU  PROVINSI JAWA TIMUR', 657778, 'KPU KABUPATEN MAGETAN', 'PEMERINTAH KABUPATEN MAGETAN', ' 910/6/403.013/2017 dan 01/KB/KPU.Kab-014.329775/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 30503318000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J025YYN3DA', 'S-2445/WPB.16/BD.02/2017', '2017-08-28', '', '00000029-01-30-000254-8', 'BTN Cabang Magetan,  RPL : 033 KPU Mgt Utk Hbh Pilbup dan Wabup Mgt 2018', 10000000000, 0, 0, 0, 10000000000, 4168024000, 2516616218, 2516616218, 20503315975, 0, 20503315975, 24578625000, 1845489428, 1239654047, 2874739491, 1558131630, 2139555828, 0, 0, 0, 0, 0, 0, 0, 9657570424, 9657570424, 0, ''),
(76, 2018, 'KPU  PROVINSI JAWA TIMUR', 657804, 'KPU KABUPATEN NGANJUK', 'PEMERINTAH KABUPATEN NGANJUK', ' 415/07/411.010/2017 dan 67.A/PP/01.3-SPJ/3518/KPU-Kab/VI/2017 tanggal 5 Juni 2017 ', '2017-06-05', '', 45988323940, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02SG1JPZA', '', '0000-00-00', '', '', '', 23875212000, 0, 0, 0, 23875212000, 6553871000, 1663859265, 1663859265, 22113211940, 0, 22113211940, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(77, 2018, 'KPU  PROVINSI JAWA TIMUR', 657832, 'KPU KABUPATEN PAMEKASAN', 'PEMERINTAH KABUPATEN PAMEKASAN', ' 900/331/432.402/2017 dan 119/PR.07-NK/3528/KPU-Kab/VII/2017 tanggal 27 Juli 2017 ', '2017-07-27', 'Pelaksanaan Dana Hibah Penyelenggaraan Pemilihan Bupati dan Wakil Bupati Tahun 2018', 36357900600, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02K8AN77A', 'S-1043/WPB.16/KP.036/2017', '2017-08-28', '', '0061-01-002903-30-9', 'BRI ', 6803428750, 0, 0, 0, 6803428750, 6803478000, 675000000, 675000000, 29554471250, 0, 29554471250, 0, 0, 0, 0, 0, 11074511511, 0, 0, 0, 0, 0, 0, 0, 11074511511, 11074511511, 0, ''),
(78, 2018, 'KPU  PROVINSI JAWA TIMUR', 657846, 'KPU KABUPATEN PASURUAN', 'PEMERINTAH KABUPATEN PASURUAN', ' 279/230/424.033/2017 dan 02/PR.07-NK/3514/KPU-Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 52743061900, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02SB29ANA', '', '0000-00-00', '', '', '', 11339758025, 0, 0, 0, 11339758025, 7101592000, 5908143653, 5908143653, 41403233875, 0, 41403233875, 42193185000, 4261065854, 542336898, 3403562371, 4463321703, 0, 0, 0, 0, 0, 0, 0, 0, 12670286826, 0, 0, ''),
(79, 2018, 'KPU  PROVINSI JAWA TIMUR', 657867, 'KPU KABUPATEN PROBOLINGGO', 'PEMERINTAH KABUPATEN PROBOLINGGO', ' 180/34/426.31/2017 DAN 170/PR.07-NK/3513/KPU-Kab/VII/2017 tanggal 18 Juli 2017 ', '2017-07-18', '', 41532091000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0227936TA', '', '0000-00-00', '', '', '', 13202686700, 0, 0, 0, 13202686700, 13202734000, 4270131411, 4270131411, 28329404300, 0, 28329404300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(80, 2018, 'KPU  PROVINSI JAWA TIMUR', 657871, 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG', ' 900/674/434.401/2017 dan 71/PR.07-NK/3527/KPU-Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 35498700000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J023ET8EYA', 'S-1042/WPB.16/KP.036/2017', '2017-08-28', '', '', 'BNI  ', 5250000000, 0, 0, 0, 5250000000, 5250050000, 1007604328, 1007604328, 0, 30248700000, 30248700000, 30248700000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Pemda'),
(81, 2018, 'KPU  PROVINSI JAWA TIMUR', 657935, 'KPU KABUPATEN TULUNGAGUNG', 'PEMERINTAH KABUPATEN TULUNGAGUNG', ' 181/1795/601/2017 dan 125/KPU.Kab/014.329939/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 37696000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02J6FE9TA', '', '0000-00-00', '', '', '', 6451220500, 0, 0, 0, 6451220500, 6451270000, 3742034300, 3742034300, 15000000000, 16244779500, 31244779500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(82, 2018, 'KPU  PROVINSI JAWA TIMUR', 657977, 'KPU KOTA KEDIRI', 'PEMERINTAH KOTA KEDIRI', ' 180/580/419.300/2017 dan 02/PR.07-NK/02/KPU-Kot/VII/2017 tanggal 28 Juli 2017 ', '2017-07-28', 'Belanja Hibah untuk Kegiatan Pemilihan Walikota dan Wakil Walikota Kediri 2018', 15392261400, '', '0000-00-00', '', 0, '', '0000-00-00', 'J028UAWLEA', 'W-1153/WPB.016/KP.034/2017', '2017-08-25', '', '0000046-01-30-000408-1', 'BTN Cabang Kediri', 1799805750, 0, 0, 0, 1799805750, 1799855000, 1497947560, 1497947560, 13592455650, 0, 13592455650, 13592455650, 236111180, 675539698, 1151361863, 901849853, 0, 0, 0, 0, 0, 0, 0, 0, 2964862594, 2964862594, 0, ''),
(83, 2018, 'KPU  PROVINSI JAWA TIMUR', 657981, 'KPU  KOTA MADIUN', ' KOTA MADIUN', ' 900/02/401.205/2017 dan 03/PP.01.3-NK/3357/KPU.Kot/VII/2017 tanggal 31 Agustus 2017 ', '2017-08-31', '', 11944751560, '', '0000-00-00', '', 0, '', '0000-00-00', 'J029F2STFA', '', '0000-00-00', '', '', '', 1589799725, 0, 0, 0, 1589799725, 1589849000, 1155839203, 1155839203, 10354951835, 0, 10354951835, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(84, 2018, 'KPU  PROVINSI JAWA TIMUR', 657998, 'KPU KOTA MALANG', 'PEMERINTAH KOTA MALANG', ' 050/453/35.73.404/2017 dan 132/PR.07-NK/3573/KPU-Kot/VII/2017  tanggal 7 Juli 2017 ', '2017-07-07', '', 30219700600, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02XWUGYWA', '', '0000-00-00', '', '', '', 10000000000, 15000000000, 0, 0, 25000000000, 7000050000, 2299734117, 2299734117, 5219700600, 0, 5219700600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(85, 2018, 'KPU  PROVINSI JAWA TIMUR', 658000, 'KPU  KOTA MOJOKERTO', ' KOTA MOJOKERTO', ' 279/12/417.111/2017 dan 01/PP.01.3-SPj/02/Kota/VII/2017 tanggal 11 Juli 2017 ', '2017-07-11', '', 13990690700, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0267ZR5DA', '', '0000-00-00', '', '', '', 2000000000, 0, 0, 0, 2000000000, 2000050000, 751580568, 465409645, 11990690700, 0, 11990690700, 0, 123508947, 491218982, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 614727929, 0, 0, ''),
(86, 2018, 'KPU  PROVINSI JAWA TIMUR', 658021, 'KPU KOTA PROBOLINGGO', 'PEMERINTAH KOTA PROBOLINGGO', ' 900/8/425.209/2017 dan 112/ku.04-SPJ/3574/KPU-Kot/VII/2017 tanggal 26 Juli 2017 ', '2017-07-26', '', 11882572342, '', '0000-00-00', '', 0, 'S-2510/WPB.16/BD.02/2017', '2017-09-05', 'J02251JXEA', 'S-762/WPB.16/KP.0930/2017', '2017-09-19', '', '00250-01-30-000051-1', 'RPL 035 KPU KOTA PROBOLINGGO ', 1382572342, 0, 0, 0, 1382572342, 1382572342, 1352000000, 1352000000, 6500000000, 4000000000, 10500000000, 10500000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(87, 2018, 'KPU  PROVINSI BANTEN', 658038, 'KPU  KABUPATEN TANGERANG', ' KABUPATEN TANGERANG', ' 050.12/2385-KPU/2017 dan 207/KPU-Kab.Tng/015436389/VI/2017 ', '2017-07-01', '', 110000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '2H1S2WQA', '', '0000-00-00', '', '', '', 20000000000, 90000000000, 0, 0, 110000000000, 20000050000, 9839507709, 9839507709, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(88, 2018, 'KPU  PROVINSI BANTEN', 658063, 'KPU KABUPATEN LEBAK', 'PEMERINTAH KABUPATEN LEBAK', ' 900/Perj.9/BPKAD/2017 dan 01/KPU.Kab/015.436415/V/2017 tanggal 13 Mei 2017 ', '2017-05-13', '', 65500000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J021ZMLAZA', '', '0000-00-00', '', '', '', 2500000000, 0, 0, 0, 2500000000, 18500050000, 7608479800, 7608479800, 47000000000, 16000000000, 63000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(89, 2018, 'KPU  PROVINSI BANTEN', 658070, 'KPU KOTA TANGERANG', 'PEMERINTAH KOTA TANGERANG', ' 972/676-kesbangpol/2017 dan 315/Kpukota-015.436421/VII/2017 tanggal 21 Juli 2017 ', '2017-07-21', '', 61312946670, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02MXPXQMA', '', '0000-00-00', '', '', '', 25312946670, 0, 0, 0, 25312946670, 25312993000, 4781172869, 4781172869, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(90, 2018, 'KPU  PROVINSI BALI', 658110, 'KPU KABUPATEN KLUNGKUNG', 'PEMERINTAH KABUPATEN KLUNGKUNG', ' 978.4/391/BKBPPM dan 213/KPU-Kab-016.433742/VI/2017 tanggal 21 Juni 2017 ', '2017-06-21', '', 13988225575, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02285PSSA', '', '0000-00-00', '', '', '', 8326497175, 5661777839, 0, 0, 13988275014, 13988275000, 1141301342, 1141301342, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(91, 2018, 'KPU  PROVINSI BALI', 658127, 'KPU  KABUPATEN GIANYAR', ' KABUPATEN GIANYAR', ' 0645/115/NPHD/BANMAS/VI/2017 dan 218/KPU-Kab-016.433758/VI/2017 tanggal 16 Juni 2017 ', '2017-06-16', '', 20678157285, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02FJ5KVGA', '', '0000-00-00', '', '', '', 13000000000, 0, 0, 0, 13000000000, 13000050000, 1147279004, 1147279004, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(92, 2018, 'KPU  PROVINSI NUSA TENGGARA BARAT', 658180, 'KPU KABUPATEN LOMBOK BARAT', 'PEMERINTAH KABUPATEN LOMBOK BARAT', ' 028/347/BPKAD/TAHUN 2917 dan 138/KU.04/5201/KPU-Kab/VII/TAHUN 2017 ', '2017-07-19', 'PEMBERIAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI LOMBOK BARAT TAHUN 2018', 24500000000, '-', '0000-00-00', '-', 0, 'S-2260/PR.8/2017', '2017-07-21', 'J02G9H2K7A', 'S-1269/WPB.22/KP.038/2017', '2017-07-26', '', '022.21.00001.07-2', 'PT. BANK NTB CABANG GERUNG', 4500000000, 0, 0, 0, 4500000000, 4500000000, 2641813242, 2641813242, 20000000000, 0, 20000000000, 21858186000, 439072072, 2134604426, 2814370103, 1142019371, 1356614674, 7005175077, 0, 0, 0, 0, 0, 0, 14891855723, 7886680646, 0, ''),
(93, 2018, 'KPU  PROVINSI NUSA TENGGARA BARAT', 658202, 'KPU KABUPATEN LOMBOK TIMUR', 'PEMERINTAH KABUPATEN LOMBOK TIMUR', ' 181.5/44/PKAD/2017 dan 99.A/pR.07-SPj/5203/KPU-Kab/VII/2017 tanggal 27 Juli 2017  ', '2017-07-27', '', 32000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02C558HVA', '', '0000-00-00', '', '', '', 2753755500, 1419516400, 0, 0, 4173271900, 2753825000, 2393405804, 2393405804, 8875056500, 16493017675, 25368074175, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(94, 2018, 'KPU  PROVINSI NUSA TENGGARA BARAT', 658262, 'KPU KOTA BIMA', 'PEMERINTAH KOTA BIMA', ' 180/254/PH/VII/2017 dan 152/KPU-Kobi-017.443903/2017 tanggal 31 Juli 2017 ', '2017-07-31', 'Pemberian Dana Hibah Penyelenggaraan Pemilihan Walikota dan Wakil Walikota Bima Tahun 2018', 14740360000, '180/7/PH/I/2017 dan 61.a/PR.07-SPJ/5272/KPU.Kot/I/2018', '2018-01-19', 'Pemberian Dana Hibah Penyelenggaraan Pemilihan Walikota dan Wakil Walikota Bima Tahun 2018', 14740360000, 'S-3216/WPB.21/KP.071/2018', '2017-08-21', 'J02F7BXGJA', 'S-727/WPB.22/KP.0330/2017', '2017-08-28', '', 'RPL 071 KPU Kota Bima utk PS', 'Bank NTB Cabang Bima', 1851790000, 0, 0, 0, 1851790000, 1851840000, 1291155368, 1291155368, 8000000000, 4888570000, 12888570000, 8560635000, 1157098582, 376768970, 1397880038, 904374597, 915647090, 1745281435, 0, 0, 0, 0, 0, 0, 6497050712, 0, 0, ''),
(95, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658279, 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG', ' 08 Tahun 2017 dan 06.HD/kpts/KPU-Kab/018.433928/2017 tanggal 30 Agustus 2017 ', '2017-08-30', 'PEMBERIAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI & WAKIL BUPATI KUPANG TAHUN 2018', 22145593000, '22 TAHUN 2018 & 67/KPU-KAB/018.433928/III/2018', '2018-03-23', 'PEMBERIAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI & WAKIL BUPATI KUPANG TAHUN 2018', 21928343000, '', '0000-00-00', 'J02BL5EACA', '', '0000-00-00', '', '', '', 4782750000, 0, 0, 0, 4782750000, 4782750000, 3692706325, 3692706325, 17145593000, 0, 17145593000, 18235636000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(96, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658305, 'KPU  KABUPATEN TIMOR TENGAH SELATAN', ' KABUPATEN TIMOR TENGAH SELATAN', ' BPKAD.32.01.03/1407/2017 dan 38/KPU-Kab.018.433959/IX/2017 tanggal 22 September 2017 ', '2017-09-22', '', 35700000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02186U73A', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000050000, 324222250, 324222250, 30700000000, 0, 30700000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(97, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658312, 'KPU KABUPATEN ALOR', 'PEMERINTAH KABUPATEN ALOR', ' 130/HK/2017 dan 20/KPU.Kab-018.433965/VIII/2017 tanggal 4 Agustus 2017 ', '2017-08-04', '', 28165681000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02EWBDG7A', '', '0000-00-00', '', '', '', 4557752300, 0, 0, 0, 4557752300, 4557802000, 3790658100, 3790658100, 18102154700, 5505782900, 23607937600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(98, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658326, 'KPU KABUPATEN SIKKA', 'PEMERINTAH KABUPATEN SIKKA', ' BPKAD.910/14/2017 dan 27/kpts/KPU-Kab.018.433971/VIII/2017 tanggal 23 Agustus 2017 ', '2017-08-23', '', 19944000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02MK5NYZA', '', '0000-00-00', '', '', '', 3725000000, 0, 0, 0, 3725000000, 3725050000, 2639319937, 2639319937, 16219000000, 0, 16219000000, 16219000000, 851676115, 1018938439, 2049856900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 3920471454, 0, 0, ''),
(99, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658347, 'KPU KABUPATEN ENDE', 'PEMERINTAH KABUPATEN ENDE', ' 52/HK/2017 dan 05/kpts/KPU.Kab-018.433996/2017 tanggal 15 Agustus 2017 ', '2017-08-15', '', 27700000000, '', '0000-00-00', '', 0, 'S-1112/WPB.23/BD.0204/2017', '2017-08-25', 'J028H1H7RA', 'S-780WPB.23/KP.040/2017', '2017-08-29', '', '0602285459', 'BNI CABANG ENDE', 8500000000, 0, 0, 0, 8500000000, 8500050000, 3418411479, 3418411479, 19200000000, 0, 19200000000, 24281588521, 1225178305, 2560197500, 1991203150, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5776578955, 5776578955, 0, '');
INSERT INTO `data_2018` (`id`, `tahun`, `prov`, `kode_satker`, `nama_satker`, `pem_hibah`, `no_nphd`, `tgl_nphd`, `per_nphd`, `nilai_nphd`, `na_1`, `nb_1`, `nc_1`, `nd_1`, `ndjppr`, `tdjppr`, `noreg`, `noijin`, `treg`, `nrek`, `norek`, `nbank`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_all`, `pag17`, `real17`, `sp2hl17`, `tr18_1`, `tr18_2`, `tr18_all`, `pag18`, `real18_1`, `real18_2`, `real18_3`, `real18_4`, `real18_5`, `real18_6`, `real18_7`, `real18_8`, `real18_9`, `real18_10`, `real18_11`, `real18_12`, `real18_all`, `sp2hl18`, `sp4hl`, `peng`) VALUES
(100, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 658401, 'KPU KABUPATEN ROTE NDAO', 'PEMERINTAH KABUPATEN ROTE NDAO', ' HK.900/01/IX/Kab.RN/2017 dan 30/kpts/KPU-KAB-018.434053/2017 tanggal 27 September 2017 ', '2017-09-27', '', 17156149000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02YNVJS1A', '', '0000-00-00', '', '', '', 2000000000, 0, 0, 0, 2000000000, 2000050000, 1669530680, 1669530680, 15156149000, 0, 15156149000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(101, 2018, 'KPU  PROVINSI KALIMANTAN BARAT', 658461, 'KPU  KABUPATEN PONTIANAK (MEMPAWAH)', ' KABUPATEN PONTIANAK (MEMPAWAH)', ' 900/369/BPKAD-A/2017 dan 53/PR.07-NK/6102/KPU-Kab/VII/2017 Tanggal 18 Juli 2017 ', '2017-07-18', '', 19445000000, '', '0000-00-00', '', 0, '', '0000-00-00', '27BH5P6A', '', '0000-00-00', '', '', '', 3100000000, 0, 0, 0, 3100000000, 3140050000, 0, 0, 16345000000, 0, 16345000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(102, 2018, 'KPU  PROVINSI KALIMANTAN BARAT', 658478, 'KPU  KABUPATEN SANGGAU', ' KABUPATEN SANGGAU', ' 903/1783/KBPL dan 53/KU.04-NK/6103/KPU-Kab/VII/2017 tanggal 31 juli 2017 ', '2017-07-31', '', 39223372000, '', '0000-00-00', '', 0, '', '0000-00-00', '21UNVA6A', '', '0000-00-00', '', '', '', 8500000000, 0, 0, 0, 8500000000, 8500050000, 749423412, 749423412, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(103, 2018, 'KPU  PROVINSI KALIMANTAN BARAT', 658532, 'KPU  KOTA PONTIANAK', ' KOTA PONTIANAK', ' 117/SPH-VII/2017 dan 190/PP.01.03-SPj/6171/KPU-Kot/VII/2017 tanggal 24 Juli 2017 ', '2017-07-24', '', 24871706000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J021YUX8EA', '', '0000-00-00', '', '', '', 6338384000, 0, 0, 0, 6338384000, 6338434000, 1887334606, 1887334606, 18533321600, 0, 18533321600, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(104, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658571, 'KPU  KABUPATEN KAPUAS', ' KABUPATEN KAPUAS', ' 900/10/BPKAD/2017 dan 108/KPU-Kab-020.435812/VI/2017 tanggal 7 Juni 2017 ', '2017-06-07', ' 41,591,000,000 ', 39957000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0279LFQYA', '', '0000-00-00', '', '', '', 9750000000, 0, 0, 0, 9750000000, 10570050000, 6935271800, 6935271800, 12000000000, 0, 12000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(105, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658588, 'KPU  KABUPATEN KATINGAN', ' KABUPATEN KATINGAN', ' 400/1002/BPKAD-1/V/2017 dan 01/KPTS/KPU-Kab-020.435821/V/2017 tanggal 22 Mei 2017 ', '2017-05-22', '', 24379733513, '', '0000-00-00', '', 0, '', '0000-00-00', 'J024GQNG5A', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 10000050000, 3538399000, 3538399000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(106, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658600, 'KPU KABUPATEN BARITO UTARA', 'PEMERINTAH KABUPATEN BARITO UTARA', ' 1/25/HUK/2017 dan 01/SPJ/KPU-kab/IV/2017 Tanggal 17 April 2017 ', '2017-04-17', '', 21000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J025W7NXUA', '', '0000-00-00', '', '', '', 3000000000, 2000000000, 0, 0, 5000000000, 3000050000, 3000000000, 3000000000, 16000000000, 0, 16000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(107, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658614, 'KPU  KABUPATEN SERUYAN', ' KABUPATEN SERUYAN', ' 35/NPH-SRY/HUK/2017 dan 01/PR 07-SPJ/6207/KPU-kab/IV/ 2017 Tanggal 10 April 2017 ', '2017-04-10', '', 25780026800, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02HHB7DVA', '', '0000-00-00', '', '', '', 9153860000, 0, 0, 0, 9153860000, 9153910000, 1902020000, 1902020000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(108, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658621, 'KPU  KABUPATEN SUKAMARA', ' KABUPATEN SUKAMARA', ' No 3 Tahun 2017 dan 21/PR.07-SPj/6208/KPU-Kab/VI/2017 tanggal 8 Juni 2017 ', '2017-06-08', '', 12527438000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02RREMF6A', '', '0000-00-00', '', '', '', 1527438000, 0, 0, 0, 1527438000, 1527488000, 1411536000, 1411536000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(109, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658635, 'KPU  KABUPATEN LAMANDAU', ' KABUPATEN LAMANDAU', ' 900/BKD.C3/VII/2017 dan 123/PR.07/6209/KPU.kab/VII/2017 tanggal 28 Juli 2017 ', '2017-07-28', '', 16934187400, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0242PVXLA', '', '0000-00-00', '', '', '', 4074031000, 0, 0, 0, 4074031000, 4073831000, 2463799700, 2463799700, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(110, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658642, 'KPU  KABUPATEN GUNUNG MAS', ' KABUPATEN GUNUNG MAS', ' 19/Tahun 2017 dan 01/KB/KPU-GM-6210/2017 Tanggal 5 Mei 2017 ', '2017-05-05', '', 20455056250, '', '0000-00-00', '', 0, '', '0000-00-00', 'J021QY7UKA', '', '0000-00-00', '', '', '', 9938509500, 0, 0, 0, 9938509500, 9938559000, 3027353685, 3027353685, 8516546750, 0, 8516546750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(111, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658656, 'KPU  KABUPATEN PULANG PISAU', ' KABUPATEN PULANG PISAU', ' 308/BPKAD/SET-VI/2017 dan 01/PR.07/50/6211/KPU-Kab/VI/2017 tanggal 2 Juni 2017 ', '2017-06-02', '', 25694635600, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0285HF81A', '', '0000-00-00', '', '', '', 4000000000, 0, 0, 0, 4000000000, 7000050000, 3781000000, 3781000000, 5000000000, 0, 5000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(112, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658660, 'KPU KABUPATEN BARITO TIMUR', 'PEMERINTAH KABUPATEN BARITO TIMUR', ' 900/360/I.2/BPKAD/2017 dan 01/KU.04.3SPj/K.1/6213/VII/2017 tanggal 26 Juli 2017 ', '2017-07-26', 'Pelaksanaan Dana Hibah Penyelenggaraan Pemilihan Bupati dan Wakil Bupati Tahun 2018', 21815473655, '', '2018-01-22', 'Perubahan Ketentuan dalam Naskah Perjanjian Hibah Daerah Antara Pemerintah Kab. Barito Timur dengan KPU Kab. Barito Timur nomor 900/360/I.2/BPKAD/2017 dan 01/KU.04.3SPj/K.1/6213/VII/2017 tentang Pelaksanaan Dana Hibah Penyelenggaraan Pemilihan Bupati dan ', 18425401655, '', '0000-00-00', 'J02B884DCA', 'S-1328/WPB.18/KP.080/2017', '2017-08-18', '', '030301001034305', 'BRI', 3390072000, 0, 0, 0, 3390072000, 3390122000, 1680775000, 1680775000, 2763750000, 9212700000, 18425401655, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(113, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658677, 'KPU  KABUPATEN MURUNG RAYA', ' KABUPATEN MURUNG RAYA', ' 130.4/01/TKKSD-NPHD/2017 dan 01/KU.04.3-SPj/02/K1/VI/2017 tanggal 14 Juni 2017 ', '2017-06-14', '', 23499966300, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02XWDHJ5A', '', '0000-00-00', '', '', '', 5237862500, 0, 0, 0, 5237862500, 5237702000, 5227371000, 5227371000, 18262313800, 0, 18262313800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(114, 2018, 'KPU  PROVINSI KALIMANTAN TENGAH', 658681, 'KPU  KOTA PALANGKARAYA', ' KOTA PALANGKARAYA', ' 900/787/Bid-I/BPKAD/VI/2017 dan 036/PR.07-SPj/01/KPU/VI/2017 tanggal 13 Juni 2017 ', '2017-06-13', '', 17392094508, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02ZDP7SGA', '', '0000-00-00', '', '', '', 4900000000, 0, 0, 0, 4900000000, 4900050000, 3318977645, 3318977645, 12492094508, 0, 12492094508, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(115, 2018, 'KPU  PROVINSI KALIMANTAN SELATAN', 658710, 'KPU  KABUPATEN TABALONG', ' KABUPATEN TABALONG', ' B.756/Kesbangpol/Pol/270/07/2017 dan 154/PP.01.3-SPj/6309/KPU-Kab/VII/2017 tanggal 11 July 2017  ', '0000-00-00', '', 27810745800, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02DKWL82A', '', '0000-00-00', '', '', '', 6058719750, 0, 0, 0, 6058719750, 5979782000, 2595016950, 2595016950, 21752026050, 0, 21752026050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(116, 2018, 'KPU  PROVINSI KALIMANTAN SELATAN', 658724, 'KPU  KABUPATEN HULU SUNGAI SELATAN', ' KABUPATEN HULU SUNGAI SE', ' 900/16/MoU/2017 dan 01/HK.05-SPj/6306/KPU-Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 20659426456, '', '0000-00-00', '', 0, '', '0000-00-00', 'J024MZ7Y3A', '', '0000-00-00', '', '', '', 4272010000, 0, 0, 0, 4272010000, 4272060000, 789648143, 789648143, 16387416496, 0, 16387416496, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(117, 2018, 'KPU  PROVINSI KALIMANTAN SELATAN', 658752, 'KPU KABUPATEN TAPIN', 'PEMERINTAH KABUPATEN TAPIN', ' 900/011/PPKD-HIBAH/2017 dan 059/HK.03.2-SPj/6305/KPU.Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 20820772000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0264Y2Y7A', '', '0000-00-00', '', '', '', 2500000000, 1000000000, 0, 0, 3500000000, 3044907000, 1965522569, 1965522569, 4500000000, 13275914250, 17775914250, 17775914000, 186666024, 1111119346, 1034693033, 1392375827, 1383177852, 4609858933, 0, 0, 0, 0, 0, 0, 9717891015, 0, 0, ''),
(118, 2018, 'KPU  PROVINSI KALIMANTAN SELATAN', 658791, 'KPU KABUPATEN TANAHLAUT', 'PEMERINTAH KABUPATEN TANAHLAUT', ' 180/31/NPHD-Kum/2017 dan 94/PP.01.3.-NK/6301/KPU-Kab/VI/2017 ', '2017-06-19', 'Pelaksanaan Dana Hibah Penyelenggaraan Pemilihan Bupati dan Wakil Bupati Tanah Laut Tahun 2018', 25720530000, '', '0000-00-00', '', 0, 'S-2062/PR.8/2017', '2017-07-05', '2PS81YCA', 'S-403/WPB.19/KP.004/2017', '2017-07-24', '', '0070004005421', '', 4122605500, 0, 0, 0, 4122605500, 3227185000, 2634729000, 2634729000, 21597924500, 0, 21597924500, 23085801000, 687379180, 1758100150, 1622914803, 1273269800, 1601754800, 5524730166, 0, 0, 0, 0, 0, 0, 12468148899, 6943418733, 0, ''),
(119, 2018, 'KPU  PROVINSI KALIMANTAN TIMUR', 658820, 'KPU  KABUPATEN PENAJAM PASER UTARA', ' KABUPATEN PENAJAM PASER ', ' 283/629/TU-Pimp/KPU/VII/2017 dan 09/PP.01.3-NK/6409/KPU-Kab/VII/2017 ', '2017-08-15', '', 26487382000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02PCV775A', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000000000, 973039885, 973039885, 21000000000, 0, 21000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(120, 2018, 'KPU  PROVINSI KALIMANTAN TIMUR', 658923, 'KPU  KOTA TARAKAN', ' KOTA TARAKAN', ' 460/1228/pem/2017 dan 041/KU.04-SPj/6571/KPU-Kot/IX/2017 tanggal 22 September 2017 ', '2017-09-22', '', 13759131586, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02YM8WEKA', '', '0000-00-00', '', '', '', 1500000000, 500000000, 1400000000, 3000000000, 6400000000, 1500050000, 1387522252, 1387522252, 7359131586, 0, 7359131586, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(121, 2018, 'KPU  PROVINSI SULAWESI UTARA', 658965, 'KPU KABUPATEN MINAHASA', 'PEMERINTAH KABUPATEN MINAHASA', ' 04 Tahun 2017 dan 022/HK.04.1-Kpt/7102/KPU-KAB/V/2017 Tanggal 9 Mei 2017 ', '2017-05-09', '', 42364000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02BJ25USA', '', '0000-00-00', '', '', '', 6500000000, 1000000000, 0, 0, 7500000000, 7500050000, 7090982321, 7090982321, 17432000000, 17432000000, 34864000000, 0, 1491045800, 5620450000, 3405250000, 3620250000, 2670000000, 0, 0, 0, 0, 0, 0, 0, 16806995800, 0, 0, ''),
(122, 2018, 'KPU  PROVINSI SULAWESI UTARA', 658986, 'KPU  KABUPATEN KEPULAUAN TALAUD', ' KABUPATEN KEPULAUAN TALA', ' 52/HIBAH/IX/2017 dan 001/HIBAH/IX/2017 tanggal 20 September 2017 ', '2017-09-20', '', 30000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02KC5PEWA', '', '0000-00-00', '', '', '', 5000000000, 1000000000, 17400000000, 0, 23400000000, 12506397000, 12195544300, 12195544300, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(123, 2018, 'KPU  PROVINSI SULAWESI TENGAH', 659072, 'KPU KABUPATEN MOROWALI', 'PEMERINTAH KABUPATEN MOROWALI', 'No. 276/0405/BUP-KPUD/IV/2017 dan No. 45/KPU.KAB-024.433155/IV/2017 tanggal 7 April 2017 ', '2017-04-07', '', 32699631400, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02UDGYR2A', '', '0000-00-00', '', '', '', 9047229000, 0, 0, 0, 9047229000, 9047279000, 7607192958, 7607192958, 20000000000, 0, 20000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(124, 2018, 'KPU  PROVINSI SULAWESI TENGAH', 659089, 'KPU KABUPATEN DONGGALA', 'PEMERINTAH KABUPATEN DONGGALA', ' No. 270/0535/BPKAD/ 2017 dan No. : 88/KPU.KAB-161/V/2017 Tanggal 17 Mei 2017 ', '2017-05-17', '', 30405500000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02J1N3A8A', '', '0000-00-00', '', '', '', 8900000000, 0, 0, 0, 8900000000, 7500050000, 4340320072, 4340320072, 14417578000, 0, 14417578000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(125, 2018, 'KPU  PROVINSI SULAWESI TENGAH', 659115, 'KPU KABUPATEN PARIGI MOUTONG', 'PEMERINTAH KABUPATEN PARIGI MOUTONG', ' No. 06/0120/BHP-PM/2017 dan 152/Kpts/KPU-Kab/024.433192/2017 tanggal 20 APRIL 2017 ', '2017-04-20', '', 43642660303, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02N6NKWCA', '', '0000-00-00', '', '', '', 13602085000, 0, 0, 0, 13602085000, 13602135000, 9576579994, 9576579994, 30040575303, 0, 30040575303, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(126, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659161, 'KPU KABUPATEN BANTAENG', 'PEMERINTAH KABUPATEN BANTAENG', ' 900/Perj/132/VII/2017 dan 02/SPj/7303/KPU-Kab/VIII/2017 tanggal 14 July 2017 ', '2017-07-14', '', 18999153400, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02D27RR5A', '', '0000-00-00', '', '', '', 8864405850, 0, 0, 0, 8864405850, 8864455000, 2162875893, 2162875893, 10134748400, 0, 10134748400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(127, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659178, 'KPU KABUPATEN JENEPONTO', 'PEMERINTAH KABUPATEN JENEPONTO', ' 08/NK/HKN&HAM/V/2017 dan 45/KPU-PILKADA-7304/V/2017 tanggal 2 Mei 2017 ', '2017-05-02', '', 25000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02DE93AQA', '', '0000-00-00', '', '', '', 4000000000, 3000000000, 0, 0, 7000000000, 7000050000, 3614708006, 3614708006, 9000000000, 9000000000, 18000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(128, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659204, 'KPU  KABUPATEN SINJAI', ' KABUPATEN SINJAI', ' 119/27.011/SET dan 03/PR.07-NK/7307/KPU-Kab/VIII/2017 tanggal 27 Juli 2017 ', '2017-07-27', '', 22544950400, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02QY8S8CA', '', '0000-00-00', '', '', '', 2800000000, 0, 0, 0, 2800000000, 2800050000, 1899681905, 1899681905, 19744950400, 0, 19744950400, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(129, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659211, 'KPU  KABUPATEN BONE', ' KABUPATEN BONE', ' 682/1297/VII/BPKAD dan 20/PP.01.3-SPj/7308/KPU-Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 57112928050, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0283R3JYA', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 10000050000, 7636244836, 7636244836, 47112928050, 0, 47112928050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(130, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659267, 'KPU  KABUPATEN WAJO', ' KABUPATEN WAJO', ' 20/PK/VII/2017 dan  042/PP.02.3/02/7313/KPU-Kab/VII/2017 tanggal 29 Juli 2017 Adendum 29/PK/VIII/2017 dan 064/PP.02.3/02/7313/Kpu-Kab/VIII/2017 tanggal 22 Agustus 2017 ', '2017-08-22', '', 39083382000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02183WWSA', '', '0000-00-00', '', '', '', 7713575000, 0, 0, 0, 7713575000, 7713625000, 4369288172, 4369288172, 31369807000, 0, 31369807000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(131, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659271, 'KPU  KABUPATEN SIDENRENG RAPPANG', ' KABUPATEN SIDENRENG RAPP', ' 180/15/VII/2017 dan 134/KPU.KAB.025.433362/VII/2017 tanggal 31 Juli 2017  ', '2017-07-31', '', 25000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J026JLWMPA', '', '0000-00-00', '', '', '', 2500000000, 2500000000, 0, 0, 5000000000, 5000050000, 3588726404, 3588726404, 20000000000, 0, 20000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(132, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659288, 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG', ' 01/NPHD/VII/Adm.Pem/2017 dan 01/NK/7315/KPU-KAB/VII/2017 tanggal 31 Juli  ', '2017-07-31', 'PELAKSANAAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI PINRANG TAHUN 2018', 28659062000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02LGG4MGA', 'S-795/WPB.24/KP.0330/2017', '2017-09-05', '', '5000200000000054', 'PT. BANK SULSELBAR CABANG PINRANG', 1000000000, 3590673000, 0, 0, 4590673000, 4590673000, 3080495006, 3080495006, 14353057000, 9715332000, 24068389000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(133, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659292, 'KPU  KABUPATEN ENREKANG', ' KABUPATEN ENREKANG', ' 1066/076/VII/2017/T.Pem dan 32/Kpts/KpuKab/025.433387/VII/2017 tanggal 31 Juli ', '2017-07-31', '', 18494702926, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02JLG715BA', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000050000, 2336450994, 2336450994, 13500000000, 0, 13500000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(134, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659300, 'KPU  KABUPATEN LUWU', ' KABUPATEN LUWU', ' 180/346/VII/HUK/2017 dan 35/KPU-025-433393/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 35000989150, '', '0000-00-00', '', 0, '', '0000-00-00', 'J027NNS5QA', '', '0000-00-00', '', '', '', 8495192000, 0, 0, 0, 8495192000, 8495242000, 2800093023, 2800093023, 10998961750, 0, 10998961750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(135, 2018, 'KPU PROVINSI SULAWESI BARAT', 659321, 'KPU KABUPATEN POLEWALI MAMASA', 'PEMERINTAH KABUPATEN POLEWALI MAMASA', ' B-363/Bakeu/900/7/2017 dan 03/BA-PILBUP/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 27429846550, '', '0000-00-00', '', 0, '', '0000-00-00', 'J0234G4E2A', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000050000, 3759115693, 3759115693, 22429846650, 0, 22429846650, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(136, 2018, 'KPU PROVINSI SULAWESI BARAT', 659360, 'KPU KABUPATEN MAMASA', 'PEMERINTAH KABUPATEN MAMASA', ' 367/MOU-08/VIII/2017 dan 01/NPHD/PKWK/KPU-KAB-033.433450/VIII/2017 tanggal 8 Agustus 2017 ', '2017-08-08', '', 26652919000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02V2CB3EA', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000050000, 4066725600, 4066725600, 16000000000, 0, 16000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(137, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659398, 'KPU KOTA MAKASSAR', 'PEMERINTAH KOTA MAKASSAR', ' 900/00153/NPHD/BPKAD/VII/2017 dan 147/BA/VII/2017 tanggal 31 Juli ', '2017-07-31', '', 60000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GAJSF4A', '', '0000-00-00', '', '', '', 16675050000, 0, 0, 0, 16675050000, 16675050000, 4180408117, 4180408117, 43325000000, 0, 43325000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(138, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659403, 'KPU KOTA PARE-PARE', 'PEMERINTAH KOTA PARE-PARE', ' 180.5/24/hkm dan 01/KB/KPU.PAREPARE-025.433490/VIII/2017 tanggal 4 Agustus 2017  ', '2017-08-04', '', 16000000000, '', '0000-00-00', '', 0, 'S-1371/WPB.24/2017', '2017-09-04', '2M17WAFA', 'S-820/WPB.24/KP.0330/2017', '2018-09-04', '', '', 'Bank Tabungan Negara', 4000000000, 0, 0, 0, 4000000000, 4000050000, 1546923770, 1546923770, 6000000000, 6000000000, 12000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(139, 2018, 'KPU  PROVINSI SULAWESI SELATAN', 659410, 'KPU  KOTA PALOPO', ' KOTA PALOPO', ' 60/NPHD/VII/2017 dan 31/PP.01.3-NK/7373/KPU-Kot/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 19435341750, '', '0000-00-00', '', 0, '', '0000-00-00', 'J024DX3ZBA', '', '0000-00-00', '', '', '', 5500000000, 0, 0, 0, 5500000000, 5500050000, 3366520100, 3366520100, 9935341750, 0, 9935341750, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(140, 2018, 'KPU  PROVINSI SULAWESI TENGGARA', 659424, 'KPU KABUPATEN KENDARI', 'PEMERINTAH KABUPATEN KENDARI', ' 910/721/2017 dan 14/PP.01.3-SPJ/7402/KPU-Kab/VII/2017 tanggal 24 Juli 2017 ', '2017-07-24', '', 54990000000, '', '0000-00-00', '', 0, '', '0000-00-00', '2M8JGS6A', '', '0000-00-00', '', '', '', 3610463000, 8901896000, 0, 0, 12512359000, 10190111000, 9468239781, 9468239781, 19995000000, 9432035950, 29427035950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(141, 2018, 'KPU  PROVINSI SULAWESI TENGGARA', 659452, 'KPU KABUPATEN KOLAKA', 'PEMERINTAH KABUPATEN KOLAKA', ' 116/17/2017 dan 77/PR.07-SPj/7401/KPU-Kab/VII/2017 tanggal 13 Juli 2017 ', '2017-07-13', '', 22100000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J024YLED8A', '', '0000-00-00', '', '', '', 7000000000, 8901896000, 0, 0, 15901896000, 4389464000, 4012708500, 4012708500, 6198104000, 0, 6198104000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(142, 2018, 'KPU  PROVINSI SULAWESI TENGGARA', 659513, 'KPU  KOTA BAU-BAU', ' KOTA BAU-BAU', ' 05 TAHUN 2017 dan 93/PP.01.3-NK/7472/Kota/VII/2017 ', '2017-07-31', '', 25851023000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02MJLFFWA', '', '0000-00-00', '', '', '', 7500000000, 7500000000, 0, 0, 15000000000, 15000050000, 2790768647, 2790768647, 10851023000, 0, 10851023000, 0, 1663938950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1663938950, 0, 0, ''),
(143, 2018, 'KPU  PROVINSI GORONTALO', 659562, 'KPU KOTA GORONTALO', 'PEMERINTAH KOTA GORONTALO', ' 181/HUKUM/93/2017 dan 102/KPU-Kota 027.71/VI/2017 tanggal 13 Juni 2017 ', '2017-06-13', '', 23244938000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02QAUP9QA', '', '0000-00-00', '', '', '', 750000000, 750000000, 3046597000, 0, 4546597000, 4546647000, 3825060950, 3825060950, 8000000000, 10698341000, 18698341000, 19419877050, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(144, 2018, 'KPU  PROVINSI MALUKU', 659602, 'KPU  KABUPATEN MALUKU TENGGARA', ' KABUPATEN MALUKU TENGGAR', ' 900/240/BKBP/2017 dan 41/KPU-Kab.8102/2017 tanggal 7 Agustus 2017 ', '2017-08-07', '', 20581015844, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02JKATDKA', '', '0000-00-00', '', '', '', 274650000, 4904685893, 0, 0, 5179335893, 4904735000, 0, 0, 15401679951, 0, 15401679951, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(145, 2018, 'KPU  PROVINSI PAPUA', 659740, 'KPU KABUPATEN BIAK NUMFOR', 'PEMERINTAH KABUPATEN BIAK NUMFOR', ' 05/954/IX/HKM-BN/2017 dan 35/KPU-kab-030.434104/IX/2017 tanggal 26 September 2017 ', '2017-09-26', '', 28634760700, '', '0000-00-00', '', 0, '', '0000-00-00', '2JKATDKA', '', '0000-00-00', '', '', '', 300000000, 2000000000, 0, 0, 2300000000, 5000000000, 0, 0, 22900000000, 0, 22900000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(146, 2018, 'KPU  PROVINSI PAPUA', 659775, 'KPU  KABUPATEN JAYAWIJAYA', ' KABUPATEN JAYAWIJAYA', ' 900/2485/BUP dan Nomor 22/B5/KPU-Kab-0.30/VI/2017 tanggal 14 Juni 2017 ', '2017-06-14', '', 75461270325, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02RMUUX7A', '', '0000-00-00', '', '', '', 25000000000, 0, 0, 0, 25000000000, 25000050000, 5295205758, 5295205758, 30000000000, 0, 30000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(147, 2018, 'KPU  PROVINSI PAPUA', 659782, 'KPU KABUPATEN PANIAI', 'PEMERINTAH KABUPATEN PANIAI', ' 100/839/SET/2017 dan 01/B5/KPU-Kab/030-434141/VII/2017 tanggal 24 Juli 2017 ', '2017-07-24', '', 76986591000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02C483MTA', '', '0000-00-00', '', '', '', 30000000000, 0, 0, 0, 30000000000, 30000050000, 11057042500, 11057042500, 25000000000, 0, 25000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(148, 2018, 'KPU  PROVINSI PAPUA', 659818, 'KPU KABUPATEN MIMIKA', 'PEMERINTAH KABUPATEN MIMIKA', '', '0000-00-00', '', 62281163000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02NDVR7YA', '', '0000-00-00', '', '', '', 9000000000, 0, 0, 0, 9000000000, 9000050000, 2490448718, 2490448718, 30000000000, 23281163000, 53281163000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(149, 2018, 'KPU  PROVINSI SUMATERA SELATAN', 670252, 'KPU KAB EMPAT LAWANG', 'PEMERINTAH KAB EMPAT LAWANG', ' 900/016/NPHD/2017 dan 01/KPU.Kab-006.964730/VI/2017 ', '2017-06-02', '', 38738207000, '', '0000-00-00', '', 0, '', '0000-00-00', '24ZRJR4A', '', '0000-00-00', '', '', '', 6212921050, 0, 0, 0, 6212921050, 6212971000, 2170652000, 2170652000, 32525285950, 0, 32525285950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(150, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 670269, 'KPU KAB. NAGEKEO', 'PEMERINTAH KAB. NAGEKEO', ' 33/HK/9/2017 dan 108/kpu-kab.018964746/IX/2017 tanggal 11 sept 2017 ', '2017-09-11', '', 19673245450, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02ZR4TDTA', '', '0000-00-00', '', '', '', 9300000000, 0, 0, 0, 9300000000, 9300000000, 321422180, 321422180, 10373245450, 0, 10000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(151, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 670273, 'KPU KAB. SUMBA TENGAH', 'PEMERINTAH KAB. SUMBA TENGAH', ' HK/12/53.17/IX/2017 dan 01/KB/KPU-Kab-018.964752/2017 tanggal 5 September 2017 ', '2017-09-05', '', 11986046000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02C46WN9A', '', '0000-00-00', '', '', '', 3000000000, 0, 0, 0, 3000000000, 3000050000, 1764900000, 1764900000, 6000000000, 2986046000, 8986046000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(152, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 670280, 'KPU KAB. SUMBA BARAT DAYA', 'PEMERINTAH KAB. SUMBA BARAT DAYA', ' 900/6a/BKAD/SBD/VII/2017 dan 01/NPHD/KPU-Kab/018-964761/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 34026622000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GBD2UAA', '', '0000-00-00', '', '', '', 18000000000, 0, 0, 0, 18000000000, 8000000000, 2482090500, 2482090500, 12000000000, 0, 12000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(153, 2018, 'KPU  PROVINSI SULAWESI UTARA', 670294, 'KPU KOTA KOTAMOBAGO', 'KOTA KOTAMOBAGO', ' 69/W-KK/V/2017 dan 02/PP.01.3-BA/7174/KPU/Kot/V/2017 Tanggal 15 Mei 2017 ', '2017-05-15', '', 15000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02B4GWDLA', '', '0000-00-00', '', '', '', 15000000000, 0, 0, 0, 15000000000, 15000050000, 2446611441, 2446611441, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(154, 2018, 'KPU  PROVINSI SULAWESI UTARA', 670302, 'KPU KAB. MINAHASA TENGGARA', 'PEMERINTAH KAB. MINAHASA TENGGARA', ' 13/NPHD/BMT/VI-2017 dan 24/KPU-MT.964783/VI/2017 Tanggal 14 Juni 2017 ', '2017-06-14', 'PELAKSANAAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI MINAHASA TENGGARA TAHUN 2018', 24084236000, '60/KPU-MT/023.964783/VIII/2017', '2017-08-09', 'PELAKSANAAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI MINAHASA TENGGARA TAHUN 2018', 24084236000, '', '0000-00-00', 'J02EY8WZYA', '', '0000-00-00', '', '', '', 4700000000, 0, 0, 0, 4700000000, 4726723000, 2815428000, 2815428000, 19384236000, 0, 19384236000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(155, 2018, 'KPU  PROVINSI SULAWESI UTARA', 670316, 'KPU KAB. BOLAANG MONGONDOW UTARA', 'KAB. BOLAANG MONGONDOW UT', ' 180/05/NPHD/VII/2017 dan 29/PR.07-NK/7108/KPU-Kab/VII/2017 tanggal 24 Juli 2017 ', '2017-07-24', '', 19563467950, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02SNUFMLA', '', '0000-00-00', '', '', '', 5000000000, 0, 0, 0, 5000000000, 5000050000, 2873802851, 2873802851, 14563467950, 0, 14563467950, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(156, 2018, 'KPU  PROVINSI SULAWESI UTARA', 670320, 'KPU KAB. KEP. SIAU TAGULANDANG BIARO', 'PEMERINTAH KAB. KEP. SIAU TAGULANDANG BIARO', ' 05/BK-NPHD/V/2017 dan 01/NPHD/KPUSITARO/023.964803/2017 Tanggal 17 Mei 2017 ', '2017-05-17', '', 22500000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02FZ4AH2A', '', '0000-00-00', '', '', '', 2000000000, 1000000000, 1000000000, 750000000, 4750000000, 4750050000, 4750000000, 4750000000, 8000000000, 6750000000, 14750000000, 0, 0, 0, 0, 0, 0, 14750000000, 0, 0, 0, 0, 0, 0, 14750000000, 0, 0, ''),
(157, 2018, 'KPU  PROVINSI KALIMANTAN BARAT', 670337, 'KPU KAB. KAYONG UTARA', 'KAB. KAYONG UTARA', ' 900/2295/KEUDA-II dan 36/KPUKab.019.964828/VI/2017 Tanggal 15 Juni 2017 ', '2017-06-15', '', 17129477100, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02B95HXXA', '', '0000-00-00', '', '', '', 5908638200, 0, 0, 0, 5908638200, 5908689000, 2551537661, 2555247758, 11220838900, 0, 11220838900, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(158, 2018, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 670341, 'KPU KAB. PIDIE JAYA', 'PEMERINTAH KAB. PIDIE JAYA', ' 900/5/NPHD/2017 dan PP.01.04/425/KIP-PJ/2017 tanggal 4 September 2017 ', '2017-09-04', '', 21466709650, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02L4NPYDA', '', '0000-00-00', '', '', '', 6061439650, 0, 0, 0, 6061439650, 6061559000, 1258809123, 1258809123, 10403351800, 5001918200, 15405270000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(159, 2018, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 670358, 'KPU KOTA SUBULUSSALAM', 'KOTA SUBULUSSALAM', ' 903.1/180/01/2017 dan 270/104/KIP-SS/NPHD/VII/2017 tanggal 26 Juli 2017 ', '2017-07-26', '', 17306500000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02U2VLFZA', '', '0000-00-00', '', '', '', 16000000000, 0, 0, 0, 16000000000, 2321357000, 2321307000, 2321307000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(160, 2018, 'KPU  PROVINSI GORONTALO', 670362, 'KPU KAB. GORONTALO UTARA', 'PEMERINTAH KAB. GORONTALO UTARA', ' 900/BK.GORUT/15/VI/2017 dan 79/KPU-KAB-027.964859/VI/2017 tanggal 2 Juni 2017 ', '2017-06-02', '', 23700000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02NRFJD9A', '', '0000-00-00', '', '', '', 4700000000, 0, 0, 0, 4700000000, 4700050000, 698833170, 698833170, 16000000000, 3000000000, 19000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(161, 2018, 'KPU  PROVINSI JAWA BARAT', 670379, 'KPU KAB. BANDUNG BARAT', 'KAB. BANDUNG BARAT', ' 900/Perj.25-TAPEM/2017 dan 04/PP.01-3-SPj/3217/KPU-Kab/VI/2017 Tanggal 12 Juni 2017 ', '2017-06-12', '', 45817224200, '', '0000-00-00', '', 0, '', '0000-00-00', 'J028G2E7PA', '', '0000-00-00', '', '', '', 15000000000, 0, 0, 0, 15000000000, 15000050000, 4184015167, 4184015167, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(162, 2018, 'KPU  PROVINSI SUMATERA UTARA', 670383, 'KPU KAB. BATUBARA', 'KAB. BATUBARA', ' 900/5303 dan 01/PR.07-SPJ/1219/KPU-Kab/VIII/2017 tanggal 23 Agustus 2017 ', '2017-08-23', '', 29338487800, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02GFEL5VA', '', '0000-00-00', '', '', '', 8146338000, 0, 0, 0, 8146338000, 8146388000, 4158340868, 4158340868, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(163, 2018, 'KPU  PROVINSI MALUKU', 670700, 'KPU KOTA TUAL', 'KOTA TUAL', ' 45/NPHD-PPKD/2017/KT dan 02/KPU-KT/028.964896/VIII/2017 tanggal 26 Agustus 2017 ', '2017-08-26', '', 15000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02PPTWEBA', '', '0000-00-00', '', '', '', 2534000000, 0, 0, 0, 2534000000, 2534050000, 2534000000, 2534000000, 12466000000, 0, 12466000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(164, 2018, 'KPU  PROVINSI BANTEN', 670714, 'KPU KOTA SERANG', 'PEMERINTAH KOTA SERANG', ' 900/07-KID/IV/2017253/KPU.Kota-015436900/IV/2017 ', '2017-04-12', '', 25798331370, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02VQ7FTPA', '', '0000-00-00', '', '', '', 25798331370, 0, 0, 0, 25798331370, 25798411000, 4064049800, 4064049800, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(165, 2018, 'KPU  PROVINSI KALIMANTAN BARAT', 670742, 'KPU KAB. KUBU RAYA', 'KAB. KUBU RAYA', ' 03/NPHD/SETDA-PEM/2017 dan 42/PR.07-SPj/6112/KPU-Kab/VII/2017 tanggal 17 Juli 2017 ', '2017-07-17', '', 39700300550, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02V5PF65A', '', '0000-00-00', '', '', '', 5997020000, 0, 0, 0, 5997020000, 5997070000, 2052760902, 2052760902, 33703280550, 0, 33703280550, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(166, 2018, 'KPU  PROVINSI NUSA TENGGARA TIMUR', 670756, 'KPU KAB. MANGGARAI TIMUR', 'PEMERINTAH KAB. MANGGARAI TIMUR', ' HK.NPHD/1/Tahun 2017 dan 02/KPU-Kab/018-964947/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', 'PELAKSANAAN DANA HIBAH PENYELENGGARAAN PEMILIHAN BUPATI DAN WAKIL BUPATI TAHUN 2018', 22000000000, '', '0000-00-00', '', 0, '', '0000-00-00', '2464EZSA', 'S-837/WPB.23/KP.0530/2017', '2017-08-24', '', '0603522263', 'BNI CABANG PEMBANTU BORONG', 4999641000, 0, 0, 0, 4999641000, 4999223000, 4030613776, 4030613776, 8500388500, 8499970500, 17000359000, 17000777000, 815627927, 2112403070, 2252510400, 342336700, 0, 0, 0, 0, 0, 0, 0, 0, 5522878097, 0, 0, ''),
(167, 2018, 'KPU  PROVINSI SUMATERA UTARA', 670760, 'KPU KAB. PADANG LAWAS UTARA', 'PEMERINTAH KAB. PADANG LAWAS UTARA', ' 270/89/MoU/2017 dan 10/PP.01.3-SPj/1220/KPU-Kab/VIII/2017 tanggal 18 Agustus 2017 ', '2017-08-18', '', 30410569893, '53/PK.01-BA/1220/KPU-Kab/II/2018', '2018-02-02', '', 5000000000, '', '0000-00-00', 'J027GAL9PA', '', '0000-00-00', '', '', '', 8036588000, 0, 0, 0, 8036588000, 8036638000, 6894770600, 6894770600, 22373981893, 0, 22373981893, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(168, 2018, 'KPU  PROVINSI SUMATERA UTARA', 670777, 'KPU KAB. PADANG LAWAS', 'PEMERINTAH KAB. PADANG LAWAS', ' 270/170/MoU/2017 dan 024/PR.01-SPj/1221/Kab/VII/2017 tanggal 31 Juli 2017 ', '2017-07-31', '', 26000000000, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02HW5MSAA', '', '0000-00-00', '', '', '', 6165767500, 0, 0, 0, 6165767500, 6165818000, 4694408800, 4694408800, 3834232500, 15000000000, 18834232500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(169, 2018, 'KPU  PROVINSI PAPUA', 670810, 'KPU KAB. MAMBERAMO TENGAH', 'KAB. MAMBERAMO TENGAH', ' 900/110/BUP-MT/2017 dan 01/NPHD/KPU-MT/2017 tanggal 18 September 2017 ', '2017-09-18', '', 57800000000, '', '0000-00-00', '', 0, '', '0000-00-00', '2QGBZWWA', '', '0000-00-00', '', '', '', 2499930000, 0, 0, 0, 2499930000, 2300050000, 0, 0, 15000000000, 0, 15000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(170, 2018, 'KPU  PROVINSI PAPUA', 670852, 'KPU KAB. PUNCAK', 'PEMERINTAH KAB. PUNCAK', ' SUDAH NPHD, BELUM MENGIRIMKAN SCAN NPHD ', '0000-00-00', '', 78693796250, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02ENQWWLA', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 10000050000, 10000000000, 10000000000, 15900000000, 36100000000, 52000000000, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(171, 2018, 'KPU  PROVINSI PAPUA', 680750, 'KPU KABUPATEN DEIYAI', 'PEMERINTAH KABUPATEN DEIYAI', ' 100/101-set/VI/2017 dan 16/PP.01.03-spj/9128/kpu-kab/VI/2017 tanggal 12 juni 2017 ', '2017-06-12', '', 43692884500, '', '0000-00-00', '', 0, '', '0000-00-00', 'J02HTAMV3A', '', '0000-00-00', '', '', '', 10000000000, 0, 0, 0, 10000000000, 10000050000, 10000000000, 10000000000, 3692892000, 29999992500, 33692884500, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, ''),
(172, 2018, 'KPU PROVINSI KALIMANTAN TIMUR', 658923, 'KPU KOTA TARAKAN', 'PEMERINTAH KOTA TARAKAN', '460/1228/TAPEM/2017', '2017-09-22', 'HIbah langsung Kas dari Pemkot Tarakan untuk KPU Kota Tarakan', 13579, '', '0000-00-00', '', 0, '047/Seskota-021.436188/IX/2017', '2017-09-27', 'S-1668/WPB.20/2017', 'S-1465/WPB.20/KP.048/2017', '2017-10-06', '', 'RPL 048 KPU TRK U PILWALI 2018', 'BANK KALTIM CABANG TARAKAN', 1500000000, 0, 0, 0, 1500000000, 1500000000, 1500000000, 1462574986, 4937425014, 7359131586, 12296556600, 4937425014, 383420476, 191268211, 1657227962, 828753619, 943673718, 3823447003, 0, 0, 0, 0, 0, 0, 7827790989, 0, 0, ''),
(173, 2018, 'KPU PROVINSI KALIMANTAN TIMUR', 658923, 'KPU KOTA TARAKAN', 'PEMERINTAH KOTA TARAKAN', '460/1228/TAPEM/2017', '2017-09-22', 'HIbah langsung Kas dari Pemkot Tarakan untuk KPU Kota Tarakan', 13579, '', '0000-00-00', '', 0, '047/Seskota-021.436188/IX/2017', '2017-09-27', 'S-1668/WPB.20/2017', 'S-1465/WPB.20/KP.048/2017', '2017-10-06', '', 'RPL 048 KPU TRK U PILWALI 2018', 'BANK KALTIM CABANG TARAKAN', 1500000000, 0, 0, 0, 1500000000, 1500000000, 1500000000, 1462574986, 4937425014, 7359131586, 12296556600, 4937425014, 383420476, 191268211, 1657227962, 828753619, 943673718, 3823447003, 0, 0, 0, 0, 0, 0, 7827790989, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `data_opr`
--

CREATE TABLE `data_opr` (
  `id` int(11) NOT NULL,
  `tahun` int(11) NOT NULL DEFAULT '2017',
  `prov` varchar(255) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `nama_satker` varchar(255) NOT NULL,
  `pem_hibah` varchar(255) NOT NULL,
  `jenis` enum('Barang','Jasa','Operasional','Lainnya') NOT NULL,
  `no_nphd` varchar(255) NOT NULL,
  `tgl_nphd` date NOT NULL,
  `per_nphd` varchar(255) NOT NULL,
  `nilai_nphd` bigint(20) NOT NULL,
  `na_1` varchar(255) NOT NULL,
  `nb_1` date NOT NULL,
  `nc_1` varchar(255) NOT NULL,
  `nd_1` bigint(20) NOT NULL,
  `ndjppr` varchar(255) NOT NULL,
  `tdjppr` date NOT NULL,
  `noreg` varchar(255) NOT NULL,
  `noijin` varchar(255) NOT NULL,
  `treg` date NOT NULL,
  `nrek` varchar(255) NOT NULL,
  `norek` varchar(255) NOT NULL,
  `nbank` varchar(255) NOT NULL,
  `tr_1` bigint(20) NOT NULL,
  `tr_2` bigint(20) NOT NULL,
  `tr_3` bigint(20) NOT NULL,
  `tr_4` bigint(20) NOT NULL,
  `tr_all` bigint(20) NOT NULL,
  `pagopr` bigint(20) NOT NULL,
  `realopr` bigint(20) NOT NULL,
  `sp2hl` bigint(20) NOT NULL,
  `sp4hl` bigint(20) NOT NULL,
  `peng` enum('Pemda','Negara') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_opr`
--

INSERT INTO `data_opr` (`id`, `tahun`, `prov`, `kode_satker`, `nama_satker`, `pem_hibah`, `jenis`, `no_nphd`, `tgl_nphd`, `per_nphd`, `nilai_nphd`, `na_1`, `nb_1`, `nc_1`, `nd_1`, `ndjppr`, `tdjppr`, `noreg`, `noijin`, `treg`, `nrek`, `norek`, `nbank`, `tr_1`, `tr_2`, `tr_3`, `tr_4`, `tr_all`, `pagopr`, `realopr`, `sp2hl`, `sp4hl`, `peng`) VALUES
(1, 2017, '', 655675, 'KPU  KABUPATEN ACEH BARAT', 'PEMERINTAH KABUPATEN ACEH BARAT', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02XQUW32A ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 1500000000, 0, 0, 0, 'Pemda'),
(2, 2017, '', 656528, 'KPU  KABUPATEN MUARA ENIM (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02FNEBTFA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 353520000, 342140083, 0, 0, 'Pemda'),
(3, 2017, '', 656532, 'KPU  KABUPATEN OGAN KOMERING ILIR (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02QST8E7A ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 250000000, 250000000, 0, 0, 'Pemda'),
(4, 2017, '', 656600, 'KPU  KOTA LUBUK LINGGAU (Operasional)', '', 'Barang', '', '0000-00-00', '', 26100000000, '', '0000-00-00', '', 0, '', '0000-00-00', ' J023RJWHA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 600000000, 0, 0, 0, 'Pemda'),
(5, 2017, '', 657008, 'KPU  KABUPATEN BOGOR (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J027U9QLJA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 1200000000, 0, 0, 0, 'Pemda'),
(6, 2017, '', 657164, 'KPU  KOTA BANDUNG (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02PR6N3YA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 2441766000, 0, 0, 0, 'Pemda'),
(7, 2017, '', 657171, 'KPU  KOTA BOGOR (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02PFAZ9LA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 349384000, 349303150, 0, 0, 'Pemda'),
(8, 2017, '', 657192, 'KPU  KOTA CIREBON (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02WTJHZLA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 500000000, 0, 0, 0, 'Pemda'),
(9, 2017, '', 657207, 'KPU  KOTA BEKASI (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02NM969ZA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 639680000, 0, 0, 0, 'Pemda'),
(10, 2017, '', 658202, 'KPU  KABUPATEN LOMBOK TIMUR (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02MTB8RMA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 1360000000, 1352920050, 0, 0, 'Pemda'),
(11, 2017, '', 658262, 'KPU  KOTA BIMA (OPERASIONAL)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' JO211L7MHA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 141538000, 138163199, 0, 0, 'Pemda'),
(12, 2017, '', 658681, 'KPU  KOTA PALANGKARAYA (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J026DDWE8A ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 500000000, 499932398, 0, 0, 'Pemda'),
(13, 2017, '', 659072, 'KPU  KABUPATEN MOROWALI (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J02F6PYGWA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 897855000, 647412560, 0, 0, 'Pemda'),
(14, 2017, '', 659072, 'KPU  KABUPATEN MOROWALI (Operasional)', '', 'Barang', '', '0000-00-00', '', 0, '', '0000-00-00', '', 0, '', '0000-00-00', ' J028RF6EJA ', '', '0000-00-00', '', '', '', 0, 0, 0, 0, 0, 786000000, 786000000, 0, 0, 'Pemda'),
(15, 2017, 'BANTEN', 654432, 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N', 'Operasional', '978.3/853-PEM / 2017', '2017-10-23', 'Hibah Langsung Dalam Bentuk Uang Untuk KPU Provinsi Banten', 1599410000, '', '0000-00-00', '', 0, '', '0000-00-00', '2NMPS1SA', 'S-2467/WPB.11/KP.0130/2017', '2017-11-29', '', '0082018281001', 'Bank Bjb', 1599410000, 0, 0, 0, 1599410000, 0, 0, 1540633266, 58776737, 'Pemda'),
(16, 2017, 'Aceh', 654289, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 'PEMERINTAH PROVINSI NANGROE ACEH DARUSSALAM', 'Operasional', '24/PKS/2017 dan 3860/KU.04-NK/11/Prov/XII/2017', '2017-12-12', 'Persiapan dan Pelaksanaan Verifikasi Partai Politik Lokal Calon Peserta Pemilu Tahun 2019', 3037014000, '-', '0000-00-00', '-', 0, '-', '0000-00-00', '22NJVBLA', 'S-4317/WPB.01/2017', '2017-12-18', '', '003701004059305', 'BRI Cabang Banda Aceh', 3702979000, 0, 0, 0, 3702979000, 0, 3690410000, 3690410000, 12569000, 'Pemda');

-- --------------------------------------------------------

--
-- Table structure for table `data_prov`
--

CREATE TABLE `data_prov` (
  `id` int(11) NOT NULL,
  `nama_prov` varchar(255) NOT NULL,
  `koordinat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_prov`
--

INSERT INTO `data_prov` (`id`, `nama_prov`, `koordinat`) VALUES
(1, 'KPU  PROVINSI BALI', '-8.409518, 115.188916'),
(2, 'KPU PROVINSI KEPULAUAN RIAU', '0.9079535,104.4550897,20'),
(3, 'KPU  PROVINSI BANGKA BELITUNG', '-2.137629, 106.094553'),
(4, 'KPU  PROVINSI BANTEN', '-6.141317, 106.196826'),
(5, 'KPU  PROVINSI BENGKULU', '-3.830956, 102.295112'),
(6, 'KPU  PROVINSI GORONTALO', '0.573617, 123.091034'),
(7, 'KPU  PROVINSI JAMBI', '-1.607226, 103.567342'),
(8, 'KPU  PROVINSI JAWA BARAT', '-7.090911,107.668887'),
(9, 'KPU  PROVINSI JAWA TENGAH', '-6.996597, 110.411283'),
(10, 'KPU  PROVINSI JAWA TIMUR', '-7.320811, 112.748262'),
(11, 'KPU  PROVINSI KALIMANTAN BARAT', '-0.059803, 109.352551'),
(12, 'KPU  PROVINSI KALIMANTAN SELATAN', '-3.462607, 114.814698'),
(13, 'KPU  PROVINSI KALIMANTAN TENGAH', '-2.207664, 113.919246'),
(14, 'KPU  PROVINSI KALIMANTAN TIMUR', '-0.496469, 117.151342'),
(15, 'KPU  PROVINSI LAMPUNG', '-5.412557, 105.267255'),
(16, 'KPU  PROVINSI MALUKU', '-3.670377, 128.196863'),
(17, 'KPU  PROVINSI MALUKU UTARA', '0.769165, 127.361759'),
(18, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', '5.535559, 95.312912'),
(19, 'KPU  PROVINSI NUSA TENGGARA BARAT', '-8.581084, 116.098582'),
(20, 'KPU  PROVINSI NUSA TENGGARA TIMUR', '-10.174734, 123.606047'),
(21, 'KPU  PROVINSI PAPUA', '-2.535951, 140.716182'),
(22, 'KPU  PROVINSI RIAU', '0.518093, 101.451534'),
(23, 'KPU  PROVINSI SULAWESI SELATAN', '-5.156981, 119.436258'),
(24, 'KPU  PROVINSI SULAWESI TENGAH', '-0.889144, 119.879459'),
(25, 'KPU  PROVINSI SULAWESI TENGGARA', '-3.967934, 122.468017'),
(26, 'KPU  PROVINSI SULAWESI UTARA', '1.485955, 124.842161'),
(27, 'KPU  PROVINSI SUMATERA BARAT', '-0.916074, 100.356733'),
(28, 'KPU  PROVINSI SUMATERA SELATAN', '-3.021050, 104.773759'),
(29, 'KPU  PROVINSI SUMATERA UTARA', '3.599099, 98.683196'),
(30, 'KPU PROVINSI SULAWESI BARAT', '-2.694167, 118.880426');

-- --------------------------------------------------------

--
-- Table structure for table `data_satker`
--

CREATE TABLE `data_satker` (
  `id` int(11) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `nama_satker` varchar(255) NOT NULL,
  `pemda` varchar(255) NOT NULL,
  `koordinat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_satker`
--

INSERT INTO `data_satker` (`id`, `kode_satker`, `nama_satker`, `pemda`, `koordinat`) VALUES
(1, 654399, 'KPU PROVINSI JAWA BARAT', 'PEMERINTAH PROVINSI JAWA BARAT', '-7.090911, 107.668887'),
(2, 657008, 'KPU KABUPATEN BOGOR', 'PEMERINTAH KABUPATEN BOGOR', '-6.551776, 106.62913'),
(3, 657054, 'KPU KABUPATEN PURWAKARTA', 'PEMERINTAH KABUPATEN PURWAKARTA', '-6.540666,107.446272'),
(4, 657061, 'KPU KABUPATEN SUBANG', 'PEMERINTAH KABUPATEN SUBANG', '-6.348762, 107.763621'),
(5, 657082, 'KPU KABUPATEN SUMEDANG', 'PEMERINTAH KABUPATEN SUMEDANG', '-6.832858, 107.953184'),
(6, 657096, 'KPU KABUPATEN GARUT', 'PEMERINTAH KABUPATEN GARUT', '-7.501220, 107.763621'),
(7, 657118, 'KPU KABUPATEN CIAMIS', 'PEMERINTAH KABUPATEN CIAMIS', '-7.332077, 108.349254'),
(8, 657122, 'KPU KABUPATEN CIREBON', 'PEMERINTAH KABUPATEN CIREBON', '-6.689888, 108.475085'),
(9, 657139, 'KPU KABUPATEN KUNINGAN', 'PEMERINTAH KABUPATEN KUNINGAN', '-7.013805, 108.570064'),
(10, 657150, 'KPU KABUPATEN MAJALENGKA', 'PEMERINTAH KABUPATEN MAJALENGKA', '-6.779060, 108.285205'),
(11, 657164, 'KPU KOTA BANDUNG', 'PEMERINTAH KOTA BANDUNG', '-6.917464, 107.619123'),
(12, 657171, 'KPU KOTA BOGOR', 'PEMERINTAH KOTA BOGOR', '-6.597147, 106.806039'),
(13, 657185, 'KPU KOTA SUKABUMI', 'PEMERINTAH KOTA SUKABUMI', '-6.927736, 106.929958'),
(14, 657192, 'KPU KOTA CIREBON', 'PEMERINTAH KOTA CIREBON', '-6.732023, 108.552316'),
(15, 657207, 'KPU KOTA BEKASI', 'PEMERINTAH KOTA BEKASI', '-6.238270, 106.975573'),
(16, 657249, 'KPU KOTA BANJAR', 'PEMERINTAH KOTA BANJAR', '-7.370687, 108.534249'),
(17, 670379, 'KPU KAB. BANDUNG BARAT', 'PEMERINTAH KAB. BANDUNG BARAT', '-6.865221, 107.491977'),
(18, 654404, 'KPU PROVINSI JAWA TENGAH', 'PEMERINTAH PROVINSI JAWA TENGAH', '-7.150975, 110.140259'),
(19, 657317, 'KPU KABUPATEN TEGAL', 'PEMERINTAH KABUPATEN TEGAL', '-6.858847, 109.104766'),
(20, 657342, 'KPU KABUPATEN KUDUS', 'PEMERINTAH KABUPATEN KUDUS', '-6.772619, 110.879134'),
(21, 657391, 'KPU KABUPATEN BANYUMAS', 'PEMERINTAH KABUPATEN BANYUMAS', '-7.483213, 109.140438'),
(22, 657431, 'KPU KABUPATEN MAGELANG', 'PEMERINTAH KABUPATEN MAGELANG', '-7.430524, 110.283222'),
(23, 657448, 'KPU KABUPATEN TEMANGGUNG', 'PEMERINTAH KABUPATEN TEMANGGUNG', '-7.274872, 110.089189'),
(24, 657520, 'KPU KABUPATEN KARANGANYAR', 'PEMERINTAH KABUPATEN KARANGANYAR', '-7.638723, 111.046041'),
(25, 657579, 'KPU KOTA TEGAL', 'PEMERINTAH KOTA TEGAL', '-6.879704, 109.125592'),
(26, 654425, 'KPU PROVINSI JAWA TIMUR', 'PEMERINTAH PROVINSI JAWA TIMUR', '-7.536064, 112.238402'),
(27, 657651, 'KPU KABUPATEN BANGKALAN', 'PEMERINTAH KABUPATEN BANGKALAN', '-7.038375, 112.913669'),
(28, 657689, 'KPU KABUPATEN BOJONEGORO', 'PEMERINTAH KABUPATEN BOJONEGORO', '-7.317463, 111.761466'),
(29, 657693, 'KPU KABUPATEN BONDOWOSO', 'PEMERINTAH KABUPATEN BONDOWOSO', '-7.967391, 113.906062'),
(30, 657722, 'KPU KABUPATEN JOMBANG', 'PEMERINTAH KABUPATEN JOMBANG', '-7.574087, 112.28609'),
(31, 657757, 'KPU KABUPATEN LUMAJANG', 'PEMERINTAH KABUPATEN LUMAJANG', '-8.094357, 113.144156'),
(32, 657761, 'KPU KABUPATEN MADIUN', 'PEMERINTAH KABUPATEN MADIUN', '-7.609331, 111.618375'),
(33, 657778, 'KPU KABUPATEN MAGETAN', 'PEMERINTAH KABUPATEN MAGETAN', '-7.643314, 111.356045'),
(34, 657804, 'KPU KABUPATEN NGANJUK', 'PEMERINTAH KABUPATEN NGANJUK', '-7.594351,111.904554'),
(35, 657832, 'KPU KABUPATEN PAMEKASAN', 'PEMERINTAH KABUPATEN PAMEKASAN', '-7.105086, 113.525232'),
(36, 657846, 'KPU KABUPATEN PASURUAN', 'PEMERINTAH KABUPATEN PASURUAN', '-7.785996, 112.858217'),
(37, 657867, 'KPU KABUPATEN PROBOLINGGO', 'PEMERINTAH KABUPATEN PROBOLINGGO', '-7.871756, 113.477610'),
(38, 657871, 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG', '-7.040233, 113.239445'),
(39, 657935, 'KPU KABUPATEN TULUNGAGUNG', 'PEMERINTAH KABUPATEN TULUNGAGUNG', '-8.091221, 111.964173'),
(40, 657977, 'KPU KOTA KEDIRI', 'PEMERINTAH KOTA KEDIRI', '-7.848016, 112.017829'),
(41, 657981, 'KPU KOTA MADIUN', 'PEMERINTAH KOTA MADIUN', '-7.631059, 111.530016'),
(42, 657998, 'KPU KOTA MALANG', 'PEMERINTAH KOTA MALANG', '-7.966620, 112.632632'),
(43, 658000, 'KPU KOTA MOJOKERTO', 'PEMERINTAH KOTA MOJOKERTO', '-7.470475, 112.440133'),
(44, 658021, 'KPU KOTA PROBOLINGGO', 'PEMERINTAH KOTA PROBOLINGGO', '-7.776423, 113.203713'),
(45, 655629, 'KPU KABUPATEN ACEH SELATAN', 'PEMERINTAH KABUPATEN ACEH SELATAN', '3.311506, 97.351656'),
(46, 670341, 'KPU KAB. PIDIE JAYA', 'PEMERINTAH KAB. PIDIE JAYA', '5.154806, 96.195132'),
(47, 670358, 'KPU KOTA SUBULUSSALAM', 'PEMERINTAH KOTA SUBULUSSALAM', '2.712116, 97.91571'),
(48, 654293, 'KPU PROVINSI SUMATERA UTARA', 'PEMERINTAH PROVINSI SUMATERA UTARA', '2.115355, 99.545097'),
(49, 655849, 'KPU KABUPATEN TAPANULI UTARA', 'PEMERINTAH KABUPATEN TAPANULI UTARA', '2.040525, 99.10135'),
(50, 655874, 'KPU KABUPATEN LANGKAT', 'PEMERINTAH KABUPATEN LANGKAT', '3.865392, 98.308844'),
(51, 655895, 'KPU KABUPATEN DELI SERDANG', 'PEMERINTAH KABUPATEN DELI SERDANG', '3.420180, 98.704075'),
(52, 655942, 'KPU KABUPATEN DAIRI', 'PEMERINTAH KABUPATEN DAIRI', '2.867580, 98.265058'),
(53, 656070, 'KPU KOTA PADANG SIDEMPUAN', 'PEMERINTAH KOTA PADANG SIDEMPUAN', '1.372180, 99.273015'),
(54, 670383, 'KPU KAB. BATUBARA', 'PEMERINTAH KAB. BATUBARA', '3.174098, 99.500614'),
(55, 670760, 'KPU KAB. PADANG LAWAS UTARA', 'PEMERINTAH KAB. PADANG LAWAS UTARA', '1.575864, 99.634135'),
(56, 670777, 'KPU KAB. PADANG LAWAS', 'PEMERINTAH KAB. PADANG LAWAS', '1.118698, 99.812494'),
(57, 656202, 'KPU KOTA PADANG', 'PEMERINTAH KOTA PADANG', '-0.947083, 100.417181'),
(58, 656223, 'KPU KOTA SAWAHLUNTO', 'PEMERINTAH KOTA SAWAHLUNTO', '-0.684107, 100.732333'),
(59, 656230, 'KPU KOTA PADANG PANJANG', 'PEMERINTAH KOTA PADANG PANJANG', '-0.466095, 100.398415'),
(60, 656265, 'KPU KOTA PARIAMAN', 'PEMERINTAH KOTA PARIAMAN', '-0.625652, 100.12334'),
(61, 654315, 'KPU PROVINSI RIAU', 'PEMERINTAH PROVINSI RIAU', '0.293347, 101.706829'),
(62, 656290, 'KPU KABUPATEN INDRAGIRI HILIR', 'PEMERINTAH KABUPATEN INDRAGIRI HILIR', '-0.145673, 102.989615'),
(63, 656382, 'KPU KABUPATEN KERINCI', 'PEMERINTAH KABUPATEN KERINCI', '-1.872047, 101.433915'),
(64, 656396, 'KPU KABUPATEN MERANGIN', 'PEMERINTAH KABUPATEN MERANGIN', '-2.175279, 101.980461'),
(65, 656471, 'KPU KOTA JAMBI', 'PEMERINTAH KOTA JAMBI', '-1.610123, 103.61312'),
(66, 654336, 'KPU PROVINSI SUMATERA SELATAN', 'PEMERINTAH PROVINSI SUMATERA SELATAN', '-3.319437, 103.914399'),
(67, 656485, 'KPU KABUPATEN BANYUASIN', 'PEMERINTAH KABUPATEN BANYUASIN', '-2.609564, 104.752094'),
(68, 656511, 'KPU KABUPATEN LAHAT', 'PEMERINTAH KABUPATEN LAHAT', '-3.800889, 103.358729'),
(69, 656528, 'KPU KABUPATEN MUARA ENIM', 'PEMERINTAH KABUPATEN MUARA ENIM', '-3.711416, 104.007235'),
(70, 656532, 'KPU KABUPATEN OGAN KOMERING ILIR', 'PEMERINTAH KABUPATEN OGAN KOMERING ILIR', '-3.455974, 105.219481'),
(71, 656581, 'KPU KOTA PALEMBANG', 'PEMERINTAH KOTA PALEMBANG', '-2.976074, 104.775431'),
(72, 656595, 'KPU KOTA PAGAR ALAM', 'PEMERINTAH KOTA PAGAR ALAM', '-4.041962, 103.227885'),
(73, 656600, 'KPU KOTA LUBUK LINGGAU', 'PEMERINTAH KOTA LUBUK LINGGAU', '-3.299586, 102.857236'),
(74, 656617, 'KPU KOTA PRABUMULIH', 'PEMERINTAH KOTA PRABUMULIH', '-3.421371, 104.243683'),
(75, 670252, 'KPU KAB EMPAT LAWANG', 'PEMERINTAH KAB EMPAT LAWANG', '-3.728603, 102.89751'),
(76, 654357, 'KPU PROVINSI LAMPUNG', 'PEMERINTAH PROVINSI LAMPUNG', '-4.558585, 105.406808'),
(77, 656727, 'KPU KABUPATEN LAMPUNG UTARA', 'PEMERINTAH KABUPATEN LAMPUNG UTARA', '-4.813390, 104.752094'),
(78, 656752, 'KPU KABUPATEN TANGGAMUS', 'PEMERINTAH KABUPATEN TANGGAMUS', '-5.302749, 104.565527'),
(79, 654471, 'KPU PROVINSI KALIMANTAN BARAT', 'PEMERINTAH PROVINSI KALIMANTAN BARAT', '-0.278781, 111.475285'),
(80, 658461, 'KPU KABUPATEN PONTIANAK', 'PEMERINTAH KABUPATEN PONTIANAK', '0.389714, 109.140438'),
(81, 658478, 'KPU KABUPATEN SANGGAU', 'PEMERINTAH KABUPATEN SANGGAU', '0.140012, 110.521546'),
(82, 658532, 'KPU KOTA PONTIANAK', 'PEMERINTAH KOTA PONTIANAK', '-0.026330, 109.342504'),
(83, 670337, 'KPU KAB. KAYONG UTARA', 'PEMERINTAH KAB. KAYONG UTARA', '-0.922588, 110.044966'),
(84, 670742, 'KPU KAB. KUBU RAYA', 'PEMERINTAH KAB. KUBU RAYA', '-0.353394, 109.473507'),
(85, 658571, 'KPU KABUPATEN KAPUAS', 'PEMERINTAH KABUPATEN KAPUAS', '-1.811645, 114.334143'),
(86, 658588, 'KPU KABUPATEN KATINGAN', 'PEMERINTAH KABUPATEN KATINGAN', '-0.975838, 112.810551'),
(87, 658600, 'KPU KABUPATEN BARITO UTARA', 'PEMERINTAH KABUPATEN BARITO UTARA', '-0.958714, 115.094045'),
(88, 658614, 'KPU KABUPATEN SERUYAN', 'PEMERINTAH KABUPATEN SERUYAN', '-3.012347, 112.429146'),
(89, 658621, 'KPU KABUPATEN SUKAMARA', 'PEMERINTAH KABUPATEN SUKAMARA', '-2.626752, 111.236808'),
(90, 658635, 'KPU KABUPATEN LAMANDAU', 'PEMERINTAH KABUPATEN LAMANDAU', '-1.852638, 111.284503'),
(91, 658642, 'KPU KABUPATEN GUNUNG MAS', 'PEMERINTAH KABUPATEN GUNUNG MAS', '-1.252246, 113.572850'),
(92, 658656, 'KPU KABUPATEN PULANG PISAU', 'PEMERINTAH KABUPATEN PULANG PISAU', '-2.684961, 113.953647'),
(93, 658660, 'KPU KABUPATEN BARITO TIMUR', 'PEMERINTAH KABUPATEN BARITO TIMUR', '-2.012400, 115.188916'),
(94, 658677, 'KPU KABUPATEN MURUNG RAYA', 'PEMERINTAH KABUPATEN MURUNG RAYA', '-0.136217, 114.334143'),
(95, 658681, 'KPU KOTA PALANGKARAYA', 'PEMERINTAH KOTA PALANGKARAYA', '-2.216105113.913977'),
(96, 658710, 'KPU KABUPATEN TABALONG', 'PEMERINTAH KABUPATEN TABALONG', '-1.864302, 115.568108'),
(97, 658724, 'KPU KABUPATEN HULU SUNGAI SELATAN', 'PEMERINTAH KABUPATEN HULU SUNGAI SELATAN', '-2.766268, 115.236341'),
(98, 658752, 'KPU KABUPATEN TAPIN', 'PEMERINTAH KABUPATEN TAPIN', '-2.916075, 115.046599'),
(99, 658791, 'KPU KABUPATEN TANAHLAUT', 'PEMERINTAH KABUPATEN TANAHLAUT', '-3.769405, 114.809269'),
(100, 654500, 'KPU PROVINSI KALIMANTAN TIMUR', 'PEMERINTAH PROVINSI KALIMANTAN TIMUR', '0.538659, 116.419389'),
(101, 658820, 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', '-1.291709, 116.513796'),
(102, 658965, 'KPU KABUPATEN MINAHASA', 'PEMERINTAH KABUPATEN MINAHASA', '1.216884, 124.818259'),
(103, 658986, 'KPU KABUPATEN KEPULAUAN TALAUD', 'PEMERINTAH KABUPATEN KEPULAUAN TALAUD', '4.306674, 126.803492'),
(104, 670294, 'KPU KOTA KOTAMOBAGO', 'PEMERINTAH KOTA KOTAMOBAGO', '0.724373, 124.319932'),
(105, 670302, 'KPU KAB. MINAHASA TENGGARA', 'PEMERINTAH KAB. MINAHASA TENGGARA', '1.027855, 124.729877'),
(106, 670316, 'KPU KAB. BOLAANG MONGONDOW UTARA', 'PEMERINTAH KAB. BOLAANG MONGONDOW UTARA', '0.907036, 123.265731'),
(107, 670320, 'KPU KAB. KEP. SIAU TAGULANDANG BIARO', 'PEMERINTAH KAB. KEP. SIAU TAGULANDANG BIARO', '2.345964, 125.412436'),
(108, 659072, 'KPU KABUPATEN MOROWALI', 'PEMERINTAH KABUPATEN MOROWALI', '-2.4717616,121.9204133'),
(109, 659089, 'KPU KABUPATEN DONGGALA', 'PEMERINTAH KABUPATEN DONGGALA', '-0.423316, 119.835230'),
(110, 659115, 'KPU KABUPATEN PARIGI MOUTONG', 'PEMERINTAH KABUPATEN PARIGI MOUTONG', '0.581761, 120.803947'),
(111, 654535, 'KPU PROVINSI SULAWESI SELATAN', 'PEMERINTAH PROVINSI SULAWESI SELATAN', '-5.157347,119.4364923'),
(112, 659161, 'KPU KABUPATEN BANTAENG', 'PEMERINTAH KABUPATEN BANTAENG', '-5.516932, 120.020296'),
(113, 659178, 'KPU KABUPATEN JENEPONTO', 'PEMERINTAH KABUPATEN JENEPONTO', '-5.554579,119.673094'),
(114, 659204, 'KPU KABUPATEN SINJAI', 'PEMERINTAH KABUPATEN SINJAI', '-5.217196, 120.112735'),
(115, 659211, 'KPU KABUPATEN BONE', 'PEMERINTAH KABUPATEN BONE', '-4.744338, 120.066524'),
(116, 659267, 'KPU KABUPATEN WAJO', 'PEMERINTAH KABUPATEN WAJO', '-4.022229, 120.066524'),
(117, 659271, 'KPU KABUPATEN SIDENRENG RAPPANG', 'PEMERINTAH KABUPATEN SIDENRENG RAPPANG', '-3.773898, 120.020296'),
(118, 659288, 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG', '-3.648349, 119.557168'),
(119, 659292, 'KPU KABUPATEN ENREKANG', 'PEMERINTAH KABUPATEN ENREKANG', '-3.459074, 119.881520'),
(120, 659300, 'KPU KABUPATEN LUWU', 'PEMERINTAH KABUPATEN LUWU', '-3.305221, 120.251273'),
(121, 659398, 'KPU KOTA MAKASSAR', 'PEMERINTAH KOTA MAKASSAR', '-5.147665, 119.432731'),
(122, 659403, 'KPU KOTA PARE-PARE', 'PEMERINTAH KOTA PARE-PARE', '-4.009622, 119.629062'),
(123, 659410, 'KPU KOTA PALOPO', 'PEMERINTAH KOTA PALOPO', '-3.001634, 120.198514'),
(124, 654542, 'KPU PROVINSI SULAWESI TENGGARA', 'PEMERINTAH PROVINSI SULAWESI TENGGARA', '1.4860257,124.841817'),
(125, 659424, 'KPU KABUPATEN KENDARI', 'PEMERINTAH KABUPATEN KENDARI', '-3.998460, 122.512974'),
(126, 659452, 'KPU KABUPATEN KOLAKA', 'PEMERINTAH KABUPATEN KOLAKA', '-3.994699, 121.582664'),
(127, 659513, 'KPU KOTA BAU-BAU', 'PEMERINTAH KOTA BAU-BAU', '-5.481683, 122.580516'),
(128, 654560, 'KPU PROVINSI MALUKU', 'PEMERINTAH PROVINSI MALUKU', '-3.6703691,128.1962958'),
(129, 659602, 'KPU KABUPATEN MALUKU TENGGARA', 'PEMERINTAH KABUPATEN MALUKU TENGGARA', '-5.6507203,132.7320483'),
(130, 670700, 'KPU KOTA TUAL', 'PEMERINTAH KOTA TUAL', '-5.599375,132.7591613'),
(131, 654446, 'KPU PROVINSI BALI', 'PEMERINTAH PROVINSI BALI', '-8.6670652,115.2257935'),
(132, 658110, 'KPU KABUPATEN KLUNGKUNG', 'PEMERINTAH KABUPATEN KLUNGKUNG', '-8.532005, 115.404575'),
(133, 658127, 'KPU KABUPATEN GIANYAR', 'PEMERINTAH KABUPATEN GIANYAR', '-8.536492, 115.326562'),
(134, 654450, 'KPU PROVINSI NUSA TENGGARA BARAT', 'PEMERINTAH PROVINSI NUSA TENGGARA BARAT', '-8.5812133,116.0978967'),
(135, 658180, 'KPU KABUPATEN LOMBOK BARAT', 'PEMERINTAH KABUPATEN LOMBOK BARAT', '-8.6838209,116.1378185'),
(136, 658202, 'KPU KABUPATEN LOMBOK TIMUR', 'PEMERINTAH KABUPATEN LOMBOK TIMUR', '-8.649669, 116.531823'),
(137, 658262, 'KPU KOTA BIMA', 'PEMERINTAH KOTA BIMA', '-8.4600633,118.7547179'),
(138, 654467, 'KPU PROVINSI NUSA TENGGARA TIMUR', 'PEMERINTAH PROVINSI NUSA TENGGARA TIMUR', '-9.8917085, 119.2515574,7'),
(139, 658279, 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG', '-10.0721589,123.868776'),
(140, 658305, 'KPU KABUPATEN TIMOR TENGAH SELATAN', 'PEMERINTAH KABUPATEN TIMOR TENGAH SELATAN', '-9.8589368,124.2583208'),
(141, 658312, 'KPU KABUPATEN ALOR', 'PEMERINTAH KABUPATEN ALOR', '-8.213998, 124.518169'),
(142, 658326, 'KPU KABUPATEN SIKKA', 'PEMERINTAH KABUPATEN SIKKA', '-8.6195729,122.2071201'),
(143, 658347, 'KPU KABUPATEN ENDE', 'PEMERINTAH KABUPATEN ENDE', '-8.8413059,121.6666577'),
(144, 658401, 'KPU KABUPATEN ROTE NDAO', 'PEMERINTAH KABUPATEN ROTE NDAO', '-10.7562209,123.0602987'),
(145, 670269, 'KPU KAB. NAGEKEO', 'PEMERINTAH KAB. NAGEKEO', '-8.5484994,121.2942398'),
(146, 670273, 'KPU KAB. SUMBA TENGAH', 'PEMERINTAH KAB. SUMBA TENGAH', '-9.5964489,119.5730009'),
(147, 670280, 'KPU KAB. SUMBA BARAT DAYA', 'PEMERINTAH KAB. SUMBA BARAT DAYA', '-9.539139, 119.139064'),
(148, 670756, 'KPU KAB. MANGGARAI TIMUR', 'PEMERINTAH KAB. MANGGARAI TIMUR', '-8.7513304,120.6135384'),
(149, 654581, 'KPU PROVINSI PAPUA', 'PEMERINTAH PROVINSI PAPUA', '-2.5359506,140.7139933'),
(150, 659740, 'KPU KABUPATEN BIAK NUMFOR', 'PEMERINTAH KABUPATEN BIAK NUMFOR', '-1.1598551,136.0927958'),
(151, 659775, 'KPU KABUPATEN JAYAWIJAYA', 'PEMERINTAH KABUPATEN JAYAWIJAYA', '-4.102872, 138.932023'),
(152, 659782, 'KPU KABUPATEN PANIAI', 'PEMERINTAH KABUPATEN PANIAI', '-3.787644, 136.362469'),
(153, 659818, 'KPU KABUPATEN MIMIKA', 'PEMERINTAH KABUPATEN MIMIKA', '-4.455322, 137.136213'),
(154, 670810, 'KPU KAB. MAMBERAMO TENGAH', 'PEMERINTAH KAB. MAMBERAMO TENGAH', '-2.374569, 138.319028'),
(155, 670852, 'KPU KAB. PUNCAK', 'PEMERINTAH KAB. PUNCAK', '-3.71639, 137.986968'),
(156, 680750, 'KPU KABUPATEN DEIYAI', 'PEMERINTAH KABUPATEN DEIYAI', '-4.097489, 136.439305'),
(157, 656706, 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU', '-3.761485, 102.305904'),
(158, 654577, 'KPU PROVINSI MALUKU UTARA', 'PEMERINTAH PROVINSI MALUKU UTARA', '0.7814363,127.386056'),
(159, 658038, 'KPU KABUPATEN TANGERANG', 'PEMERINTAH KABUPATEN TANGERANG', '-6.251539, 106.486584'),
(160, 658063, 'KPU KABUPATEN LEBAK', 'PEMERINTAH KABUPATEN LEBAK', '-6.360941, 106.247278'),
(161, 658070, 'KPU KOTA TANGERANG', 'PEMERINTAH KOTA TANGERANG', '-6.172468, 106.633968'),
(162, 670714, 'KPU KOTA SERANG', 'PEMERINTAH KOTA SERANG', '-6.125126, 106.171666'),
(163, 656816, 'KPU KABUPATEN BELITUNG', 'PEMERINTAH KABUPATEN BELITUNG', '-2.752467, 107.657031'),
(164, 656837, 'KPU KABUPATEN BANGKA', 'PEMERINTAH KABUPATEN BANGKA', '-1.892335, 106.103622'),
(165, 656879, 'KPU KOTA PANGKALPINANG', 'PEMERINTAH KOTA PANGKALPINANG', '-2.145145, 106.120615'),
(166, 659562, 'KPU KOTA GORONTALO', 'PEMERINTAH KOTA GORONTALO', '0.549985, 123.058456'),
(167, 670362, 'KPU KAB. GORONTALO UTARA', 'PEMERINTAH KAB. GORONTALO UTARA', '0.829190, 122.899993'),
(168, 656930, 'KPU KOTA TANJUNG PINANG', 'PEMERINTAH KOTA TANJUNG PINANG', '0.908084, 104.455567'),
(169, 659321, 'KPU KABUPATEN POLEWALI MAMASA', 'PEMERINTAH KABUPATEN POLEWALI MAMASA', '-3.341932, 119.139064'),
(170, 659360, 'KPU KABUPATEN MAMASA', 'PEMERINTAH KABUPATEN MAMASA', '-2.9269803,119.3961737'),
(171, 658923, 'KPU KOTA TARAKAN', 'PEMERINTAH KOTA TARAKAN', '3.307880, 117.612957'),
(172, 419168, 'KPU KABUPATEN BUTON TENGAH', 'PEMERINTAH KABUPATEN BUTON TENGAH', '-5.318966, 122.531473'),
(173, 419169, 'KPU KABUPATEN BUTON SELATAN', 'PEMERINTAH KABUPATEN BUTON SELATAN', '-5.309635, 122.988832'),
(174, 419170, 'KPU KABUPATEN MUNA BARAT', 'PEMERINTAH KABUPATEN MUNA BARAT', '-4.901629, 122.627745'),
(175, 654289, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 'PEMERINTAH PROVINSI NANGROE ACEH DARUSSALAM', '4.695135, 96.749399'),
(180, 654361, 'KPU  PROVINSI BANGKA BELITUNG', 'PEMERINTAH PROVINSI BANGKA BELITUNG', '-2.741051, 106.440587'),
(181, 654382, 'KPU  PROVINSI DKI JAKARTA', 'PEMERINTAH PROVINSI DKI JAKARTA', '-6.193441, 106.849674'),
(185, 654432, 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N', '-6.141317, 106.196826'),
(193, 654556, 'KPU  PROVINSI GORONTALO', 'PEMERINTAH PROVINSI GORONTALO', '0.573617, 123.091034'),
(197, 654598, 'KPU  PROVINSI PAPUA BARAT', 'PEMERINTAH PROVINSI PAPUA BARAT', '-0.922917, 134.025887'),
(199, 655633, 'KPU  KABUPATEN ACEH TENGGARA', 'PEMERINTAH KABUPATEN ACEH TENGGARA', '3.308867, 97.698227'),
(200, 655640, 'KPU  KABUPATEN ACEH TIMUR', 'PEMERINTAH KABUPATEN ACEH TIMUR', '4.522411, 97.611422'),
(201, 655654, 'KPU  KABUPATEN ACEH TENGAH', 'PEMERINTAH KABUPATEN ACEH TENGAH', '4.448264, 96.8351'),
(202, 655661, 'KPU  KABUPATEN BENER MERIAH', 'PEMERINTAH KABUPATEN BENER MERIAH', '4.751361, 96.952522'),
(203, 655675, 'KPU  KABUPATEN ACEH BARAT', 'PEMERINTAH KABUPATEN ACEH BARAT', '4.454274, 96.152699'),
(204, 655682, 'KPU  KABUPATEN ACEH BESAR', 'PEMERINTAH KABUPATEN ACEH BESAR', '5.452917, 95.477781'),
(205, 655696, 'KPU  KABUPATEN ACEH UTARA', 'PEMERINTAH KABUPATEN ACEH UTARA', '4.978633, 97.222142'),
(206, 655701, 'KPU  KABUPATEN ACEH BARAT DAYA', 'PEMERINTAH KABUPATEN ACEH BARAT DAYA', '3.796343, 97.006839'),
(207, 655718, 'KPU  KABUPATEN P I D I E', 'PEMERINTAH KABUPATEN P I D I E', '5.074266, 95.940971'),
(208, 655722, 'KPU  KABUPATEN SIMEULEU', 'PEMERINTAH KABUPATEN SIMEULEU', '2.643972, 96.025574'),
(209, 655739, 'KPU  KABUPATEN ACEH SINGKIL', 'PEMERINTAH KABUPATEN ACEH SINGKIL', '2.358946, 97.87216'),
(210, 655743, 'KPU  KABUPATEN BIREUN', 'PEMERINTAH KABUPATEN BIREUN', '5.108645, 96.663812'),
(211, 655750, 'KPU  KABUPATEN ACEH GAYO LUES', 'PEMERINTAH KABUPATEN ACEH GAYO LUES', '3.955165, 97.351656'),
(212, 655764, 'KPU  KABUPATEN ACEH TAMIANG', 'PEMERINTAH KABUPATEN ACEH TAMIANG', '4.232887, 98.002889'),
(213, 655771, 'KPU  KABUPATEN ACEH JAYA', 'PEMERINTAH KABUPATEN ACEH JAYA', '4.787368, 95.645795'),
(214, 655785, 'KPU  KABUPATEN NAGAN RAYA', 'PEMERINTAH KABUPATEN NAGAN RAYA', '4.124841, 96.49298'),
(215, 655792, 'KPU  KOTA BANDA ACEH', 'PEMERINTAH KOTA BANDA ACEH', '5.548290, 95.323756'),
(216, 655807, 'KPU  KOTA SABANG', 'PEMERINTAH KOTA SABANG', '5.892605, 95.323761'),
(217, 655811, 'KPU  KOTA LHOKSUMAWE', 'PEMERINTAH KOTA LHOKSUMAWE', '5.181164, 97.141322'),
(218, 655828, 'KPU  KOTA LANGSA', 'PEMERINTAH KOTA LANGSA', '4.472535, 97.975634'),
(219, 655832, 'KPU  KABUPATEN TAPANULI TENGAH', 'PEMERINTAH KABUPATEN TAPANULI TENGAH', '1.849330, 98.704075'),
(224, 656066, 'KPU  KOTA TEBING TINGGI', 'PEMERINTAH KOTA TEBING TINGGI', '3.326288, 99.156685'),
(226, 656197, 'KPU  KABUPATEN KEPULAUAN MENTAWAI', 'PEMERINTAH KABUPATEN KEPULAUAN MENTAWAI', '-1.426001, 98.924534'),
(230, 656251, 'KPU  KOTA PAYAKUMBUH', 'PEMERINTAH KOTA PAYAKUMBUH', '-0.229834, 100.630917'),
(233, 656329, 'KPU  KABUPATEN KAMPAR', 'PEMERINTAH KABUPATEN KAMPAR', '0.146671, 101.161736'),
(234, 656361, 'KPU  KOTA PEKANBARU', 'PEMERINTAH KOTA PEKANBARU', '0.507068, 101.447779'),
(237, 656401, 'KPU  KABUPATEN SAROLANGUN', 'PEMERINTAH KABUPATEN SAROLANGUN', '-2.323042, 102.713512'),
(238, 656422, 'KPU  KABUPATEN MUARO JAMBI', 'PEMERINTAH KABUPATEN MUARO JAMBI', '-1.552136, 103.821626'),
(239, 656464, 'KPU  KABUPATEN T E B O', 'PEMERINTAH KABUPATEN T E B O', '-1.259300, 102.346387'),
(242, 656492, 'KPU  KABUPATEN MUSI BANYU ASIN', 'PEMERINTAH KABUPATEN MUSI BANYU ASIN', '-2.544203, 103.728917'),
(252, 656731, 'KPU  KABUPATEN LAMPUNG BARAT', 'PEMERINTAH KABUPATEN LAMPUNG BARAT', '-5.109529, 104.146605'),
(253, 656748, 'KPU  KABUPATEN TULANG BAWANG', 'PEMERINTAH KABUPATEN TULANG BAWANG', '-4.317658, 105.500548'),
(260, 657033, 'KPU  KABUPATEN BEKASI', 'PEMERINTAH KABUPATEN BEKASI', '-6.268210, 107.231900'),
(274, 657228, 'KPU  KOTA TASIKMALAYA', 'PEMERINTAH KOTA TASIKMALAYA', '-7.328212, 108.233093'),
(275, 657232, 'KPU  KOTA CIMAHI', 'PEMERINTAH KOTA CIMAHI', '-6.874576, 107.561394'),
(277, 657300, 'KPU  KABUPATEN BATANG', 'PEMERINTAH KABUPATEN BATANG', '-6.910131, 109.730146'),
(279, 657321, 'KPU  KABUPATEN BREBES', 'PEMERINTAH KABUPATEN BREBES', '-6.878154, 109.045110'),
(280, 657338, 'KPU  KABUPATEN PATI', 'PEMERINTAH KABUPATEN PATI', '-6.737984, 111.024863'),
(282, 657363, 'KPU  KABUPATEN JEPARA', 'PEMERINTAH KABUPATEN JEPARA', '-6.588904, 110.666078'),
(284, 657406, 'KPU  KABUPATEN CILACAP', 'PEMERINTAH KABUPATEN CILACAP', '-7.712764, 109.005335'),
(285, 657427, 'KPU  KABUPATEN BANJARNEGARA', 'PEMERINTAH KABUPATEN BANJARNEGARA', '-7.398436, 109.675516'),
(289, 657558, 'KPU  KOTA SALATIGA', 'PEMERINTAH KOTA SALATIGA', '-7.355996, 110.504635'),
(291, 657605, 'KPU  KABUPATEN KULONPROGO', 'PEMERINTAH KABUPATEN KULONPROGO', '-7.894188, 110.147983'),
(292, 657647, 'KPU  KOTA YOGYAKARTA', 'PEMERINTAH KOTA YOGYAKARTA', '-7.779703, 110.360623'),
(306, 657956, 'KPU  KOTA BATU', 'PEMERINTAH KOTA BATU', '-7.912362, 112.549856'),
(315, 658091, 'KPU  KABUPATEN BULELENG', 'PEMERINTAH KABUPATEN BULELENG', '-8.114012, 115.081673'),
(325, 658330, 'KPU  KABUPATEN FLORES TIMUR', 'PEMERINTAH KABUPATEN FLORES TIMUR', '-8.297364, 123.008541'),
(327, 658393, 'KPU  KABUPATEN LEMBATA', 'PEMERINTAH KABUPATEN LEMBATA', '-8.357161, 123.459416'),
(329, 658422, 'KPU  KOTA KUPANG', 'PEMERINTAH KOTA KUPANG', '-10.152092, 123.616659'),
(330, 658457, 'KPU  KABUPATEN L A N D A K', 'PEMERINTAH KABUPATEN L A N D A K', '0.378701, 109.942965'),
(334, 658546, 'KPU  KOTA SINGKAWANG', 'PEMERINTAH KOTA SINGKAWANG', '0.896892, 108.974158'),
(335, 658550, 'KPU  KABUPATEN KOTAWARINGIN BARAT', 'PEMERINTAH KABUPATEN KOTAWARINGIN BARAT', '-2.707886, 111.646956'),
(338, 658592, 'KPU  KABUPATEN BARITO SELATAN', 'PEMERINTAH KABUPATEN BARITO SELATAN', '-1.723928, 114.831079'),
(350, 658745, 'KPU  KABUPATEN HULU SUNGAI UTARA', 'PEMERINTAH KABUPATEN HULU SUNGAI UTARA', '-2.418530, 115.253199'),
(352, 658766, 'KPU  KABUPATEN BARITO KUALA', 'PEMERINTAH KABUPATEN BARITO KUALA', '-2.982728, -2.982728'),
(356, 658951, 'KPU  KABUPATEN BOLAANG MONGONDOW', 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW', '0.381664, 123.983135'),
(358, 658972, 'KPU  KABUPATEN KEPULAUAN SANGIHE', 'PEMERINTAH KABUPATEN KEPULAUAN SANGIHE', '3.612520, 125.490282'),
(360, 659047, 'KPU  KABUPATEN BANGGAI KEPULAUAN', 'PEMERINTAH KABUPATEN BANGGAI KEPULAUAN', '-0.985603, 122.783937'),
(363, 659101, 'KPU  KABUPATEN B U O L', 'PEMERINTAH KABUPATEN B U O L', '-7.119710, 112.404940'),
(367, 659182, 'KPU  KABUPATEN TAKALAR', 'PEMERINTAH KABUPATEN TAKALAR', '-5.426840, 119.442075'),
(381, 659431, 'KPU  KABUPATEN BUTON', 'PEMERINTAH KABUPATEN BUTON', '-5.309635, 122.988832'),
(383, 659470, 'KPU  KABUPATEN BOMBANA', 'PEMERINTAH KABUPATEN BOMBANA', '-4.654346, 121.901795'),
(384, 659491, 'KPU  KABUPATEN KOLAKA UTARA', 'PEMERINTAH KABUPATEN KOLAKA UTARA', '-3.134723, 121.171039'),
(385, 659509, 'KPU  KOTA KENDARI', 'PEMERINTAH KOTA KENDARI', '-3.998460, 122.512974'),
(387, 659534, 'KPU  KABUPATEN BOALEMO', 'PEMERINTAH KABUPATEN BOALEMO', '0.701342, 122.265389'),
(389, 659576, 'KPU  KABUPATEN MALUKU TENGAH', 'PEMERINTAH KABUPATEN MALUKU TENGAH', '-3.016650, 129.486441'),
(390, 659580, 'KPU  KABUPATEN SERAM BAGIAN BARAT', 'PEMERINTAH KABUPATEN SERAM BAGIAN BARAT', '-3.127158, 128.400836'),
(392, 659623, 'KPU  KABUPATEN MALUKU TENGGARA BARAT', 'PEMERINTAH KABUPATEN MALUKU TENGGARA BARAT', '-7.532264, 131.361112'),
(393, 659630, 'KPU  KABUPATEN BURU', 'PEMERINTAH KABUPATEN BURU', '-3.330738, 126.695722'),
(394, 659644, 'KPU  KOTA AMBON', 'PEMERINTAH KOTA AMBON', '-3.655393, 128.190772'),
(395, 659665, 'KPU  KABUPATEN HALMAHERA TENGAH', 'PEMERINTAH KABUPATEN HALMAHERA TENGAH', '0.441954, 128.358717'),
(396, 659733, 'KPU  KABUPATEN JAYAPURA', 'PEMERINTAH KABUPATEN JAYAPURA', '-2.987923, 139.854727'),
(398, 659754, 'KPU  KABUPATEN YAPEN WAROPEN', 'PEMERINTAH KABUPATEN YAPEN WAROPEN', '-1.746936, 136.170901'),
(401, 659801, 'KPU  KABUPATEN PUNCAK JAYA', 'PEMERINTAH KABUPATEN PUNCAK JAYA', '-3.446789, 137.84273'),
(403, 659822, 'KPU  KABUPATEN SARMI', 'PEMERINTAH KABUPATEN SARMI', '-2.467814, 139.203085'),
(404, 659864, 'KPU  KABUPATEN TOLIKARA', 'PEMERINTAH KABUPATEN TOLIKARA', '-3.481132, 138.478726'),
(405, 659892, 'KPU  KABUPATEN MAPPI', 'PEMERINTAH KABUPATEN MAPPI', '-6.760647, 139.691137'),
(406, 659911, 'KPU  KOTA JAYAPURA', 'PEMERINTAH KOTA JAYAPURA', '-2.612474, 140.684812'),
(407, 659949, 'KPU  KABUPATEN SORONG', 'PEMERINTAH KABUPATEN SORONG', ' -1.122320, 131.488337'),
(408, 660010, 'KPU  KOTA SORONG', 'PEMERINTAH KOTA SORONG', '-0.876163, 131.255828'),
(430, 670824, 'KPU KAB. NDUGA', 'PEMERINTAH KPU KAB. NDUGA', ' -4.406950, 138.239353'),
(431, 670831, 'KPU KAB. LANNY JAYA', 'PEMERINTAH KPU KAB. LANNY JAYA', ' -3.971033, 138.319028'),
(432, 670845, 'KPU KAB. DOGIYAI', 'PEMERINTAH KPU KAB. DOGIYAI', ' -4.045414, 135.676344'),
(434, 670941, 'KPU KAB. BENGKULU TENGAH', 'PEMERINTAH KPU KAB. BENGKULU TENGAH', '-3.696232, 102.392214'),
(435, 680696, 'KPU KABUPATEN TULANGBAWANG BARAT', 'PEMERINTAH KPU KABUPATEN TULANGBAWANG BARAT', '-4.525697, 105.079123'),
(436, 680701, 'KPU KABUPATEN PRING SEWU', 'PEMERINTAH KPU KABUPATEN PRING SEWU', '-5.333119, 104.985618'),
(437, 680718, 'KPU KABUPATEN MESUJI', 'PEMERINTAH KPU KABUPATEN MESUJI', '-4.004478, 105.313118'),
(438, 680739, 'KPU KABUPATEN KEPULAUAN MOROTAI', 'PEMERINTAH KPU KABUPATEN KEPULAUAN MOROTAI', '2.365667, 128.400836'),
(439, 680743, 'KPU KABUPATEN INTAN JAYA', 'PEMERINTAH KPU KABUPATEN INTAN JAYA', '-3.507642, 136.747849'),
(441, 680764, 'KPU KABUPATEN TAMBRAUW', 'PEMERINTAH KPU KABUPATEN TAMBRAUW', ' -0.781856, 132.393838'),
(442, 680771, 'KPU KABUPATEN MAYBRAT', 'PEMERINTAH KPU KABUPATEN MAYBRAT', ' -1.297098, 132.315099'),
(443, 984767, 'KPU PROPINSI SULAWESI BARAT', 'PEMERINTAH KPU PROPINSI SULAWESI BARAT', '-2.844137, 119.232078');

-- --------------------------------------------------------

--
-- Table structure for table `data_user`
--

CREATE TABLE `data_user` (
  `id` int(11) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passw` varchar(255) NOT NULL,
  `tipe` enum('admin','user') NOT NULL DEFAULT 'user',
  `nama_satker` varchar(255) NOT NULL,
  `pemda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_user`
--

INSERT INTO `data_user` (`id`, `kode_satker`, `username`, `passw`, `tipe`, `nama_satker`, `pemda`) VALUES
(1, 654399, '654399', '7d4fbfe06457b1b1d72f1ba41625b04f', 'user', 'KPU PROVINSI JAWA BARAT', 'PEMERINTAH PROVINSI JAWA BARAT'),
(2, 657008, '657008', '86e27e6bb45b42152326a3ba414406c3', 'user', 'KPU KABUPATEN BOGOR', 'PEMERINTAH KABUPATEN BOGOR'),
(3, 657054, '657054', '2da9fdc5b4c45ad64fd7f7b23a8ad9e3', 'user', 'KPU KABUPATEN PURWAKARTA', 'PEMERINTAH KABUPATEN PURWAKARTA'),
(4, 657061, '657061', '9a1cd8d54305756d7cc565672c2af9bf', 'user', 'KPU KABUPATEN SUBANG', 'PEMERINTAH KABUPATEN SUBANG'),
(5, 657082, '657082', '4350134e8b8582204276a5a84ff5f146', 'user', 'KPU KABUPATEN SUMEDANG', 'PEMERINTAH KABUPATEN SUMEDANG'),
(6, 657096, '657096', '9c5e905521b3a34328249a3bd955b06e', 'user', 'KPU KABUPATEN GARUT', 'PEMERINTAH KABUPATEN GARUT'),
(7, 657118, '657118', '4265e59d96935ef0bb6b8d5e90023846', 'user', 'KPU KABUPATEN CIAMIS', 'PEMERINTAH KABUPATEN CIAMIS'),
(8, 657122, '657122', 'aa3a0673217c429b79647c851ad7160f', 'user', 'KPU KABUPATEN CIREBON', 'PEMERINTAH KABUPATEN CIREBON'),
(9, 657139, '657139', '2bf419f6e6e31b4315437153ce729a7d', 'user', 'KPU KABUPATEN KUNINGAN', 'PEMERINTAH KABUPATEN KUNINGAN'),
(10, 657150, '657150', 'ba98a91fa12a9715dbaea221ccaa96da', 'user', 'KPU KABUPATEN MAJALENGKA', 'PEMERINTAH KABUPATEN MAJALENGKA'),
(11, 657164, '657164', 'ba3c11f5b2610d7e8536e9dbd76d68a5', 'user', 'KPU KOTA BANDUNG', 'PEMERINTAH KOTA BANDUNG'),
(12, 657171, '657171', 'f321fe0cc88c333295c95bc90dcac3dc', 'user', 'KPU KOTA BOGOR', 'PEMERINTAH KOTA BOGOR'),
(13, 657185, '657185', '6e7a3e3d6c15801b205a76c9785c693c', 'user', 'KPU KOTA SUKABUMI', 'PEMERINTAH KOTA SUKABUMI'),
(14, 657192, '657192', 'a059c57f13a62a5e529e039927fef0ff', 'user', 'KPU KOTA CIREBON', 'PEMERINTAH KOTA CIREBON'),
(15, 657207, '657207', 'ba9ca374113a41cc66a7a70680565918', 'user', 'KPU KOTA BEKASI', 'PEMERINTAH KOTA BEKASI'),
(16, 657249, '657249', '201ad04c6ab77cb4f34a1e1a66addbba', 'user', 'KPU KOTA BANJAR', 'PEMERINTAH KOTA BANJAR'),
(17, 670379, '670379', '831b7e7cf37e5666eb6f78b72f7e23a3', 'user', 'KPU KAB. BANDUNG BARAT', 'PEMERINTAH KAB. BANDUNG BARAT'),
(18, 654404, '654404', '3f2efe9da9c0f77afa32f445593cbab3', 'user', 'KPU PROVINSI JAWA TENGAH', 'PEMERINTAH PROVINSI JAWA TENGAH'),
(19, 657317, '657317', '15a69e3fb872a84c7b99ac69e6a74e31', 'user', 'KPU KABUPATEN TEGAL', 'PEMERINTAH KABUPATEN TEGAL'),
(20, 657342, '657342', '9b8b4339cf7f85f70a010fcd79f31034', 'user', 'KPU KABUPATEN KUDUS', 'PEMERINTAH KABUPATEN KUDUS'),
(21, 657391, '657391', '4ebcff429ca262894aba18966526bea6', 'user', 'KPU KABUPATEN BANYUMAS', 'PEMERINTAH KABUPATEN BANYUMAS'),
(22, 657431, '657431', '6fa85156085c955d8e66e7a875a1112d', 'user', 'KPU KABUPATEN MAGELANG', 'PEMERINTAH KABUPATEN MAGELANG'),
(23, 657448, '657448', '1e9d10b2cb0f0f61a0ef4f39d2de56f9', 'user', 'KPU KABUPATEN TEMANGGUNG', 'PEMERINTAH KABUPATEN TEMANGGUNG'),
(24, 657520, '657520', 'a0a69b3797346c352067e41f1b983137', 'user', 'KPU KABUPATEN KARANGANYAR', 'PEMERINTAH KABUPATEN KARANGANYAR'),
(25, 657579, '657579', '75fef1dee0175193802b8ba5e90ca2de', 'user', 'KPU KOTA TEGAL', 'PEMERINTAH KOTA TEGAL'),
(26, 654425, '654425', '56a59c445e96668ca41d1e9b5a739448', 'user', 'KPU PROVINSI JAWA TIMUR', 'PEMERINTAH PROVINSI JAWA TIMUR'),
(27, 657651, '657651', '8af6e19937f41c4ef0a5949afca2e669', 'user', 'KPU KABUPATEN BANGKALAN', 'PEMERINTAH KABUPATEN BANGKALAN'),
(28, 657689, '657689', 'dc861eca9824d51b871da9aa76f27c2d', 'user', 'KPU KABUPATEN BOJONEGORO', 'PEMERINTAH KABUPATEN BOJONEGORO'),
(29, 657693, '657693', '4231dd5229cd7baefd15e03436a28e5c', 'user', 'KPU KABUPATEN BONDOWOSO', 'PEMERINTAH KABUPATEN BONDOWOSO'),
(30, 657722, '657722', '646c1e3f38237985cb9040d5d0e01523', 'user', 'KPU KABUPATEN JOMBANG', 'PEMERINTAH KABUPATEN JOMBANG'),
(31, 657757, '657757', '5ce09493aaf9e91e4ca77bd27ad1b34f', 'user', 'KPU KABUPATEN LUMAJANG', 'PEMERINTAH KABUPATEN LUMAJANG'),
(32, 657761, '657761', '4f525be558333d8a4dd44b7a6907071f', 'user', 'KPU KABUPATEN MADIUN', 'PEMERINTAH KABUPATEN MADIUN'),
(33, 657778, '657778', '3ba517967daab3e15cf3f88a49f96710', 'user', 'KPU KABUPATEN MAGETAN', 'PEMERINTAH KABUPATEN MAGETAN'),
(34, 657804, '657804', '19303d4f80a43c19de224ebb6af9661f', 'user', 'KPU KABUPATEN NGANJUK', 'PEMERINTAH KABUPATEN NGANJUK'),
(35, 657832, '657832', '497c50e8f15e1e1f14d99ce0b5de674d', 'user', 'KPU KABUPATEN PAMEKASAN', 'PEMERINTAH KABUPATEN PAMEKASAN'),
(36, 657846, '657846', 'e7e76760de52f826021152c902b2bf39', 'user', 'KPU KABUPATEN PASURUAN', 'PEMERINTAH KABUPATEN PASURUAN'),
(37, 657867, '657867', '17fe8a865b9fa6374b829b26ddc3401c', 'user', 'KPU KABUPATEN PROBOLINGGO', 'PEMERINTAH KABUPATEN PROBOLINGGO'),
(38, 657871, '657871', '66f2f2e90dbc82253dd3cc88f5f22907', 'user', 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG'),
(39, 657935, '657935', '367349d164aa893838b004d04ec1cd20', 'user', 'KPU KABUPATEN TULUNGAGUNG', 'PEMERINTAH KABUPATEN TULUNGAGUNG'),
(40, 657977, '657977', 'd35c2e2de7acbc1dffd1803cf23da16b', 'user', 'KPU KOTA KEDIRI', 'PEMERINTAH KOTA KEDIRI'),
(41, 657981, '657981', '8541dcaee08c300d0b9da19a02c0c6b6', 'user', 'KPU KOTA MADIUN', 'PEMERINTAH KOTA MADIUN'),
(42, 657998, '657998', 'b12305d2a66ff140875e3e5a8e6e492a', 'user', 'KPU KOTA MALANG', 'PEMERINTAH KOTA MALANG'),
(43, 658000, '658000', '326b8a5b48fbecb792241fe5a8fd7e14', 'user', 'KPU KOTA MOJOKERTO', 'PEMERINTAH KOTA MOJOKERTO'),
(44, 658021, '658021', '831c99b15619b25791ea2cd4d38493bf', 'user', 'KPU KOTA PROBOLINGGO', 'PEMERINTAH KOTA PROBOLINGGO'),
(45, 655629, '655629', 'f134764e590bfbfe32c137226e5ac5a2', 'user', 'KPU KABUPATEN ACEH SELATAN', 'PEMERINTAH KABUPATEN ACEH SELATAN'),
(46, 670341, '670341', '7e501855fec2d84b93c644fa142bb95d', 'user', 'KPU KAB. PIDIE JAYA', 'PEMERINTAH KAB. PIDIE JAYA'),
(47, 670358, '670358', 'af15eef9cb67b17b81be6ccd7d5b81b3', 'user', 'KPU KOTA SUBULUSSALAM', 'PEMERINTAH KOTA SUBULUSSALAM'),
(48, 654293, '654293', '3beebbd011d6a6c304aaa215204cd18f', 'user', 'KPU PROVINSI SUMATERA UTARA', 'PEMERINTAH PROVINSI SUMATERA UTARA'),
(49, 655849, '655849', '6ecd21a648fce85d7f15acfc4510d6c8', 'user', 'KPU KABUPATEN TAPANULI UTARA', 'PEMERINTAH KABUPATEN TAPANULI UTARA'),
(50, 655874, '655874', 'd3c63fc378086051c8e2d1782ebd41d8', 'user', 'KPU KABUPATEN LANGKAT', 'PEMERINTAH KABUPATEN LANGKAT'),
(51, 655895, '655895', '1d880defad54c9ea2698dcc937fe4865', 'user', 'KPU KABUPATEN DELI SERDANG', 'PEMERINTAH KABUPATEN DELI SERDANG'),
(52, 655942, '655942', 'de7eb89997a5b07c7cc2a61df693659a', 'user', 'KPU KABUPATEN DAIRI', 'PEMERINTAH KABUPATEN DAIRI'),
(53, 656070, '656070', 'dd22553fd0fa348e6172113671e11319', 'user', 'KPU KOTA PADANG SIDEMPUAN', 'PEMERINTAH KOTA PADANG SIDEMPUAN'),
(54, 670383, '670383', '4cbff399ed8967298efaea0861ec5297', 'user', 'KPU KAB. BATUBARA', 'PEMERINTAH KAB. BATUBARA'),
(55, 670760, '670760', '16f48c052ee0beb95b5e1db571e5ff0e', 'user', 'KPU KAB. PADANG LAWAS UTARA', 'PEMERINTAH KAB. PADANG LAWAS UTARA'),
(56, 670777, '670777', 'e711ecdd9a9c836387f040edd4448867', 'user', 'KPU KAB. PADANG LAWAS', 'PEMERINTAH KAB. PADANG LAWAS'),
(57, 656202, '656202', 'a190439d9ecd3a28a7b2fe839500e463', 'user', 'KPU KOTA PADANG', 'PEMERINTAH KOTA PADANG'),
(58, 656223, '656223', 'b25bd552b12a82d3eccbcb55e0988490', 'user', 'KPU KOTA SAWAHLUNTO', 'PEMERINTAH KOTA SAWAHLUNTO'),
(59, 656230, '656230', 'c6ea88c7cd0c9b65284e1ed39bcfd3ba', 'user', 'KPU KOTA PADANG PANJANG', 'PEMERINTAH KOTA PADANG PANJANG'),
(60, 656265, '656265', '324cfd3a9b3763f7a169686dd62e69c4', 'user', 'KPU KOTA PARIAMAN', 'PEMERINTAH KOTA PARIAMAN'),
(61, 654315, '654315', '98fae3fd18a1a469c88181890bfa0ee2', 'user', 'KPU PROVINSI RIAU', 'PEMERINTAH PROVINSI RIAU'),
(62, 656290, '656290', '0aa805562973e8a2727548a041ec4e37', 'user', 'KPU KABUPATEN INDRAGIRI HILIR', 'PEMERINTAH KABUPATEN INDRAGIRI HILIR'),
(63, 656382, '656382', 'a2b8bfea91b41f17b61ed8ba5c410d9a', 'user', 'KPU KABUPATEN KERINCI', 'PEMERINTAH KABUPATEN KERINCI'),
(64, 656396, '656396', '1ce02224898c7b45149eaf215b149a2c', 'user', 'KPU KABUPATEN MERANGIN', 'PEMERINTAH KABUPATEN MERANGIN'),
(65, 656471, '656471', 'b74341d174a0a12ae62e885a9ab21f75', 'user', 'KPU KOTA JAMBI', 'PEMERINTAH KOTA JAMBI'),
(66, 654336, '654336', '14f9f5b4681bd98c20c6959029714430', 'user', 'KPU PROVINSI SUMATERA SELATAN', 'PEMERINTAH PROVINSI SUMATERA SELATAN'),
(67, 656485, '656485', '598865ba8708d0191c2b4aa58769fe54', 'user', 'KPU KABUPATEN BANYUASIN', 'PEMERINTAH KABUPATEN BANYUASIN'),
(68, 656511, '656511', '0790466dcb939bd39da7d5bd6326f1b6', 'user', 'KPU KABUPATEN LAHAT', 'PEMERINTAH KABUPATEN LAHAT'),
(69, 656528, '656528', '4e10be19c96533010e215074f2ec4584', 'user', 'KPU KABUPATEN MUARA ENIM', 'PEMERINTAH KABUPATEN MUARA ENIM'),
(70, 656532, '656532', 'cba55cb240755bfe3edca21af97e5e46', 'user', 'KPU KABUPATEN OGAN KOMERING ILIR', 'PEMERINTAH KABUPATEN OGAN KOMERING ILIR'),
(71, 656581, '656581', 'a9e65fb013e128ad9336948dc1437d72', 'user', 'KPU KOTA PALEMBANG', 'PEMERINTAH KOTA PALEMBANG'),
(72, 656595, '656595', 'b807558da5e8d3745f8cb0a94cb82a75', 'user', 'KPU KOTA PAGAR ALAM', 'PEMERINTAH KOTA PAGAR ALAM'),
(73, 656600, '656600', '76ea9633ef2a128f50b0a055a34e707a', 'user', 'KPU KOTA LUBUK LINGGAU', 'PEMERINTAH KOTA LUBUK LINGGAU'),
(74, 656617, '656617', 'cbff3662c8c8c510457833269138d7b1', 'user', 'KPU KOTA PRABUMULIH', 'PEMERINTAH KOTA PRABUMULIH'),
(75, 670252, '670252', '926995dd5267f7f55c9804d1906f880c', 'user', 'KPU KAB EMPAT LAWANG', 'PEMERINTAH KAB EMPAT LAWANG'),
(76, 654357, '654357', '4d0010ee032b135e22462675405d2d73', 'user', 'KPU PROVINSI LAMPUNG', 'PEMERINTAH PROVINSI LAMPUNG'),
(77, 656727, '656727', '72bf22389ca9d2416c5fe8d41c244ae2', 'user', 'KPU KABUPATEN LAMPUNG UTARA', 'PEMERINTAH KABUPATEN LAMPUNG UTARA'),
(78, 656752, '656752', 'aca00c9c2b37422701ab9a0ac24caa0a', 'user', 'KPU KABUPATEN TANGGAMUS', 'PEMERINTAH KABUPATEN TANGGAMUS'),
(79, 654471, '654471', '8446681c67f6f84ced63e42c2777b3a2', 'user', 'KPU PROVINSI KALIMANTAN BARAT', 'PEMERINTAH PROVINSI KALIMANTAN BARAT'),
(80, 658461, '658461', '9f6bff49dc724e29efb8ff54a0c9aae4', 'user', 'KPU KABUPATEN PONTIANAK', 'PEMERINTAH KABUPATEN PONTIANAK'),
(81, 658478, '658478', 'f24f6412ce89235fd2b5a4d58e48c49f', 'user', 'KPU KABUPATEN SANGGAU', 'PEMERINTAH KABUPATEN SANGGAU'),
(82, 658532, '658532', '8d2b60fd053f53af21329db19c638dc8', 'user', 'KPU KOTA PONTIANAK', 'PEMERINTAH KOTA PONTIANAK'),
(83, 670337, '670337', '10450a6dd19066dd84da177f5eb94459', 'user', 'KPU KAB. KAYONG UTARA', 'PEMERINTAH KAB. KAYONG UTARA'),
(84, 670742, '670742', 'df97e2671558d90bb4c80f452fd6dc39', 'user', 'KPU KAB. KUBU RAYA', 'PEMERINTAH KAB. KUBU RAYA'),
(85, 658571, '658571', 'b723a83ee64a91f68f71e0d48c9847d6', 'user', 'KPU KABUPATEN KAPUAS', 'PEMERINTAH KABUPATEN KAPUAS'),
(86, 658588, '658588', '5ba9dafdb6abc6d394f464dd2da80965', 'user', 'KPU KABUPATEN KATINGAN', 'PEMERINTAH KABUPATEN KATINGAN'),
(87, 658600, '658600', 'f49a5d6ce1f4568d274a805af39f3d85', 'user', 'KPU KABUPATEN BARITO UTARA', 'PEMERINTAH KABUPATEN BARITO UTARA'),
(88, 658614, '658614', '18b9bdc56c4268c709fab4763719bbe4', 'user', 'KPU KABUPATEN SERUYAN', 'PEMERINTAH KABUPATEN SERUYAN'),
(89, 658621, '658621', 'c6baef80b84b48843c505a8aa4b499f0', 'user', 'KPU KABUPATEN SUKAMARA', 'PEMERINTAH KABUPATEN SUKAMARA'),
(90, 658635, '658635', '372659ea9cac64811a55db649b984b3a', 'user', 'KPU KABUPATEN LAMANDAU', 'PEMERINTAH KABUPATEN LAMANDAU'),
(91, 658642, '658642', '56de414e65d1484a6f36209cde1ba121', 'user', 'KPU KABUPATEN GUNUNG MAS', 'PEMERINTAH KABUPATEN GUNUNG MAS'),
(92, 658656, '658656', '97128bb465a02daea9fbee853f14f513', 'user', 'KPU KABUPATEN PULANG PISAU', 'PEMERINTAH KABUPATEN PULANG PISAU'),
(93, 658660, '658660', 'a749c19e1c7d10954db34d2631acd957', 'user', 'KPU KABUPATEN BARITO TIMUR', 'PEMERINTAH KABUPATEN BARITO TIMUR'),
(94, 658677, '658677', '465ff5a7440c328cc0bd33a4bafa0637', 'user', 'KPU KABUPATEN MURUNG RAYA', 'PEMERINTAH KABUPATEN MURUNG RAYA'),
(95, 658681, '658681', 'e83556fa83dee6715b9536df02293f97', 'user', 'KPU KOTA PALANGKARAYA', 'PEMERINTAH KOTA PALANGKARAYA'),
(96, 658710, '658710', 'a7e2eb6be7fccc69f025a4aed32199c1', 'user', 'KPU KABUPATEN TABALONG', 'PEMERINTAH KABUPATEN TABALONG'),
(97, 658724, '658724', '6893ad9cd3ca8f220b6fd0dd757cbe06', 'user', 'KPU KABUPATEN HULU SUNGAI SELATAN', 'PEMERINTAH KABUPATEN HULU SUNGAI SELATAN'),
(98, 658752, '658752', 'c274690210a7531f17efe4c9582f6865', 'user', 'KPU KABUPATEN TAPIN', 'PEMERINTAH KABUPATEN TAPIN'),
(99, 658791, '658791', 'd71a44b11da3961f1bd7ccc3b8a3711b', 'user', 'KPU KABUPATEN TANAHLAUT', 'PEMERINTAH KABUPATEN TANAHLAUT'),
(100, 654500, '654500', '6e9333d5ecf6b85191713d30247e1b41', 'user', 'KPU PROVINSI KALIMANTAN TIMUR', 'PEMERINTAH PROVINSI KALIMANTAN TIMUR'),
(101, 658820, '658820', 'bf03d3fc43aa0848968f9aa3962ab6f9', 'user', 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA'),
(102, 658965, '658965', '57efbd7224adf2118a40e2e1d7d0c7f7', 'user', 'KPU KABUPATEN MINAHASA', 'PEMERINTAH KABUPATEN MINAHASA'),
(103, 658986, '658986', '42adfa6034336fd7943742531b56f9c3', 'user', 'KPU KABUPATEN KEPULAUAN TALAUD', 'PEMERINTAH KABUPATEN KEPULAUAN TALAUD'),
(104, 670294, '670294', 'b0400fcefdf8ca4c72354efabc8bc1d7', 'user', 'KPU KOTA KOTAMOBAGO', 'PEMERINTAH KOTA KOTAMOBAGO'),
(105, 670302, '670302', '27b1c32f81580663732695bf30c5bd43', 'user', 'KPU KAB. MINAHASA TENGGARA', 'PEMERINTAH KAB. MINAHASA TENGGARA'),
(106, 670316, '670316', '1e4e885c16bff20f1d59a21b0c01ac5d', 'user', 'KPU KAB. BOLAANG MONGONDOW UTARA', 'PEMERINTAH KAB. BOLAANG MONGONDOW UTARA'),
(107, 670320, '670320', 'eb8f83ee11607d4dc9e5a113846deb6b', 'user', 'KPU KAB. KEP. SIAU TAGULANDANG BIARO', 'PEMERINTAH KAB. KEP. SIAU TAGULANDANG BIARO'),
(108, 659072, '659072', 'f4a893f60984203b22547ea634a5a790', 'user', 'KPU KABUPATEN MOROWALI', 'PEMERINTAH KABUPATEN MOROWALI'),
(109, 659089, '659089', '33256f0b6b032b12aaa1cf2d2dd4e98f', 'user', 'KPU KABUPATEN DONGGALA', 'PEMERINTAH KABUPATEN DONGGALA'),
(110, 659115, '659115', '90760de555378d562229f55e2ab88cdc', 'user', 'KPU KABUPATEN PARIGI MOUTONG', 'PEMERINTAH KABUPATEN PARIGI MOUTONG'),
(111, 654535, '654535', '0a7146bf0834d0d84edafa7d94605035', 'user', 'KPU PROVINSI SULAWESI SELATAN', 'PEMERINTAH PROVINSI SULAWESI SELATAN'),
(112, 659161, '659161', '1d32a64cafd9fe60a79dae408143a7a7', 'user', 'KPU KABUPATEN BANTAENG', 'PEMERINTAH KABUPATEN BANTAENG'),
(113, 659178, '659178', '5921ccdc9e2eb9fa0c0831c1756321c6', 'user', 'KPU KABUPATEN JENEPONTO', 'PEMERINTAH KABUPATEN JENEPONTO'),
(114, 659204, '659204', 'c0408e9eb34243fccb7d6e762e3d0b67', 'user', 'KPU KABUPATEN SINJAI', 'PEMERINTAH KABUPATEN SINJAI'),
(115, 659211, '659211', '6c6366e190b7371db442844fd90b67c7', 'user', 'KPU KABUPATEN BONE', 'PEMERINTAH KABUPATEN BONE'),
(116, 659267, '659267', '090ce8ef80801fa7c4877bdded07956e', 'user', 'KPU KABUPATEN WAJO', 'PEMERINTAH KABUPATEN WAJO'),
(117, 659271, '659271', 'fa6d07547deb57c519b22efae180b7b7', 'user', 'KPU KABUPATEN SIDENRENG RAPPANG', 'PEMERINTAH KABUPATEN SIDENRENG RAPPANG'),
(118, 659288, '659288', 'd6a06797a1ea76a729360de00057bba0', 'user', 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG'),
(119, 659292, '659292', '4f2aa759e4d3b535c2fd7ce098e99edf', 'user', 'KPU KABUPATEN ENREKANG', 'PEMERINTAH KABUPATEN ENREKANG'),
(120, 659300, '659300', 'cae4683d4b5d42e30291a3e2033dc1dc', 'user', 'KPU KABUPATEN LUWU', 'PEMERINTAH KABUPATEN LUWU'),
(121, 659398, '659398', '5572b22987b00fd8003c14a88bf520f3', 'user', 'KPU KOTA MAKASSAR', 'PEMERINTAH KOTA MAKASSAR'),
(122, 659403, '659403', 'ddd9420f7ff84aea2654ae968c7bcb53', 'user', 'KPU KOTA PARE-PARE', 'PEMERINTAH KOTA PARE-PARE'),
(123, 659410, '659410', 'fa8d766cd0a9484319dfe31e8d585900', 'user', 'KPU KOTA PALOPO', 'PEMERINTAH KOTA PALOPO'),
(124, 654542, '654542', 'eea22c6c8f020b5de6c3c6644af48eab', 'user', 'KPU PROVINSI SULAWESI TENGGARA', 'PEMERINTAH PROVINSI SULAWESI TENGGARA'),
(125, 659424, '659424', '6a3e4ccf82f8c7eced99c5d5dd43907c', 'user', 'KPU KABUPATEN KENDARI', 'PEMERINTAH KABUPATEN KENDARI'),
(126, 659452, '659452', 'a97d3838986a657444ff3e65f45e81e8', 'user', 'KPU KABUPATEN KOLAKA', 'PEMERINTAH KABUPATEN KOLAKA'),
(127, 659513, '659513', 'ae8876b52db9da7fb42684c3d3e4a132', 'user', 'KPU KOTA BAU-BAU', 'PEMERINTAH KOTA BAU-BAU'),
(128, 654560, '654560', '18f65aca4486cd26f3f0f96a6ea39292', 'user', 'KPU PROVINSI MALUKU', 'PEMERINTAH PROVINSI MALUKU'),
(129, 659602, '659602', '3a2e35c2f64d6d291f7b659960adfbe0', 'user', 'KPU KABUPATEN MALUKU TENGGARA', 'PEMERINTAH KABUPATEN MALUKU TENGGARA'),
(130, 670700, '670700', '4ce9a50332a2e6d8449dc48466bc6ade', 'user', 'KPU KOTA TUAL', 'PEMERINTAH KOTA TUAL'),
(131, 654446, '654446', 'b1544c28c7961bf295271cab1183d2c1', 'user', 'KPU PROVINSI BALI', 'PEMERINTAH PROVINSI BALI'),
(132, 658110, '658110', '0c35eeca413326b85866850446cadd1e', 'user', 'KPU KABUPATEN KLUNGKUNG', 'PEMERINTAH KABUPATEN KLUNGKUNG'),
(133, 658127, '658127', 'b9cc8b4a98251b444252e5d2b76545e3', 'user', 'KPU KABUPATEN GIANYAR', 'PEMERINTAH KABUPATEN GIANYAR'),
(134, 654450, '654450', '5058d65da35c24df89af9c68560893b0', 'user', 'KPU PROVINSI NUSA TENGGARA BARAT', 'PEMERINTAH PROVINSI NUSA TENGGARA BARAT'),
(135, 658180, '658180', '037f43cf212fece6a4a4ac9ecfeb2bfa', 'user', 'KPU KABUPATEN LOMBOK BARAT', 'PEMERINTAH KABUPATEN LOMBOK BARAT'),
(136, 658202, '658202', '8bde520007af1cd67bc28a20dfc5d3f6', 'user', 'KPU KABUPATEN LOMBOK TIMUR', 'PEMERINTAH KABUPATEN LOMBOK TIMUR'),
(137, 658262, '658262', '507c5fd736cc5d6c6c698c58701fb292', 'user', 'KPU KOTA BIMA', 'PEMERINTAH KOTA BIMA'),
(138, 654467, '654467', '039840a1495969d9699da74592b488aa', 'user', 'KPU PROVINSI NUSA TENGGARA TIMUR', 'PEMERINTAH PROVINSI NUSA TENGGARA TIMUR'),
(139, 658279, '658279', 'cf5b84f522b9f9da2a74cacdd34598b4', 'user', 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG'),
(140, 658305, '658305', '569f90976f9d967828d8d552cd3e9642', 'user', 'KPU KABUPATEN TIMOR TENGAH SELATAN', 'PEMERINTAH KABUPATEN TIMOR TENGAH SELATAN'),
(141, 658312, '658312', '3f13c507ccc9c3b3bf43bfad8eab2a6a', 'user', 'KPU KABUPATEN ALOR', 'PEMERINTAH KABUPATEN ALOR'),
(142, 658326, '658326', '8710f84fec366ad83eec17bb27086ed5', 'user', 'KPU KABUPATEN SIKKA', 'PEMERINTAH KABUPATEN SIKKA'),
(143, 658347, '658347', '2e2850e4311021d0dc998055af7fe921', 'user', 'KPU KABUPATEN ENDE', 'PEMERINTAH KABUPATEN ENDE'),
(144, 658401, '658401', 'dca1538ee448fc99b144d553c7e4ff93', 'user', 'KPU KABUPATEN ROTE NDAO', 'PEMERINTAH KABUPATEN ROTE NDAO'),
(145, 670269, '670269', 'ee761fb66a1a6ca41c715eb48c1a34bc', 'user', 'KPU KAB. NAGEKEO', 'PEMERINTAH KAB. NAGEKEO'),
(146, 670273, '670273', 'cbc56370c060cac64b0454f3c7d9b41b', 'user', 'KPU KAB. SUMBA TENGAH', 'PEMERINTAH KAB. SUMBA TENGAH'),
(147, 670280, '670280', '4b07e3b84aaa79dce9cf1f40a13b1a88', 'user', 'KPU KAB. SUMBA BARAT DAYA', 'PEMERINTAH KAB. SUMBA BARAT DAYA'),
(148, 670756, '670756', 'f68960d09671ea5384acc4bb300addae', 'user', 'KPU KAB. MANGGARAI TIMUR', 'PEMERINTAH KAB. MANGGARAI TIMUR'),
(149, 654581, '654581', 'f6954eb39b571ef79836f7479ee19761', 'user', 'KPU PROVINSI PAPUA', 'PEMERINTAH PROVINSI PAPUA'),
(150, 659740, '659740', '477847437a47567bf6fd8a238e4bfab7', 'user', 'KPU KABUPATEN BIAK NUMFOR', 'PEMERINTAH KABUPATEN BIAK NUMFOR'),
(151, 659775, '659775', 'c1fd697e1d924d777c8ff9e8ca87c80a', 'user', 'KPU KABUPATEN JAYAWIJAYA', 'PEMERINTAH KABUPATEN JAYAWIJAYA'),
(152, 659782, '659782', '5ba52608a7922d403f750005134bfc95', 'user', 'KPU KABUPATEN PANIAI', 'PEMERINTAH KABUPATEN PANIAI'),
(153, 659818, '659818', '4b422ba17e41207fcc0f9e6437b349d3', 'user', 'KPU KABUPATEN MIMIKA', 'PEMERINTAH KABUPATEN MIMIKA'),
(154, 670810, '670810', '1acfb389229f9ecab9218940bc1f2841', 'user', 'KPU KAB. MAMBERAMO TENGAH', 'PEMERINTAH KAB. MAMBERAMO TENGAH'),
(155, 670852, '670852', 'ff067f3a2c3648566c684e855d0d47ec', 'user', 'KPU KAB. PUNCAK', 'PEMERINTAH KAB. PUNCAK'),
(156, 680750, '680750', '8078a46ff002f3a884227604abcc582a', 'user', 'KPU KABUPATEN DEIYAI', 'PEMERINTAH KABUPATEN DEIYAI'),
(157, 656706, '656706', '8e822e78111ab6ec85ae4359def3ae1b', 'user', 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU'),
(158, 654577, '654577', '4eafb33b4b36c612bb112cceb933c71d', 'user', 'KPU PROVINSI MALUKU UTARA', 'PEMERINTAH PROVINSI MALUKU UTARA'),
(159, 658038, '658038', '3bf5714bb2f634ab88653434bf713936', 'user', 'KPU KABUPATEN TANGERANG', 'PEMERINTAH KABUPATEN TANGERANG'),
(160, 658063, '658063', 'd94db174340b1a4ca91a27226ff47761', 'user', 'KPU KABUPATEN LEBAK', 'PEMERINTAH KABUPATEN LEBAK'),
(161, 658070, '658070', 'b037146e2eb71878fa545438b2538ac0', 'user', 'KPU KOTA TANGERANG', 'PEMERINTAH KOTA TANGERANG'),
(162, 670714, '670714', 'bd527ea522d0960c60e34c49408aeec2', 'user', 'KPU KOTA SERANG', 'PEMERINTAH KOTA SERANG'),
(163, 656816, '656816', '560e943b9f3f475028c06ebdb5c0c714', 'user', 'KPU KABUPATEN BELITUNG', 'PEMERINTAH KABUPATEN BELITUNG'),
(164, 656837, '656837', '4ead11de034f00f0c768513f4a730df7', 'user', 'KPU KABUPATEN BANGKA', 'PEMERINTAH KABUPATEN BANGKA'),
(165, 656879, '656879', 'e832e55100f9d96fcff15e9aabd88d44', 'user', 'KPU KOTA PANGKALPINANG', 'PEMERINTAH KOTA PANGKALPINANG'),
(166, 659562, '659562', '226b1baa3a7746be2d44dbc6948eaf9f', 'user', 'KPU KOTA GORONTALO', 'PEMERINTAH KOTA GORONTALO'),
(167, 670362, '670362', 'bb8940b3ea95943d5a12aeecf1f88943', 'user', 'KPU KAB. GORONTALO UTARA', 'PEMERINTAH KAB. GORONTALO UTARA'),
(168, 656930, '656930', '0428b10a9daaf64dcb1248ec69561d28', 'user', 'KPU KOTA TANJUNG PINANG', 'PEMERINTAH KOTA TANJUNG PINANG'),
(169, 659321, '659321', '1076c9e7431551a28e12622adf8ce0bd', 'user', 'KPU KABUPATEN POLEWALI MAMASA', 'PEMERINTAH KABUPATEN POLEWALI MAMASA'),
(170, 659360, '659360', '2cd381308d22eda4332576fc8844cabe', 'user', 'KPU KABUPATEN MAMASA', 'PEMERINTAH KABUPATEN MAMASA'),
(171, 658923, '658923', '2ac311e4baa361433b8ac23789a52b05', 'user', 'KPU KOTA TARAKAN', 'PEMERINTAH KOTA TARAKAN'),
(172, 419168, '419168', '669a875b629b465364c5478f8d28d748', 'user', 'KPU KABUPATEN BUTON TENGAH', 'PEMERINTAH KABUPATEN BUTON TENGAH'),
(173, 419169, '419169', '0d1e8c9089c36806bcc82502a5b0b0fc', 'user', 'KPU KABUPATEN BUTON SELATAN', 'PEMERINTAH KABUPATEN BUTON SELATAN'),
(174, 419170, '419170', '329daba46892af3f25f8b4fe8f950e7f', 'user', 'KPU KABUPATEN MUNA BARAT', 'PEMERINTAH KABUPATEN MUNA BARAT'),
(175, 654289, '654289', '0e442e76eb05f867cc562790be55672f', 'user', 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 'PEMERINTAH PROVINSI NANGROE ACEH DARUSSALAM'),
(180, 654361, '654361', 'b45d26c37225b653cb764303c2b78276', 'user', 'KPU  PROVINSI BANGKA BELITUNG', 'PEMERINTAH PROVINSI BANGKA BELITUNG'),
(181, 654382, '654382', 'dbafaefbfdc7fe642516c7328a20e0db', 'user', 'KPU  PROVINSI DKI JAKARTA', 'PEMERINTAH PROVINSI DKI JAKARTA'),
(185, 654432, '654432', '9dacc7b464054aea340ec0a09dbfc918', 'user', 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N'),
(193, 654556, '654556', '92c03334c9602e43916e8dd5ab2cb421', 'user', 'KPU  PROVINSI GORONTALO', 'PEMERINTAH PROVINSI GORONTALO'),
(197, 654598, '654598', 'c7e68b04a3e4cba098e17f2868f3541e', 'user', 'KPU  PROVINSI PAPUA BARAT', 'PEMERINTAH PROVINSI PAPUA BARAT'),
(199, 655633, '655633', '0cfb2277aedb313fbcc0a2b8deb8005e', 'user', 'KPU  KABUPATEN ACEH TENGGARA', 'PEMERINTAH KABUPATEN ACEH TENGGARA'),
(200, 655640, '655640', '1b7778f6b0107c206c7ab1b867d30e33', 'user', 'KPU  KABUPATEN ACEH TIMUR', 'PEMERINTAH KABUPATEN ACEH TIMUR'),
(201, 655654, '655654', '6000e536749f757eb278c8f94dab55a7', 'user', 'KPU  KABUPATEN ACEH TENGAH', 'PEMERINTAH KABUPATEN ACEH TENGAH'),
(202, 655661, '655661', '9620509aebdb457ba3ea91f0e7603985', 'user', 'KPU  KABUPATEN BENER MERIAH', 'PEMERINTAH KABUPATEN BENER MERIAH'),
(203, 655675, '655675', 'c6ffe89fefd59b68bc12cd36e86772d5', 'user', 'KPU  KABUPATEN ACEH BARAT', 'PEMERINTAH KABUPATEN ACEH BARAT'),
(204, 655682, '655682', '6ff84c5fc9d62c4a4a700cb905685f43', 'user', 'KPU  KABUPATEN ACEH BESAR', 'PEMERINTAH KABUPATEN ACEH BESAR'),
(205, 655696, '655696', '073255627a0bd32dcafe0098e620b7e7', 'user', 'KPU  KABUPATEN ACEH UTARA', 'PEMERINTAH KABUPATEN ACEH UTARA'),
(206, 655701, '655701', 'cf753f2158959bcaf95d57cca27c9be6', 'user', 'KPU  KABUPATEN ACEH BARAT DAYA', 'PEMERINTAH KABUPATEN ACEH BARAT DAYA'),
(207, 655718, '655718', '2e94dc1bcdcbd2a220be4351919a12dc', 'user', 'KPU  KABUPATEN P I D I E', 'PEMERINTAH KABUPATEN P I D I E'),
(208, 655722, '655722', '02218d06cd25ba5205aa9aa4f904b004', 'user', 'KPU  KABUPATEN SIMEULEU', 'PEMERINTAH KABUPATEN SIMEULEU'),
(209, 655739, '655739', '8c473532a069a5b23ee9f8503ad4807e', 'user', 'KPU  KABUPATEN ACEH SINGKIL', 'PEMERINTAH KABUPATEN ACEH SINGKIL'),
(210, 655743, '655743', '4ca0b12e4eac67dc7ccf547cfd9b5830', 'user', 'KPU  KABUPATEN BIREUN', 'PEMERINTAH KABUPATEN BIREUN'),
(211, 655750, '655750', 'fde3a4bb681104b9ba3bd6a953f04646', 'user', 'KPU  KABUPATEN ACEH GAYO LUES', 'PEMERINTAH KABUPATEN ACEH GAYO LUES'),
(212, 655764, '655764', '2a6e6064b17a06ad1ea436ee6b7e59dc', 'user', 'KPU  KABUPATEN ACEH TAMIANG', 'PEMERINTAH KABUPATEN ACEH TAMIANG'),
(213, 655771, '655771', 'f37d7ba3526b4ebdd8894ca5208acd01', 'user', 'KPU  KABUPATEN ACEH JAYA', 'PEMERINTAH KABUPATEN ACEH JAYA'),
(214, 655785, '655785', '3c886b0f411f17c66da7afdd6841fdb2', 'user', 'KPU  KABUPATEN NAGAN RAYA', 'PEMERINTAH KABUPATEN NAGAN RAYA'),
(215, 655792, '655792', '1afd63ae388b090e4a46341cbb668043', 'user', 'KPU  KOTA BANDA ACEH', 'PEMERINTAH KOTA BANDA ACEH'),
(216, 655807, '655807', '2ab717fad43fbca8c5022946993c8f89', 'user', 'KPU  KOTA SABANG', 'PEMERINTAH KOTA SABANG'),
(217, 655811, '655811', '09223319a5f1419608740f9a2a56f4ca', 'user', 'KPU  KOTA LHOKSUMAWE', 'PEMERINTAH KOTA LHOKSUMAWE'),
(218, 655828, '655828', '694d09345c4aee64eb80b02278911459', 'user', 'KPU  KOTA LANGSA', 'PEMERINTAH KOTA LANGSA'),
(219, 655832, '655832', 'b5885bf34505752f9ca55cc676c46fa4', 'user', 'KPU  KABUPATEN TAPANULI TENGAH', 'PEMERINTAH KABUPATEN TAPANULI TENGAH'),
(224, 656066, '656066', '5f02eb3fd1ea78e49e99baa32a1981da', 'user', 'KPU  KOTA TEBING TINGGI', 'PEMERINTAH KOTA TEBING TINGGI'),
(226, 656197, '656197', '0177deab03887dccd2294694261e71f0', 'user', 'KPU  KABUPATEN KEPULAUAN MENTAWAI', 'PEMERINTAH KABUPATEN KEPULAUAN MENTAWAI'),
(230, 656251, '656251', '60e1520d26a882c1ae9a6cc4e4622409', 'user', 'KPU  KOTA PAYAKUMBUH', 'PEMERINTAH KOTA PAYAKUMBUH'),
(233, 656329, '656329', '050159a5aded0b369b5628ddfc4b2986', 'user', 'KPU  KABUPATEN KAMPAR', 'PEMERINTAH KABUPATEN KAMPAR'),
(234, 656361, '656361', '6d23dab7c404e4bc97175b5fbb3c9549', 'user', 'KPU  KOTA PEKANBARU', 'PEMERINTAH KOTA PEKANBARU'),
(237, 656401, '656401', 'b7da8713c59313da3512885044539263', 'user', 'KPU  KABUPATEN SAROLANGUN', 'PEMERINTAH KABUPATEN SAROLANGUN'),
(238, 656422, '656422', 'f668362b9c2ca8801a69bc9fde736736', 'user', 'KPU  KABUPATEN MUARO JAMBI', 'PEMERINTAH KABUPATEN MUARO JAMBI'),
(239, 656464, '656464', '65e44678d984a9c006127f652d9de85d', 'user', 'KPU  KABUPATEN T E B O', 'PEMERINTAH KABUPATEN T E B O'),
(242, 656492, '656492', 'e24ca401683eeed662b37d6dc3f39234', 'user', 'KPU  KABUPATEN MUSI BANYU ASIN', 'PEMERINTAH KABUPATEN MUSI BANYU ASIN'),
(252, 656731, '656731', '608dff295bcf9654c07c7a1560f4fb7d', 'user', 'KPU  KABUPATEN LAMPUNG BARAT', 'PEMERINTAH KABUPATEN LAMPUNG BARAT'),
(253, 656748, '656748', 'd237a158ffa54cd2227601215e0282ff', 'user', 'KPU  KABUPATEN TULANG BAWANG', 'PEMERINTAH KABUPATEN TULANG BAWANG'),
(260, 657033, '657033', 'f9df7f30dbc81263a92b49c5646f1708', 'user', 'KPU  KABUPATEN BEKASI', 'PEMERINTAH KABUPATEN BEKASI'),
(274, 657228, '657228', 'fd50f54377d2f8fea6ac3df4ed680345', 'user', 'KPU  KOTA TASIKMALAYA', 'PEMERINTAH KOTA TASIKMALAYA'),
(275, 657232, '657232', '7574ded9ad94806dd43b961ac71af78b', 'user', 'KPU  KOTA CIMAHI', 'PEMERINTAH KOTA CIMAHI'),
(277, 657300, '657300', '5ca855d1a1cca9d78a25fb9e78df0898', 'user', 'KPU  KABUPATEN BATANG', 'PEMERINTAH KABUPATEN BATANG'),
(279, 657321, '657321', 'd66f41eb4ea8f28b4094328f027d5e89', 'user', 'KPU  KABUPATEN BREBES', 'PEMERINTAH KABUPATEN BREBES'),
(280, 657338, '657338', 'b42fe9bea0cef33cff46fd8097bef645', 'user', 'KPU  KABUPATEN PATI', 'PEMERINTAH KABUPATEN PATI'),
(282, 657363, '657363', '515b95ddfdc9262369b9854a870cb3e1', 'user', 'KPU  KABUPATEN JEPARA', 'PEMERINTAH KABUPATEN JEPARA'),
(284, 657406, '657406', '5ec1b561ea3ed2fd5d98e80bf9ba7c32', 'user', 'KPU  KABUPATEN CILACAP', 'PEMERINTAH KABUPATEN CILACAP'),
(285, 657427, '657427', '4b6bf28fc43a052516de2571589ccb95', 'user', 'KPU  KABUPATEN BANJARNEGARA', 'PEMERINTAH KABUPATEN BANJARNEGARA'),
(289, 657558, '657558', '97cd300ca4d4b6013780d1c37d4e3576', 'user', 'KPU  KOTA SALATIGA', 'PEMERINTAH KOTA SALATIGA'),
(291, 657605, '657605', '016fe0844964541edf228030cfd48a14', 'user', 'KPU  KABUPATEN KULONPROGO', 'PEMERINTAH KABUPATEN KULONPROGO'),
(292, 657647, '657647', '8e8654815009ae9ef708f1d50ebb5300', 'user', 'KPU  KOTA YOGYAKARTA', 'PEMERINTAH KOTA YOGYAKARTA'),
(306, 657956, '657956', '9664549131963164e11af7f4ff6ba8f9', 'user', 'KPU  KOTA BATU', 'PEMERINTAH KOTA BATU'),
(315, 658091, '658091', '5f6212df457b53e9c6e23f5d50a1c66c', 'user', 'KPU  KABUPATEN BULELENG', 'PEMERINTAH KABUPATEN BULELENG'),
(325, 658330, '658330', 'f3273457a15f01f0fd169ae3cd90e4fd', 'user', 'KPU  KABUPATEN FLORES TIMUR', 'PEMERINTAH KABUPATEN FLORES TIMUR'),
(327, 658393, '658393', '67a8da1312989606a6ca49f8e61a129d', 'user', 'KPU  KABUPATEN LEMBATA', 'PEMERINTAH KABUPATEN LEMBATA'),
(329, 658422, '658422', 'c6c01f897f9275b2dfd87754356dad58', 'user', 'KPU  KOTA KUPANG', 'PEMERINTAH KOTA KUPANG'),
(330, 658457, '658457', '4121882570b801d7a59f91d206abeb3b', 'user', 'KPU  KABUPATEN L A N D A K', 'PEMERINTAH KABUPATEN L A N D A K'),
(334, 658546, '658546', 'e9443f150a511e796b52eba8256caced', 'user', 'KPU  KOTA SINGKAWANG', 'PEMERINTAH KOTA SINGKAWANG'),
(335, 658550, '658550', '9bfa918c3fcf331a74acebfc028cf7ec', 'user', 'KPU  KABUPATEN KOTAWARINGIN BARAT', 'PEMERINTAH KABUPATEN KOTAWARINGIN BARAT'),
(338, 658592, '658592', 'e35c4c70f85fe75b0c71a5a211ee4ba4', 'user', 'KPU  KABUPATEN BARITO SELATAN', 'PEMERINTAH KABUPATEN BARITO SELATAN'),
(350, 658745, '658745', 'c8cca2833ef330d98be23b04d38b6fa6', 'user', 'KPU  KABUPATEN HULU SUNGAI UTARA', 'PEMERINTAH KABUPATEN HULU SUNGAI UTARA'),
(352, 658766, '658766', '8941cf2ec0f9152c8002ca10c57ceeef', 'user', 'KPU  KABUPATEN BARITO KUALA', 'PEMERINTAH KABUPATEN BARITO KUALA'),
(356, 658951, '658951', 'e471b992b1941f7a11ed46c95afc066b', 'user', 'KPU  KABUPATEN BOLAANG MONGONDOW', 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW'),
(358, 658972, '658972', '1af9fca50072f2d890a6c9c3053390d0', 'user', 'KPU  KABUPATEN KEPULAUAN SANGIHE', 'PEMERINTAH KABUPATEN KEPULAUAN SANGIHE'),
(360, 659047, '659047', '55b970b19b089c293eb23560fd426a55', 'user', 'KPU  KABUPATEN BANGGAI KEPULAUAN', 'PEMERINTAH KABUPATEN BANGGAI KEPULAUAN'),
(363, 659101, '659101', '441eae832d72638be2e3b8d021e8d47e', 'user', 'KPU  KABUPATEN B U O L', 'PEMERINTAH KABUPATEN B U O L'),
(367, 659182, '659182', 'ab45cb42079a52926ada32b9cae35637', 'user', 'KPU  KABUPATEN TAKALAR', 'PEMERINTAH KABUPATEN TAKALAR'),
(381, 659431, '659431', '8ee0c8cd859ac9571ccb0421f9d057e4', 'user', 'KPU  KABUPATEN BUTON', 'PEMERINTAH KABUPATEN BUTON'),
(383, 659470, '659470', '0f6bfc87d34412762bbfec4e18fc5712', 'user', 'KPU  KABUPATEN BOMBANA', 'PEMERINTAH KABUPATEN BOMBANA'),
(384, 659491, '659491', '3e8f0b95f1739b32063bad4e8a92131c', 'user', 'KPU  KABUPATEN KOLAKA UTARA', 'PEMERINTAH KABUPATEN KOLAKA UTARA'),
(385, 659509, '659509', '0000e4f580e3f999813f853357aa7908', 'user', 'KPU  KOTA KENDARI', 'PEMERINTAH KOTA KENDARI'),
(387, 659534, '659534', '7ac787c87357a801ab56b3ccc30578f2', 'user', 'KPU  KABUPATEN BOALEMO', 'PEMERINTAH KABUPATEN BOALEMO'),
(389, 659576, '659576', '52beb89267fd11ee985af86d352e76fc', 'user', 'KPU  KABUPATEN MALUKU TENGAH', 'PEMERINTAH KABUPATEN MALUKU TENGAH'),
(390, 659580, '659580', 'bf4cb3363ef029126e7be8e26e04d98c', 'user', 'KPU  KABUPATEN SERAM BAGIAN BARAT', 'PEMERINTAH KABUPATEN SERAM BAGIAN BARAT'),
(392, 659623, '659623', '0b6102724e27dba2372b83bdb6d3ecad', 'user', 'KPU  KABUPATEN MALUKU TENGGARA BARAT', 'PEMERINTAH KABUPATEN MALUKU TENGGARA BARAT'),
(393, 659630, '659630', '11afcfaddfe4949ef0b2142fcaaff0c6', 'user', 'KPU  KABUPATEN BURU', 'PEMERINTAH KABUPATEN BURU'),
(394, 659644, '659644', 'bacfdbc943fc0f3e5ec3c2e406597173', 'user', 'KPU  KOTA AMBON', 'PEMERINTAH KOTA AMBON'),
(395, 659665, '659665', '863a2f508b2b87bd52dde335b8c4cf75', 'user', 'KPU  KABUPATEN HALMAHERA TENGAH', 'PEMERINTAH KABUPATEN HALMAHERA TENGAH'),
(396, 659733, '659733', 'b7324ec0d2799c018205a9b6c08a7adc', 'user', 'KPU  KABUPATEN JAYAPURA', 'PEMERINTAH KABUPATEN JAYAPURA'),
(398, 659754, '659754', '6301b60f58149b6ccc20afccf8ba7b93', 'user', 'KPU  KABUPATEN YAPEN WAROPEN', 'PEMERINTAH KABUPATEN YAPEN WAROPEN'),
(401, 659801, '659801', 'da478fbcfd71674b499f8342d54cb37c', 'user', 'KPU  KABUPATEN PUNCAK JAYA', 'PEMERINTAH KABUPATEN PUNCAK JAYA'),
(403, 659822, '659822', '47b8ff97616b1225532310c00f084d89', 'user', 'KPU  KABUPATEN SARMI', 'PEMERINTAH KABUPATEN SARMI'),
(404, 659864, '659864', '629388e857869284f44a09d743a8f1c1', 'user', 'KPU  KABUPATEN TOLIKARA', 'PEMERINTAH KABUPATEN TOLIKARA'),
(405, 659892, '659892', 'f2d5581c305957d98c755ff3e0a693c4', 'user', 'KPU  KABUPATEN MAPPI', 'PEMERINTAH KABUPATEN MAPPI'),
(406, 659911, '659911', 'b3686614f5f7ccf2c8d89f53bd1dda51', 'user', 'KPU  KOTA JAYAPURA', 'PEMERINTAH KOTA JAYAPURA'),
(407, 659949, '659949', 'f5e5b42441ddf04ee626b70773013c34', 'user', 'KPU  KABUPATEN SORONG', 'PEMERINTAH KABUPATEN SORONG'),
(408, 660010, '660010', '3979740f90b2fd01d1fabc3ce276de60', 'user', 'KPU  KOTA SORONG', 'PEMERINTAH KOTA SORONG'),
(430, 670824, '670824', '7395c72e33b95730720aaec9be6cccca', 'user', 'KPU KAB. NDUGA', 'PEMERINTAH KPU KAB. NDUGA'),
(431, 670831, '670831', '4b16cd549185a369be56015fe2c2b775', 'user', 'KPU KAB. LANNY JAYA', 'PEMERINTAH KPU KAB. LANNY JAYA'),
(432, 670845, '670845', 'dec9555deea00210ae077fd6a81195e1', 'user', 'KPU KAB. DOGIYAI', 'PEMERINTAH KPU KAB. DOGIYAI'),
(434, 670941, '670941', 'ee8ba19ded534cb5d72f6d5a5dcdd2cb', 'user', 'KPU KAB. BENGKULU TENGAH', 'PEMERINTAH KPU KAB. BENGKULU TENGAH'),
(435, 680696, '680696', '6597e50d50196c2c6d2f2a5e8dccc72e', 'user', 'KPU KABUPATEN TULANGBAWANG BARAT', 'PEMERINTAH KPU KABUPATEN TULANGBAWANG BARAT'),
(436, 680701, '680701', '384d054d2f10446643e8bd1ff8d33fdf', 'user', 'KPU KABUPATEN PRING SEWU', 'PEMERINTAH KPU KABUPATEN PRING SEWU'),
(437, 680718, '680718', '96394950460415e97002e38c9fba886b', 'user', 'KPU KABUPATEN MESUJI', 'PEMERINTAH KPU KABUPATEN MESUJI'),
(438, 680739, '680739', 'e74d06f9669662159cc08eecbf47bf8b', 'user', 'KPU KABUPATEN KEPULAUAN MOROTAI', 'PEMERINTAH KPU KABUPATEN KEPULAUAN MOROTAI'),
(439, 680743, '680743', '7588aacc426dc34c3a4cc47c8d4747a9', 'user', 'KPU KABUPATEN INTAN JAYA', 'PEMERINTAH KPU KABUPATEN INTAN JAYA'),
(441, 680764, '680764', '721b569fedf4983bc0c6d12414d0e5eb', 'user', 'KPU KABUPATEN TAMBRAUW', 'PEMERINTAH KPU KABUPATEN TAMBRAUW'),
(442, 680771, '680771', 'f2348dbe7b9513c26734c5b0ca85debb', 'user', 'KPU KABUPATEN MAYBRAT', 'PEMERINTAH KPU KABUPATEN MAYBRAT'),
(443, 984767, '984767', '9c949213b6100d58dea4ea1268842c6a', 'user', 'KPU PROPINSI SULAWESI BARAT', 'PEMERINTAH KPU PROPINSI SULAWESI BARAT'),
(444, 0, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'ADMIN', '');

-- --------------------------------------------------------

--
-- Table structure for table `data_userz`
--

CREATE TABLE `data_userz` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `passw` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL DEFAULT 'user',
  `nama_satker` varchar(255) NOT NULL,
  `pemda` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `data_userz`
--

INSERT INTO `data_userz` (`id`, `username`, `passw`, `tipe`, `nama_satker`, `pemda`) VALUES
(1, '654399', '7d4fbfe06457b1b1d72f1ba41625b04f', 'user', 'KPU PROVINSI JAWA BARAT', 'PEMERINTAH PROVINSI JAWA BARAT'),
(2, '657008', '86e27e6bb45b42152326a3ba414406c3', 'user', 'KPU KABUPATEN BOGOR', 'PEMERINTAH KABUPATEN BOGOR'),
(3, '657054', '2da9fdc5b4c45ad64fd7f7b23a8ad9e3', 'user', 'KPU KABUPATEN PURWAKARTA', 'PEMERINTAH KABUPATEN PURWAKARTA'),
(4, '657061', '9a1cd8d54305756d7cc565672c2af9bf', 'user', 'KPU KABUPATEN SUBANG', 'PEMERINTAH KABUPATEN SUBANG'),
(5, '657082', '4350134e8b8582204276a5a84ff5f146', 'user', 'KPU KABUPATEN SUMEDANG', 'PEMERINTAH KABUPATEN SUMEDANG'),
(6, '657096', '9c5e905521b3a34328249a3bd955b06e', 'user', 'KPU KABUPATEN GARUT', 'PEMERINTAH KABUPATEN GARUT'),
(7, '657118', '4265e59d96935ef0bb6b8d5e90023846', 'user', 'KPU KABUPATEN CIAMIS', 'PEMERINTAH KABUPATEN CIAMIS'),
(8, '657122', 'aa3a0673217c429b79647c851ad7160f', 'user', 'KPU KABUPATEN CIREBON', 'PEMERINTAH KABUPATEN CIREBON'),
(9, '657139', '2bf419f6e6e31b4315437153ce729a7d', 'user', 'KPU KABUPATEN KUNINGAN', 'PEMERINTAH KABUPATEN KUNINGAN'),
(10, '657150', 'ba98a91fa12a9715dbaea221ccaa96da', 'user', 'KPU KABUPATEN MAJALENGKA', 'PEMERINTAH KABUPATEN MAJALENGKA'),
(11, '657164', 'ba3c11f5b2610d7e8536e9dbd76d68a5', 'user', 'KPU KOTA BANDUNG', 'PEMERINTAH KOTA BANDUNG'),
(12, '657171', 'f321fe0cc88c333295c95bc90dcac3dc', 'user', 'KPU KOTA BOGOR', 'PEMERINTAH KOTA BOGOR'),
(13, '657185', '6e7a3e3d6c15801b205a76c9785c693c', 'user', 'KPU KOTA SUKABUMI', 'PEMERINTAH KOTA SUKABUMI'),
(14, '657192', 'a059c57f13a62a5e529e039927fef0ff', 'user', 'KPU KOTA CIREBON', 'PEMERINTAH KOTA CIREBON'),
(15, '657207', 'ba9ca374113a41cc66a7a70680565918', 'user', 'KPU KOTA BEKASI', 'PEMERINTAH KOTA BEKASI'),
(16, '657249', '201ad04c6ab77cb4f34a1e1a66addbba', 'user', 'KPU KOTA BANJAR', 'PEMERINTAH KOTA BANJAR'),
(17, '670379', '831b7e7cf37e5666eb6f78b72f7e23a3', 'user', 'KPU KAB. BANDUNG BARAT', 'PEMERINTAH KAB. BANDUNG BARAT'),
(18, '654404', '3f2efe9da9c0f77afa32f445593cbab3', 'user', 'KPU PROVINSI JAWA TENGAH', 'PEMERINTAH PROVINSI JAWA TENGAH'),
(19, '657317', '15a69e3fb872a84c7b99ac69e6a74e31', 'user', 'KPU KABUPATEN TEGAL', 'PEMERINTAH KABUPATEN TEGAL'),
(20, '657342', '9b8b4339cf7f85f70a010fcd79f31034', 'user', 'KPU KABUPATEN KUDUS', 'PEMERINTAH KABUPATEN KUDUS'),
(21, '657391', '4ebcff429ca262894aba18966526bea6', 'user', 'KPU KABUPATEN BANYUMAS', 'PEMERINTAH KABUPATEN BANYUMAS'),
(22, '657431', '6fa85156085c955d8e66e7a875a1112d', 'user', 'KPU KABUPATEN MAGELANG', 'PEMERINTAH KABUPATEN MAGELANG'),
(23, '657448', '1e9d10b2cb0f0f61a0ef4f39d2de56f9', 'user', 'KPU KABUPATEN TEMANGGUNG', 'PEMERINTAH KABUPATEN TEMANGGUNG'),
(24, '657520', 'a0a69b3797346c352067e41f1b983137', 'user', 'KPU KABUPATEN KARANGANYAR', 'PEMERINTAH KABUPATEN KARANGANYAR'),
(25, '657579', '75fef1dee0175193802b8ba5e90ca2de', 'user', 'KPU KOTA TEGAL', 'PEMERINTAH KOTA TEGAL'),
(26, '654425', '56a59c445e96668ca41d1e9b5a739448', 'user', 'KPU PROVINSI JAWA TIMUR', 'PEMERINTAH PROVINSI JAWA TIMUR'),
(27, '657651', '8af6e19937f41c4ef0a5949afca2e669', 'user', 'KPU KABUPATEN BANGKALAN', 'PEMERINTAH KABUPATEN BANGKALAN'),
(28, '657689', 'dc861eca9824d51b871da9aa76f27c2d', 'user', 'KPU KABUPATEN BOJONEGORO', 'PEMERINTAH KABUPATEN BOJONEGORO'),
(29, '657693', '4231dd5229cd7baefd15e03436a28e5c', 'user', 'KPU KABUPATEN BONDOWOSO', 'PEMERINTAH KABUPATEN BONDOWOSO'),
(30, '657722', '646c1e3f38237985cb9040d5d0e01523', 'user', 'KPU KABUPATEN JOMBANG', 'PEMERINTAH KABUPATEN JOMBANG'),
(31, '657757', '5ce09493aaf9e91e4ca77bd27ad1b34f', 'user', 'KPU KABUPATEN LUMAJANG', 'PEMERINTAH KABUPATEN LUMAJANG'),
(32, '657761', '4f525be558333d8a4dd44b7a6907071f', 'user', 'KPU KABUPATEN MADIUN', 'PEMERINTAH KABUPATEN MADIUN'),
(33, '657778', '3ba517967daab3e15cf3f88a49f96710', 'user', 'KPU KABUPATEN MAGETAN', 'PEMERINTAH KABUPATEN MAGETAN'),
(34, '657804', '19303d4f80a43c19de224ebb6af9661f', 'user', 'KPU KABUPATEN NGANJUK', 'PEMERINTAH KABUPATEN NGANJUK'),
(35, '657832', '497c50e8f15e1e1f14d99ce0b5de674d', 'user', 'KPU KABUPATEN PAMEKASAN', 'PEMERINTAH KABUPATEN PAMEKASAN'),
(36, '657846', 'e7e76760de52f826021152c902b2bf39', 'user', 'KPU KABUPATEN PASURUAN', 'PEMERINTAH KABUPATEN PASURUAN'),
(37, '657867', '17fe8a865b9fa6374b829b26ddc3401c', 'user', 'KPU KABUPATEN PROBOLINGGO', 'PEMERINTAH KABUPATEN PROBOLINGGO'),
(38, '657871', '66f2f2e90dbc82253dd3cc88f5f22907', 'user', 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG'),
(39, '657935', '367349d164aa893838b004d04ec1cd20', 'user', 'KPU KABUPATEN TULUNGAGUNG', 'PEMERINTAH KABUPATEN TULUNGAGUNG'),
(40, '657977', 'd35c2e2de7acbc1dffd1803cf23da16b', 'user', 'KPU KOTA KEDIRI', 'PEMERINTAH KOTA KEDIRI'),
(41, '657981', '8541dcaee08c300d0b9da19a02c0c6b6', 'user', 'KPU KOTA MADIUN', 'PEMERINTAH KOTA MADIUN'),
(42, '657998', 'b12305d2a66ff140875e3e5a8e6e492a', 'user', 'KPU KOTA MALANG', 'PEMERINTAH KOTA MALANG'),
(43, '658000', '326b8a5b48fbecb792241fe5a8fd7e14', 'user', 'KPU KOTA MOJOKERTO', 'PEMERINTAH KOTA MOJOKERTO'),
(44, '658021', '831c99b15619b25791ea2cd4d38493bf', 'user', 'KPU KOTA PROBOLINGGO', 'PEMERINTAH KOTA PROBOLINGGO'),
(45, '655629', 'f134764e590bfbfe32c137226e5ac5a2', 'user', 'KPU KABUPATEN ACEH SELATAN', 'PEMERINTAH KABUPATEN ACEH SELATAN'),
(46, '670341', '7e501855fec2d84b93c644fa142bb95d', 'user', 'KPU KAB. PIDIE JAYA', 'PEMERINTAH KAB. PIDIE JAYA'),
(47, '670358', 'af15eef9cb67b17b81be6ccd7d5b81b3', 'user', 'KPU KOTA SUBULUSSALAM', 'PEMERINTAH KOTA SUBULUSSALAM'),
(48, '654293', '3beebbd011d6a6c304aaa215204cd18f', 'user', 'KPU PROVINSI SUMATERA UTARA', 'PEMERINTAH PROVINSI SUMATERA UTARA'),
(49, '655849', '6ecd21a648fce85d7f15acfc4510d6c8', 'user', 'KPU KABUPATEN TAPANULI UTARA', 'PEMERINTAH KABUPATEN TAPANULI UTARA'),
(50, '655874', 'd3c63fc378086051c8e2d1782ebd41d8', 'user', 'KPU KABUPATEN LANGKAT', 'PEMERINTAH KABUPATEN LANGKAT'),
(51, '655895', '1d880defad54c9ea2698dcc937fe4865', 'user', 'KPU KABUPATEN DELI SERDANG', 'PEMERINTAH KABUPATEN DELI SERDANG'),
(52, '655942', 'de7eb89997a5b07c7cc2a61df693659a', 'user', 'KPU KABUPATEN DAIRI', 'PEMERINTAH KABUPATEN DAIRI'),
(53, '656070', 'dd22553fd0fa348e6172113671e11319', 'user', 'KPU KOTA PADANG SIDEMPUAN', 'PEMERINTAH KOTA PADANG SIDEMPUAN'),
(54, '670383', '4cbff399ed8967298efaea0861ec5297', 'user', 'KPU KAB. BATUBARA', 'PEMERINTAH KAB. BATUBARA'),
(55, '670760', '16f48c052ee0beb95b5e1db571e5ff0e', 'user', 'KPU KAB. PADANG LAWAS UTARA', 'PEMERINTAH KAB. PADANG LAWAS UTARA'),
(56, '670777', 'e711ecdd9a9c836387f040edd4448867', 'user', 'KPU KAB. PADANG LAWAS', 'PEMERINTAH KAB. PADANG LAWAS'),
(57, '656202', 'a190439d9ecd3a28a7b2fe839500e463', 'user', 'KPU KOTA PADANG', 'PEMERINTAH KOTA PADANG'),
(58, '656223', 'b25bd552b12a82d3eccbcb55e0988490', 'user', 'KPU KOTA SAWAHLUNTO', 'PEMERINTAH KOTA SAWAHLUNTO'),
(59, '656230', 'c6ea88c7cd0c9b65284e1ed39bcfd3ba', 'user', 'KPU KOTA PADANG PANJANG', 'PEMERINTAH KOTA PADANG PANJANG'),
(60, '656265', '324cfd3a9b3763f7a169686dd62e69c4', 'user', 'KPU KOTA PARIAMAN', 'PEMERINTAH KOTA PARIAMAN'),
(61, '654315', '98fae3fd18a1a469c88181890bfa0ee2', 'user', 'KPU PROVINSI RIAU', 'PEMERINTAH PROVINSI RIAU'),
(62, '656290', '0aa805562973e8a2727548a041ec4e37', 'user', 'KPU KABUPATEN INDRAGIRI HILIR', 'PEMERINTAH KABUPATEN INDRAGIRI HILIR'),
(63, '656382', 'a2b8bfea91b41f17b61ed8ba5c410d9a', 'user', 'KPU KABUPATEN KERINCI', 'PEMERINTAH KABUPATEN KERINCI'),
(64, '656396', '1ce02224898c7b45149eaf215b149a2c', 'user', 'KPU KABUPATEN MERANGIN', 'PEMERINTAH KABUPATEN MERANGIN'),
(65, '656471', 'b74341d174a0a12ae62e885a9ab21f75', 'user', 'KPU KOTA JAMBI', 'PEMERINTAH KOTA JAMBI'),
(66, '654336', '14f9f5b4681bd98c20c6959029714430', 'user', 'KPU PROVINSI SUMATERA SELATAN', 'PEMERINTAH PROVINSI SUMATERA SELATAN'),
(67, '656485', '598865ba8708d0191c2b4aa58769fe54', 'user', 'KPU KABUPATEN BANYUASIN', 'PEMERINTAH KABUPATEN BANYUASIN'),
(68, '656511', '0790466dcb939bd39da7d5bd6326f1b6', 'user', 'KPU KABUPATEN LAHAT', 'PEMERINTAH KABUPATEN LAHAT'),
(69, '656528', '4e10be19c96533010e215074f2ec4584', 'user', 'KPU KABUPATEN MUARA ENIM', 'PEMERINTAH KABUPATEN MUARA ENIM'),
(70, '656532', 'cba55cb240755bfe3edca21af97e5e46', 'user', 'KPU KABUPATEN OGAN KOMERING ILIR', 'PEMERINTAH KABUPATEN OGAN KOMERING ILIR'),
(71, '656581', 'a9e65fb013e128ad9336948dc1437d72', 'user', 'KPU KOTA PALEMBANG', 'PEMERINTAH KOTA PALEMBANG'),
(72, '656595', 'b807558da5e8d3745f8cb0a94cb82a75', 'user', 'KPU KOTA PAGAR ALAM', 'PEMERINTAH KOTA PAGAR ALAM'),
(73, '656600', '76ea9633ef2a128f50b0a055a34e707a', 'user', 'KPU KOTA LUBUK LINGGAU', 'PEMERINTAH KOTA LUBUK LINGGAU'),
(74, '656617', 'cbff3662c8c8c510457833269138d7b1', 'user', 'KPU KOTA PRABUMULIH', 'PEMERINTAH KOTA PRABUMULIH'),
(75, '670252', '926995dd5267f7f55c9804d1906f880c', 'user', 'KPU KAB EMPAT LAWANG', 'PEMERINTAH KAB EMPAT LAWANG'),
(76, '654357', '4d0010ee032b135e22462675405d2d73', 'user', 'KPU PROVINSI LAMPUNG', 'PEMERINTAH PROVINSI LAMPUNG'),
(77, '656727', '72bf22389ca9d2416c5fe8d41c244ae2', 'user', 'KPU KABUPATEN LAMPUNG UTARA', 'PEMERINTAH KABUPATEN LAMPUNG UTARA'),
(78, '656752', 'aca00c9c2b37422701ab9a0ac24caa0a', 'user', 'KPU KABUPATEN TANGGAMUS', 'PEMERINTAH KABUPATEN TANGGAMUS'),
(79, '654471', '8446681c67f6f84ced63e42c2777b3a2', 'user', 'KPU PROVINSI KALIMANTAN BARAT', 'PEMERINTAH PROVINSI KALIMANTAN BARAT'),
(80, '658461', '9f6bff49dc724e29efb8ff54a0c9aae4', 'user', 'KPU KABUPATEN PONTIANAK', 'PEMERINTAH KABUPATEN PONTIANAK'),
(81, '658478', 'f24f6412ce89235fd2b5a4d58e48c49f', 'user', 'KPU KABUPATEN SANGGAU', 'PEMERINTAH KABUPATEN SANGGAU'),
(82, '658532', '8d2b60fd053f53af21329db19c638dc8', 'user', 'KPU KOTA PONTIANAK', 'PEMERINTAH KOTA PONTIANAK'),
(83, '670337', '10450a6dd19066dd84da177f5eb94459', 'user', 'KPU KAB. KAYONG UTARA', 'PEMERINTAH KAB. KAYONG UTARA'),
(84, '670742', 'df97e2671558d90bb4c80f452fd6dc39', 'user', 'KPU KAB. KUBU RAYA', 'PEMERINTAH KAB. KUBU RAYA'),
(85, '658571', 'b723a83ee64a91f68f71e0d48c9847d6', 'user', 'KPU KABUPATEN KAPUAS', 'PEMERINTAH KABUPATEN KAPUAS'),
(86, '658588', '5ba9dafdb6abc6d394f464dd2da80965', 'user', 'KPU KABUPATEN KATINGAN', 'PEMERINTAH KABUPATEN KATINGAN'),
(87, '658600', 'f49a5d6ce1f4568d274a805af39f3d85', 'user', 'KPU KABUPATEN BARITO UTARA', 'PEMERINTAH KABUPATEN BARITO UTARA'),
(88, '658614', '18b9bdc56c4268c709fab4763719bbe4', 'user', 'KPU KABUPATEN SERUYAN', 'PEMERINTAH KABUPATEN SERUYAN'),
(89, '658621', 'c6baef80b84b48843c505a8aa4b499f0', 'user', 'KPU KABUPATEN SUKAMARA', 'PEMERINTAH KABUPATEN SUKAMARA'),
(90, '658635', '372659ea9cac64811a55db649b984b3a', 'user', 'KPU KABUPATEN LAMANDAU', 'PEMERINTAH KABUPATEN LAMANDAU'),
(91, '658642', '56de414e65d1484a6f36209cde1ba121', 'user', 'KPU KABUPATEN GUNUNG MAS', 'PEMERINTAH KABUPATEN GUNUNG MAS'),
(92, '658656', '97128bb465a02daea9fbee853f14f513', 'user', 'KPU KABUPATEN PULANG PISAU', 'PEMERINTAH KABUPATEN PULANG PISAU'),
(93, '658660', 'a749c19e1c7d10954db34d2631acd957', 'user', 'KPU KABUPATEN BARITO TIMUR', 'PEMERINTAH KABUPATEN BARITO TIMUR'),
(94, '658677', '465ff5a7440c328cc0bd33a4bafa0637', 'user', 'KPU KABUPATEN MURUNG RAYA', 'PEMERINTAH KABUPATEN MURUNG RAYA'),
(95, '658681', 'e83556fa83dee6715b9536df02293f97', 'user', 'KPU KOTA PALANGKARAYA', 'PEMERINTAH KOTA PALANGKARAYA'),
(96, '658710', 'a7e2eb6be7fccc69f025a4aed32199c1', 'user', 'KPU KABUPATEN TABALONG', 'PEMERINTAH KABUPATEN TABALONG'),
(97, '658724', '6893ad9cd3ca8f220b6fd0dd757cbe06', 'user', 'KPU KABUPATEN HULU SUNGAI SELATAN', 'PEMERINTAH KABUPATEN HULU SUNGAI SELATAN'),
(98, '658752', 'c274690210a7531f17efe4c9582f6865', 'user', 'KPU KABUPATEN TAPIN', 'PEMERINTAH KABUPATEN TAPIN'),
(99, '658791', 'd71a44b11da3961f1bd7ccc3b8a3711b', 'user', 'KPU KABUPATEN TANAHLAUT', 'PEMERINTAH KABUPATEN TANAHLAUT'),
(100, '654500', '6e9333d5ecf6b85191713d30247e1b41', 'user', 'KPU PROVINSI KALIMANTAN TIMUR', 'PEMERINTAH PROVINSI KALIMANTAN TIMUR'),
(101, '658820', 'bf03d3fc43aa0848968f9aa3962ab6f9', 'user', 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA'),
(102, '658965', '57efbd7224adf2118a40e2e1d7d0c7f7', 'user', 'KPU KABUPATEN MINAHASA', 'PEMERINTAH KABUPATEN MINAHASA'),
(103, '658986', '42adfa6034336fd7943742531b56f9c3', 'user', 'KPU KABUPATEN KEPULAUAN TALAUD', 'PEMERINTAH KABUPATEN KEPULAUAN TALAUD'),
(104, '670294', 'b0400fcefdf8ca4c72354efabc8bc1d7', 'user', 'KPU KOTA KOTAMOBAGO', 'PEMERINTAH KOTA KOTAMOBAGO'),
(105, '670302', '27b1c32f81580663732695bf30c5bd43', 'user', 'KPU KAB. MINAHASA TENGGARA', 'PEMERINTAH KAB. MINAHASA TENGGARA'),
(106, '670316', '1e4e885c16bff20f1d59a21b0c01ac5d', 'user', 'KPU KAB. BOLAANG MONGONDOW UTARA', 'PEMERINTAH KAB. BOLAANG MONGONDOW UTARA'),
(107, '670320', 'eb8f83ee11607d4dc9e5a113846deb6b', 'user', 'KPU KAB. KEP. SIAU TAGULANDANG BIARO', 'PEMERINTAH KAB. KEP. SIAU TAGULANDANG BIARO'),
(108, '659072', 'f4a893f60984203b22547ea634a5a790', 'user', 'KPU KABUPATEN MOROWALI', 'PEMERINTAH KABUPATEN MOROWALI'),
(109, '659089', '33256f0b6b032b12aaa1cf2d2dd4e98f', 'user', 'KPU KABUPATEN DONGGALA', 'PEMERINTAH KABUPATEN DONGGALA'),
(110, '659115', '90760de555378d562229f55e2ab88cdc', 'user', 'KPU KABUPATEN PARIGI MOUTONG', 'PEMERINTAH KABUPATEN PARIGI MOUTONG'),
(111, '654535', '0a7146bf0834d0d84edafa7d94605035', 'user', 'KPU PROVINSI SULAWESI SELATAN', 'PEMERINTAH PROVINSI SULAWESI SELATAN'),
(112, '659161', '1d32a64cafd9fe60a79dae408143a7a7', 'user', 'KPU KABUPATEN BANTAENG', 'PEMERINTAH KABUPATEN BANTAENG'),
(113, '659178', '5921ccdc9e2eb9fa0c0831c1756321c6', 'user', 'KPU KABUPATEN JENEPONTO', 'PEMERINTAH KABUPATEN JENEPONTO'),
(114, '659204', 'c0408e9eb34243fccb7d6e762e3d0b67', 'user', 'KPU KABUPATEN SINJAI', 'PEMERINTAH KABUPATEN SINJAI'),
(115, '659211', '6c6366e190b7371db442844fd90b67c7', 'user', 'KPU KABUPATEN BONE', 'PEMERINTAH KABUPATEN BONE'),
(116, '659267', '090ce8ef80801fa7c4877bdded07956e', 'user', 'KPU KABUPATEN WAJO', 'PEMERINTAH KABUPATEN WAJO'),
(117, '659271', 'fa6d07547deb57c519b22efae180b7b7', 'user', 'KPU KABUPATEN SIDENRENG RAPPANG', 'PEMERINTAH KABUPATEN SIDENRENG RAPPANG'),
(118, '659288', 'd6a06797a1ea76a729360de00057bba0', 'user', 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG'),
(119, '659292', '4f2aa759e4d3b535c2fd7ce098e99edf', 'user', 'KPU KABUPATEN ENREKANG', 'PEMERINTAH KABUPATEN ENREKANG'),
(120, '659300', 'cae4683d4b5d42e30291a3e2033dc1dc', 'user', 'KPU KABUPATEN LUWU', 'PEMERINTAH KABUPATEN LUWU'),
(121, '659398', '5572b22987b00fd8003c14a88bf520f3', 'user', 'KPU KOTA MAKASSAR', 'PEMERINTAH KOTA MAKASSAR'),
(122, '659403', 'ddd9420f7ff84aea2654ae968c7bcb53', 'user', 'KPU KOTA PARE-PARE', 'PEMERINTAH KOTA PARE-PARE'),
(123, '659410', 'fa8d766cd0a9484319dfe31e8d585900', 'user', 'KPU KOTA PALOPO', 'PEMERINTAH KOTA PALOPO'),
(124, '654542', 'eea22c6c8f020b5de6c3c6644af48eab', 'user', 'KPU PROVINSI SULAWESI TENGGARA', 'PEMERINTAH PROVINSI SULAWESI TENGGARA'),
(125, '659424', '6a3e4ccf82f8c7eced99c5d5dd43907c', 'user', 'KPU KABUPATEN KENDARI', 'PEMERINTAH KABUPATEN KENDARI'),
(126, '659452', 'a97d3838986a657444ff3e65f45e81e8', 'user', 'KPU KABUPATEN KOLAKA', 'PEMERINTAH KABUPATEN KOLAKA'),
(127, '659513', 'ae8876b52db9da7fb42684c3d3e4a132', 'user', 'KPU KOTA BAU-BAU', 'PEMERINTAH KOTA BAU-BAU'),
(128, '654560', '18f65aca4486cd26f3f0f96a6ea39292', 'user', 'KPU PROVINSI MALUKU', 'PEMERINTAH PROVINSI MALUKU'),
(129, '659602', '3a2e35c2f64d6d291f7b659960adfbe0', 'user', 'KPU KABUPATEN MALUKU TENGGARA', 'PEMERINTAH KABUPATEN MALUKU TENGGARA'),
(130, '670700', '4ce9a50332a2e6d8449dc48466bc6ade', 'user', 'KPU KOTA TUAL', 'PEMERINTAH KOTA TUAL'),
(131, '654446', 'b1544c28c7961bf295271cab1183d2c1', 'user', 'KPU PROVINSI BALI', 'PEMERINTAH PROVINSI BALI'),
(132, '658110', '0c35eeca413326b85866850446cadd1e', 'user', 'KPU KABUPATEN KLUNGKUNG', 'PEMERINTAH KABUPATEN KLUNGKUNG'),
(133, '658127', 'b9cc8b4a98251b444252e5d2b76545e3', 'user', 'KPU KABUPATEN GIANYAR', 'PEMERINTAH KABUPATEN GIANYAR'),
(134, '654450', '5058d65da35c24df89af9c68560893b0', 'user', 'KPU PROVINSI NUSA TENGGARA BARAT', 'PEMERINTAH PROVINSI NUSA TENGGARA BARAT'),
(135, '658180', '037f43cf212fece6a4a4ac9ecfeb2bfa', 'user', 'KPU KABUPATEN LOMBOK BARAT', 'PEMERINTAH KABUPATEN LOMBOK BARAT'),
(136, '658202', '8bde520007af1cd67bc28a20dfc5d3f6', 'user', 'KPU KABUPATEN LOMBOK TIMUR', 'PEMERINTAH KABUPATEN LOMBOK TIMUR'),
(137, '658262', '507c5fd736cc5d6c6c698c58701fb292', 'user', 'KPU KOTA BIMA', 'PEMERINTAH KOTA BIMA'),
(138, '654467', '039840a1495969d9699da74592b488aa', 'user', 'KPU PROVINSI NUSA TENGGARA TIMUR', 'PEMERINTAH PROVINSI NUSA TENGGARA TIMUR'),
(139, '658279', 'cf5b84f522b9f9da2a74cacdd34598b4', 'user', 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG'),
(140, '658305', '569f90976f9d967828d8d552cd3e9642', 'user', 'KPU KABUPATEN TIMOR TENGAH SELATAN', 'PEMERINTAH KABUPATEN TIMOR TENGAH SELATAN'),
(141, '658312', '3f13c507ccc9c3b3bf43bfad8eab2a6a', 'user', 'KPU KABUPATEN ALOR', 'PEMERINTAH KABUPATEN ALOR'),
(142, '658326', '8710f84fec366ad83eec17bb27086ed5', 'user', 'KPU KABUPATEN SIKKA', 'PEMERINTAH KABUPATEN SIKKA'),
(143, '658347', '2e2850e4311021d0dc998055af7fe921', 'user', 'KPU KABUPATEN ENDE', 'PEMERINTAH KABUPATEN ENDE'),
(144, '658401', 'dca1538ee448fc99b144d553c7e4ff93', 'user', 'KPU KABUPATEN ROTE NDAO', 'PEMERINTAH KABUPATEN ROTE NDAO'),
(145, '670269', 'ee761fb66a1a6ca41c715eb48c1a34bc', 'user', 'KPU KAB. NAGEKEO', 'PEMERINTAH KAB. NAGEKEO'),
(146, '670273', 'cbc56370c060cac64b0454f3c7d9b41b', 'user', 'KPU KAB. SUMBA TENGAH', 'PEMERINTAH KAB. SUMBA TENGAH'),
(147, '670280', '4b07e3b84aaa79dce9cf1f40a13b1a88', 'user', 'KPU KAB. SUMBA BARAT DAYA', 'PEMERINTAH KAB. SUMBA BARAT DAYA'),
(148, '670756', 'f68960d09671ea5384acc4bb300addae', 'user', 'KPU KAB. MANGGARAI TIMUR', 'PEMERINTAH KAB. MANGGARAI TIMUR'),
(149, '654581', 'f6954eb39b571ef79836f7479ee19761', 'user', 'KPU PROVINSI PAPUA', 'PEMERINTAH PROVINSI PAPUA'),
(150, '659740', '477847437a47567bf6fd8a238e4bfab7', 'user', 'KPU KABUPATEN BIAK NUMFOR', 'PEMERINTAH KABUPATEN BIAK NUMFOR'),
(151, '659775', 'c1fd697e1d924d777c8ff9e8ca87c80a', 'user', 'KPU KABUPATEN JAYAWIJAYA', 'PEMERINTAH KABUPATEN JAYAWIJAYA'),
(152, '659782', '5ba52608a7922d403f750005134bfc95', 'user', 'KPU KABUPATEN PANIAI', 'PEMERINTAH KABUPATEN PANIAI'),
(153, '659818', '4b422ba17e41207fcc0f9e6437b349d3', 'user', 'KPU KABUPATEN MIMIKA', 'PEMERINTAH KABUPATEN MIMIKA'),
(154, '670810', '1acfb389229f9ecab9218940bc1f2841', 'user', 'KPU KAB. MAMBERAMO TENGAH', 'PEMERINTAH KAB. MAMBERAMO TENGAH'),
(155, '670852', 'ff067f3a2c3648566c684e855d0d47ec', 'user', 'KPU KAB. PUNCAK', 'PEMERINTAH KAB. PUNCAK'),
(156, '680750', '8078a46ff002f3a884227604abcc582a', 'user', 'KPU KABUPATEN DEIYAI', 'PEMERINTAH KABUPATEN DEIYAI'),
(157, '656706', '8e822e78111ab6ec85ae4359def3ae1b', 'user', 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU'),
(158, '654577', '4eafb33b4b36c612bb112cceb933c71d', 'user', 'KPU PROVINSI MALUKU UTARA', 'PEMERINTAH PROVINSI MALUKU UTARA'),
(159, '658038', '3bf5714bb2f634ab88653434bf713936', 'user', 'KPU KABUPATEN TANGERANG', 'PEMERINTAH KABUPATEN TANGERANG'),
(160, '658063', 'd94db174340b1a4ca91a27226ff47761', 'user', 'KPU KABUPATEN LEBAK', 'PEMERINTAH KABUPATEN LEBAK'),
(161, '658070', 'b037146e2eb71878fa545438b2538ac0', 'user', 'KPU KOTA TANGERANG', 'PEMERINTAH KOTA TANGERANG'),
(162, '670714', 'bd527ea522d0960c60e34c49408aeec2', 'user', 'KPU KOTA SERANG', 'PEMERINTAH KOTA SERANG'),
(163, '656816', '560e943b9f3f475028c06ebdb5c0c714', 'user', 'KPU KABUPATEN BELITUNG', 'PEMERINTAH KABUPATEN BELITUNG'),
(164, '656837', '4ead11de034f00f0c768513f4a730df7', 'user', 'KPU KABUPATEN BANGKA', 'PEMERINTAH KABUPATEN BANGKA'),
(165, '656879', 'e832e55100f9d96fcff15e9aabd88d44', 'user', 'KPU KOTA PANGKALPINANG', 'PEMERINTAH KOTA PANGKALPINANG'),
(166, '659562', '226b1baa3a7746be2d44dbc6948eaf9f', 'user', 'KPU KOTA GORONTALO', 'PEMERINTAH KOTA GORONTALO'),
(167, '670362', 'bb8940b3ea95943d5a12aeecf1f88943', 'user', 'KPU KAB. GORONTALO UTARA', 'PEMERINTAH KAB. GORONTALO UTARA'),
(168, '656930', '0428b10a9daaf64dcb1248ec69561d28', 'user', 'KPU KOTA TANJUNG PINANG', 'PEMERINTAH KOTA TANJUNG PINANG'),
(169, '659321', '1076c9e7431551a28e12622adf8ce0bd', 'user', 'KPU KABUPATEN POLEWALI MAMASA', 'PEMERINTAH KABUPATEN POLEWALI MAMASA'),
(170, '659360', '2cd381308d22eda4332576fc8844cabe', 'user', 'KPU KABUPATEN MAMASA', 'PEMERINTAH KABUPATEN MAMASA'),
(171, '658923', '2ac311e4baa361433b8ac23789a52b05', 'user', 'KPU KOTA TARAKAN', 'PEMERINTAH KOTA TARAKAN'),
(172, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin', 'ADMIN', ''),
(173, '654521', 'a961eebeb99980011012936bd5bff1c1', 'user', 'KPU  PROVINSI SULAWESI TENGAH', 'KPU  PROVINSI SULAWESI TENGAH');

-- --------------------------------------------------------

--
-- Table structure for table `dok`
--

CREATE TABLE `dok` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `url` text NOT NULL,
  `input_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dok`
--

INSERT INTO `dok` (`id`, `judul`, `url`, `input_date`) VALUES
(1, 'tes 2', 'ead10-absen-oktober.pdf', '2017-10-09 17:03:15'),
(2, 'pkpu no 1 2017', '1e39f-pkpu-1-2017_upload.pdf', '2017-10-09 16:55:45'),
(3, 'tes', 'cdd1a-7_4.pdf', '2017-10-09 17:03:00');

-- --------------------------------------------------------

--
-- Table structure for table `dok_hibah`
--

CREATE TABLE `dok_hibah` (
  `id` int(11) NOT NULL,
  `tahun` int(4) NOT NULL,
  `prov` varchar(255) NOT NULL,
  `kode_satker` int(11) NOT NULL,
  `nama_satker` varchar(255) NOT NULL,
  `pem_hibah` varchar(255) NOT NULL,
  `dok_nphd` varchar(255) NOT NULL,
  `dok_add_nphd` varchar(255) NOT NULL,
  `dok_reg_hibah` varchar(255) NOT NULL,
  `dok_add_reg_hibah` varchar(255) NOT NULL,
  `dok_rev_dipa` varchar(255) NOT NULL,
  `dok_ijin_rpl` varchar(255) NOT NULL,
  `dok_ijin_rps` varchar(255) NOT NULL,
  `dok_rek_koran_rpl` varchar(255) NOT NULL,
  `dok_rek_koran_rps` varchar(255) NOT NULL,
  `dok_sphl` varchar(255) NOT NULL,
  `dok_sp2hl` varchar(255) NOT NULL,
  `dok_sp3hl` varchar(255) NOT NULL,
  `dok_sp4hl` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dok_hibah`
--

INSERT INTO `dok_hibah` (`id`, `tahun`, `prov`, `kode_satker`, `nama_satker`, `pem_hibah`, `dok_nphd`, `dok_add_nphd`, `dok_reg_hibah`, `dok_add_reg_hibah`, `dok_rev_dipa`, `dok_ijin_rpl`, `dok_ijin_rps`, `dok_rek_koran_rpl`, `dok_rek_koran_rps`, `dok_sphl`, `dok_sp2hl`, `dok_sp3hl`, `dok_sp4hl`) VALUES
(1, 2018, 'RIAU', 654315, 'KPU PROVINSI RIAU', 'PEMERINTAH PROVINSI RIAU', '77963-nphd-prov.-riau.pdf', '0', 'b8d01-register-hibah-riau.pdf', '', '099a7-dipa-revisi.pdf', '3a253-persetujuan-pembukaan-rek.-rpl-provinsi-riau.pdf', 'a383a-persetujuan-rekening-rps-se-provinsi-riau.pdf', '', '', '82e4b-sphl2.pdf', '', '', ''),
(2, 2018, 'NUSA TENGGARA TIMUR', 670273, 'KPU KAB. SUMBA TENGAH', 'PEMERINTAH KAB. SUMBA TENGAH', '03a06-nphd.pdf', '0', 'b84c4-penetapan-nomor-register-hibah.pdf', '', '', '205a6-persetujuan-pembukaan-rekening-rpl.pdf', '294bb-persetujuan-pembukaan-rekening-rps.pdf', '', '', '431d1-sphl.pdf', '6bf81-sp2hl.pdf', '', ''),
(3, 2018, 'NUSA TENGGARA TIMIR', 658401, 'KPU KABUPATEN ROTE NDAO', 'PEMERINTAH KABUPATEN ROTE NDAO', 'b45de-nphd.pdf', '0', 'd32a9-penetapan-nomor-register.pdf', '', 'b7a6f-dipa-revisi.pdf', '80d3f-ijin-pembukaan-rekening-rpl.pdf', 'df56c-ijin-pembukaan-rekening-rps.pdf', '', '', '954a3-sp2dhl.pdf', '8014a-sp2dhl.pdf', '', ''),
(4, 2018, 'NUSA TENGGARA TIMUR', 658312, 'KPU KABUPATEN ALOR', 'PEMERINTAH KABUPATEN ALOR', '04e20-nphd-pilkada-2018.pdf', '0', '9730d-s-1164-1-regis-alor.pdf', '', '72eb9-revisi-dipa-kpu-kab.-alor.pdf', '683fb-rpl-alor-pilkada.pdf', '', 'f3158-rc-bank-hibah-201723022018.pdf', '', '615c1-sp2hl23022018.pdf', '', '', ''),
(5, 2018, 'NUSA TENGGARA TIMUR', 670280, 'KPU KAB. SUMBA BARAT DAYA', 'PEMERINTAH KAB. SUMBA BARAT DAYA', '6a609-1_nphd-sbd-2018.pdf', '0', '1230c-2_penetapan-nomor-regis.pdf', '', '20f83-7_revisi-hibah-ii.pdf', '0381b-3_ijin-rpl-sbd.pdf', 'bf156-4_ijin-rps-sbd.pdf', '', '', '7ee1e-9_sphl-2017-ii.pdf', '20cee-sp2hl-2017-ii.pdf', '', ''),
(6, 2018, 'NUSA TENGGARA TIMUR', 670269, 'KPU KAB. NAGEKEO', 'PEMERINTAH KAB. NAGEKEO', '11909-nphd-pemilukada-kabupaten-nagekeo-2018-awal.pdf', '0', '6aa93-persetujuan-register-hibah.pdf', '', '', '58001-laporan-pembukaan-rekening.pdf', '', '8fe91-rekening-koran-hibah-desember-akhir-2017.pdf', '', 'cc263-sp2hl-kpu-nagekeo-lengkap.pdf', '5b992-sphl-kpu-nagkeo-1-.pdf', '', ''),
(7, 2018, 'NUSA TENGGARA TIMUR', 670756, 'KPU KAB. MANGGARAI TIMUR', 'PEMERINTAH KAB. MANGGARAI TIMUR', '7e9ae-6.nphd-matim.pdf', '0', '2c050-9.s-1108_surat_register_hibah.pdf', '', '227d6-8.dipa_revisi_4_hibah_2017.pdf', '08853-10.surat_persetujuan-_rekening_hibah_2017_kppn.pdf', '4eabb-5.surat-persetujuan-pembukaan-rekening-rps_djpkeuanganpusat.pdf', 'da41f-rek-koran.pdf', '6ad61-rekening-koran-okt_des.pdf', '50d21-sp2hl_sphl_2017.pdf', 'bf551-sp2hl_sphl_2017.pdf', '', ''),
(8, 2018, 'NUSA TENGGARA TIMUR', 658347, 'KPU KABUPATEN ENDE', 'PEMERINTAH KABUPATEN ENDE', 'b859f-nphd01.pdf', '0', '57dd6-s-1112-no.-register-hibah-kpu-kab.-ende.pdf', '', '', '7a804-surat-persetujuan-pembukaan-rpl-dari-kppn-ende.pdf', '5bd28-persetujuan-pembukaan-rps-dari-djp-ri.pdf', '', '', '1f87d-sphl-kpu-ende.pdf', '29c08-sp2hl.pdf', '', ''),
(9, 2018, 'NUSA TENGGARA TIMUR', 658305, 'KPU KABUPATEN TIMOR TENGAH SELATAN', 'PEMERINTAH KABUPATEN TIMOR TENGAH SELATAN', '9a487-nphd-tts.pdf', '0', '', '', '8be71-revisi-dipa.pdf', '', '', '69e1a-rpdhl-pilbup.pdf', '4abfc-rps-pilbup.pdf', '33c52-sphl.pdf', '3359f-sp2hl.pdf', '', ''),
(10, 2018, 'NUSA TENGGARA TIMUR', 658326, 'KPU KABUPATEN SIKKA', 'PEMERINTAH KABUPATEN SIKKA', '', '0', '', '', '10d1f-dipa-revisi-6.pdf', '', '', '', '', '5d034-sphl-desember.pdf', 'c27e0-sp2hl-desember.pdf', '', ''),
(11, 2018, 'NUSA TENGGARA TIMUR', 658279, 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG', '3b7cc-nphd_addendum.pdf', '0', '1cd8b-penetpan_no_register_hibah.pdf', '', '296e8-dipa_2017_revisi_05.pdf', 'f0ea0-persetujuan_rek_rpl_bupati.pdf', 'a80e1-persetujuan_rek_rps_bupati.pdf', '', '', '4eb20-sphl.pdf', '7ab97-sp2hl.pdf', '', ''),
(12, 2018, 'NUSA TENGGARA TIMUR', 654467, 'KPU PROVINSI NUSA TENGGARA TIMUR', 'PEMERINTAH PROVINSI NUSA TENGGARA TIMUR', '4f037-nphd-prov-ntt.pdf', '0', 'a2989-s-1133-regis-prov.pdf', '', 'ed8fa-dipa-revisi-hibah-2017.pdf', '4545a-izin-rpl.pdf', 'd0523-s-8912-tgl-11-10-2017-kpu-ijin-baru-kpu-provinsi-ntt-.pdf', '', '', '80f84-spd2hl-dan-sphl-no-371.pdf', '253f3-spd2hl-dan-sphl-no-371.pdf', '', ''),
(13, 2018, 'MALUKU', 654560, 'KPU PROVINSI MALUKU', 'PEMERINTAH PROVINSI MALUKU', 'cd400-nphd-2-.pdf', '0', '5ac4f-no-register.pdf', '', '', 'b75d8-rpl.pdf', '9bbd4-persetujuan-pembuakan-rek-rps.pdf', '', '', '', '', '', ''),
(14, 2018, 'MALUKU UTARA', 654577, 'KPU PROVINSI MALUKU UTARA', 'PEMERINTAH PROVINSI MALUKU UTARA', 'f3278-nphd-pilgub-malut-2018.pdf', '0', '12994-penetapan-register-hibah-malut.pdf', '', '2ca31-dipa-revisi-hibah.pdf', '008ba-persetujuan-pembukaan-rek.-hibah-2017.pdf', 'b274e-persetujuan-rekening-rps-hibah.pdf', '', '', '88635-sphl.pdf', '7a730-sp2hl.pdf', '', ''),
(15, 2018, 'MALUKU', 659602, 'KPU KABUPATEN MALUKU TENGGARA', 'PEMERINTAH KABUPATEN MALUKU TENGGARA', 'c2237-adendum-nphd-malra.pdf', '0', 'f3695-nomor-registrasi-hibah-hal-126022018-1-.jpg', '', 'af709-2017-01-076.01-659602-21-084-2-03.pdf', 'ec02e-persetujuan-pembukaan-rekening.pdf', 'eccbd-persetujuan-pembukaan-rekening-hal-126022018-1-.jpg', '', '', '', '', '', ''),
(16, 2018, 'MALUKU', 670700, 'KPU KOTA TUAL', 'PEMERINTAH KOTA TUAL', '3be57-nphd.pdf', '0', 'a45df-register-hibah-kpu-tual.pdf', '', '6b478-2017-01-076.01-670700-21-084-2-03.pdf', 'c907c-persetujuan-pembukaan-rekening.pdf', '133e3-persertujuan-pembukaan-rekening-kpu-2.pdf', '', '', '4de8f-sp2hl.pdf', '', '', ''),
(17, 2018, 'NUSA TENGGARA BARAT', 654450, 'KPU PROVINSI NUSA TENGGARA BARAT', 'PEMERINTAH PROVINSI NUSA TENGGARA BARAT', '59376-nphd-ntb.pdf', '33cc9-addendum-nphd.pdf', '1aca8-penerbitan-register-hibah.pdf', '8dbd0-update-nilai-register.pdf', '84ba5-dipa-revisi-hibah-2.pdf', '7b331-persetujuan-pembukaan-rekening.pdf', 'b49bf-persetujuan-pembukaan-rekening.pdf', '', '', 'ba86f-4.-sp2hl-00430-31-des-2017.pdf', '52a72-4.-sp2hl-00430-31-des-2017.pdf', '', ''),
(18, 2018, 'NUSA TENGGARA BARAT', 658180, 'KPU KABUPATEN LOMBOK BARAT', 'PEMERINTAH KABUPATEN LOMBOK BARAT', 'd65f2-nphd-hibah-kpu-kab.lobar.pdf', '0', '19e61-register-hibah-kpu-kab.-lobar.pdf', '', 'dc33c-dipa-revisi-hibah.pdf', '67ef0-persetujuan-pembukaan-rekening-kppn.pdf', '823a7-s-5293-tgl-13-6-2017-kpu-ijin-baru-kpu-se-prov-ntb-1-.pdf', '68516-agustus-s.d-des-2017-jan-s.d-juni-2018.pdf', '53eca-31-11-17-s.d-30-06-2018.pdf', '0ee0e-sphl.pdf', '5d37e-sp2hl.pdf', '', ''),
(19, 2018, 'NUSA TENGGARA BARAT', 658202, 'KPU KABUPATEN LOMBOK TIMUR', 'PEMERINTAH KABUPATEN LOMBOK TIMUR', 'b443f-nphd-tahapan-pilkada.pdf', '0', '6e66b-register-hibah.pdf', '', '39e1f-revisi-dipa.pdf', 'c78f6-pembukaan-rekening.pdf', '', '85c5d-2.-rek-koran-des.pdf', '', '2b1a9-sp2hl-sphl-hibah-tahapan.pdf', '5e69b-sp2hl-sphl-hibah-tahapan.pdf', '', ''),
(20, 2018, 'NUSA TENGGARA BARAT', 658262, 'KPU KOTA BIMA', 'PEMERINTAH KOTA BIMA', '3bb28-2.-nphd-pilkada-kota-bima.pdf', '0', '97e3f-register-hibah-tahapan.pdf', '', '3320e-dipa-revisi-6-tahun-2017.pdf', '75a07-ijin-buka-rekening-dari-kppn-bima.pdf', 'b74d5-ijin-rps.pdf', '', '', '1c589-sp2hl-dan-sphl-hibah-tahapan.pdf', '59d7d-sp2hl-dan-sphl-hibah-tahapan.pdf', '', ''),
(21, 2018, 'SULAWESI BARAT', 984767, 'KPU PROPINSI SULAWESI BARAT', 'PEMERINTAH KPU PROPINSI SULAWESI BARAT', 'ef27e-1.nphd.pdf', '0', '54e80-2.nomor-register-hibah.pdf', '', '5829d-20.-dipa-revisi-4.pdf', '5600c-4.izin-buka-rekening-rpl-kpu-prov-sultra.pdf', '41a0f-5.izin-buka-rekening-rps-kabupaten-dari-djpb.pdf', '', '', 'e2337-sphl.pdf', '1efbc-sphl.pdf', '', ''),
(22, 2018, 'SULAWESI TENGGARA', 659424, 'KPU KABUPATEN KENDARI', 'PEMERINTAH KABUPATEN KENDARI', '0a4b4-nphd-konawe.pdf', '0', '14931-019.jpg', '', '406f7-dipa-revisi.jpg', 'ae2b1-013.jpg', 'e547d-014.jpg', '', '', '6cff0-sphl.jpg', '89c8c-sp2hl.jpg', '', ''),
(23, 2018, 'SULAWESI TENGGARA', 659452, 'KPU KABUPATEN KOLAKA', 'PEMERINTAH KABUPATEN KOLAKA', '036b2-nphd-pilkada-2018.pdf', '0', '150f9-register-1.pdf', '', '6db07-2017-01-076.01-659452-20-156-2-04.pdf', '00e42-3.persetujuan-rek-rpl.pdf', '', '', '', 'b4b13-2.sp2hl-des-2017.pdf', 'a9591-2.sp2hl-des-2017.pdf', '', ''),
(24, 2018, 'GORONTALO', 659562, 'KPU KOTA GORONTALO', 'PEMERINTAH KOTA GORONTALO', '03bd3-nphd-pilwako-2018.pdf', '0', 'ed250-register-hibah.pdf', '', '', '827b1-persetujuan-pembukaan-rekening-hibah.jpg', 'ea2a9-a.n-menteri-persetujuan-pembukaan-rekening-kpu-kota-gorontalo.jpg', '', '', 'c5cd1-sphl-desember.pdf', '28ce2-sp2hl-desember.jpg', '', ''),
(25, 2018, 'SULAWESI UTARA', 658951, 'KPU  KABUPATEN BOLAANG MONGONDOW', 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW', '98bc4-2-nphd-kpu-bolmut.pdf', '0', '82006-register-hibah-kpu-bolmut.pdf', '', 'a2b1e-dipa-revisi-3.pdf', 'c8e94-persetujuan-pembukaan-rekening.docx', '', '', '', '', '25270-sp2hl-kab-bolaang-mongondow-utara.pdf', '', ''),
(26, 2018, 'SULAWESI UTARA', 658986, 'KPU KABUPATEN KEPULAUAN TALAUD', 'PEMERINTAH KABUPATEN KEPULAUAN TALAUD', 'e8728-nphd.pdf', '0', '74b7f-register-hibah.pdf', '', 'b7785-dipa-revisi-4.pdf', '202c9-kppn-persetujuan-pembukaan-rekening.pdf', '', '', '', 'd75b7-sp2hl-sphl.pdf', 'eea42-sp2hl-sphl.pdf', '', ''),
(27, 2018, 'SULAWESI UTARA', 670320, 'KPU KAB. KEP. SIAU TAGULANDANG BIARO', 'PEMERINTAH KAB. KEP. SIAU TAGULANDANG BIARO', '78977-nphd_addendum.pdf', '0', '0e0ea-nomor-register.pdf', '', '8f4df-dipa-revisi-4.pdf', '736b8-persetujuan-pembukaan-rekening-kppn.pdf', '', '26aa7-2.-rek-koran-agustus-desember.pdf', '', '', '9a165-sp2hl-2.jpg', '', ''),
(28, 2018, 'SULAWESI UTARA', 670302, 'KPU KAB. MINAHASA TENGGARA', 'PEMERINTAH KAB. MINAHASA TENGGARA', '10457-nphd.pdf', '0', '5dd98-nomor-register.pdf', '', '', '04563-persetujuan-pembukaan-rekening-rpl-kab-minahasa-tenggara.pdf', '', 'b09fb-rekening-koran-agt-des-2017-kab-minahasa-tenggara.pdf', '', 'e2ed5-sphl-2017.pdf', 'c07b9-sp2hl-2017.pdf', '', ''),
(29, 2018, 'SULAWESI UTARA', 658965, 'KPU KABUPATEN MINAHASA', 'PEMERINTAH KABUPATEN MINAHASA', '365e0-nphd-kpu-dgn-pemda.pdf', '0', '9ca23-register-hibah.pdf', '', '0b364-revisi-2-dan-3.pdf', '184de-scan-persetujuan-pembukaan-rekening-kpu-minahasa-2-.pdf', '', 'df43e-desember.pdf', '', 'e6a42-sp2hl-dan-sphl-desember-2018.pdf', 'dbc55-sp2hl-dan-sphl-desember-2018.pdf', '', ''),
(30, 2018, 'SULAWESI TENGAH', 659072, 'KPU KABUPATEN MOROWALI', 'PEMERINTAH KABUPATEN MOROWALI', '11fef-nphd-dana-hibah-pilkada09017.pdf', '0', '41e7d-100011665.pdf', '', 'a80ec-2017-01-076.01-659072-18-052-2-02.pdf', '16552-persetujuan-rekening-hibah-kab.morowali-2017.pdf', '0d9d6-persetujuan-pembukaan-rekening-rpl-kpu-morowa.pdf', '2dec0-rekening-koran-201706018.pdf', '', '', '4ef13-sp2hl-201706018.pdf', '', ''),
(31, 2018, 'SULAWESI TENGAH', 659089, 'KPU KABUPATEN DONGGALA', 'PEMERINTAH KABUPATEN DONGGALA', 'b4c24-nphd.pdf', '0', '3fac8-register-hibah.pdf', '', '', '4bf51-izin-rpl_01.jpg', 'daaa1-izin-rps_01.jpg', '', '', '', '3bbd7-sp2hl.pdf', '', ''),
(32, 2018, 'SULAWESI TENGAH', 659115, 'KPU KABUPATEN PARIGI MOUTONG', 'PEMERINTAH KABUPATEN PARIGI MOUTONG', '2aef1-nphd-awal.pdf', '0', '30a71-penerbitan-no-register-hibah.pdf', '', '783de-dipa.pdf', '31cf9-persetujuan-rpl-oleh-kppn.pdf', 'eed50-persetujuan-rps-oleh-djp.pdf', '', '', '73fd9-sphl.pdf', 'c81bb-sp2hl.pdf', '', ''),
(33, 2018, 'SULAWESI TENGGARA', 659513, 'KPU KOTA BAU-BAU', 'PEMERINTAH KOTA BAU-BAU', '', '0', 'd7493-nomor-register-hibah-pilwali-2018.pdf', '', '368bd-dipa.pdf', '3d0e4-01.-persetujuan-pembukaan-rekening-pengeluaran-rpl-103-hibah-kpu-kota-659513.pdf', 'cdbca-02.-persetujuan-pembukaan-rekening-pengeluaran-bpp-103-hibah-kpu-kota-659513.pdf', '', '', '', '2f6e9-sp2hl-bulan-desember-2017.pdf', '', ''),
(34, 2018, 'SULAWESI SELATAN', 654535, 'KPU PROVINSI SULAWESI SELATAN', 'PEMERINTAH PROVINSI SULAWESI SELATAN', '61ca2-nphd-pilgub-sul-sel-2018.pdf', '0', '', '', '850ca-2017-01-076.01-654535-19-054-2-05.pdf', '947a3-pembukaan-rekening.pdf', '19cb2-persetujuan-pembukaan-rekening-bpp-pilgub-sul-sel-2018.pdf', '0b2cb-rekening-koran-september-s-d-desember-bpp-pilgub-sul-sel-2017.pdf', '', '02d77-sphl-pilgub-des.pdf', '19c08-sp2hl-pilgub.pdf', '', ''),
(35, 2018, 'SULAWESI SELATAN', 659271, 'KPU KABUPATEN SIDENRENG RAPPANG', 'PEMERINTAH KABUPATEN SIDENRENG RAPPANG', '70eab-nphd-pilkada-sidrap-2018.pdf', '0', '475f6-register.pdf', '', 'b3973-revisi-dipa.pdf', '', '', '', '', '2a1ef-surat-pegesaha-sp2hl.jpeg', '6a4b0-sp2hl.pdf', '', ''),
(36, 2018, 'SULAWESI SELATAN', 659398, 'KPU KOTA MAKASSAR', 'PEMERINTAH KOTA MAKASSAR', '43864-nphd.pdf', '0', 'a2715-register.pdf', '', '89beb-revisi-dipa.pdf', '5157f-persetujuan-pembukaan-rek-hibah.pdf', '', '6df3f-rek-rpl-pilwali.pdf', '', '', 'b4b52-sp2hl.pdf', '', ''),
(37, 2018, 'SULAWESI SELATAN', 659292, 'KPU KABUPATEN ENREKANG', 'PEMERINTAH KABUPATEN ENREKANG', '8a782-nphd-pilkada-2018.pdf', '0', 'a010e-register-hibah-dari-kanwil-kpu-kab-enrekang.pdf', '', '0c216-surat-dipa.pdf', '46e4b-persetujuan-pembukaan-rekening.pdf', '', '0324f-rekkoran.rpl.-31-desember-17.pdf', '', '', 'f082e-sp2hl-3.pdf', '', ''),
(38, 2018, 'SULAWESI SELATAN', 659161, 'KPU KABUPATEN BANTAENG', 'PEMERINTAH KABUPATEN BANTAENG', '19da5-nphd.pdf', '0', '4ae77-penerbitan-nomor-register.pdf', '', '1afb0-dipa-kpu-bantaeng.pdf', '831de-ijin-pembukaan-rekening.pdf', '', '9f68c-rekening-koran-rpl.pdf', '', '', 'babea-spzhl.pdf', '', ''),
(39, 2018, 'SULAWESI SELATAN', 659211, 'KPU KABUPATEN BONE', 'PEMERINTAH KABUPATEN BONE', '260b6-1.-nphd.pdf', '0', '6f146-register-rek.pdf', '', '175d7-4.-dipa-revisi.pdf', 'b06d2-2.-ijin-pembukaan-rekening.pdf', '', '3fb23-rek.-koran-desember-2017-januari-2018.pdf', '', 'f0d76-sp2hl-31-12-2017.pdf', '8288f-sp2hl-31-12-2017.pdf', '', ''),
(40, 2018, 'SULAWESI SELATAN', 659178, 'KPU KABUPATEN JENEPONTO', 'PEMERINTAH KABUPATEN JENEPONTO', '2aadf-nphd.pdf', '0', '181d2-nomor-register-hibah.pdf', '', 'aff58-revisi-dipa-haldepan.pdf', 'ec27e-persetujuan-pembukaan-rekening.pdf', '', '566a3-rekening-koran.pdf', '', 'ef224-sp2hl.pdf', '96c13-sp2hl.pdf', '', ''),
(41, 2018, 'SULAWESI SELATAN', 659300, 'KPU KABUPATEN LUWU', 'PEMERINTAH KABUPATEN LUWU', 'c831a-nphd.pdf', '0', '91cac-no-register-hibah.pdf', '', 'f4089-surat-dipa.pdf', '94bfc-persetujuan-pembukaan-rek..pdf', '', '94f95-rek.-koran-bri.pdf', '', '', '927f6-sp2hl2.pdf', '', ''),
(42, 2018, 'SULAWESI SELATAN', 659288, 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG', '8a1e0-nphd..pdf', '0', 'd5582-nomor-register-hibah.pdf', '', '85861-dipa-revisi-hibah-2017.pdf', '76bf3-persetujuan-pembukaan-rek-rpl-057.pdf', 'e590c-persetujuan-pembukaan-rek.-057-rps.pdf', '', '', '4910c-sp2hl-dan-sphl-2017.pdf', 'db7f9-sp2hl-dan-sphl-2017.pdf', '', ''),
(44, 2018, 'SULAWESI SELATAN', 659204, 'KPU KABUPATEN SINJAI', 'PEMERINTAH KABUPATEN SINJAI', '875f0-1.-nphd.pdf', '0', '4e764-3.-register.pdf', '', '3ea21-4.-dipa-revisi-2017.pdf', '25795-2.-persetujuan-pembukaan-rekening.pdf', '', '', '', '8f0ec-13.-sphl-dan-sp2hl-bulan-desember.pdf', '2cdb5-13.-sphl-dan-sp2hl-bulan-desember.pdf', '', ''),
(45, 2018, 'SULAWESI SELATAN', 659267, 'KPU KABUPATEN WAJO', 'PEMERINTAH KABUPATEN WAJO', '1b7da-nphd-pilkada-kab-wajo.pdf', '0', '3bad3-register-hibah.pdf', '', '5515f-dipa-revisi-hibah.pdf', 'baddf-image_00001.pdf', '1b1e0-image_00003.pdf', 'b046c-kpu-rpl-bulan-desember.pdf', '', 'ea50a-sp2hl.jpg', '4f4d7-sp2hl.pdf', '', ''),
(46, 2018, 'SULAWESI SELATAN', 659410, 'KPU KOTA PALOPO', 'PEMERINTAH KOTA PALOPO', '9e851-inspektorat.pdf', '0', '9fba4-register.pdf', '', '4cd9e-dipa_revisi.pdf', '58e6c-persetujuan-pembukaan-rekening.pdf', '', '3b782-rek.koran.bp.jpg', '', '81e3b-sphl.pdf', '2caa6-sp2hl.pdf', '', ''),
(47, 2018, 'SULAWESI SELATAN', 659403, 'KPU KOTA PARE-PARE', 'PEMERINTAH KOTA PARE-PARE', '965f6-nphd-1.pdf', '0', '', '', '90b23-revisi-dipa.pdf', '', '', '6d9d0-rek.koran-hibah.pdf', '', '46fff-sphl2.pdf', '7a701-sp2hl2.pdf', '', ''),
(48, 2018, 'SULAWESI UTARA', 670294, 'KPU KOTA KOTAMOBAGO', 'PEMERINTAH KOTA KOTAMOBAGO', '8ebc1-nphd.pdf', '0', 'e6387-penerbitan-nomor-register.pdf', '', 'ab33e-revisi-5.pdf', 'd17bf-persetujuan-pemb-rekening.pdf', '', '', '', 'b8205-sphl.pdf', '36e32-sp2hl.pdf', '', ''),
(49, 2018, 'SULAWESI BARAT', 659321, 'KPU KABUPATEN POLEWALI MAMASA', 'PEMERINTAH KABUPATEN POLEWALI MAMASA', '6e098-nphd.pdf', '0', 'a4f66-surat-penerbitan-register-hibah.pdf', '', '', '411cc-permohonan-peresetujuan-pembukaan-rekening-rps-.pdf', '', '', '', '', '2ad89-sp2hl-kedua.pdf', '', ''),
(50, 2018, 'SULAWESI BARAT', 659360, 'KPU KABUPATEN MAMASA', 'PEMERINTAH KABUPATEN MAMASA', 'bc444-nphd-kpu-kab-mamasa.pdf', '0', '50ed3-persetujuan-register-hibah055.pdf', '', '66e83-dipa-rev-hibah.pdf', '54132-izin-rpl.pdf', 'a46a1-izin-rps.pdf', '11c0e-rek-koran-anggaran-hibah-per-31-des-2017054.pdf', '', '3aa73-sp2hl.pdf', 'c8324-sp2hl.pdf', '', ''),
(51, 2018, 'PAPUA', 680750, 'KPU KABUPATEN DEIYAI', 'PEMERINTAH KABUPATEN DEIYAI', 'cf23c-nphd-kpu-kab.-deiyai.pdf', '0', '59c63-nomor-registrasi-hibah-pilkada-2018.pdf', '', '22144-revisi-dipa-ke-3.pdf', '1309f-surat-ijin-buka-rekening-kppn-hibah.pdf', '', '', '', '43c78-sphl-tahun-2017.pdf', 'd3c46-sp2hl-tahun-2017.pdf', '', ''),
(52, 2018, 'PAPUA', 659775, 'KPU KABUPATEN JAYAWIJAYA', 'PEMERINTAH KABUPATEN JAYAWIJAYA', '1bca8-nphd.pdf', '0', '382c1-register.pdf', '', '42a13-dipa-revisi.pdf', '5e102-ijin-buka-rekening.pdf', '', '', '', 'e5ad0-sp2hl.pdf', '2e2a9-sp2hl.pdf', '', ''),
(53, 2018, 'PAPUA', 659818, 'KPU KABUPATEN MIMIKA', 'PEMERINTAH KABUPATEN MIMIKA', '82807-nphd.pdf', '0', '1ee98-register-nphd.pdf', '', 'eb57d-pengesahan-revisi-dipa.pdf', '20702-ijin-pembukaan-rpl.pdf', '', '382af-rekening-koran-rpl.pdf', '', '3f24a-sphl.pdf', '7d9c9-sp2hl.pdf', '', ''),
(55, 2018, 'PAPUA', 659740, 'KPU KABUPATEN BIAK NUMFOR', 'PEMERINTAH KABUPATEN BIAK NUMFOR', '26ffc-nphd-biak-numfor.pdf', '0', '611b8-register-hibah-biak-numfor.pdf', '', '6e6aa-revisi-dipa-biak-numfor.pdf', '85ed2-ijin-pembukaan-rekening-rpl.pdf', '', 'c13ae-rekening-koran-rpl.pdf', '', '', '', '', ''),
(56, 2017, 'SULAWESI UTARA', 658951, 'KPU  KABUPATEN BOLAANG MONGONDOW', 'PEMERINTAH KABUPATEN BOLAANG MONGONDOW', '72a5a-1.-nphd.pdf', '', '17e28-register-hibah-djppr.pdf', '', '0477b-revisi-dipa-2016-2017.pdf', '96c14-ijin-pembukaan-rekening-rpl.pdf', '', 'f1a34-rekening-koran-rpl-2016-2017.pdf', '', '58f15-sphl-2016-2017.pdf', 'a4cdb-sp2hl-2016-2017.pdf', '', ''),
(57, 2017, 'SULAWESI UTARA', 658972, 'KPU  KABUPATEN KEPULAUAN SANGIHE', 'PEMERINTAH KABUPATEN KEPULAUAN SANGIHE', '4f466-nphd.pdf', '3a949-nphd_adendum.pdf', '73791-surat-permohonan-register.pdf', '9f901-surat-perubahan-data-register.pdf', 'abea6-revisi-dipa-2016-2017.pdf', '92d93-ijin-pembukaan-rekening-rpl.pdf', 'cc588-ijin-pembukaan-rekening-rps.pdf', '2bbf6-rekening-koran-rpl-2016-2017.pdf', 'c10b9-rek-koran-bpp.pdf', '1dc55-sphl-2016-2017.pdf', '5aec5-sp2hl-2016-2017.pdf', '', ''),
(58, 2017, 'SULAWESI UTARA', 659047, 'KPU  KABUPATEN BANGGAI KEPULAUAN', 'PEMERINTAH KABUPATEN BANGGAI KEPULAUAN', '952ec-nphd-banggai-kepulauan.pdf', 'd2214-nphd-add.pdf', '', '', 'b19d2-revisi-dipa-2016-2017.pdf', '', '', '14658-rekening-koran-rpl-2016-2017.pdf', '', '', '', '', ''),
(60, 2018, 'JAWA TIMUR', 654425, 'KPU PROVINSI JAWA TIMUR', 'PEMERINTAH PROVINSI JAWA TIMUR', '3cb41-nphd.pdf', '', '295da-register-hibah.pdf', '', 'f297b-2018-01-076.01-654425-05-031-2-01.pdf', '5d110-ijin-rpl.pdf', '182e1-ijin-rps.pdf', '1abad-rpl-sept-s.d-des-2017.pdf', 'c611a-rps-nop-des-2017.pdf', '38f23-sphl-17-18.pdf', 'e22ed-sp2hl-17-18.pdf', '', ''),
(61, 2017, 'BANTEN', 654432, 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N', 'd767a-nphd.pdf', '', '9adf0-register-hibah.pdf', '', '', '86568-persetujuan-pembukaan-rekening.pdf', '', '2692f-rek.-koran.pdf', '', 'dfe1e-sp2hl.pdf', '65ac3-sp2hl.pdf', '', '5b4ca-sp4hl.pdf'),
(62, 2016, 'BANTEN', 654432, 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N', '9829c-nphd-pilkada.pdf', '50441-nphd-hibah-addendum.pdf', 'a44e0-register-nphd.pdf', '6ae0f-register-nphd-hibah-addendum.pdf', '', '96d6a-srt-pembukaan-rekening-hibah.pdf', '', '', '', '985c5-sp2hl-i-desember-2016-.pdf', '48ef5-sp2hl-i-desember-2016-.pdf', '', ''),
(63, 2017, 'BANTEN', 654432, 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N', '', '', '', '', '', '', '', '', '', '2527e-sp2hl-ii-agustus-2017-.pdf', '6a81b-sp2hl-ii-agustus-2017-.pdf', '', ''),
(64, 2017, 'BANTEN', 654432, 'KPU  PROVINSI B A N T E N', 'PEMERINTAH PROVINSI B A N T E N', '', '', '', '', '', '', '', '', '', '', '10b5d-sp2hl-ii-agustus-2017-.pdf', '', '68a31-sp4hl.pdf'),
(65, 2018, 'Aceh', 670341, 'KPU KAB. PIDIE JAYA', 'PEMERINTAH KAB. PIDIE JAYA', 'bb5f9-nphd.pdf', '', 'eb6a1-surat-penerbitan-register-hibah.pdf', '', '12008-2017-01-076.01-670341-06-001-2-03.pdf', '6e3a1-rpl.pdf', '28b7c-rps.pdf', 'e92b5-12.-desember-2017.pdf', '7bde2-12.-desember-2017.pdf', '071af-sphl.pdf', 'e752f-spm-sp2hl.pdf', '', ''),
(66, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(67, 2017, 'KALIMANTAN UTARA', 658923, 'KPU KOTA TARAKAN', 'PEMERINTAH KOTA TARAKAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(68, 2016, 'KALIMANTAN SELATAN', 658710, 'KPU KABUPATEN TABALONG', 'PEMERINTAH KABUPATEN TABALONG', '4318b-nphd-kpu-kabupaten-tabalong.pdf', '', 'b819a-srt-register-hibah-2017.pdf', '', '73719-2017-01-076.01-658710-15-151-2-09.pdf', 'e0ef2-no-180-persetujuan-pembukaan-rek-rpl.pdf', '28c2a-no-200-persetujuan-pemb.-rek.-rps.pdf', '', '', '4d1af-sphl2017.pdf', '72000-sp2hl2017.pdf', '', ''),
(69, 2017, 'KALIMANTAN SELATAN', 658724, 'KPU KABUPATEN HULU SUNGAI SELATAN', 'PEMERINTAH KABUPATEN HULU SUNGAI SELATAN', '4f8ef-1.nphd-hss.pdf', '', '0cc2a-2.register-hibah.pdf', '', 'd84d4-dipa_revisi.pdf', 'd66b1-ijin-rpl.pdf', 'c48d8-ijin-rps.pdf', '91035-rek.koran_rpl_2017.pdf', '21280-rek.koran_rps_2017.pdf', 'c730e-sphl_2017.pdf', 'f3692-sp2hl_2017...pdf', '', ''),
(71, 2017, 'PAPUA BARAT', 654598, 'KPU  PROVINSI PAPUA BARAT', 'PEMERINTAH PROVINSI PAPUA BARAT', 'dc2d7-01.-nphd-2016.pdf', 'aec8d-01.-nphd-adendum-2017.pdf', 'da3b2-register-nphd.pdf', '', 'a8aa3-revisi-dipa-2016-2017.pdf', '', 'e0580-ijin-pembukaan-rekening-rps.pdf', '', '', '', '', '', ''),
(72, 2017, 'NUSA TENGGARA BARAT', 658180, 'KPU KABUPATEN LOMBOK BARAT', 'PEMERINTAH KABUPATEN LOMBOK BARAT', '6c4cd-nphd.pdf', '', 'df2dc-register.pdf', '', '3d9a0-2017-01-076.01-658180-23-038-2-07.pdf', '9c2d8-persetujuan-pembukaan-rek-dari-kppn.pdf', '', '19b4d-rekening-koran.pdf', '', '2de51-sphl.pdf', 'f3db2-sp2hl.pdf', '', ''),
(73, 2018, 'Jawa Barat', 657171, 'KPU KOTA BOGOR', 'PEMERINTAH KOTA BOGOR', 'b0fe5-nphd-awal-pilwalkot-2018.pdf', '7c4f8-nphd-pilwalkot-bogor-2018-adendum-pertama.pdf', 'ebb38-register-hibah-pilwalkot-2018.pdf', '', 'b9173-2018-01-076.01-657171-02-023-2-01.pdf', '97520-hibah-pilwalkot-persetujuan-pembukaan-rekening.pdf', '', 'f02c1-3.-rekening-koran-bjb-maret-2018.pdf', '', '', '', '', ''),
(74, 2018, '', 654535, 'KPU PROVINSI SULAWESI SELATAN', 'PEMERINTAH PROVINSI SULAWESI SELATAN', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(75, 2018, 'SULAWESI SELATAN', 659288, 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG', 'c1dc6-nphd..pdf', '', 'b4f7b-nomor-register-hibah.pdf', '', '9c1a8-dipa-revisi-hibah-2017.pdf', 'da074-persetujuan-pembukaan-rek-rpl-057.pdf', '1c7a4-persetujuan-pembukaan-rek.-057-rps.pdf', '', 'e5bb8-rek.-rps.pdf', 'dc0cd-sp2hl-dan-sphl-2017.pdf', 'c9b8a-sp2hl-dan-sphl-2017.pdf', '', ''),
(76, 2017, 'KEPULAUAN BANGKA BELITUNG', 654361, 'KPU  PROVINSI BANGKA BELITUNG', 'PEMERINTAH PROVINSI BANGKA BELITUNG', '79d06-nphd.pdf', '', '', '', '', '430fb-surat-pembukaan-rpl.pdf', '250c0-surat-pembukaan-rps-kab-kota.pdf', '5edb3-rekening-koran-rpl-bp-dari-juni-2016-sd-agustus-2017.pdf', '', '', '', '01d58-sp3hl-benar001.pdf', 'b18b3-sp4hl-benar001.pdf'),
(77, 2016, 'KEPULAUAN BANGKA BELITUNG', 654361, 'KPU  PROVINSI BANGKA BELITUNG', 'PEMERINTAH PROVINSI BANGKA BELITUNG', '91e26-nphd.pdf', '', '', '', '', '7112c-surat-pembukaan-rpl.pdf', 'b5ab7-surat-pembukaan-rps-kab-kota.pdf', 'c52a2-rekening-koran-rpl-bp-dari-juni-2016-sd-agustus-2017.pdf', '', '', '', '', ''),
(78, 2018, '', 656706, 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(79, 2016, '', 656706, 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU', '64d58-nphd-kpu-kota-bengkulu.pdf', '', '70ec0-persetujuan-djppr0001-kpu-kota-bengkulu.pdf', '', '', 'd5c87-persetujuan-pembukaan-rpl-oleh-kppn0001.pdf', '', '', '', '', '', '', ''),
(80, 2018, 'BENGKULU', 656706, 'KPU KOTA BENGKULU', 'PEMERINTAH KOTA BENGKULU', '666c3-nphd-kpu-kota-bengkulu.pdf', '', '23315-persetujuan-djppr0001-kpu-kota-bengkulu.pdf', '', '521b0-dipa_2018.pdf', '08a4d-persetujuan-pembukaan-rpl-oleh-kppn0001.pdf', '', '', '', '3b94b-sphl-lengkap-banget-2017.pdf', '125c0-sp2hl-lengkap-2017.pdf', '', ''),
(81, 2018, 'JAWA TIMUR', 658000, 'KPU KOTA MOJOKERTO', 'PEMERINTAH KOTA MOJOKERTO', 'd21f8-nphd-pilwali-2018.pdf', '1a712-nphd-adendum-pilwali-2018.pdf', '77dfb-02-surat-penerbitan-register.pdf', '', '', '59024-04-persetujuan-kppn-pembukaan-rpl.pdf', '', '2266c-04_april-2018.pdf', '', '', '', '', ''),
(82, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(83, 2018, 'JAWA TIMUR', 657722, 'KPU KABUPATEN JOMBANG', 'PEMERINTAH KABUPATEN JOMBANG', '', '', '1885b-surat-register-hibah-kanwil.pdf', '', '', '', '', '', '', '', '', '', ''),
(84, 2017, 'SULAWESI SELATN', 659288, 'KPU KABUPATEN PINRANG', 'PEMERINTAH KABUPATEN PINRANG', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(85, 2016, '', 654289, 'KPU  PROVINSI NANGROE ACEH DARUSSALAM', 'PEMERINTAH PROVINSI NANGROE ACEH DARUSSALAM', '8b23d-naskah-perjanjian-hibah-aceh.pdf', '', 'aab54-nomor-register.pdf', '', '', '4b722-surat-izin-pembukaan-rekening.pdf', '', '', '', '', '', '', ''),
(86, 2017, 'Provinsi Aceh', 655739, 'KPU  KABUPATEN ACEH SINGKIL', 'PEMERINTAH KABUPATEN ACEH SINGKIL', '3f92c-nphd_awal_.pdf', '9772f-nphd_adendum_i-ii.pdf', '6f50b-register_hibah.pdf', '', '37535-2017-01-076.01-655739-06-074-2-03.pdf', '16d4c-izin_rpl_074_bp.pdf', '9dcc6-izin_rps_074_bpp.pdf', '18686-bp_tahun_2017.pdf', 'ea17e-bpp_tahun_2017.pdf', 'addc2-sp2hl_dan_sphl_2017.pdf', '9ce9d-sp2hl_dan_sphl_2017.pdf', 'd5259-sp4hl_dan_sp3hl_2017.pdf', '0625b-sp4hl_dan_sp3hl_2017.pdf'),
(87, 2017, 'ACEH', 655654, 'KPU  KABUPATEN ACEH TENGAH', 'PEMERINTAH KABUPATEN ACEH TENGAH', 'db6ee-nphd.pdf', '', '', '', '', '', '', '', '', '', '', '', ''),
(88, 2017, '', 655792, 'KPU  KOTA BANDA ACEH', 'PEMERINTAH KOTA BANDA ACEH', '01a1e-nphd.pdf', '', '7db49-21.surat-penerbitan-no.-register.pdf', '', 'ef1a8-dipa-revisi-2017.pdf', 'bd1d3-surat-izin-pembukaan-rek.-rpl.pdf', '20f3e-surat-izin-pembukaan-rek.-rps-pilwalkot.pdf', 'cdb6c-rek.-hibah-rpl-final.pdf', 'ccb0b-rek-koran-rps.pdf', '8c2a7-sphl.pdf', '68659-sp2hl.pdf', '3b711-sp3hl.pdf', '0a1e3-sp4hl.pdf'),
(89, 2016, 'ACEH', 655750, 'KPU  KABUPATEN ACEH GAYO LUES', 'PEMERINTAH KABUPATEN ACEH GAYO LUES', '42280-nphd.pdf', '', '9e67c-register.pdf', '', '06715-revisi06.pdf', '04913-rpl.pdf', '195c5-rps.pdf', '89371-rekening_koran_hibah_2016.pdf', '47a52-rekening_koran_rps001-2016.pdf', '5ad21-sp2hl2016.pdf', '69592-sp2hl2016.pdf', '', ''),
(90, 2017, 'ACEH', 655750, 'KPU  KABUPATEN ACEH GAYO LUES', 'PEMERINTAH KABUPATEN ACEH GAYO LUES', '3ad98-nphd.pdf', '', '4d598-register.pdf', '', 'f37df-2017-01-076.01-655750-06-105-2-02.pdf', 'cc51e-rpl.pdf', '395dc-rps.pdf', 'c4810-02-oktober.pdf', '', '82ce7-pengesahansp2hl2017.pdf', '9c246-spmsp2hl2017.pdf', '', '301ac-pengesahansp4hl.pdf'),
(92, 2018, 'NUSA TENGGARA TIMUR', 658347, 'KPU KABUPATEN ENDE', 'PEMERINTAH KABUPATEN ENDE', '92ca2-nphd01.pdf', '', 'c770a-s-1112-no.-register-hibah-kpu-kab.-ende.pdf', '', 'bcd07-2018-01-076.01-658347-24-040-2-01.pdf', '25737-surat-persetujuan-pembukaan-rpl-dari-kppn-ende.pdf', '45e04-persetujuan-pembukaan-rps-dari-djp-ri.pdf', '9944e-rekening-koran-rpl.pdf', '4306d-rekening-koran-rps.pdf', '9d1d1-sphl-kpu-ende.pdf', '805eb-sp2hl-2017.pdf', '', ''),
(93, 2017, 'NUSA TENGGARA TIMUR', 658279, 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG', 'a9348-nphd-pilkada-kab-kupang-2018.pdf', '8a50b-nphd_addendum-kabkupang.pdf', '32cf8-penetpan_no_register_hibah.pdf', '', '40018-dipa_2017_revisi_05.pdf', '0140b-persetujuan_rek_rpl_bupati.pdf', '804b8-persetujuan_rek_rps_bupati.pdf', '3b000-rek_rpl_pilbup.pdf', 'ed643-rek_rps_pilbup.pdf', '6cbfb-sphl.pdf', '99337-sp2hl.pdf', '', ''),
(94, 2018, 'NUSA TENGGARA TIMUR', 658279, 'KPU KABUPATEN KUPANG', 'PEMERINTAH KABUPATEN KUPANG', '', 'e32f6-addendum_2-kabkupang.pdf', '', '', '', '', '', '', '', '', '', '', ''),
(95, 2017, 'KALIMANTAN BARAT', 658532, 'KPU KOTA PONTIANAK', 'PEMERINTAH KOTA PONTIANAK', '4384a-nphd-materai.pdf', '', 'c21a5-nomor-register-hibah-kpu-kota-pontianak.pdf', '', '52c6d-2017-01-076.01-658532-13-042-2-07.pdf', '2e6ce-surat-persetujuan-pembukaan-rpl-kota-ptk.pdf', '', '8e3e2-rpl-042-kpu-kota-ptk-21yux8ea-desember-2017.pdf', '', '0643d-sphl.pdf', '3e85b-sp2hl_ke-1.pdf', '', ''),
(96, 2018, 'JAWA TIMUR', 657832, 'KPU KABUPATEN PAMEKASAN', 'PEMERINTAH KABUPATEN PAMEKASAN', 'e7a63-nphd-scan.pdf', '', '90e3e-nomor-register.pdf', '', 'bb551-2018-01-076.01-657832-05-036-2-01.pdf', '282ac-pembukaan-rekening-rpl.pdf', '50c2c-pembukaan-rekeening-rps.pdf', '7e45a-rpl-2018.pdf', 'b7aab-rps-2018.pdf', '8feb1-sphl.pdf', '96bb3-sp2hl.pdf', '', ''),
(97, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(98, 2017, 'JAWA TIMUR', 657832, 'KPU KABUPATEN PAMEKASAN', 'PEMERINTAH KABUPATEN PAMEKASAN', '148ff-nphd-scan.pdf', '', '', '', 'b4edb-dipa.pdf', '48afc-pembukaan-rekening-rpl.pdf', '49b2b-pembukaan-rekeening-rps.pdf', 'd20e5-rpl.pdf', '9a14f-rps.pdf', '8b263-sphl.pdf', '19fa6-sp2hl.pdf', '', ''),
(99, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(100, 2017, 'Jawa Timur', 657778, 'KPU KABUPATEN MAGETAN', 'PEMERINTAH KABUPATEN MAGETAN', '2f860-nphd.pdf', '', '57341-penetapan-nomor-register-hibah.pdf', '', 'b79aa-2017-01-076.01-657778-05-033-2-04.pdf', 'e5aa3-rekening-penampungan-hibah.pdf', 'dee90-persetujuan-pembukaan-rekening-rpl-untuk-ps.pdf', 'e8496-rekening-koran-btn-rpl.pdf', 'b17d2-rekening-koran-hibah-rps.pdf', '', '3f06a-sp2hl_pendapatan_sept-des_2017.pdf', '', ''),
(101, 2018, 'Jawa Timur', 657778, 'KPU KABUPATEN MAGETAN', 'PEMERINTAH KABUPATEN MAGETAN', '5d5cc-nphd.pdf', '', '50d9f-penetapan-nomor-register-hibah.pdf', '', 'c57ac-2018-01-076.01-657778-05-033-2-02.pdf', '7dac4-rekening-penampungan-hibah.pdf', '8ddac-persetujuan-pembukaan-rekening-rpl-untuk-ps.pdf', 'dad75-rek-koran-gabungan-jan-juni-2018.pdf', '0f2fd-rek-koran-gabungan-jan-juni-2018-rps.pdf', '97490-sphl-gabungan-pendapatan_jan-mei-2018.pdf', 'c3ae2-sp2hl_gab_pendapatan_jan-mei-2018.pdf', '', ''),
(102, 2017, 'Kalimantan Tengah', 658660, 'KPU KABUPATEN BARITO TIMUR', 'PEMERINTAH KABUPATEN BARITO TIMUR', '8a9e4-nphd06122017.pdf', '4fec9-adendum02022018.pdf', '9c22f-ijin-register06122017.pdf', '', '', '', '', '5671e-persetujuan-pembukaan-rek06122017.pdf', '', '', '99703-sp2hl02022018.pdf', '', ''),
(103, 2017, 'Kalimantan Timur', 658820, 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(104, 2017, 'JAWA TIMUR', 657871, 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG', '58dd3-scan-20180212-152120-037.pdf', '', 'd16d5-scan-20180212-152212-038.pdf', '', 'db40d-revisi-3.pdf', '78905-scan-20180212-145533-027.pdf', '8b379-scan-20180212-145533-027.pdf', 'edba9-scan-20180106-141927-166.pdf', '655f4-scan-20180106-141920-165.pdf', '', 'c9e60-scan-20180212-152242-039.pdf', '', ''),
(105, 2017, '', 658820, 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', '9ef03-nphd2017.pdf', '', '14d08-registerhibah.pdf', '', 'd86ea-2017-01-076.01-658820-16-047-2-04.pdf', '', '', '', '', '', '', '', ''),
(106, 2017, '', 658820, 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', '', '', '', '', '', '14d44-ijinrpl.pdf', '', '', '', '', '', '', ''),
(107, 2018, 'JAWA TIMUR', 657693, 'KPU KABUPATEN BONDOWOSO', 'PEMERINTAH KABUPATEN BONDOWOSO', '2029d-nphd-2017.pdf', '', 'a5c47-register-hibah-2017.pdf', '', '0a60e-revisi-dipa-2017.pdf', '8ca8d-surat-ijin-rpl.pdf', '9c95f-surat-ijin-rps.pdf', '4bd69-rek.-rpl-okt-des-2017.pdf', '88693-rek.-rps-nop-des-2017.pdf', '', '', '', ''),
(108, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(109, 2018, '', 0, 'KPU  KABUPATEN ACEH BARAT', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(110, 2017, 'Jawa Timur', 0, 'KPU KOTA MALANG', '', '344cc-nphd2017.pdf', '0bbbc-adendum-nphd-1-2017.pdf', '', '', '', '39e2c-ijin-pembukaan-rekening022.pdf', '0efe7-ijin-pembukaan-rekening022.pdf', '', '', 'a3816-sphl-dan-sp2hl.pdf', '7266d-sp2hl.pdf', '', ''),
(111, 2016, '', 657998, 'KPU KOTA MALANG', 'PEMERINTAH KOTA MALANG', '', '', '6fc5f-penerbitan-nomor-register004.pdf', '', '', '', '', '', '', '', '', '', ''),
(112, 2016, '', 657998, 'KPU KOTA MALANG', 'PEMERINTAH KOTA MALANG', 'b79b2-nphd2017.pdf', '2fa90-adendum-nphd-1-2017.pdf', '63cd7-penerbitan-nomor-register004.pdf', '', '', '06012-ijin-pembukaan-rekening022.pdf', '75c35-ijin-pembukaan-rekening022.pdf', '67ba3-rek-koran-rpl.pdf', 'c241b-rek-koran-rpl-dan-rps.pdf', '96d5b-sphl-dan-sp2hl.pdf', '80c25-sp2hl.pdf', '', ''),
(113, 0, '', 0, '', '', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(114, 2016, 'JAMBI', 656382, 'KPU KABUPATEN KERINCI', 'PEMERINTAH KABUPATEN KERINCI', '44320-nphd.pdf', '', '0937f-register-hibah.pdf', '', '', '00726-izin-pembukaan-rekening-rpl.pdf', '3ace9-izin-pembukaan-rekening-rps.pdf', '7711b-rek-koran-rpl-1-6.pdf', '185c6-rek-koran-rps-1-6.pdf', 'b3eca-sphl.pdf', '2e75d-sp2hl.pdf', '', ''),
(115, 2018, ' JAMBI', 656396, 'KPU KABUPATEN MERANGIN', 'PEMERINTAH KABUPATEN MERANGIN', 'd9047-nphd-merangin.pdf', '', '3d604-register-1.pdf', '', '63aa4-diva_revisi2_2018_.pdf', '2e364-izin-rpl-merangin.pdf', 'b6b9f-izin-rps-djpbn.pdf', '', '', '8eb96-sphl18.pdf', 'b97ae-sp2hl18.pdf', '', ''),
(116, 2017, '', 658820, 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', '', '', '', '', '', '', '', 'ac7c7-rekkoran2017.pdf', '', '', '', '', ''),
(117, 2017, '', 658820, 'KPU KABUPATEN PENAJAM PASER UTARA', 'PEMERINTAH KABUPATEN PENAJAM PASER UTARA', '', '', '', '', '', '', '', '', '', '2b66d-sphl.pdf', 'd1ed1-sp2hldes2017.pdf', '', ''),
(118, 2018, 'KALIMANTAN TENGAH', 658600, 'KPU KABUPATEN BARITO UTARA', 'PEMERINTAH KABUPATEN BARITO UTARA', '95c27-nphd-sip.pdf', '', '86a3c-register-hibah.pdf', '', '15529-2018-01-076.01-658600-14-080-2-03.pdf', '36865-izin-rek-rpl.pdf', 'b0989-izin-rek-rps.pdf', 'de763-rekkoranrpl-juni-2018.pdf', '767ce-rekkoranrps-juni-2018.pdf', '5be39-sphl-sp2hl.pdf', 'b0247-sphl-sp2hlkedua.pdf', '', ''),
(119, 2018, '', 657871, 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG', '', '', '', '', '', '', '', '', '', '', '', '', ''),
(120, 2018, 'JAWA TIMUR', 657871, 'KPU KABUPATEN SAMPANG', 'PEMERINTAH KABUPATEN SAMPANG', 'b5fa0-scan-20180212-152120-037.pdf', '', 'a2b97-register-hibah-pilkada.pdf', '', '4d8af-revisi-1-2018.pdf', 'f18cd-ijin-pembukaan-rekening.pdf', 'c8db1-ijin-pembukaan-rekening.pdf', 'e3fc5-juni.pdf', '4e8f9-juni.pdf', '24426-scan-20180715-132750-003.pdf', '56d90-scan-20180715-132750-003.pdf', '', ''),
(121, 2017, 'JAWA TIMUR', 658021, 'KPU KOTA PROBOLINGGO', 'PEMERINTAH KOTA PROBOLINGGO', 'bfef0-nphd-dana-hibah-pilwali-th-2018.pdf', '', '3acbf-reg-kpu-kota-probolinggo.pdf', '', '', '85b2d-persetujuan-pembukaan-rekening.pdf', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `master_user`
--

CREATE TABLE `master_user` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `tipe` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `master_user`
--

INSERT INTO `master_user` (`id`, `username`, `password`, `tipe`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', 'admin'),
(2, 'sumut', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(3, 'riau', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(4, 'sumsel', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(5, 'lampung', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(6, 'jabar', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(7, 'jateng', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(8, 'jatim', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(9, 'bali', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(10, 'ntb', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(11, 'ntt', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(12, 'kalbar', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(13, 'kaltim', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(14, 'sulsel', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(15, 'sulteng', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(16, 'maluku', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(17, 'malut', 'e10adc3949ba59abbe56e057f20f883e', 'admin'),
(18, 'papua', 'e10adc3949ba59abbe56e057f20f883e', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data1`
--
ALTER TABLE `data1`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data2`
--
ALTER TABLE `data2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_2017`
--
ALTER TABLE `data_2017`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_2018`
--
ALTER TABLE `data_2018`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_opr`
--
ALTER TABLE `data_opr`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_prov`
--
ALTER TABLE `data_prov`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_satker`
--
ALTER TABLE `data_satker`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `kode_satker` (`kode_satker`);

--
-- Indexes for table `data_user`
--
ALTER TABLE `data_user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- Indexes for table `data_userz`
--
ALTER TABLE `data_userz`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dok`
--
ALTER TABLE `dok`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dok_hibah`
--
ALTER TABLE `dok_hibah`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `master_user`
--
ALTER TABLE `master_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `data1`
--
ALTER TABLE `data1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data2`
--
ALTER TABLE `data2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data_2017`
--
ALTER TABLE `data_2017`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `data_2018`
--
ALTER TABLE `data_2018`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `data_opr`
--
ALTER TABLE `data_opr`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `data_prov`
--
ALTER TABLE `data_prov`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `data_satker`
--
ALTER TABLE `data_satker`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=444;

--
-- AUTO_INCREMENT for table `data_user`
--
ALTER TABLE `data_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT for table `data_userz`
--
ALTER TABLE `data_userz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=174;

--
-- AUTO_INCREMENT for table `dok`
--
ALTER TABLE `dok`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `dok_hibah`
--
ALTER TABLE `dok_hibah`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `master_user`
--
ALTER TABLE `master_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
