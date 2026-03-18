-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2026 at 12:18 PM
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
-- Table structure for table `custom_words`
--

CREATE TABLE `custom_words` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `dutch_word` varchar(100) DEFAULT NULL,
  `swedish_word` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `custom_words`
--

INSERT INTO `custom_words` (`id`, `user_id`, `dutch_word`, `swedish_word`) VALUES
(1, 1, 'hond', 'hund'),
(2, 1, 'kat', 'katt'),
(3, 1, 'boom', 'träd');

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
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'testuser', '$2y$10$wHnqz5BvX7TQ9Qz9Zz0b0uY8kG5LJd8jGk0kP4G9Y2v6YJ7K4F0hS'),
(2, 'Thomas', '$2y$10$j2CnfMbJ1C6K39VQ7Wt/8eQoMmghe746w9Hmgs2Ig7C6nK5BV4sxW');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `id` int(11) NOT NULL,
  `dutch_word` varchar(100) DEFAULT NULL,
  `swedish_word` varchar(100) DEFAULT NULL,
  `level` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`id`, `dutch_word`, `swedish_word`, `level`) VALUES
(1, 'hallo', 'hej', NULL),
(2, 'goedemorgen', 'god morgon', NULL),
(3, 'goedenavond', 'god kväll', NULL),
(4, 'tot ziens', 'hej då', NULL),
(5, 'bedankt', 'tack', NULL),
(6, 'alsjeblieft', 'snälla', NULL),
(7, 'ja', 'ja', NULL),
(8, 'nee', 'nej', NULL),
(9, 'misschien', 'kanske', NULL),
(10, 'sorry', 'förlåt', NULL),
(11, 'water', 'vatten', NULL),
(12, 'eten', 'mat', NULL),
(13, 'brood', 'bröd', NULL),
(14, 'appel', 'äpple', NULL),
(15, 'melk', 'mjölk', NULL),
(16, 'koffie', 'kaffe', NULL),
(17, 'thee', 'te', NULL),
(18, 'suiker', 'socker', NULL),
(19, 'zout', 'salt', NULL),
(20, 'rijst', 'ris', NULL),
(21, 'huis', 'hus', NULL),
(22, 'kamer', 'rum', NULL),
(23, 'deur', 'dörr', NULL),
(24, 'raam', 'fönster', NULL),
(25, 'stoel', 'stol', NULL),
(26, 'tafel', 'bord', NULL),
(27, 'bed', 'säng', NULL),
(28, 'lamp', 'lampa', NULL),
(29, 'sleutel', 'nyckel', NULL),
(30, 'straat', 'gata', NULL),
(31, 'school', 'skola', NULL),
(32, 'docent', 'lärare', NULL),
(33, 'student', 'student', NULL),
(34, 'boek', 'bok', NULL),
(35, 'pen', 'penna', NULL),
(36, 'papier', 'papper', NULL),
(37, 'vriend', 'vän', NULL),
(38, 'familie', 'familj', NULL),
(39, 'kind', 'barn', NULL),
(40, 'werk', 'arbete', NULL);

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
-- Indexes for table `custom_words`
--
ALTER TABLE `custom_words`
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
  ADD UNIQUE KEY `username` (`username`);

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
-- AUTO_INCREMENT for table `custom_words`
--
ALTER TABLE `custom_words`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
