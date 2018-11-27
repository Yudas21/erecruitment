-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.1.36-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win32
-- HeidiSQL Version:             9.5.0.5196
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table erecruitment.bank_soal
CREATE TABLE IF NOT EXISTS `bank_soal` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_kategori` tinyint(3) unsigned NOT NULL,
  `pertanyaan` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `bobot_soal` enum('mudah','sedang','sulit') COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `bank_soal_id_kategori_foreign` (`id_kategori`),
  CONSTRAINT `bank_soal_id_kategori_foreign` FOREIGN KEY (`id_kategori`) REFERENCES `kategori_soal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.bank_soal: ~0 rows (approximately)
/*!40000 ALTER TABLE `bank_soal` DISABLE KEYS */;
/*!40000 ALTER TABLE `bank_soal` ENABLE KEYS */;

-- Dumping structure for table erecruitment.calon_karyawan
CREATE TABLE IF NOT EXISTS `calon_karyawan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_pelamar` int(10) unsigned NOT NULL,
  `id_lowongan` int(10) unsigned NOT NULL,
  `status` enum('Proses','Lulus','Tidak Lulus') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Proses',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `calon_karyawan_id_lowongan_foreign` (`id_lowongan`),
  KEY `calon_karyawan_id_pelamar_foreign` (`id_pelamar`),
  CONSTRAINT `calon_karyawan_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE,
  CONSTRAINT `calon_karyawan_id_pelamar_foreign` FOREIGN KEY (`id_pelamar`) REFERENCES `pelamar` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.calon_karyawan: ~0 rows (approximately)
/*!40000 ALTER TABLE `calon_karyawan` DISABLE KEYS */;
/*!40000 ALTER TABLE `calon_karyawan` ENABLE KEYS */;

-- Dumping structure for table erecruitment.divisi
CREATE TABLE IF NOT EXISTS `divisi` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nama_divisi` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent` tinyint(3) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.divisi: ~0 rows (approximately)
/*!40000 ALTER TABLE `divisi` DISABLE KEYS */;
/*!40000 ALTER TABLE `divisi` ENABLE KEYS */;

-- Dumping structure for table erecruitment.jadwal_test
CREATE TABLE IF NOT EXISTS `jadwal_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lowongan` int(10) unsigned NOT NULL,
  `tgl_test` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jadwal_test_id_lowongan_foreign` (`id_lowongan`),
  CONSTRAINT `jadwal_test_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.jadwal_test: ~0 rows (approximately)
/*!40000 ALTER TABLE `jadwal_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `jadwal_test` ENABLE KEYS */;

-- Dumping structure for table erecruitment.kategori_soal
CREATE TABLE IF NOT EXISTS `kategori_soal` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nama_kategori` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.kategori_soal: ~0 rows (approximately)
/*!40000 ALTER TABLE `kategori_soal` DISABLE KEYS */;
/*!40000 ALTER TABLE `kategori_soal` ENABLE KEYS */;

-- Dumping structure for table erecruitment.lowongan
CREATE TABLE IF NOT EXISTS `lowongan` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_lowongan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` tinyint(3) unsigned DEFAULT NULL,
  `deskripsi_lowongan` text COLLATE utf8mb4_unicode_ci,
  `tgl_tayang` datetime DEFAULT NULL,
  `tgl_tutup` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `lowongan_id_divisi_foreign` (`id_divisi`),
  CONSTRAINT `lowongan_id_divisi_foreign` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.lowongan: ~0 rows (approximately)
/*!40000 ALTER TABLE `lowongan` DISABLE KEYS */;
/*!40000 ALTER TABLE `lowongan` ENABLE KEYS */;

-- Dumping structure for table erecruitment.migrations
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.migrations: ~11 rows (approximately)
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
	(1, '2014_10_12_000000_create_users_table', 1),
	(2, '2014_10_12_100000_create_password_resets_table', 1),
	(3, '2018_11_26_155101_create_divisis_table', 2),
	(4, '2018_11_27_080729_create_lowongans_table', 2),
	(5, '2018_11_27_082554_create_pendidikans_table', 1),
	(6, '2018_11_27_084231_create_calon_karyawans_table', 3),
	(7, '2018_11_27_085507_create_kategori_soals_table', 4),
	(8, '2018_11_27_085429_create_bank_soals_table', 5),
	(9, '2018_11_27_090755_create_sesi_tests_table', 6),
	(10, '2018_11_27_091336_create_jadwal_tests_table', 7),
	(11, '2018_11_27_091933_create_tests_table', 8);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;

