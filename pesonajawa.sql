-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 07, 2023 at 03:28 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pesonajawa`
--

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `beritaKODE` char(4) NOT NULL,
  `beritaNAMA` char(120) NOT NULL,
  `beritaFILE` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`beritaKODE`, `beritaNAMA`, `beritaFILE`) VALUES
('B05', 'Ceria', 'P3.jpg'),
('B03', 'Kecelakaan', 'T1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `destinasi`
--

CREATE TABLE `destinasi` (
  `destinasiKODE` char(4) NOT NULL,
  `destinasiNAMA` varchar(120) NOT NULL,
  `kategoriKODE` char(4) NOT NULL,
  `destinasiFOTO` char(120) NOT NULL,
  `destinasiKET` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `destinasi`
--

INSERT INTO `destinasi` (`destinasiKODE`, `destinasiNAMA`, `kategoriKODE`, `destinasiFOTO`, `destinasiKET`) VALUES
('T005', 'B', 'Kate', '', ''),
('G001', 'Malang', 'T005', '', ''),
('B-00', 'Bandung', 'T008', 'H2.jpg', 'asdsa'),
('B-00', 'Bandung', 'T008', 'H2.jpg', 'asdsa'),
('B-00', 'Bandung', 'T008', 'H2.jpg', 'asdsa'),
('B-00', 'shdfkjdsvcIUEIU', 'D001', 'Pukis.jpg', 'asdsa'),
('D000', 'JEPANG', 'Kate', 'D4.jpg', 'SAYA LAGI DI JEPANG');

-- --------------------------------------------------------

--
-- Table structure for table `fotodestinasi`
--

CREATE TABLE `fotodestinasi` (
  `fotodestinasiKODE` char(4) NOT NULL,
  `fotodestinasiNAMA` char(120) NOT NULL,
  `fotodestinasiFILE` char(120) NOT NULL,
  `destinasiKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fotodestinasi`
--

INSERT INTO `fotodestinasi` (`fotodestinasiKODE`, `fotodestinasiNAMA`, `fotodestinasiFILE`, `destinasiKODE`) VALUES
('G003', 'APA', 'candisari1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `hotel`
--

CREATE TABLE `hotel` (
  `uashotelKODE` char(4) NOT NULL,
  `uashotelNAMA` char(120) NOT NULL,
  `uashotelFILE` char(120) NOT NULL,
  `restoranKODE` char(4) NOT NULL,
  `hotelKET` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `hotel`
--

INSERT INTO `hotel` (`uashotelKODE`, `uashotelNAMA`, `uashotelFILE`, `restoranKODE`, `hotelKET`) VALUES
('H003', 'H003', 'H1.jpg', 'Rest', ''),
('H002', 'Hotel Aston', 'H2.jpg', 'Rest', ''),
('H005', 'Hotel Dina', 'D3.jpg', 'Rest', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `kategoriKODE` char(4) NOT NULL,
  `kategoriNAMA` char(24) NOT NULL,
  `kategoriKET` text NOT NULL,
  `kategoriREFERENCE` char(25) NOT NULL,
  `kategoriFILE` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`kategoriKODE`, `kategoriNAMA`, `kategoriKET`, `kategoriREFERENCE`, `kategoriFILE`) VALUES
('T009', 'C', 'C', 'C', ''),
('T008', 'A', 'B', 'C', ''),
('D001', 'indomie', 'S', 'S', '');

-- --------------------------------------------------------

--
-- Table structure for table `kategoriberita`
--

CREATE TABLE `kategoriberita` (
  `kategoriberitaKODE` char(4) NOT NULL,
  `kategoriberitaNAMA` varchar(60) NOT NULL,
  `kategoriberitaKET` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategoriberita`
--

INSERT INTO `kategoriberita` (`kategoriberitaKODE`, `kategoriberitaNAMA`, `kategoriberitaKET`) VALUES
('T005', 'p', 'p'),
('T005', 'B', 'N'),
('fdfd', 'fgdfg', 'ffg');

-- --------------------------------------------------------

--
-- Table structure for table `nesa`
--

