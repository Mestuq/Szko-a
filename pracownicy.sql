-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 15 Maj 2019, 13:37
-- Wersja serwera: 10.1.28-MariaDB
-- Wersja PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `pracownicy`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pracownicy`
--

CREATE TABLE `pracownicy` (
  `ID_PRAC` decimal(4,0) NOT NULL,
  `NAZWISKO` char(15) DEFAULT NULL,
  `IMIE` char(15) DEFAULT NULL,
  `ETAT` char(15) DEFAULT NULL,
  `ID_SZEFA` decimal(4,0) DEFAULT NULL,
  `ZATRUDNIONY` date DEFAULT NULL,
  `PLACA_POD` decimal(6,2) DEFAULT NULL,
  `PLACA_DOD` decimal(6,2) DEFAULT NULL,
  `ID_ZESP` decimal(2,0) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `pracownicy`
--

INSERT INTO `pracownicy` (`ID_PRAC`, `NAZWISKO`, `IMIE`, `ETAT`, `ID_SZEFA`, `ZATRUDNIONY`, `PLACA_POD`, `PLACA_DOD`, `ID_ZESP`) VALUES
('100', 'Marecki', 'Jan', 'DYREKTOR', '100', '1968-01-01', '4730.00', '980.50', '10'),
('110', 'Janicki', 'Karol', 'PROFESOR', '100', '1973-05-01', '3350.00', '610.00', '40'),
('120', 'Nowicki', 'Pawel', 'PROFESOR', '100', '1977-09-01', '3070.00', NULL, '30'),
('130', 'Nowak', 'Piotr', 'PROFESOR', '100', '1968-07-01', '3960.00', NULL, '20'),
('140', 'Kowalski', 'Krzysztof', 'PROFESOR', '130', '1975-09-15', '3230.00', '805.00', '20'),
('150', 'Grzybowska', 'Maria', 'ADIUNKT', '130', '1977-09-01', '2845.50', NULL, '20'),
('160', 'Krakowska', 'Joanna', 'SEKRETARKA', '130', '1985-03-01', '1590.00', NULL, '20'),
('170', 'Opolski', 'Roman', 'ASYSTENT', '130', '1992-10-01', '1839.70', '480.50', '20'),
('180', 'Makowski', 'Marek', 'ADIUNKT', '100', '1993-09-01', '2610.20', NULL, '10'),
('190', 'Kotarski', 'Konrad', 'ASYSTENT', '140', '1985-02-20', '1971.00', NULL, '20'),
('200', 'Przywarek', 'Leon', 'DOKTORANT', '140', '1994-07-15', '900.00', NULL, '30'),
('210', 'Kotlarczyk', 'Stefan', 'DOKTORANT', '130', '1993-10-15', '900.00', '570.60', '30'),
('220', 'Siekierski', 'Mateusz', 'ASYSTENT', '110', '1993-10-01', '1889.00', NULL, '20'),
('230', 'Dolny', 'Tomasz', 'ASYSTENT', '120', '1992-09-01', '1850.00', '390.00', '40');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `pracownicy`
--
ALTER TABLE `pracownicy`
  ADD PRIMARY KEY (`ID_PRAC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
