-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 05, 2021 at 11:47 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `activity1`
--
CREATE DATABASE IF NOT EXISTS `activity1` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `activity1`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `ID` int(11) NOT NULL,
  `USERNAME` varchar(50) NOT NULL,
  `FIRST_NAME` varchar(100) NOT NULL,
  `LAST_NAME` varchar(100) NOT NULL,
  `PASSWORD` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`ID`, `USERNAME`, `FIRST_NAME`, `LAST_NAME`, `PASSWORD`) VALUES
(1, 'WarrenGSlice', 'Warren', 'Peterson', 'password'),
(14, 'GeorgeMan56', 'George', 'Jefferson', 'Jeff1!'),
(15, 'WilcoxJohn69', 'John', 'Wilcox', 'TunaSniffer!'),
(16, 'GaleForceNightly1', 'Abigail', 'Nightly', 'Hurricane'),
(17, 'FrankieFrankPants', 'George', 'Franklin', 'Frankenstien'),
(18, 'YoDawgMan', 'Why', 'Arethereblanks?', '123456'),
(25, 'AppleMan', 'Apple', 'Jefferson', 'Apples'),
(30, 'WarrenGSlice', 'George', 'Man', 'Manfield'),
(45, 'AppleMan', 'Apple', 'frank', 'frank1');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;
--
-- Database: `complete-blog-php`
--
CREATE DATABASE IF NOT EXISTS `complete-blog-php` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `complete-blog-php`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL DEFAULT '0',
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `slug`, `views`, `image`, `body`, `published`, `created_at`, `updated_at`) VALUES
(1, 1, '5 Habits that can improve your life', '5-habits-that-can-improve-your-life', 0, 'banner.jpg', 'Read every day', 1, '2018-02-03 15:58:02', '2018-02-02 03:14:31'),
(2, 1, 'Second post on LifeBlog', 'second-post-on-lifeblog', 0, 'banner.jpg', 'This is the body of the second post on this site', 1, '2021-03-01 01:02:17', '2018-02-01 21:04:36'),
(3, 2, 'I Lied, I Cheated, I Succeeded, The story of a young man who turned his life around and created a financial empire', 'i-lied-i-cheated-i-succeeded-the-story-of-a-young-man-who-turned-his-life-around-and-created-a-financial-empire', 0, 'serene.jpg', '<p>Growing up in the shadow of the I-5 corridor was not an easy place to escape temptation as a young man. Many youths found that when life became too hard to deal with, there were many ways to escape. Incorrectly dealing with problems as a young person happens almost as frequently as sneezing. My life as a teenager went down the rails as happens to so many others. Turning to drugs to find some kind of semblance of peace quickly turned into 10 years of out of control drug abuse and criminal behavior that landed me in jail over and over and over again. In fact, 14 times I was&nbsp;incarcerated for various crimes in many states and many types of facilities. It appeared that life was not going to end well for this young man. Of course being imprisoned can have its benefits and it gives a young person time to reflect if they choose to seek that opportunity. I was not one of those people. Instead the experience would make me more angry and each time it hardened my heart even more. So how did I managed to break this cycle and turn into a wildly successful entrepreneur? Tune in for the next blog post to see what happens.&nbsp;</p>\r\n', 1, '2021-03-01 02:16:17', '2021-03-01 00:49:16');

-- --------------------------------------------------------

--
-- Table structure for table `post_topic`
--

CREATE TABLE `post_topic` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `topic_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_topic`
--