CREATE TABLE `nesa` (
  `nesaID` char(4) NOT NULL,
  `nesaKOTA` char(120) NOT NULL,
  `destinasiKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `nesa`
--

INSERT INTO `nesa` (`nesaID`, `nesaKOTA`, `destinasiKODE`) VALUES
('N50', 'Jakarta', ''),
('N50', 'Jakarta', ''),
('', 'Jakarta', ''),
('N50', 'Jakarta', ''),
('N50', 'Jakarta', ''),
('N50', 'Jakarta', ''),
('N50', 'Jakarta', ''),
('T005', 'Jelambar', '');

-- --------------------------------------------------------

--
-- Table structure for table `photomakanan`
--

CREATE TABLE `photomakanan` (
  `fotomakananKODE` char(4) NOT NULL,
  `fotomakananNAMA` char(120) NOT NULL,
  `fotomakananFILE` char(120) NOT NULL,
  `makananKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `photomakanan`
--

INSERT INTO `photomakanan` (`fotomakananKODE`, `fotomakananNAMA`, `fotomakananFILE`, `makananKODE`) VALUES
('L002', 'Sate', 'candisari1.jpg', ''),
('L004', 'CHON', 'Soto.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `pusatoleh`
--

CREATE TABLE `pusatoleh` (
  `pusatolehKODE` char(4) NOT NULL,
  `pusatolehNAMA` char(120) NOT NULL,
  `pusatolehTEMPAT` char(120) NOT NULL,
  `pusatolehFILE` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pusatoleh`
--

INSERT INTO `pusatoleh` (`pusatolehKODE`, `pusatolehNAMA`, `pusatolehTEMPAT`, `pusatolehFILE`) VALUES
('R006', 'Cerdas', 'JL. BIMA', 'R1.jpg'),
('P003', 'Budi', 'Jl.Yudistira', 'P3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `restoran`
--

CREATE TABLE `restoran` (
  `restoranKODE` char(4) NOT NULL,
  `restoranNAMA` char(120) NOT NULL,
  `restoranFILE` char(120) NOT NULL,
  `restoranID` char(4) NOT NULL,
  `restoranKET` char(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `restoran`
--

INSERT INTO `restoran` (`restoranKODE`, `restoranNAMA`, `restoranFILE`, `restoranID`, `restoranKET`) VALUES
('R001', 'CHOI', 'Pukis.jpg', '', ''),
('R002', 'KIM', 'R1.jpg', '', ''),
('R003', 'KIM', 'R2.jpg', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `saran`
--

CREATE TABLE `saran` (
  `saranID` int(4) NOT NULL,
  `saranNAMA` int(120) NOT NULL,
  `saranEMAIL` int(120) NOT NULL,
  `saranKET` int(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `saran`
--

INSERT INTO `saran` (`saranID`, `saranNAMA`, `saranEMAIL`, `saranKET`) VALUES
(14, 0, 0, 0),
(14, 0, 0, 0),
(0, 0, 0, 0),
(0, 0, 0, 0),
(0, 0, 0, 0),
(15, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `travel`
--

CREATE TABLE `travel` (
  `travelKODE` char(4) NOT NULL,
  `travelNAMA` char(120) NOT NULL,
  `travelFILE` char(120) NOT NULL,
  `pusatolehKODE` char(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `travel`
--

INSERT INTO `travel` (`travelKODE`, `travelNAMA`, `travelFILE`, `pusatolehKODE`) VALUES
('T001', 'Travel Indo', 'P1.jpg', ''),
('T003', 'Travel Lama', 'T1.jpg', '');

-- --------------------------------------------------------

--
-- Table structure for table `useradmin`
--

CREATE TABLE `useradmin` (
  `userKODE` char(4) NOT NULL,
  `userNAMA` char(30) NOT NULL,
  `userEMAIL` char(50) NOT NULL,
  `userPASS` char(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useradmin`
--

INSERT INTO `useradmin` (`userKODE`, `userNAMA`, `userEMAIL`, `userPASS`) VALUES
('', '', '', '202cb962ac59075b964b07152d234b70'),
('S001', 'nessa', 'vanessa@gmail.com', '202cb962ac59075b964b07152d234b70'),
('S001', 'Vanessa', 'vanessa@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
('\0', '\0', '\0', '81dc9bdb52d04dc20036dbd8313ed055');

-- --------------------------------------------------------

--
-- Table structure for table `vanessa`
--

CREATE TABLE `vanessa` (
  `berita0060` char(11) NOT NULL,
  `beritaVanessa` varchar(255) NOT NULL,
  `kategoriberita0060` char(4) NOT NULL,
  `event0060` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vanessa`
--

INSERT INTO `vanessa` (`berita0060`, `beritaVanessa`, `kategoriberita0060`, `event0060`) VALUES
('b001', 'HALLOW', 'ini', 'Event Kate'),
('b002', 'lolo', 'lili', 'b001');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `vanessa`
--
ALTER TABLE `vanessa`
  ADD PRIMARY KEY (`berita0060`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
