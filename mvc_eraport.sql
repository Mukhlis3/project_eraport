-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 07:12 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mvc_eraport`
--

-- --------------------------------------------------------

--
-- Table structure for table `completed_murid`
--

CREATE TABLE `completed_murid` (
  `nisn` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `ttl` varchar(35) NOT NULL,
  `completed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `completed_murid`
--

INSERT INTO `completed_murid` (`nisn`, `nama_siswa`, `ttl`, `completed_at`) VALUES
(123, 'reni', '0000-00-00', '2024-06-10 04:04:37'),
(8463839, 'yusrol', 'juni, 09 juni 2005', '2024-06-10 04:10:56'),
(71151963, 'Mukhlis', 'Karawang, 28 Februari 2007', '2024-06-15 16:43:12'),
(100000001, 'Aditya Pratama', 'Jakarta, 10 Mei 2005', '2024-06-25 03:26:35'),
(100000002, 'Rina Kartika', 'Bekasi, 15 Juli 2006', '2024-06-20 02:43:02'),
(100000003, 'Budi Santoso', 'Karawang, 20 Agustus 2005', '2024-06-25 04:01:44'),
(100000004, 'Dewi Lestari', 'Jakarta, 2 Februari 2005', '2024-06-20 02:07:55'),
(100000005, 'Ahmad Fauzi', 'Bekasi, 8 Maret 2006', '2024-06-25 03:41:22'),
(100000011, 'Rizki Pratama', 'Bekasi, 24 September 2005', '2024-06-20 14:10:30');

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `nuptk` varchar(16) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama` text DEFAULT NULL,
  `jenisKelamin` varchar(10) NOT NULL,
  `mapel_id` varchar(25) NOT NULL,
  `alamat` text NOT NULL,
  `email` text NOT NULL,
  `noTelpon` varchar(13) NOT NULL,
  `statusAktif` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `guru`
--

INSERT INTO `guru` (`nuptk`, `nip`, `nama`, `jenisKelamin`, `mapel_id`, `alamat`, `email`, `noTelpon`, `statusAktif`) VALUES
('1100000000000001', '198501012021013456', 'Andi Wijaya', 'L', '1', 'Karawang', 'andi.wijaya@email.com', '081234567890', 'Aktif'),
('1100000000000002', '198502022021017891', 'Budi Santoso', 'L', '2', 'Karawang', 'budi.santoso@email.com', '081234567891', 'Aktif'),
('1100000000000003', '198503032021016789', 'Citra Dewi', 'P', '3', 'Karawang', 'citra.dewi@email.com', '081234567892', 'Aktif'),
('1100000000000004', '198504042021014567', 'Dian Pratama', 'L', '4', 'Karawang', 'dian.pratama@email.com', '081234567893', 'Aktif'),
('1100000000000005', '198505052021015678', 'Eka Putri', 'P', '5', 'Karawang', 'eka.putri@email.com', '081234567894', 'Aktif'),
('1100000000000006', '198506062021018901', 'Fahri Aulia', 'L', '1', 'Bekasi', 'fahri.aulia@email.com', '081234567895', 'Aktif'),
('1100000000000007', '198507072021011234', 'Gina Puspita', 'P', '2', 'Bekasi', 'gina.puspita@email.com', '081234567896', 'Aktif'),
('1100000000000008', '198508082021012345', 'Hadi Saputra', 'L', '3', 'Bekasi', 'hadi.saputra@email.com', '081234567897', 'Aktif'),
('1100000000000009', '198509092021016543', 'Indah Lestari', 'P', '4', 'Bekasi', 'indah.lestari@email.com', '081234567898', 'Aktif'),
('1100000000000010', '198510102021014321', 'Joko Susilo', 'L', '5', 'Bekasi', 'joko.susilo@email.com', '081234567899', 'Aktif'),
('1100000000000011', '198511112021019876', 'Kiki Amalia', 'P', '1', 'Bandung', 'kiki.amalia@email.com', '081234567810', 'Aktif'),
('1100000000000012', '198512122021013789', 'Lina Wahyuni', 'P', '2', 'Bandung', 'lina.wahyuni@email.com', '081234567811', 'Aktif'),
('1100000000000013', '198513132021018567', 'Mahmud Fauzi', 'L', '3', 'Cirebon', 'mahmud.fauzi@email.com', '081234567812', 'Aktif'),
('1100000000000014', '198514142021012345', 'Nina Susanti', 'P', '4', 'Cirebon', 'nina.susanti@email.com', '081234567813', 'Aktif'),
('1100000000000015', '198515152021019012', 'Oka Permana', 'L', '5', 'Depok', 'oka.permana@email.com', '081234567814', 'Aktif'),
('1100000000000016', '198516162021014321', 'Putu Wijaya', 'L', '1', 'Depok', 'putu.wijaya@email.com', '081234567815', 'Aktif'),
('1100000000000017', '198517172021017654', 'Qori Amalia', 'P', '2', 'Bogor', 'qori.amalia@email.com', '081234567816', 'Aktif'),
('1100000000000018', '198518182021013456', 'Rina Utami', 'P', '3', 'Bogor', 'rina.utami@email.com', '081234567817', 'Aktif'),
('1100000000000019', '198519192021014567', 'Slamet Riyadi', 'L', '4', 'Sukabumi', 'slamet.riyadi@email.com', '081234567818', 'Aktif'),
('1100000000000020', '198520202021018901', 'Tini Septiani', 'P', '5', 'Sukabumi', 'tini.septiani@email.com', '081234567819', 'Aktif');

-- --------------------------------------------------------

--
-- Table structure for table `incomplete_murid`
--

CREATE TABLE `incomplete_murid` (
  `nisn` int(11) NOT NULL,
  `nama_siswa` varchar(100) NOT NULL,
  `ttl` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `incomplete_murid`
--

INSERT INTO `incomplete_murid` (`nisn`, `nama_siswa`, `ttl`) VALUES
(123, 'Alvida', '0000-00-00'),
(100001234, 'MAMAN ALFARIZI', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `mapel_id` varchar(25) NOT NULL,
  `kode_mapel` varchar(40) NOT NULL,
  `nuptk` varchar(16) NOT NULL,
  `kelas_id` varchar(7) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `mapel`
--

INSERT INTO `mapel` (`mapel_id`, `kode_mapel`, `nuptk`, `kelas_id`) VALUES
('psy-01', 'Psikologi 1', '1100000000000001', 'X-PSY'),
('psy-02', 'Psikologi 2', '1100000000000002', 'XI-PSY'),
('psy-03', 'Psikologi 3', '1100000000000003', 'XI-PSY'),
('psy-04', 'Psikologi 4', '1100000000000004', 'XII-PSY'),
('psy-05', 'Psikologi 5', '1100000000000005', 'XII-PSY'),
('rpl-01', 'Pemrograman 1', '1100000000000016', 'X-RPL'),
('rpl-02', 'Pemrograman 2', '1100000000000017', 'XI-RPL'),
('rpl-03', 'Pemrograman 3', '1100000000000018', 'XI-RPL'),
('rpl-04', 'Pemrograman 4', '1100000000000019', 'XII-RPL'),
('rpl-05', 'Pemrograman 5', '1100000000000020', 'XII-RPL'),
('tbsm-01', 'Teknik Bisnis Sepeda Motor 1', '1100000000000006', 'X-TBSM'),
('tbsm-02', 'Teknik Bisnis Sepeda Motor 2', '1100000000000007', 'X-TBSM'),
('tbsm-03', 'Teknik Bisnis Sepeda Motor 3', '1100000000000008', 'XI-TBSM'),
('tbsm-04', 'Teknik Bisnis Sepeda Motor 4', '1100000000000009', 'XI-TBSM'),
('tbsm-05', 'Teknik Bisnis Sepeda Motor 5', '1100000000000010', 'XII-TBS'),
('tkj-01', 'Teknik Komputer dan Jaringan 1', '1100000000000011', 'X-TKJ'),
('tkj-02', 'Teknik Komputer dan Jaringan 2', '1100000000000012', 'XI-TKJ'),
('tkj-03', 'Teknik Komputer dan Jaringan 3', '1100000000000013', 'XI-TKJ'),
('tkj-04', 'Teknik Komputer dan Jaringan 4', '1100000000000014', 'XII-TKJ'),
('tkj-05', 'Teknik Komputer dan Jaringan 5', '1100000000000015', 'XII-TKJ'),
('tkro-01', 'Teknik Kendaraan Ringan Otomotif 1', '1100000000000001', 'X-TKRO'),
('tkro-02', 'Teknik Kendaraan Ringan Otomotif 2', '1100000000000002', 'X-TKRO'),
('tkro-03', 'Teknik Kendaraan Ringan Otomotif 3', '1100000000000003', 'XI-TKRO'),
('tkro-04', 'Teknik Kendaraan Ringan Otomotif 4', '1100000000000004', 'XI-TKRO'),
('tkro-05', 'Teknik Kendaraan Ringan Otomotif 5', '1100000000000005', 'XII-TKR');

-- --------------------------------------------------------

--
-- Table structure for table `murid`
--

CREATE TABLE `murid` (
  `nisn` varchar(10) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `ttl` varchar(38) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_dalam_keluarga` varchar(30) NOT NULL,
  `anak_ke` int(2) NOT NULL,
  `alamat_peserta_didik` text NOT NULL,
  `nomor_telp_rumah` varchar(20) NOT NULL,
  `sekolah_asal` varchar(30) NOT NULL,
  `diterima_disekolah_ini` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `alamat_orang_tua` text NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `alamat_wali` text NOT NULL,
  `pekerjaan_wali` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `murid`
