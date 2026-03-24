-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 19, 2026 at 09:38 AM
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
-- Database: `taaltrainer`
--

-- --------------------------------------------------------

--
-- Table structure for table `custom_lessons`
--

CREATE TABLE `custom_lessons` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `lesson_name` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_lessons`
--

INSERT INTO `custom_lessons` (`id`, `user_id`, `lesson_name`) VALUES
(1, 2, 'woorden');

-- --------------------------------------------------------

--
-- Table structure for table `custom_lesson_words`
--

CREATE TABLE `custom_lesson_words` (
  `id` int(11) NOT NULL,
  `lesson_id` int(11) DEFAULT NULL,
  `dutch_word` varchar(100) DEFAULT NULL,
  `swedish_word` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_lesson_words`
--

INSERT INTO `custom_lesson_words` (`id`, `lesson_id`, `dutch_word`, `swedish_word`) VALUES
(1, 1, 'asd', 'asd'),
(2, 1, 'dsad', 'dasdsada'),
(3, 1, 'aflilghwf ewf', 'f;ewkfjoiefhl jf');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `score` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`id`, `user_id`, `score`, `created_at`) VALUES
(1, 1, 6, '2026-03-18 11:11:29'),
(2, 1, 8, '2026-03-18 11:11:29'),
(3, 1, 9, '2026-03-18 11:11:29');

-- --------------------------------------------------------

--
-- Table structure for table `sentences`
--

CREATE TABLE `sentences` (
  `id` int(11) NOT NULL,
  `dutch_sentence` text DEFAULT NULL,
  `swedish_sentence` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sentences`
--

INSERT INTO `sentences` (`id`, `dutch_sentence`, `swedish_sentence`) VALUES
(1, 'Hallo hoe gaat het', 'Hej hur mår du'),
(2, 'Ik ga naar school', 'Jag går till skolan'),
(3, 'Waar is het toilet', 'Var är toaletten'),
(4, 'Ik heb honger', 'Jag är hungrig'),
(5, 'Ik heb dorst', 'Jag är törstig'),
(6, 'Hoe heet jij', 'Vad heter du'),
(7, 'Ik kom uit Nederland', 'Jag kommer från Nederländerna'),
(8, 'Kun je mij helpen', 'Kan du hjälpa mig'),
(9, 'Hoe laat is het', 'Vad är klockan'),
(10, 'Ik begrijp het niet', 'Jag förstår inte'),
(11, 'Hallo hoe gaat het', 'Hej hur mår du'),
(12, 'Ik ga naar school', 'Jag går till skolan'),
(13, 'Waar is het toilet', 'Var är toaletten'),
(14, 'Ik heb honger', 'Jag är hungrig'),
(15, 'Ik heb dorst', 'Jag är törstig'),
(16, 'Hoe heet jij', 'Vad heter du'),
(17, 'Ik kom uit Nederland', 'Jag kommer från Nederländerna'),
(18, 'Kun je mij helpen', 'Kan du hjälpa mig'),
(19, 'Hoe laat is het', 'Vad är klockan'),
(20, 'Ik begrijp het niet', 'Jag förstår inte'),
(21, 'Ik spreek een beetje Zweeds', 'Jag talar lite svenska'),
(22, 'Kun je langzamer spreken', 'Kan du tala långsammare'),
(23, 'Ik leer Zweeds', 'Jag lär mig svenska'),
(24, 'Waar woon je', 'Var bor du'),
(25, 'Wat doe je', 'Vad gör du'),
(26, 'Ik ga naar huis', 'Jag går hem'),
(27, 'Het is mooi weer', 'Det är fint väder'),
(28, 'Ik ben moe', 'Jag är trött'),
(29, 'Ik ben blij', 'Jag är glad'),
(30, 'Tot morgen', 'Vi ses imorgon');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`) VALUES
(2, 'Thomas@example.com', '$2y$10$j2CnfMbJ1C6K39VQ7Wt/8eQoMmghe746w9Hmgs2Ig7C6nK5BV4sxW'),
(3, 'testuser@example.com', '$2y$10$pIDEVZayy7TpJ7NIQzUetO6NNNW6GxD8.4NRWkRfIC4RabVPK0LDK');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `dutch_word` varchar(100) DEFAULT NULL,
  `swedish_word` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL,
  `example_nl` text DEFAULT NULL,
  `example_sv` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `dutch_word`, `swedish_word`, `level`, `example_nl`, `example_sv`) VALUES
