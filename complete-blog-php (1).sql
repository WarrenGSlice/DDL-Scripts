-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: trial10-mysqldbserver.mysql.database.azure.com
-- Generation Time: Mar 13, 2021 at 05:28 PM
-- Server version: 5.7.29-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `complete-blog-php`
--

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
(2, 1, 'Second post on Warren Blog', 'second-post-on-warren-blog', 0, 'banner.jpg', 'This is the body of the second post on this site', 1, '2021-03-08 00:54:20', '2018-02-01 21:04:36'),
(3, 2, 'I Lied, I Cheated, I Succeeded, The story of a young man who turned his life around and created a financial empire', 'i-lied-i-cheated-i-succeeded-the-story-of-a-young-man-who-turned-his-life-around-and-created-a-financial-empire', 0, 'serene.jpg', '<p>Growing up in the shadow of the I-5 corridor was not an easy place to escape temptation as a young man. Many youths found that when life became too hard to deal with, there were many ways to escape. Incorrectly dealing with problems as a young person happens almost as frequently as sneezing. My life as a teenager went down the rails as happens to so many others. Turning to drugs to find some kind of semblance of peace quickly turned into 10 years of out of control drug abuse and criminal behavior that landed me in jail over and over and over again. In fact, 14 times I was&nbsp;incarcerated for various crimes in many states and many types of facilities. It appeared that life was not going to end well for this young man. Of course being imprisoned can have its benefits and it gives a young person time to reflect if they choose to seek that opportunity. I was not one of those people. Instead the experience would make me more angry and each time it hardened my heart even more. So how did I managed to break this cycle and turn into a wildly successful entrepreneur? Tune in for the next blog post to see what happens.&nbsp;</p>\r\n', 1, '2021-03-08 00:02:18', '2021-03-08 00:02:18');

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
(2, 'Motivation', 'motivation'),
(0, 'Sublimation', 'sublimation');

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
(3, 'Admin', '', '', '', '', '', '', '', 'Admin@Admin.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-02-28 10:09:04', '2021-02-28 10:09:04'),
(6, 'User1', 'John', 'AfterUpdating', '123 Update St', 'Update', 'OR', '97210', 'USA', 'User1@regularUser.com', NULL, '5f4dcc3b5aa765d61d8327deb882cf99', '2021-03-11 21:13:01', '2021-03-11 21:13:01');

-- --------------------------------------------------------

--
-- Table structure for table `views`
--

CREATE TABLE `views` (
  `id` int(11) NOT NULL,
  `access_page` varchar(255) NOT NULL,
  `access_counter` int(11) NOT NULL,
  `access_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `views`
--

INSERT INTO `views` (`id`, `access_page`, `access_counter`, `access_date`) VALUES
(1, 'Warren Blog', 12, '2021-03-14 00:15:04'),
(11, 'Warren Blog | Home', 6, '2021-03-14 00:15:06'),
(19, '', 1, '2021-03-14 00:16:45');

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
-- Indexes for table `views`
--
ALTER TABLE `views`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `access_page` (`access_page`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
