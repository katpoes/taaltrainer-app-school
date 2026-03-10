-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2026 at 11:14 AM
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
-- Database: `linguar_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `lessons`
--

CREATE TABLE `lessons` (
  `lesson_id` int(11) NOT NULL,
  `lesson_name` varchar(100) NOT NULL,
  `description` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lessons`
--

INSERT INTO `lessons` (`lesson_id`, `lesson_name`, `description`) VALUES
(1, 'Basiswoorden', 'Veelgebruikte Zweedse woorden en hun Nederlandse vertaling'),
(2, 'Dagelijks Leven', 'Woorden gebruikt in dagelijkse situaties');

-- --------------------------------------------------------

--
-- Table structure for table `scores`
--

CREATE TABLE `scores` (
  `score_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `score_value` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scores`
--

INSERT INTO `scores` (`score_id`, `user_id`, `lesson_id`, `score_value`, `created_at`) VALUES
(1, 1, 1, 100, '2026-03-10 10:13:30'),
(2, 1, 2, 94, '2026-03-10 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `useranswers`
--

CREATE TABLE `useranswers` (
  `answer_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `word_id` int(11) NOT NULL,
  `answer_text` varchar(100) NOT NULL,
  `is_correct` tinyint(1) NOT NULL,
  `answered_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `useranswers`
--

INSERT INTO `useranswers` (`answer_id`, `user_id`, `word_id`, `answer_text`, `is_correct`, `answered_at`) VALUES
(1, 1, 1, 'Hallo', 1, '2026-03-10 10:13:30'),
(2, 1, 2, 'Doei', 1, '2026-03-10 10:13:30'),
(3, 1, 3, 'Help', 1, '2026-03-10 10:13:30'),
(4, 1, 4, 'Ik', 1, '2026-03-10 10:13:30'),
(5, 1, 5, 'Heb', 1, '2026-03-10 10:13:30'),
(6, 1, 6, 'Ben', 1, '2026-03-10 10:13:30'),
(7, 1, 7, 'Hou', 1, '2026-03-10 10:13:30'),
(8, 1, 8, 'Had', 1, '2026-03-10 10:13:30'),
(9, 1, 9, 'Dag', 1, '2026-03-10 10:13:30'),
(10, 1, 10, 'Nacht', 1, '2026-03-10 10:13:30'),
(11, 1, 11, 'Ons', 1, '2026-03-10 10:13:30'),
(12, 1, 12, 'Wij', 1, '2026-03-10 10:13:30'),
(13, 1, 13, 'Toekomst', 1, '2026-03-10 10:13:30'),
(14, 1, 14, 'Vorige', 0, '2026-03-10 10:13:30'),
(15, 1, 15, 'Vertrekken', 1, '2026-03-10 10:13:30'),
(16, 1, 16, 'Taal', 1, '2026-03-10 10:13:30'),
(17, 1, 17, 'Langzaam', 1, '2026-03-10 10:13:30'),
(18, 1, 18, 'Snel', 1, '2026-03-10 10:13:30'),
(19, 1, 19, 'Komt', 1, '2026-03-10 10:13:30'),
(20, 1, 20, 'Nederland', 1, '2026-03-10 10:13:30'),
(21, 1, 21, 'Hoe', 1, '2026-03-10 10:13:30'),
(22, 1, 22, 'Pijn', 1, '2026-03-10 10:13:30'),
(23, 1, 23, 'Slim', 1, '2026-03-10 10:13:30'),
(24, 1, 24, 'Van', 1, '2026-03-10 10:13:30'),
(25, 1, 25, 'Wanneer', 1, '2026-03-10 10:13:30'),
(26, 1, 26, 'Je', 1, '2026-03-10 10:13:30'),
(27, 1, 27, 'Water', 1, '2026-03-10 10:13:30'),
(28, 1, 28, 'Achter', 1, '2026-03-10 10:13:30'),
(29, 1, 29, 'Voor', 1, '2026-03-10 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password_hash` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password_hash`, `email`, `created_at`) VALUES
(1, 'linguar_test', 'passwordhash123', 'linguar_test@example.com', '2026-03-10 10:13:30');

-- --------------------------------------------------------

--
-- Table structure for table `words`
--

CREATE TABLE `words` (
  `word_id` int(11) NOT NULL,
  `lesson_id` int(11) NOT NULL,
  `swedish_word` varchar(100) NOT NULL,
  `dutch_word` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `words`
--

INSERT INTO `words` (`word_id`, `lesson_id`, `swedish_word`, `dutch_word`) VALUES
(1, 1, 'Hej', 'Hallo'),
(2, 1, 'hejdå', 'Doei'),
(3, 1, 'Hjälp', 'Help'),
(4, 1, 'Jag', 'Ik'),
(5, 1, 'Ha', 'Heb'),
(6, 1, 'Am', 'Ben'),
(7, 1, 'kärlek', 'Hou'),
(8, 1, 'Hade', 'Had'),
(9, 1, 'Dag', 'Dag'),
(10, 1, 'Natt', 'Nacht'),
(11, 2, 'Oss', 'Ons'),
(12, 2, 'Vi', 'Wij'),
(13, 2, 'Framtida', 'Toekomst'),
(14, 2, 'Sista', 'Vorig'),
(15, 2, 'Att lämna', 'Vertrekken'),
(16, 2, 'Språk', 'Taal'),
(17, 2, 'långsamt', 'Langzaam'),
(18, 2, 'Snabbt', 'Snel'),
(19, 2, 'kommer', 'Komt'),
(20, 2, 'Nederländerna', 'Nederland'),
(21, 2, 'Hur', 'Hoe'),
(22, 2, 'smärta', 'Pijn'),
(23, 2, 'Smart', 'Slim'),
(24, 2, 'av', 'Van'),
(25, 2, 'När', 'Wanneer'),
(26, 2, 'Du', 'Je'),
(27, 2, 'Vatten', 'Water'),
(28, 2, 'Bakom', 'Achter'),
(29, 2, 'För', 'Voor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `lessons`
--
ALTER TABLE `lessons`
  ADD PRIMARY KEY (`lesson_id`);

--
-- Indexes for table `scores`
--
ALTER TABLE `scores`
  ADD PRIMARY KEY (`score_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- Indexes for table `useranswers`
--
ALTER TABLE `useranswers`
  ADD PRIMARY KEY (`answer_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `word_id` (`word_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `words`
--
ALTER TABLE `words`
  ADD PRIMARY KEY (`word_id`),
  ADD KEY `lesson_id` (`lesson_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `lessons`
--
ALTER TABLE `lessons`
  MODIFY `lesson_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `scores`
--
ALTER TABLE `scores`
  MODIFY `score_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `useranswers`
--
ALTER TABLE `useranswers`
  MODIFY `answer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `words`
--
ALTER TABLE `words`
  MODIFY `word_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `scores`
--
ALTER TABLE `scores`
  ADD CONSTRAINT `scores_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `scores_ibfk_2` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `useranswers`
--
ALTER TABLE `useranswers`
  ADD CONSTRAINT `useranswers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `useranswers_ibfk_2` FOREIGN KEY (`word_id`) REFERENCES `words` (`word_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `words`
--
ALTER TABLE `words`
  ADD CONSTRAINT `words_ibfk_1` FOREIGN KEY (`lesson_id`) REFERENCES `lessons` (`lesson_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
