-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3309
-- Waktu pembuatan: 12 Des 2023 pada 14.58
-- Versi server: 11.3.0-MariaDB-log
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kip`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `alternatif`
--

CREATE TABLE `alternatif` (
  `id_alternatif` int(11) NOT NULL,
  `nm_alternatif` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `alternatif`
--

INSERT INTO `alternatif` (`id_alternatif`, `nm_alternatif`) VALUES
(17, 'Tahira'),
(18, 'Zidan'),
(19, 'Reva');

-- --------------------------------------------------------

--
-- Struktur dari tabel `bobot`
--

CREATE TABLE `bobot` (
  `id_bobot` int(11) NOT NULL,
  `id_kriteria` int(11) DEFAULT NULL,
  `value` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `bobot`
--

INSERT INTO `bobot` (`id_bobot`, `id_kriteria`, `value`) VALUES
(1, 1, 0.52),
(2, 4, 0.27),
(3, 2, 0.15),
(4, 3, 0.06);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kriteria`
--

CREATE TABLE `kriteria` (
  `id_kriteria` int(11) NOT NULL,
  `nm_kriteria` varchar(50) DEFAULT NULL,
  `Tipe` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kriteria`
--

INSERT INTO `kriteria` (`id_kriteria`, `nm_kriteria`, `Tipe`) VALUES
(1, 'Pengahasilan Orang Tua', 'cost'),
(2, 'Status Rumah ', 'cost'),
(3, 'Jumlah Tanggungan orang Tua', 'benefit'),
(4, 'Jumlah Kendaraan yang dimiliki', 'cost');

-- --------------------------------------------------------

--
-- Struktur dari tabel `matrixkeputusan`
--

CREATE TABLE `matrixkeputusan` (
  `id_matrix` int(11) NOT NULL,
  `id_alternatif` int(11) DEFAULT NULL,
  `id_bobot` int(11) DEFAULT NULL,
  `id_skala` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `matrixkeputusan`
--

INSERT INTO `matrixkeputusan` (`id_matrix`, `id_alternatif`, `id_bobot`, `id_skala`) VALUES
(86, 17, 1, 2),
(87, 17, 2, 1),
(88, 17, 3, 3),
(89, 17, 4, 3),
(90, 18, 1, 3),
(91, 18, 2, 3),
(92, 18, 3, 3),
(93, 18, 4, 3),
(94, 19, 1, 1),
(95, 19, 2, 1),
(96, 19, 3, 1),
(97, 19, 4, 1);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `multimoora_1`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `multimoora_1` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`pra` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `multimoora_2`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `multimoora_2` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`pra` double
,`normalisasi` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `multimoora_3`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `multimoora_3` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`pra` double
,`normalisasi` double
,`normalisasibobot` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `multimoora_4`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `multimoora_4` (
`id_alternatif` int(11)
,`hasil` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `nilaimax`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `nilaimax` (
`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`maksinum` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `normalisasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `normalisasi` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`normalisasi` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `perangkingan`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `perangkingan` (
`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`rangking` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `prarangking`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `prarangking` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`normalisasi` double
,`prarangking` double
);

-- --------------------------------------------------------

--
-- Struktur dari tabel `skala`
--