INSERT INTO `post_topic` (`id`, `post_id`, `topic_id`) VALUES
(1, 1, 1),
(2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `topics`
--

CREATE TABLE `topics` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `topics`
--

INSERT INTO `topics` (`id`, `name`, `slug`) VALUES
(3, 'Diary', 'diary'),
(1, 'Inspiration', 'inspiration'),
(2, 'Motivation', 'motivation');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `firstname` varchar(255) NOT NULL,
  `lastname` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `city` varchar(50) NOT NULL,
  `state` varchar(25) NOT NULL,
  `zip` varchar(10) NOT NULL,
  `country` varchar(25) NOT NULL,
  `email` varchar(255) NOT NULL,
  `role` enum('Author','Admin') DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `firstname`, `lastname`, `address`, `city`, `state`, `zip`, `country`, `email`, `role`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Awa', '', '', '', '', '', '', '', 'info@codewithawa.com', 'Admin', 'mypassword', '2018-01-08 20:52:58', '2018-01-08 20:52:58'),
(2, 'Warrengslice', '', '', '', '', '', '', '', 'WarrenPeterson141414@gmail.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-02-28 09:33:57', '2021-02-28 09:33:57'),
(3, 'Admin', '', '', '', '', '', '', '', 'Admin@Admin.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-02-28 10:09:04', '2021-02-28 10:09:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `post_topic_ibfk_1` (`topic_id`);

--
-- Indexes for table `topics`
--
ALTER TABLE `topics`
  ADD UNIQUE KEY `slug` (`slug`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `Constraint name` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `post_topic` (`post_id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `trial3`
--
CREATE DATABASE IF NOT EXISTS `trial3` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `trial3`;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `slug` varchar(255) NOT NULL,
  `views` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `published` tinyint(1) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `USER_ROLE` enum('Admin','Author') NOT NULL,
  `FIRST_NAME` varchar(255) NOT NULL,
  `LAST_NAME` varchar(255) NOT NULL,
  `ADDRESS` varchar(255) NOT NULL,
  `CITY` varchar(50) NOT NULL,
  `STATE` varchar(25) NOT NULL,
  `ZIP` varchar(10) NOT NULL,
  `COUNTRY` varchar(25) NOT NULL,
  `EMAIL` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `USER_ROLE`, `FIRST_NAME`, `LAST_NAME`, `ADDRESS`, `CITY`, `STATE`, `ZIP`, `COUNTRY`, `EMAIL`, `password`) VALUES
(1, 'Warrengslice', 'Admin', 'Warren', 'Peterson', '2146 NW HOYT ST APT 2', 'PORTLAND', 'OR', '97210', 'USA', 'WarrenPeterson141414@Gmail.com', '$2y$10$vqRFAVdwhHBYje9BHelVrO.KuF0yTAgTj8ovUiHTWNtGsA9.2n5VO'),
(2, 'User1', 'Admin', '', '', '', '', '', '', '', 'chardipe@hotmail.com', '$2y$10$d.cq9xdRxpe55j.fwUUmEeKSI0b1hED7ucLQip/BZ3v7.8TRQDLDC'),
(3, 'Andy', 'Admin', '', '', '', '', '', '', '', 'AndyCongdon@Gmail.com', '$2y$10$e43YWxFNwC.lM0dtzdw2fu2q1rz60vGg4VLysiLOxLUZNFD4K0Zee'),
(4, 'Test', 'Admin', 'Test', 'Test', 'Test', 'Test', 'Test', 'Test', 'Test', 'Test@Test.com', '$2y$10$CodUzSvW/pGuvkdHpaJQOOwIy3uvxApJLMSLPZPNHMmlOKkbwvw.G'),
(5, 'School', 'Admin', 'School', 'School', 'School', 'School', 'School', 'School', 'School', 'School@School.com', '$2y$10$1DrnvpRtC8.lwb4CACkCbOYdbvN63j89DoIxPFuFqsKpek.W86Bti'),
(6, 'try', 'Admin', 'try', 'try', 'try', 'try', 'tryu', 'try', 'try', 'try@try.com', '$2y$10$aymUC8qUpJsaPcqtGJSJNeLATtxgfiq2Zqi5fUvaiFQKIkZM.Jc2S'),
(7, 'hi', 'Admin', 'hi', 'hi', 'hi', 'hi', 'hi', 'hi', 'hi', 'hi@hi.com', '$2y$10$wDVbxp8QHI6bR6BuAgdkN.JuD.WDMYOcZerpClpFZEKxv8U6JazzG');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Database: `tutorial`
--
CREATE DATABASE IF NOT EXISTS `tutorial` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tutorial`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(80) NOT NULL,
  `userrole` varchar(80) NOT NULL,
  `fname` varchar(80) NOT NULL,
  `lname` varchar(80) NOT NULL,
  `email` varchar(80) NOT NULL,
  `password` varchar(80) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `userrole`, `fname`, `lname`, `email`, `password`) VALUES
(2, 'user1583101685859', 'Admin', 'Warren', 'Peterson', 'WarrenPeterson141414@gmail.com', 'aaple'),
(3, 'andyngs', 'Admin', 'Andy', 'Congdon', 'ACongdon@gmail.com', 'a'),
(4, 'WarrenPeterson141414', 'Admin', 'George', 'Peterson', 'g@gmail.com', 'g');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Database: `useraccounts`
--
CREATE DATABASE IF NOT EXISTS `useraccounts` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `useraccounts`;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `lastname` varchar(100) CHARACTER SET utf8 NOT NULL,
  `email` varchar(100) CHARACTER SET utf8 NOT NULL,
  `phonenumber` varchar(50) CHARACTER SET utf8 NOT NULL,
  `password` varchar(50) CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Database: `warren`
--
CREATE DATABASE IF NOT EXISTS `warren` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `warren`;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