-- Dumping structure for table erecruitment.password_resets
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.password_resets: ~0 rows (approximately)
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;

-- Dumping structure for table erecruitment.pelamar
CREATE TABLE IF NOT EXISTS `pelamar` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `nama_lengkap` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_panggilan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tgl_lahir` date NOT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jeni_kelamin` enum('Laki-laki','Perempuan') COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(125) COLLATE utf8mb4_unicode_ci NOT NULL,
  `no_handphone` varchar(15) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pendidikan_terakhir` tinyint(3) unsigned NOT NULL,
  `nama_jurusan` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_sekolah` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` double(3,2) DEFAULT NULL,
  `foto` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cv` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pelamar_pendidikan_terakhir_foreign` (`pendidikan_terakhir`),
  CONSTRAINT `pelamar_pendidikan_terakhir_foreign` FOREIGN KEY (`pendidikan_terakhir`) REFERENCES `pendidikan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.pelamar: ~0 rows (approximately)
/*!40000 ALTER TABLE `pelamar` DISABLE KEYS */;
/*!40000 ALTER TABLE `pelamar` ENABLE KEYS */;

-- Dumping structure for table erecruitment.pendidikan
CREATE TABLE IF NOT EXISTS `pendidikan` (
  `id` tinyint(3) unsigned NOT NULL AUTO_INCREMENT,
  `nama_pendidikan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.pendidikan: ~0 rows (approximately)
/*!40000 ALTER TABLE `pendidikan` DISABLE KEYS */;
/*!40000 ALTER TABLE `pendidikan` ENABLE KEYS */;

-- Dumping structure for table erecruitment.sesi_test
CREATE TABLE IF NOT EXISTS `sesi_test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_lowongan` int(10) unsigned NOT NULL,
  `durasi` varchar(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sesi_test_id_lowongan_foreign` (`id_lowongan`),
  CONSTRAINT `sesi_test_id_lowongan_foreign` FOREIGN KEY (`id_lowongan`) REFERENCES `lowongan` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.sesi_test: ~0 rows (approximately)
/*!40000 ALTER TABLE `sesi_test` DISABLE KEYS */;
/*!40000 ALTER TABLE `sesi_test` ENABLE KEYS */;

-- Dumping structure for table erecruitment.test
CREATE TABLE IF NOT EXISTS `test` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `id_calon` int(10) unsigned NOT NULL,
  `id_soal` int(10) unsigned NOT NULL,
  `jawaban` text COLLATE utf8mb4_unicode_ci,
  `id_sesi` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `test_id_calon_foreign` (`id_calon`),
  KEY `test_id_soal_foreign` (`id_soal`),
  KEY `test_id_sesi_foreign` (`id_sesi`),
  CONSTRAINT `test_id_calon_foreign` FOREIGN KEY (`id_calon`) REFERENCES `calon_karyawan` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_id_sesi_foreign` FOREIGN KEY (`id_sesi`) REFERENCES `sesi_test` (`id`) ON DELETE CASCADE,
  CONSTRAINT `test_id_soal_foreign` FOREIGN KEY (`id_soal`) REFERENCES `bank_soal` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.test: ~0 rows (approximately)
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;

-- Dumping structure for table erecruitment.users
CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_divisi` tinyint(3) unsigned DEFAULT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`),
  KEY `fk_divisi` (`id_divisi`),
  CONSTRAINT `fk_divisi` FOREIGN KEY (`id_divisi`) REFERENCES `divisi` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Dumping data for table erecruitment.users: ~1 rows (approximately)
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `id_divisi`, `remember_token`, `created_at`, `updated_at`) VALUES
	(1, 'Administrator', 'baim.moh@gmail.com', NULL, '$2y$10$2ykjwcX9jKQwmsEQ6FCl6.kX2SNqeyXnDyJIvfh3nrY0hr4/EBNjq', NULL, '7YICnwJggilApeQCbKZEISxC4kv25BmhKsJR7gVUiRFMTFnUDbzZ3R7fQLNL', '2018-11-27 10:08:09', '2018-11-27 10:08:09');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