CREATE TABLE `skala` (
  `id_skala` int(11) NOT NULL,
  `value` varchar(50) DEFAULT NULL,
  `keterangan` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `skala`
--

INSERT INTO `skala` (`id_skala`, `value`, `keterangan`) VALUES
(1, '1', 'Tidak Layak '),
(2, '2', 'Layak '),
(3, '3', 'Sangat Layak ');

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `topsis_maxmin`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `topsis_maxmin` (
`id_matrix` int(11)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`maximum` double
,`minimum` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `topsis_nilaiv`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `topsis_nilaiv` (
`id_alternatif` int(11)
,`dplus` double
,`dmin` double
,`nilaiv` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `topsis_normalisasi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `topsis_normalisasi` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`normalisasi` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `topsis_pembagi`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `topsis_pembagi` (
`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`bagi` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `topsis_sipsin`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `topsis_sipsin` (
`id_alternatif` int(11)
,`dplus` double
,`dmin` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `topsis_terbobot`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `topsis_terbobot` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`normalisasi` double
,`terbobot` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `vmatrixpenilaian`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `vmatrixpenilaian` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `wp_jumbobot`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `wp_jumbobot` (
`jumlah` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `wp_nilais`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `wp_nilais` (
`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`nilaiS` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `wp_nilaiv`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `wp_nilaiv` (
`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`nilaiV` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `wp_normalisasiterbobot`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `wp_normalisasiterbobot` (
`id_bobot` int(11)
,`id_kriteria` int(11)
,`value` float
,`jumlah` double
,`normalisasi_w` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `wp_pangkat`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `wp_pangkat` (
`id_matrix` int(11)
,`id_alternatif` int(11)
,`nm_alternatif` varchar(50)
,`id_kriteria` int(11)
,`nm_kriteria` varchar(50)
,`Tipe` varchar(50)
,`id_bobot` int(11)
,`bobot` float
,`value` varchar(50)
,`normalisasi_w` double
,`pangkat` double
);

-- --------------------------------------------------------

--
-- Stand-in struktur untuk tampilan `wp_sums`
-- (Lihat di bawah untuk tampilan aktual)
--
CREATE TABLE `wp_sums` (
`jum` double
);

-- --------------------------------------------------------

--
-- Struktur untuk view `multimoora_1`
--
DROP TABLE IF EXISTS `multimoora_1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `multimoora_1`  AS SELECT `vmatrixpenilaian`.`id_matrix` AS `id_matrix`, `vmatrixpenilaian`.`id_alternatif` AS `id_alternatif`, `vmatrixpenilaian`.`nm_alternatif` AS `nm_alternatif`, `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, `vmatrixpenilaian`.`Tipe` AS `Tipe`, `vmatrixpenilaian`.`id_bobot` AS `id_bobot`, `vmatrixpenilaian`.`bobot` AS `bobot`, `vmatrixpenilaian`.`value` AS `value`, sqrt(sum(pow(`vmatrixpenilaian`.`value`,2))) AS `pra` FROM `vmatrixpenilaian` GROUP BY `vmatrixpenilaian`.`id_kriteria` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `multimoora_2`
--
DROP TABLE IF EXISTS `multimoora_2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `multimoora_2`  AS SELECT `vmatrixpenilaian`.`id_matrix` AS `id_matrix`, `vmatrixpenilaian`.`id_alternatif` AS `id_alternatif`, `vmatrixpenilaian`.`nm_alternatif` AS `nm_alternatif`, `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, `vmatrixpenilaian`.`Tipe` AS `Tipe`, `vmatrixpenilaian`.`id_bobot` AS `id_bobot`, `vmatrixpenilaian`.`bobot` AS `bobot`, `vmatrixpenilaian`.`value` AS `value`, `multimoora_1`.`pra` AS `pra`, `vmatrixpenilaian`.`value`/ `multimoora_1`.`pra` AS `normalisasi` FROM (`vmatrixpenilaian` join `multimoora_1`) WHERE `multimoora_1`.`id_kriteria` = `vmatrixpenilaian`.`id_kriteria` GROUP BY `vmatrixpenilaian`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `multimoora_3`
--
DROP TABLE IF EXISTS `multimoora_3`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `multimoora_3`  AS SELECT `multimoora_2`.`id_matrix` AS `id_matrix`, `multimoora_2`.`id_alternatif` AS `id_alternatif`, `multimoora_2`.`nm_alternatif` AS `nm_alternatif`, `multimoora_2`.`id_kriteria` AS `id_kriteria`, `multimoora_2`.`nm_kriteria` AS `nm_kriteria`, `multimoora_2`.`Tipe` AS `Tipe`, `multimoora_2`.`id_bobot` AS `id_bobot`, `multimoora_2`.`bobot` AS `bobot`, `multimoora_2`.`value` AS `value`, `multimoora_2`.`pra` AS `pra`, `multimoora_2`.`normalisasi` AS `normalisasi`, `multimoora_2`.`normalisasi`* `multimoora_2`.`value` AS `normalisasibobot` FROM `multimoora_2` GROUP BY `multimoora_2`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `multimoora_4`
--
DROP TABLE IF EXISTS `multimoora_4`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `multimoora_4`  AS SELECT `multimoora_3`.`id_alternatif` AS `id_alternatif`, sum(`multimoora_3`.`normalisasibobot`) AS `hasil` FROM `multimoora_3` GROUP BY `multimoora_3`.`id_alternatif` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `nilaimax`
--
DROP TABLE IF EXISTS `nilaimax`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `nilaimax`  AS SELECT `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, max(`vmatrixpenilaian`.`value`) AS `maksinum` FROM `vmatrixpenilaian` GROUP BY `vmatrixpenilaian`.`id_kriteria` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `normalisasi`
--
DROP TABLE IF EXISTS `normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `normalisasi`  AS SELECT `vmatrixpenilaian`.`id_matrix` AS `id_matrix`, `vmatrixpenilaian`.`id_alternatif` AS `id_alternatif`, `vmatrixpenilaian`.`nm_alternatif` AS `nm_alternatif`, `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, `vmatrixpenilaian`.`Tipe` AS `Tipe`, `vmatrixpenilaian`.`id_bobot` AS `id_bobot`, `vmatrixpenilaian`.`bobot` AS `bobot`, `vmatrixpenilaian`.`value` AS `value`, `vmatrixpenilaian`.`value`/ `nilaimax`.`maksinum` AS `normalisasi` FROM (`vmatrixpenilaian` join `nilaimax`) WHERE `nilaimax`.`id_kriteria` = `vmatrixpenilaian`.`id_kriteria` GROUP BY `vmatrixpenilaian`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `perangkingan`
--
DROP TABLE IF EXISTS `perangkingan`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `perangkingan`  AS SELECT `prarangking`.`id_alternatif` AS `id_alternatif`, `prarangking`.`nm_alternatif` AS `nm_alternatif`, sum(`prarangking`.`prarangking`) AS `rangking` FROM `prarangking` GROUP BY `prarangking`.`id_alternatif` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `prarangking`
--
DROP TABLE IF EXISTS `prarangking`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `prarangking`  AS SELECT `normalisasi`.`id_matrix` AS `id_matrix`, `normalisasi`.`id_alternatif` AS `id_alternatif`, `normalisasi`.`nm_alternatif` AS `nm_alternatif`, `normalisasi`.`id_kriteria` AS `id_kriteria`, `normalisasi`.`nm_kriteria` AS `nm_kriteria`, `normalisasi`.`Tipe` AS `Tipe`, `normalisasi`.`id_bobot` AS `id_bobot`, `normalisasi`.`bobot` AS `bobot`, `normalisasi`.`value` AS `value`, `normalisasi`.`normalisasi` AS `normalisasi`, `normalisasi`.`bobot`* `normalisasi`.`normalisasi` AS `prarangking` FROM `normalisasi` GROUP BY `normalisasi`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `topsis_maxmin`
--
DROP TABLE IF EXISTS `topsis_maxmin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `topsis_maxmin`  AS SELECT `topsis_terbobot`.`id_matrix` AS `id_matrix`, `topsis_terbobot`.`id_kriteria` AS `id_kriteria`, `topsis_terbobot`.`nm_kriteria` AS `nm_kriteria`, max(`topsis_terbobot`.`terbobot`) AS `maximum`, min(`topsis_terbobot`.`terbobot`) AS `minimum` FROM `topsis_terbobot` GROUP BY `topsis_terbobot`.`id_kriteria` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `topsis_nilaiv`
--
DROP TABLE IF EXISTS `topsis_nilaiv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `topsis_nilaiv`  AS SELECT `topsis_sipsin`.`id_alternatif` AS `id_alternatif`, `topsis_sipsin`.`dplus` AS `dplus`, `topsis_sipsin`.`dmin` AS `dmin`, `topsis_sipsin`.`dmin`/ (`topsis_sipsin`.`dplus` + `topsis_sipsin`.`dmin`) AS `nilaiv` FROM `topsis_sipsin` GROUP BY `topsis_sipsin`.`id_alternatif` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `topsis_normalisasi`
--
DROP TABLE IF EXISTS `topsis_normalisasi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `topsis_normalisasi`  AS SELECT `vmatrixpenilaian`.`id_matrix` AS `id_matrix`, `vmatrixpenilaian`.`id_alternatif` AS `id_alternatif`, `vmatrixpenilaian`.`nm_alternatif` AS `nm_alternatif`, `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, `vmatrixpenilaian`.`Tipe` AS `Tipe`, `vmatrixpenilaian`.`id_bobot` AS `id_bobot`, `vmatrixpenilaian`.`bobot` AS `bobot`, `vmatrixpenilaian`.`value` AS `value`, `vmatrixpenilaian`.`value`/ `nilaimax`.`maksinum` AS `normalisasi` FROM (`vmatrixpenilaian` join `nilaimax`) WHERE `nilaimax`.`id_kriteria` = `vmatrixpenilaian`.`id_kriteria` GROUP BY `vmatrixpenilaian`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `topsis_pembagi`
--
DROP TABLE IF EXISTS `topsis_pembagi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `topsis_pembagi`  AS SELECT `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, sqrt(sum(pow(`vmatrixpenilaian`.`value`,2))) AS `bagi` FROM `vmatrixpenilaian` GROUP BY `vmatrixpenilaian`.`id_kriteria` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `topsis_sipsin`
--
DROP TABLE IF EXISTS `topsis_sipsin`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `topsis_sipsin`  AS SELECT `topsis_terbobot`.`id_alternatif` AS `id_alternatif`, sqrt(sum(pow(`topsis_maxmin`.`maximum` - `topsis_terbobot`.`terbobot`,2))) AS `dplus`, sqrt(sum(pow(`topsis_maxmin`.`minimum` - `topsis_terbobot`.`terbobot`,2))) AS `dmin` FROM (`topsis_terbobot` join `topsis_maxmin`) WHERE `topsis_terbobot`.`id_kriteria` = `topsis_maxmin`.`id_kriteria` GROUP BY `topsis_terbobot`.`id_alternatif` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `topsis_terbobot`
--
DROP TABLE IF EXISTS `topsis_terbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`` SQL SECURITY DEFINER VIEW `topsis_terbobot`  AS SELECT `topsis_normalisasi`.`id_matrix` AS `id_matrix`, `topsis_normalisasi`.`id_alternatif` AS `id_alternatif`, `topsis_normalisasi`.`nm_alternatif` AS `nm_alternatif`, `topsis_normalisasi`.`id_kriteria` AS `id_kriteria`, `topsis_normalisasi`.`nm_kriteria` AS `nm_kriteria`, `topsis_normalisasi`.`Tipe` AS `Tipe`, `topsis_normalisasi`.`id_bobot` AS `id_bobot`, `topsis_normalisasi`.`bobot` AS `bobot`, `topsis_normalisasi`.`value` AS `value`, `topsis_normalisasi`.`normalisasi` AS `normalisasi`, `bobot`.`value`* `topsis_normalisasi`.`normalisasi` AS `terbobot` FROM (`topsis_normalisasi` join `bobot`) WHERE `bobot`.`id_kriteria` = `topsis_normalisasi`.`id_kriteria` GROUP BY `topsis_normalisasi`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `vmatrixpenilaian`
--
DROP TABLE IF EXISTS `vmatrixpenilaian`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `vmatrixpenilaian`  AS SELECT `matrixkeputusan`.`id_matrix` AS `id_matrix`, `alternatif`.`id_alternatif` AS `id_alternatif`, `alternatif`.`nm_alternatif` AS `nm_alternatif`, `kriteria`.`id_kriteria` AS `id_kriteria`, `kriteria`.`nm_kriteria` AS `nm_kriteria`, `kriteria`.`Tipe` AS `Tipe`, `bobot`.`id_bobot` AS `id_bobot`, `bobot`.`value` AS `bobot`, `skala`.`value` AS `value` FROM ((((`alternatif` join `bobot`) join `kriteria`) join `matrixkeputusan`) join `skala`) WHERE `matrixkeputusan`.`id_alternatif` = `alternatif`.`id_alternatif` AND `matrixkeputusan`.`id_bobot` = `bobot`.`id_bobot` AND `kriteria`.`id_kriteria` = `bobot`.`id_kriteria` AND `skala`.`id_skala` = `matrixkeputusan`.`id_skala` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `wp_jumbobot`
--
DROP TABLE IF EXISTS `wp_jumbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_jumbobot`  AS SELECT sum(`bobot`.`value`) AS `jumlah` FROM `bobot` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `wp_nilais`
--
DROP TABLE IF EXISTS `wp_nilais`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilais`  AS SELECT `wp_pangkat`.`id_alternatif` AS `id_alternatif`, `wp_pangkat`.`nm_alternatif` AS `nm_alternatif`, exp(sum(log(`wp_pangkat`.`pangkat`))) AS `nilaiS` FROM `wp_pangkat` GROUP BY `wp_pangkat`.`id_alternatif` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `wp_nilaiv`
--
DROP TABLE IF EXISTS `wp_nilaiv`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_nilaiv`  AS SELECT `wp_nilais`.`id_alternatif` AS `id_alternatif`, `wp_nilais`.`nm_alternatif` AS `nm_alternatif`, `wp_nilais`.`nilaiS`/ `wp_sums`.`jum` AS `nilaiV` FROM (`wp_nilais` join `wp_sums`) ORDER BY `wp_nilais`.`nilaiS`/ `wp_sums`.`jum` DESC ;

-- --------------------------------------------------------

--
-- Struktur untuk view `wp_normalisasiterbobot`
--
DROP TABLE IF EXISTS `wp_normalisasiterbobot`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_normalisasiterbobot`  AS SELECT `bobot`.`id_bobot` AS `id_bobot`, `bobot`.`id_kriteria` AS `id_kriteria`, `bobot`.`value` AS `value`, `wp_jumbobot`.`jumlah` AS `jumlah`, `bobot`.`value`/ `wp_jumbobot`.`jumlah` AS `normalisasi_w` FROM (`bobot` join `wp_jumbobot`) ;

-- --------------------------------------------------------

--
-- Struktur untuk view `wp_pangkat`
--
DROP TABLE IF EXISTS `wp_pangkat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_pangkat`  AS SELECT `vmatrixpenilaian`.`id_matrix` AS `id_matrix`, `vmatrixpenilaian`.`id_alternatif` AS `id_alternatif`, `vmatrixpenilaian`.`nm_alternatif` AS `nm_alternatif`, `vmatrixpenilaian`.`id_kriteria` AS `id_kriteria`, `vmatrixpenilaian`.`nm_kriteria` AS `nm_kriteria`, `vmatrixpenilaian`.`Tipe` AS `Tipe`, `vmatrixpenilaian`.`id_bobot` AS `id_bobot`, `vmatrixpenilaian`.`bobot` AS `bobot`, `vmatrixpenilaian`.`value` AS `value`, `wp_normalisasiterbobot`.`normalisasi_w` AS `normalisasi_w`, pow(`vmatrixpenilaian`.`value`,`wp_normalisasiterbobot`.`normalisasi_w`) AS `pangkat` FROM (`vmatrixpenilaian` join `wp_normalisasiterbobot`) WHERE `wp_normalisasiterbobot`.`id_kriteria` = `vmatrixpenilaian`.`id_kriteria` GROUP BY `vmatrixpenilaian`.`id_matrix` ;

-- --------------------------------------------------------

--
-- Struktur untuk view `wp_sums`
--
DROP TABLE IF EXISTS `wp_sums`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `wp_sums`  AS SELECT sum(`wp_nilais`.`nilaiS`) AS `jum` FROM `wp_nilais` ;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  ADD PRIMARY KEY (`id_alternatif`);

--
-- Indeks untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD PRIMARY KEY (`id_bobot`),
  ADD KEY `id_kriteria` (`id_kriteria`);

--
-- Indeks untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `matrixkeputusan`
--
ALTER TABLE `matrixkeputusan`
  ADD PRIMARY KEY (`id_matrix`),
  ADD KEY `FK_matrixkeputusan_alternatif` (`id_alternatif`),
  ADD KEY `FK_matrixkeputusan_bobot` (`id_bobot`),
  ADD KEY `FK_matrixkeputusan_skala` (`id_skala`);

--
-- Indeks untuk tabel `skala`
--
ALTER TABLE `skala`
  ADD PRIMARY KEY (`id_skala`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `alternatif`
--
ALTER TABLE `alternatif`
  MODIFY `id_alternatif` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT untuk tabel `bobot`
--
ALTER TABLE `bobot`
  MODIFY `id_bobot` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT untuk tabel `kriteria`
--
ALTER TABLE `kriteria`
  MODIFY `id_kriteria` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT untuk tabel `matrixkeputusan`
--
ALTER TABLE `matrixkeputusan`
  MODIFY `id_matrix` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT untuk tabel `skala`
--
ALTER TABLE `skala`
  MODIFY `id_skala` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `bobot`
--
ALTER TABLE `bobot`
  ADD CONSTRAINT `FK_bobot_kriteria` FOREIGN KEY (`id_kriteria`) REFERENCES `kriteria` (`id_kriteria`);

--
-- Ketidakleluasaan untuk tabel `matrixkeputusan`
--
ALTER TABLE `matrixkeputusan`
  ADD CONSTRAINT `FK_matrixkeputusan_alternatif` FOREIGN KEY (`id_alternatif`) REFERENCES `alternatif` (`id_alternatif`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_matrixkeputusan_bobot` FOREIGN KEY (`id_bobot`) REFERENCES `bobot` (`id_bobot`) ON DELETE CASCADE,
  ADD CONSTRAINT `FK_matrixkeputusan_skala` FOREIGN KEY (`id_skala`) REFERENCES `skala` (`id_skala`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