--

INSERT INTO `murid` (`nisn`, `nama_siswa`, `ttl`, `jenis_kelamin`, `agama`, `status_dalam_keluarga`, `anak_ke`, `alamat_peserta_didik`, `nomor_telp_rumah`, `sekolah_asal`, `diterima_disekolah_ini`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`) VALUES
('100000006', 'Siti Aminah', 'Karawang, 12 April 2006', 'P', 'Islam', 'Anak Kandung', 3, 'Jl. Malioboro No. 1', '0274-192837', 'SDN 6 Karawang', 'SMK Lentera Bangsa', 'Bambang Amin', 'Rina Sari', 'Pedagang', 'Dokter', 'Jl. Malioboro No. 1', 'Bambang Amin', 'Jl. Malioboro No. 1', 'Pedagang'),
('100000007', 'Anisa Rahma', 'Jakarta, 14 Mei 2005', 'P', 'Islam', 'Anak Kandung', 1, 'Jl. Merdeka No. 10', '0341-876543', 'SDN 7 Jakarta', 'SMK Lentera Bangsa', 'Haryanto Rahma', 'Siti Aisyah', 'Wiraswasta', 'Ibu Rumah Tangga', 'Jl. Merdeka No. 10', 'Haryanto Rahma', 'Jl. Merdeka No. 10', 'Wiraswasta'),
('100000008', 'Andi Setiawan', 'Bekasi, 18 Juni 2005', 'L', 'Islam', 'Anak Kandung', 2, 'Jl. Sudirman No. 77', '0711-987321', 'SDN 8 Bekasi', 'SMK Lentera Bangsa', 'Setiawan Putra', 'Dina Lestari', 'Pegawai Negeri', 'Guru', 'Jl. Sudirman No. 77', 'Setiawan Putra', 'Jl. Sudirman No. 77', 'Pegawai Negeri'),
('100000009', 'Indah Permata', 'Karawang, 20 Juli 2005', 'P', 'Kristen', 'Anak Kandung', 3, 'Jl. Pemuda No. 99', '024-1284765', 'SDN 9 Karawang', 'SMK Lentera Bangsa', 'Surya Permata', 'Linda Sari', 'Pedagang', 'Dokter', 'Jl. Pemuda No. 99', 'Surya Permata', 'Jl. Pemuda No. 99', 'Pedagang'),
('100000010', 'Putri Ayu', 'Jakarta, 22 Agustus 2005', 'P', 'Hindu', 'Anak Kandung', 1, 'Jl. Diponegoro No. 22', '0361-546372', 'SDN 10 Jakarta', 'SMK Lentera Bangsa', 'Ketut Ayu', 'Ni Luh Ayu', 'Wiraswasta', 'Ibu Rumah Tangga', 'Jl. Diponegoro No. 22', 'Ketut Ayu', 'Jl. Diponegoro No. 22', 'Wiraswasta'),
('100000012', 'Fajar Nugroho', 'Karawang, 26 Oktober 2005', 'L', 'Kristen', 'Anak Kandung', 3, 'Jl. Sam Ratulangi No. 5', '0431-1283746', 'SDN 12 Karawang', 'SMK Lentera Bangsa', 'Nugroho Jaya', 'Dian Lestari', 'Pedagang', 'Dokter', 'Jl. Sam Ratulangi No. 5', 'Nugroho Jaya', 'Jl. Sam Ratulangi No. 5', 'Pedagang'),
('100000013', 'Siti Nurhaliza', 'Jakarta, 28 November 2005', 'P', 'Islam', 'Anak Kandung', 1, 'Jl. Gajah Mada No. 44', '0561-567823', 'SDN 13 Jakarta', 'SMK Lentera Bangsa', 'Ahmad Nurhaliza', 'Siti Aminah', 'Wiraswasta', 'Ibu Rumah Tangga', 'Jl. Gajah Mada No. 44', 'Ahmad Nurhaliza', 'Jl. Gajah Mada No. 44', 'Wiraswasta');

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `nilai_id` varchar(7) NOT NULL,
  `nisn` varchar(10) NOT NULL,
  `mapel_id` varchar(25) NOT NULL,
  `nilai_k` int(2) NOT NULL,
  `predikat_k` varchar(2) NOT NULL,
  `nilai_p` int(2) NOT NULL,
  `predikat_p` varchar(2) NOT NULL,
  `nilai_kkm` int(2) NOT NULL,
  `kelas_id` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nilai`
--

INSERT INTO `nilai` (`nilai_id`, `nisn`, `mapel_id`, `nilai_k`, `predikat_k`, `nilai_p`, `predikat_p`, `nilai_kkm`, `kelas_id`) VALUES
('1', '123', 'RPL', 60, 'C', 78, 'C', 75, '1'),
('10', '100000011', 'rpl-04', 84, 'A', 89, 'A', 75, 'XII-RPL'),
('11', '100000011', 'rpl-01', 73, 'B', 78, 'B', 75, 'X-RPL'),
('12', '100000013', 'tbsm-01', 65, 'C', 67, 'C', 75, 'XI-TBSM'),
('13', '100001234', 'tbsm-02', 88, 'A', 91, 'A', 75, 'XI-TBSM'),
('14', '100000011', 'tbsm-03', 70, 'C', 75, 'B', 75, 'XII-TBS'),
('15', '100000015', 'tbsm-04', 78, 'B', 80, 'B', 75, 'XII-TBS'),
('16', '100000016', 'tbsm-05', 92, 'A', 93, 'A', 75, 'X-TBSM'),
('17', '100000017', 'tkj-01', 66, 'C', 68, 'C', 75, 'X-TKJ'),
('18', '100000018', 'tkj-02', 81, 'A', 84, 'A', 75, 'XI-TKJ'),
('19', '100000011', 'tkj-03', 72, 'B', 77, 'B', 75, 'XII-TKJ'),
('2', '100000002', 'psy-02', 85, 'A', 90, 'A', 75, 'XI-PSY'),
('20', '100000020', 'tkj-04', 79, 'B', 83, 'A', 75, 'XII-TKJ'),
('21', '100000021', 'tkj-05', 90, 'A', 88, 'A', 75, 'X-TKJ'),
('22', '100000022', 'tkro-01', 68, 'C', 70, 'C', 75, 'XI-TKRO'),
('23', '100000023', 'tkro-02', 75, 'B', 78, 'B', 75, 'XI-TKRO'),
('24', '100000011', 'tkro-03', 80, 'A', 82, 'A', 75, 'XII-TKRO'),
('25', '100000025', 'tkro-04', 73, 'B', 76, 'B', 75, 'XII-TKR'),
('26', '100000026', 'tkro-05', 86, 'A', 89, 'A', 75, 'X-TKRO'),
('27', '100000027', 'psy-01', 78, 'B', 82, 'A', 75, 'X-PSY'),
('3', '100000003', 'psy-03', 66, 'C', 70, 'C', 75, 'XI-PSY'),
('4', '100000011', 'psy-04', 92, 'A', 88, 'A', 75, 'XII-PSY'),
('5', '100000006', 'psy-05', 74, 'B', 76, 'B', 75, 'XII-PSY'),
('6', '100000001', 'RPL', 68, 'C', 72, 'C', 75, 'X-RPL'),
('7', '100000008', 'rpl-01', 81, 'A', 85, 'A', 75, 'XI-RPL'),
('8', '100000009', 'rpl-02', 77, 'B', 79, 'B', 75, 'XI-RPL'),
('9', '100000010', 'rpl-03', 69, 'C', 71, 'C', 75, 'XII-RPL');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id_pengguna` varchar(12) NOT NULL,
  `sandi` varchar(128) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` enum('administrator','siswa','guru','walikelas','kepsek') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id_pengguna`, `sandi`, `nama`, `level`) VALUES
('111', '123', 'Maman', 'siswa'),
('123', '123', 'Mukhlis', 'administrator'),
('222', '123', 'Adam', 'guru'),
('333', '123', 'Edi', 'kepsek'),
('555', '123', 'Mouse', 'walikelas'),
('100000001', '123', 'Aditya Pratama', 'siswa'),
('100000002', '123', 'Rina Kartika', 'siswa'),
('100000003', '123', 'Budi Santoso', 'siswa'),
('100000005', '123', 'Ahmad Fauzi', 'siswa'),
('100000006', '123', 'Siti Aminah', 'siswa'),
('100000007', '123', 'Anisa Rahma', 'siswa'),
('100000008', '123', 'Andi Setiawan', 'siswa'),
('100000009', '123', 'Indah Permata', 'siswa'),
('100000010', '123', 'Putri Ayu', 'siswa'),
('100000011', '123', 'Rizki Pratama', 'siswa'),
('100000012', '123', 'Fajar Nugroho', 'siswa'),
('100000013', '123', 'Siti Nurhaliza', 'siswa'),
('100001234', '123', 'MAMAN ALFARIZI', 'siswa');

-- --------------------------------------------------------

--
-- Table structure for table `siswa_detail`
--

CREATE TABLE `siswa_detail` (
  `nisn` varchar(10) NOT NULL,
  `kelas_id` varchar(7) NOT NULL,
  `id_jurusan` int(2) NOT NULL,
  `nama_siswa` varchar(30) NOT NULL,
  `ttl` varchar(38) NOT NULL,
  `jenis_kelamin` varchar(1) NOT NULL,
  `agama` varchar(20) NOT NULL,
  `status_dalam_keluarga` varchar(30) NOT NULL,
  `anak_ke` varchar(2) NOT NULL,
  `alamat_peserta_didik` text NOT NULL,
  `nomor_telp_rumah` varchar(20) NOT NULL,
  `sekolah_asal` varchar(30) NOT NULL,
  `diterima_disekolah_ini` varchar(30) NOT NULL,
  `nama_ayah` varchar(30) NOT NULL,
  `nama_ibu` varchar(30) NOT NULL,
  `pekerjaan_ayah` varchar(20) NOT NULL,
  `pekerjaan_ibu` varchar(20) NOT NULL,
  `alamat_orang_tua` text NOT NULL,
  `nama_wali` varchar(30) NOT NULL,
  `alamat_wali` text NOT NULL,
  `pekerjaan_wali` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `siswa_detail`
--

INSERT INTO `siswa_detail` (`nisn`, `kelas_id`, `id_jurusan`, `nama_siswa`, `ttl`, `jenis_kelamin`, `agama`, `status_dalam_keluarga`, `anak_ke`, `alamat_peserta_didik`, `nomor_telp_rumah`, `sekolah_asal`, `diterima_disekolah_ini`, `nama_ayah`, `nama_ibu`, `pekerjaan_ayah`, `pekerjaan_ibu`, `alamat_orang_tua`, `nama_wali`, `alamat_wali`, `pekerjaan_wali`) VALUES
('0071151963', '1', 1, 'AAH SITI ROBIAH', 'Karawang, 28 Februari 2007', 'P', 'Islam', 'Anak Kandung', '1', 'Dusun Krajan I-B Rt 004 Rw 002 Desa Kutagandok Kec. Kutawaluya', '-', 'SMPN 1 KUTAWALUYA', 'SMK Lentera Bangsa', 'Ade', 'Asih Surianingsih', 'Belum ada', 'Belum ada', 'Dusun Krajan I-B Rt 004 Rw 002 Desa Kutagandok Kec. Kutawaluya', 'Ade', 'Dusun Krajan I-B Rt 004 Rw 002 Desa Kutagandok Kec. Kutawaluya', 'Karyawan'),
('0071151982', '1', 2, 'RIVALDI', 'Karawang, 09 november 2005', 'L', 'Islam', 'Anak Kandung', '2', 'Karawang ', '-', 'SMPN 1 Karawang ', 'SMK Lentera Bangsa', 'Udin', 'Sri Sudarmi', 'Belum Ada', 'Belum Ada', 'Karawang', 'Udin', 'Karawang', 'Belum Ada'),
('0071151988', '1', 4, 'INDAH LESTARI', 'Karawang, 28 Februari 2008', 'P', 'Islam', 'Anak Kandung', '1', 'Dusun Krajan I-B Rt 004 Rw 002 Desa Kutagandok Kec. Kutawaluya', '-', 'SMPN 1 PEDES', 'SMK Lentera Bangsa', 'Ade', 'Wiwin Arseti', 'Belum ada', 'Belum ada', 'Dusun Krajan I-B Rt 004 Rw 002 Desa Kutagandok Kec. Kutawaluya', 'Imron', 'Dusun Krajan I-B Rt 004 Rw 002 Desa Kutagandok Kec. Kutawaluya', 'Karyawan'),
('1234567898', '1', 3, 'RENI', 'bekasi 03-03-2004', 'P', 'agama', 'Anak kandung', '2', 'rengasdengklok, karawang', '081283478908', 'Smpn 1 rengas dengklok', 'Smk lentera bangsa', 'damid', 'sarti', 'buruh', 'ibu rumah tangga', 'karawang', 'jamal', 'karawang', 'pegawai swasta');

-- --------------------------------------------------------

--
-- Table structure for table `walikelas`
--

CREATE TABLE `walikelas` (
  `wali_kelas_id` int(11) NOT NULL,
  `nuptk` varchar(50) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `kelas_id` int(11) NOT NULL,
  `id_jurusan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `walikelas`
--

INSERT INTO `walikelas` (`wali_kelas_id`, `nuptk`, `nama`, `kelas_id`, `id_jurusan`) VALUES
(2, '54542', 'MAMAN', 0, 6654),
(12311, '1232123445', 'MUKHLIS', 0, 6654);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `completed_murid`
--
ALTER TABLE `completed_murid`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`nuptk`),
  ADD KEY `mapel_id` (`mapel_id`),
  ADD KEY `nuptk` (`nuptk`);

--
-- Indexes for table `incomplete_murid`
--
ALTER TABLE `incomplete_murid`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`mapel_id`),
  ADD KEY `nuptk` (`nuptk`),
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `murid`
--
ALTER TABLE `murid`
  ADD PRIMARY KEY (`nisn`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`nilai_id`),
  ADD KEY `mapel_id` (`mapel_id`) USING BTREE,
  ADD KEY `kelas_id` (`kelas_id`);

--
-- Indexes for table `walikelas`
--
ALTER TABLE `walikelas`
  ADD PRIMARY KEY (`wali_kelas_id`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mapel`
--
ALTER TABLE `mapel`
  ADD CONSTRAINT `mapel` FOREIGN KEY (`nuptk`) REFERENCES `guru` (`nuptk`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
