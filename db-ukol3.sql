-- phpMyAdmin SQL Dump
-- version 4.2.12deb2
-- http://www.phpmyadmin.net
--
-- Počítač: localhost
-- Vytvořeno: Stř 24. led 2018, 10:33
-- Verze serveru: 10.0.20-MariaDB-0+deb8u1
-- Verze PHP: 5.6.9-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Databáze: `c0zemepis`
--

-- --------------------------------------------------------

--
-- Struktura tabulky `dvd`
--

CREATE TABLE IF NOT EXISTS `dvd` (
  `nazev` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `id_reziser` int(11) NOT NULL,
  `cena_s_dph` int(11) NOT NULL,
  `druh` varchar(30) COLLATE utf8_czech_ci NOT NULL,
  `rok_vydani` int(11) NOT NULL,
  `id_vydavatel` int(11) NOT NULL,
  `id_dvd` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `dvd`
--

INSERT INTO `dvd` (`nazev`, `id_reziser`, `cena_s_dph`, `druh`, `rok_vydani`, `id_vydavatel`, `id_dvd`) VALUES
('Richard III.', 1, 299, 'Historický', 1955, 8, 1),
('Barton Fink', 2, 145, 'Komedie', 1991, 5, 2),
('Legenda o 1900', 3, 287, 'Drama', 1998, 8, 3),
('Svítání Zuluů', 4, 349, 'Dobrodružný', 1979, 8, 4),
('Strážci - Watchmen', 5, 772, 'Akční', 2009, 12, 5),
('Arn', 6, 199, 'Dobrodružný', 2007, 10, 6),
('Závěť profesora Dowella', 7, 199, 'Drama', 1984, 10, 7),
('Sedm životů', 8, 717, 'Drama', 2008, 10, 8),
('Smrtihlav', 9, 139, 'Mysteriózní', 1998, 5, 9),
('Záskok', 10, 399, 'Komedie', 1994, 10, 10),
('Vrtěti psem', 11, 287, 'Komedie', 1997, 10, 11),
('Zrcadlo velkého mága', 12, 99, 'Dobrodružný', 1980, 7, 12),
('Formeláci se vrací', 13, 99, 'Animovaný', 1999, 7, 13),
('Šípková Růženka', 14, 199, 'Rodinný', 1971, 6, 14),
('Americký kickboxer / Ring', 15, 189, 'Akční', 1991, 3, 15),
('Noční hrůzy / Kult hrůzy', 16, 189, 'Horor', 1993, 2, 16),
('Legenda o Lilith', 17, 284, 'Sci-fi', 2004, 1, 17),
('Sex a lži města hříchu: Skandál Teda Biniona', 18, 372, 'Krimi', 2008, 10, 18),
('Bláznivá střela - Amerika v ohrožení', 19, 199, 'Komedie', 2008, 10, 19),
('Sněhurka (Ne)šťastná až navěky', 20, 299, 'Animovaný', 2009, 11, 20),
('Polární bouře', 21, 199, 'Akční', 2009, 11, 21),
('Rána bez milosti', 22, 177, 'Akční', 1993, 11, 22),
('Mrtví muži netančí', 23, 279, 'Akční', 1997, 11, 23),
('Hadí král', 24, 279, 'Horor', 2006, 11, 24),
('Vlak smrti', 25, 99, 'Akční', 1993, 12, 25),
('Prokletí domu slunečnic 2', 26, 284, 'Horor', 2009, 7, 26),
('Švihák ajťák', 27, 279, 'Komedie', 2009, 8, 27),
('Malá velká láska', 28, 195, 'Komedie', 2008, 4, 28),
('Černý anděl', 29, 160, 'Drama', 2002, 10, 29),
('Krvavá hostina 2: Masakr', 30, 278, 'Akční', 2008, 12, 30),
('Scooby-Doo: Začátek', 31, 262, 'Animovaný', 2009, 12, 31),
('Krakatice', 32, 292, 'Horor', 1996, 7, 32),
('Noční hlídka', 33, 263, 'Akční', 1995, 6, 33),
('Vamp', 34, 199, 'Komedie', 1986, 8, 34),
('Osina v zadku', 35, 279, 'Komedie', 2008, 12, 35),
('Zevlovat a prudit', 36, 399, 'Komedie', 2009, 12, 36),
('Management', 37, 299, 'Komedie', 2008, 10, 37),
('S Billem na rybách', 38, 279, 'Komedie', 2008, 7, 38),
('Jménem krále', 39, 160, 'Historický', 2009, 9, 39),
('Rok jedna', 40, 799, 'Dobrodružný', 2009, 4, 40),
('Noc v muzeu 2', 41, 799, 'Akční', 2009, 6, 41),
('Nákaza', 42, 188, 'Thriller', 2008, 10, 42),
('Princ se lví hřívou', 43, 99, 'Rodinný', 1982, 10, 43),
('O čertovi a třech zlatých vlasech', 44, 99, 'Rodinný', 1977, 7, 44),
('Padlí hrdinové', 45, 149, 'Válečný', 1967, 5, 45),
('Námořní bitva S.M.S. Zenty', 46, 199, 'Dokumentární', 2009, 2, 46),
('Malý lord Fauntleroy', 47, 99, 'Drama', 1995, 2, 47),
('Zvonilka a ztracený poklad', 48, 355, 'Animovaný', 2009, 2, 48),
('Něžná revoluce', 49, 199, 'Dokumentární', 1989, 12, 49),
('Rudá záře nad Kladnem', 50, 99, 'Drama', 1955, 10, 50),
('Případ nevěrné Kláry', 51, 224, 'Drama', 2009, 7, 51),
('Hannah Montana', 52, 245, 'Komedie', 2009, 7, 52),
('Operace Dunaj', 53, 379, 'Drama', 2009, 8, 53),
('Malé oslavy', 54, 372, 'Drama', 2008, 4, 54),
('Góóól! III.', 55, 287, 'Drama', 2009, 5, 55),
('Reset', 56, 355, 'Akční', 2009, 10, 56),
('T.M.A.', 57, 169, 'Horor', 2009, 12, 57),
('Vládce kouzel', 58, 279, 'Thriller', 2009, 12, 58),
('Krvavá hostina 3: Šťastný konec', 59, 278, 'Horor', 2009, 6, 59),
('Život je boj', 60, 372, 'Akční', 2009, 1, 60),
('Kukuřičné děti', 61, 199, 'Horor', 1984, 8, 61),
('Čtvery vánoce', 62, 399, 'Komedie', 2008, 9, 62),
('Bathory', 63, 499, 'Drama', 2008, 4, 63),
('Hrůza v Connecticutu', 64, 399, 'Horor', 2009, 10, 64),
('Jen si tak trochu písknout', 65, 279, 'Rodinný', 1980, 12, 65),
('Brüno', 66, 499, 'Komedie', 2009, 7, 66),
('Mrtvý sníh', 67, 279, 'Akční', 2009, 6, 67),
('Milionové Vánoce', 68, 379, 'Komedie', 2007, 3, 68),
('Poslední dům nalevo', 69, 372, 'Krimi', 2009, 8, 69),
('Normal', 70, 255, 'Thriller', 2009, 9, 70),
('Terminator Salvation', 71, 999, 'Akční', 2009, 10, 71),
('Monstra vs. Vetřelci', 72, 729, 'Animovaný', 2009, 12, 72),
('Návrh', 73, 467, 'Komedie', 2009, 7, 73),
('Vražda Ing. Čerta', 74, 279, 'Komedie', 1970, 4, 74),
('Transformers: Pomsta poražených', 75, 479, 'Akční', 2009, 12, 75),
('Doba ledová 3: Úsvit dinosaurů', 76, 799, 'Animovaný', 2009, 1, 76),
('Harry Potter a Princ dvojí krve', 77, 885, 'Dobrodružný', 2009, 7, 77),
('Superman/Batman: Veřejní nepřátelé', 78, 287, 'Drama', 2009, 5, 78),
('Veřejní nepřátelé', 79, 799, 'Krimi', 2009, 6, 79),
('Na půdě aneb Kdo má dneska narozeniny?', 80, 314, 'Animovaný', 2009, 1, 80);

-- --------------------------------------------------------

--
-- Struktura tabulky `vydavatel`
--

CREATE TABLE IF NOT EXISTS `vydavatel` (
  `nazev` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `adresa` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `mesto` varchar(50) COLLATE utf8_czech_ci NOT NULL,
  `psc` varchar(10) COLLATE utf8_czech_ci NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_czech_ci;

--
-- Vypisuji data pro tabulku `vydavatel`
--

INSERT INTO `vydavatel` (`nazev`, `adresa`, `mesto`, `psc`, `id`) VALUES
('Magic box', 'Na klikovce 4/367', 'Praha 4', '140 00', 1),
('Bonton Film', 'Lamačská cesta 97', 'Bratislava', '841 03', 2),
('HCE', 'Psohlavců 8', 'Praha 4 - Braník', '147 01', 3),
('Řitka video', 'Komunardů 36', 'Praha 7', '170 00 ', 4),
('Filmexport', 'Kaplická 325/14', 'Praha-Podolí ', '140 00  ', 5),
('Urania', 'Vlkova 2725/34', 'Praha-Žižkov ', '130 00  ', 6),
('Well distribucion', 'Brabcova 1159/2', 'Praha 4', '147 00 ', 7),
('Filmhouse', 'Zelená 30/1749', 'Praha 6', '160 00', 8),
('Warner Bros', 'Soukenická 13', 'Praha 1', '110 00 ', 9),
('Vapet', 'Dolnojirčanská 22c ', 'Praha 4 ', '142 00  ', 10),
('Sonymusicbonton', 'Krakovská 7', 'Praha 1', '110 00 ', 11),
('wwc', 'V Korytech 12', 'Praha 10', '100 00', 12);

--
-- Klíče pro exportované tabulky
--

--
-- Klíče pro tabulku `dvd`
--
ALTER TABLE `dvd`
 ADD PRIMARY KEY (`id_dvd`);

--
-- Klíče pro tabulku `vydavatel`
--
ALTER TABLE `vydavatel`
 ADD PRIMARY KEY (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
