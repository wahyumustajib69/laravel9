-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 29 Bulan Mei 2022 pada 05.10
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel9`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_customer`
--

CREATE TABLE `tb_customer` (
  `customer_id` bigint(20) UNSIGNED NOT NULL,
  `customer_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tb_customer`
--

INSERT INTO `tb_customer` (`customer_id`, `customer_name`, `contact_name`, `address`, `city`, `created_at`, `updated_at`) VALUES
(1, 'Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(2, 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(3, 'Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(4, 'Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(5, 'Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(6, 'Blauer See Delikatessen', 'Hanna Moos', 'Forsterstr. 57', 'Mannheim', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(7, 'Blondel père et fils', 'Frédérique Citeaux', '24, place Kléber', 'Strasbourg', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(8, 'Bólido Comidas preparadas', 'Martín Sommer', 'C/ Araquil, 67', 'Madrid', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(9, 'Bon app\'', 'Laurence Lebihans', '12, rue des Bouchers', 'Marseille', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(10, 'Bottom-Dollar Marketse', 'Elizabeth Lincoln', '23 Tsawassen Blvd.', 'Tsawassen', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(11, 'B\'s Beverages', 'Victoria Ashworth', 'Fauntleroy Circus', 'London', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(12, 'Cactus Comidas para llevar', 'Patricio Simpson', 'Cerrito 333', 'Buenos Aires', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(13, 'Centro comercial Moctezuma', 'Francisco Chang', 'Sierras de Granada 9993', 'México D.F.', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(14, 'Chop-suey Chinese', 'Yang Wang', 'Hauptstr. 29', 'Bern', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(15, 'Comércio Mineiro', 'Pedro Afonso', 'Av. dos Lusíadas, 23', 'São Paulo', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(16, 'Consolidated Holdings', 'Elizabeth Brown', 'Berkeley Gardens 12 Brewery', 'London', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(17, 'Drachenblut Delikatessend', 'Sven Ottlieb', 'Walserweg 21', 'Aachen', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(18, 'Du monde entier', 'Janine Labrune', '67, rue des Cinquante Otages', 'Nantes', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(19, 'Eastern Connection', 'Ann Devon', '35 King George', 'London', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(20, 'Ernst Handel', 'Roland Mendel', 'Kirchgasse 6', 'Graz', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(21, 'Familia Arquibaldo', 'Aria Cruz', 'Rua Orós, 92', 'São Paulo', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(22, 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'C/ Moralzarzal, 86', 'Madrid', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(23, 'Folies gourmandes', 'Martine Rancé', '184, chaussée de Tournai', 'Lille', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(24, 'Folk och fä HB', 'Maria Larsson', 'Åkergatan 24', 'Bräcke', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(25, 'Frankenversand', 'Peter Franken', 'Berliner Platz 43', 'München', '2022-02-12 07:28:07', '2022-02-12 07:28:07'),
(26, 'Jack Harvestmoon', 'Jack Holv', 'Siwatufamm', 'Berjg', '2022-05-28 15:32:32', '2022-05-28 15:32:32'),
(27, 'Setiawan Ruddy', 'Ahmad Ruddy', 'Berjugan', 'Wonosobo', '2022-05-28 16:33:29', '2022-05-28 16:34:37');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_customer`
--
ALTER TABLE `tb_customer`
  MODIFY `customer_id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