(1, 'hallo', 'hej', NULL, 'Hallo!', 'Hej!'),
(2, 'goedemorgen', 'god morgon', NULL, 'Goedemorgen allemaal', 'God morgon allihopa'),
(3, 'goedenavond', 'god kväll', NULL, 'Goedenavond iedereen', 'God kväll allihopa'),
(4, 'tot ziens', 'hej då', NULL, 'Tot ziens later', 'Hej då senare'),
(5, 'bedankt', 'tack', NULL, 'Bedankt voor je hulp', 'Tack för din hjälp'),
(6, 'alsjeblieft', 'snälla', NULL, 'Alsjeblieft neem dit', 'Snälla ta detta'),
(7, 'ja', 'ja', NULL, 'Ja dat klopt', 'Ja det stämmer'),
(8, 'nee', 'nej', NULL, 'Nee dat kan niet', 'Nej det går inte'),
(9, 'misschien', 'kanske', NULL, 'Misschien morgen', 'Kanske imorgon'),
(10, 'sorry', 'förlåt', NULL, 'Sorry voor de fout', 'Förlåt för felet'),
(11, 'water', 'vatten', NULL, 'Ik drink water', 'Jag dricker vatten'),
(12, 'eten', 'mat', NULL, 'Ik ga eten', 'Jag ska äta mat'),
(13, 'brood', 'bröd', NULL, 'Ik eet brood', 'Jag äter bröd'),
(14, 'appel', 'äpple', NULL, 'Ik eet een appel', 'Jag äter ett äpple'),
(15, 'melk', 'mjölk', NULL, 'Ik drink melk', 'Jag dricker mjölk'),
(16, 'koffie', 'kaffe', NULL, 'Ik drink koffie', 'Jag dricker kaffe'),
(17, 'thee', 'te', NULL, 'Ik drink thee', 'Jag dricker te'),
(18, 'suiker', 'socker', NULL, 'Suiker in mijn koffie', 'Socker i mitt kaffe'),
(19, 'zout', 'salt', NULL, 'Te veel zout', 'För mycket salt'),
(20, 'rijst', 'ris', NULL, 'Ik eet rijst', 'Jag äter ris'),
(21, 'huis', 'hus', NULL, 'Mijn huis is groot', 'Mitt hus är stort'),
(22, 'kamer', 'rum', NULL, 'De kamer is klein', 'Rummet är litet'),
(23, 'deur', 'dörr', NULL, 'De deur is open', 'Dörren är öppen'),
(24, 'raam', 'fönster', NULL, 'Het raam is dicht', 'Fönstret är stängt'),
(25, 'stoel', 'stol', NULL, 'De stoel staat hier', 'Stolen står här'),
(26, 'tafel', 'bord', NULL, NULL, NULL),
(27, 'bed', 'säng', NULL, NULL, NULL),
(28, 'lamp', 'lampa', NULL, NULL, NULL),
(29, 'sleutel', 'nyckel', NULL, NULL, NULL),
(30, 'straat', 'gata', NULL, NULL, NULL),
(31, 'school', 'skola', NULL, NULL, NULL),
(32, 'docent', 'lärare', NULL, NULL, NULL),
(33, 'student', 'student', NULL, NULL, NULL),
(34, 'boek', 'bok', NULL, NULL, NULL),
(35, 'pen', 'penna', NULL, NULL, NULL),
(36, 'papier', 'papper', NULL, NULL, NULL),
(37, 'vriend', 'vän', NULL, NULL, NULL),
(38, 'familie', 'familj', NULL, NULL, NULL),
(39, 'kind', 'barn', NULL, NULL, NULL),
(40, 'werk', 'arbete', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `word_progress`
--

CREATE TABLE `word_progress` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `word_id` int(11) DEFAULT NULL,
  `correct_count` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `custom_lessons`
--
ALTER TABLE `custom_lessons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `custom_lesson_words`
--
ALTER TABLE `custom_lesson_words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sentences`
--
ALTER TABLE `sentences`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`email`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `word_progress`
--
ALTER TABLE `word_progress`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `custom_lessons`
--
ALTER TABLE `custom_lessons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `custom_lesson_words`
--
ALTER TABLE `custom_lesson_words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `sentences`
--
ALTER TABLE `sentences`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `word_progress`
--
ALTER TABLE `word_progress`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
