-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Czas generowania: 30 Sty 2017, 10:26
-- Wersja serwera: 10.1.19-MariaDB
-- Wersja PHP: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `projekt`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `brand`
--

CREATE TABLE `brand` (
  `brandName` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `brand`
--

INSERT INTO `brand` (`brandName`) VALUES
('Alfa Romeo'),
('Arrinera'),
('Aston Martin'),
('Audi'),
('Bentley'),
('BMW'),
('Brabus'),
('Bugatti'),
('Chevrolet'),
('Chrysler'),
('Dacia'),
('Dodge'),
('Ferrari'),
('Fiat'),
('Ford'),
('FSO'),
('Honda'),
('Hyundai'),
('Jaguar'),
('Jeep'),
('Kia'),
('Lamborghini'),
('Lancia'),
('Land Rover'),
('Lexus'),
('Maserati'),
('Maybach'),
('Mazda'),
('McLaren'),
('Mercedes'),
('Opel'),
('Pagani'),
('Peugeot'),
('Porsche'),
('Renault'),
('Rolls-Royce'),
('Seat'),
('Skoda'),
('Smart'),
('Subaru'),
('Toyota'),
('Volkswagen'),
('Volvo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `car`
--

CREATE TABLE `car` (
  `id` int(11) NOT NULL,
  `model` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `engineCapacity` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `enginePower` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `fuel` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `wheelDrive` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `carDescription` varchar(2000) COLLATE utf8_polish_ci NOT NULL,
  `modelYear` varchar(10) COLLATE utf8_polish_ci NOT NULL,
  `brandName` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `factoryName` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `picture_path` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `car`
--

INSERT INTO `car` (`id`, `model`, `engineCapacity`, `enginePower`, `fuel`, `wheelDrive`, `carDescription`, `modelYear`, `brandName`, `factoryName`, `picture_path`) VALUES
(1, 'GTV II', '2.0', '200', 'benzyna', 'przód', 'Alfa GTV oferuje agresywną elegancję wartą tych najlepszych tradycji marki: Twin Spark szeregu 155 i oba dwa sześciowalcowe silniki z szeregu 164, następnie niezależne zawieszenie kół. W roku 1997 GTV wzbogaciło się o wersję ”top” wyposażoną w silnik 3.0 V6 24v, tymczasem w roku 1998 GTV i Spidery używają silnika 1.8 Twin Park i silnika Spider 2.0 V6 Turbo.', '1995', 'Alfa Romeo', 'Rüsselsheim am Main', '../images/101.jpg'),
(2, 'Hussarya', '6.2', '650', 'benzyna', 'tył', 'Pierwszy w historii samochód wyścigowy klasy GT znad Wisły. Motor wprawia w ruch tylne koła za pośrednictwem 6-biegowej przekładni sekwencyjnej Hewland LLS, sterowanej półautomatycznie przy pomocy łopatek znajdujących się za kołem kierowniczym. Nadkola wypełniają 18-calowe felgi wykonane z lekkich stopów metali, okalane przez opony S8H firmy Michelin. Dzięki zastosowaniu specjalnych komponentów, między innymi stali BS4T4S, udało się uzyskać niską masę własną wyrażaną w 1250 kg. Całe nadwozie zostało wykonane z włókna węglowego, a podłoga i niektóre elementy wnętrza z kevlaru. Ramę przestrzenną zbudowano zgodnie z homologacją FIA, co oznacza że auto zapewnia wysoki poziom bezpieczeństwa.', '2016', 'Arrinera', 'Antwerpia', '../images/102.jpg'),
(3, 'Rapide', '6.0', '477', 'benzyna', 'tył', 'Aston Martin Rapide to luksusowy, sportowy samochód brytyjskiej produkcji, zaliczany do segmentu GT. Auto bazuje na modelu DB9. Również ma wyrafinowaną i dynamiczną linię, ale posiada 4 drzwi. Przód zdobi duży grill i wydłużone reflektory, a tył wieńczy pokaźnych rozmiarów szyba oraz umieszczone na dole duże końcówki wydechu. Płyta podłogowa została wydłużona o kilkanaście centymetrów, aby pasażerowie tylnej kanapy mogli podróżować w miarę komfortowych warunkach.', '2006', 'Aston Martin', 'Antwerpia', '../images/103.jpg'),
(4, 'A3', '1.9', '130', 'diesel', 'przód', 'Audi A3 to niemiecki kompakt klasy premium zaliczany do segmentu C. Producenci chcieli tym modelem przyciągnąć w dużej mierze młodszą klientelę.', '2004', 'Audi', 'Luton', '../images/104.jpg'),
(5, 'A5', '2.2', '130', 'benzyna', 'tył', 'Audi A5 to sportowy samochód klasy GT. Został zaprezentowany w Genewie w 2007 roku i w tym samym roku trafił do produkcji. Konstrukcyjnie A5 było oparte na modelu A4 IV generacji, a także wprowadzono wiele elementów z modelu z prototypu Nuvolari. Na początku auto było dostępne tylko w jednej wersji nadwoziowej – coupe. Smukła, wydłużona sylwetka i zadziorne przetłoczenia dobrze pasują do charakteru auta, a z przodu dominuje charakterystyczny dla Audi duży grill. Pojemność bagażnika może zaskoczyć – wynosi 455 litrów.', '2010', 'Audi', 'Borno', '../images/105.jpg'),
(6, 'A8', '4.2', '350', 'diesel', '4x4', 'Audi A8 to flagowa limuzyna firmy z Ingolstadt. Utrata wartości sprawia, że dziś może już sobie na nią pozwolić więcej osób.', '2010', 'Audi', 'Borno', '../images/106.jpg'),
(7, 'Continental', '5.2', '420', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '2013', 'Bentley', 'Borno', '../images/107.jpg'),
(8, 'E38', '2.2', '190', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'BMW', 'Borno', '../images/108.jpg'),
(9, 'C63S', '5.8', '480', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '2012', 'Brabus', 'Borno', '../images/109.jpg'),
(10, 'Chiron', '6.2', '720', 'benzyna', '4x4', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Bugatti', 'Borno', '../images/110.jpg'),
(11, 'Camaro', '6.2', '720', 'benzyna', '4x4', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Chevrolet', 'Borno', '../images/111.jpg'),
(12, '300C', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Chrysler', 'Borno', '../images/112.jpg'),
(13, 'Challenger', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Dodge', 'Borno', '../images/113.jpg'),
(14, 'Italia', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Ferrari', 'Borno', '../images/114.jpg'),
(15, 'Mustang', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Ford', 'Borno', '../images/115.jpg'),
(16, 'Polonez', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'FSO', 'Borno', '../images/116.jpg'),
(17, 'F-type', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Jaguar', 'Borno', '../images/117.jpg'),
(18, 'Grand Cherokee', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Jeep', 'Borno', '../images/118.jpg'),
(19, 'Aventador', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Lamborghini', 'Borno', '../images/119.jpg'),
(20, 'Granturismo', '2.2', '130', 'benzyna', 'tył', 'Wyśmienite auto dla zaawansowanego kierowcy.', '1993', 'Maserati', 'Borno', '../images/120.jpg');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `company`
--

CREATE TABLE `company` (
  `id` int(11) NOT NULL,
  `numberOfEmployees` int(11) DEFAULT NULL,
  `companyDescription` varchar(200) COLLATE utf8_polish_ci NOT NULL,
  `history` varchar(150) COLLATE utf8_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `company`
--

INSERT INTO `company` (`id`, `numberOfEmployees`, `companyDescription`, `history`) VALUES
(1, 592586, 'Volkswagen AG - Volkswagen Auto Group. Posiada on 48 zakładów produkcyjnych na całym świecie. Działa w 154 państwach za pośrednictwem 175 spółek.', 'Siedziba w Wolfsburgu w Dolnej Saksonii, koncern założony 28 maja 1937 roku.'),
(2, 344109, 'Toyota Motor Corporation (jap. - トヨタ自動車株式会社) - początkowo stanowił warsztat tkacki, później przekształcony w produkcję samochodów. Spółka wytwarza zarówno samochody osobowe jak i sportowe, terenowe i ', 'Japoński koncern motoryzacyjny został założony 28 sierpnia 1937 roku.'),
(3, 271486, 'Daimler AG - niemiecki producent samochodów osobowych oraz samochodów specjalnego użytku. Daimler AG prowadzi prace rozwojowe, produkuje i sprzedaje pojazdy. ', 'Spółka powstała w 1998 roku poprzez przejęcie spółki Chrysler Corporation (USA) przez spółkę akcyjną Daimler-Benz AG (Niemcy). Jest notowana na Frankf');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `companybrand`
--

CREATE TABLE `companybrand` (
  `id` int(11) NOT NULL,
  `brandName` varchar(20) COLLATE utf8_polish_ci DEFAULT NULL,
  `companyID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `companybrand`
--

INSERT INTO `companybrand` (`id`, `brandName`, `companyID`) VALUES
(1, 'Volkswagen', 1),
(2, 'Porsche', 1),
(3, 'Lamborghini', 1),
(4, 'Audi', 1),
(5, 'Bentley', 1),
(6, 'Bugatti', 1),
(7, 'Skoda', 1),
(8, 'Toyota', 2),
(9, 'Lexus', 2),
(10, 'Subaru', 2),
(11, 'Maybach', 3),
(12, 'Smart', 3);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `factory`
--

CREATE TABLE `factory` (
  `factoryName` varchar(20) COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `factory`
--

INSERT INTO `factory` (`factoryName`) VALUES
('Antwerpia'),
('Borno'),
('Derby'),
('Dusseldorf'),
('Eisenach'),
('Emden plant'),
('Graz'),
('Gyor'),
('Halwood'),
('Hambach'),
('Istanbul'),
('Kaluga'),
('Le Havre'),
('Luton'),
('Mangualde'),
('Nova Mesto'),
('Palencia'),
('Palmela'),
('Poznan'),
('Rüsselsheim am Main'),
('San Giorgio Canavese'),
('Sochaux'),
('Solomonovo'),
('Swindon'),
('Tehran'),
('Tychy'),
('Valenciennes'),
('Werk Regensburg'),
('Zuffenhausen');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `lastName` varchar(20) COLLATE utf8_polish_ci NOT NULL,
  `password` varchar(40) COLLATE utf8_polish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_polish_ci NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `name`, `lastName`, `password`, `email`, `created`) VALUES
(1, 'Michael', 'Phelps', ' ', 'email123@gmail.com', '2017-01-29 20:29:02'),
(2, 'Natalie', 'Coughlin', ' ', 'email123@gmail.com', '2017-01-29 20:29:02'),
(3, 'Aleksey', 'Nemov', ' ', 'email123@gmail.com', '2017-01-29 20:29:02'),
(4, 'Missy', 'Franklin', ' ', 'email123@gmail.com', '2017-01-29 20:29:02'),
(5, 'Ryan', 'Lochte', ' ', 'email123@gmail.com', '2017-01-29 20:29:02'),
(6, 'Allison', 'Schmitt', ' ', 'email123@gmail.com', '2017-01-29 20:29:02'),
(7, 'Dara', 'Torres', ' ', 'email123@gmail.com', '2017-01-29 20:29:02');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `usercars`
--

CREATE TABLE `usercars` (
  `id` int(11) NOT NULL,
  `userID` int(11) DEFAULT NULL,
  `carID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_polish_ci;

--
-- Zrzut danych tabeli `usercars`
--

INSERT INTO `usercars` (`id`, `userID`, `carID`) VALUES
(1, 4, 2),
(3, 3, 2),
(4, 6, 2),
(5, 7, 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`brandName`);

--
-- Indexes for table `car`
--
ALTER TABLE `car`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandName` (`brandName`),
  ADD KEY `factoryName` (`factoryName`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `companybrand`
--
ALTER TABLE `companybrand`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brandName` (`brandName`),
  ADD KEY `companyID` (`companyID`);

--
-- Indexes for table `factory`
--
ALTER TABLE `factory`
  ADD PRIMARY KEY (`factoryName`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `usercars`
--
ALTER TABLE `usercars`
  ADD PRIMARY KEY (`id`),
  ADD KEY `userID` (`userID`),
  ADD KEY `carID` (`carID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `car`
--
ALTER TABLE `car`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT dla tabeli `company`
--
ALTER TABLE `company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT dla tabeli `companybrand`
--
ALTER TABLE `companybrand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT dla tabeli `usercars`
--
ALTER TABLE `usercars`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- Ograniczenia dla zrzutów tabel
--

--
-- Ograniczenia dla tabeli `car`
--
ALTER TABLE `car`
  ADD CONSTRAINT `car_ibfk_1` FOREIGN KEY (`brandName`) REFERENCES `brand` (`brandName`) ON DELETE CASCADE,
  ADD CONSTRAINT `car_ibfk_2` FOREIGN KEY (`factoryName`) REFERENCES `factory` (`factoryName`);

--
-- Ograniczenia dla tabeli `companybrand`
--
ALTER TABLE `companybrand`
  ADD CONSTRAINT `companybrand_ibfk_1` FOREIGN KEY (`brandName`) REFERENCES `brand` (`brandName`),
  ADD CONSTRAINT `companybrand_ibfk_2` FOREIGN KEY (`companyID`) REFERENCES `company` (`id`);

--
-- Ograniczenia dla tabeli `usercars`
--
ALTER TABLE `usercars`
  ADD CONSTRAINT `usercars_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `usercars_ibfk_2` FOREIGN KEY (`carID`) REFERENCES `car` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
