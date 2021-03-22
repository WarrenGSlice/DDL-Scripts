-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: trial10-mysqldbserver.mysql.database.azure.com
-- Generation Time: Mar 21, 2021 at 10:08 PM
-- Server version: 5.7.32-log
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;--
-- Database: `completeblogphp`
--
CREATE DATABASE IF NOT EXISTS `completeblogphp` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `completeblogphp`;

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
(2, 1, 'Second post on Bitcoin', 'second-post-on-bitcoin', 0, 'Bitmoji.png', '<p>Bitcoin has been running for a while now, but there is still at least 6 months before we reach the peak of the current halving cycle. Corporate adoption is running strong and with last weeks third appoved Canadian Bitcoin ETF coming online, demand is heavily outpacing supply. These Candian Bitcoin ETF&#39;s coming online are also creating added pressure on the SEC to approve pending applications for similiar ETF&#39;s in the United States. I would imagine that the appearance of the first Bitcoin ETF in the US markets should come online withint the next month. If the amount of bitcoin these new ETF&#39;s purchase are anything similiar to the Canadians ETF&#39;s than about 15000 bitcoins would be purchased in short order causing the price of Bitcoin to Spike somewhere around the 100,000 level. This would than allow 401k, and IRA holders to start shifting money into those funds and shortly after the retail crowd would begin to jump in creating a dynamic known as &#39;FOMO&#39; or Fear of Missing Out. Analyst believe that these dynamics along with the strengthening corporate adoption should give us a total year move that is on par with the percentage gain bitcoin had in 2017. That gain in 2017 was about 2000% or a 20x gain. A similiar gain this year would yield a price target in the range of 600,000 per bitcoin or a market capitalization of around 10 trillion which is still less than the total market cap of gold.&nbsp;</p>\r\n\r\n<p>The dynamics between gold and bitcoin do have some similiarities. Gold has been a store of value since the dawn of time and has scarcity which gives it appeal as an asset. However total gold supply is unknown and can be diluted on by miners digging deep into the earth to get more. It is reasonable to assume that there isn&#39;t a lot of gold left and the supply would not diluted that much unless we start mining in space. This is of course possible. Holding gold is also not always super secure and there are many added cost for this. On the other hand with Bitcoin we know that supply will never surpass 21Million coins in circulation. Currently there is around 18 million and bitcoin miners recieve a reward for approving transactions. Every 4 years the reward is cut in half, which acts as a restriction of money supply. Imagine that the gold supply coming into the markets was just cut in half and that amount could never get back to old levels. This would cause the price of gold to appreciate greatly. Or imagine that the Federal Reserve came out and said that they were going to halve the amount of new dollars added to the economy every 4 years. The result would be an increasing value on the US $. These three scenarios are all similiar, except that only one of them is a reality. One can go back and study the previous two bitcoin halvings on a price chart and clearly see the effect this has on price and it is clear that same thing is happening now. Each time in the past it took around 18 months after the halving for the price to peak. We are currently 10 months into this cycle. Those who are savvy enough and aren&#39;t afraid of a little risk and volitility could stand to make life changing gains. Remember that no reward was ever gained without a risk being taken.&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n', 1, '2021-03-14 02:23:42', '2021-03-14 02:23:42'),
(3, 1, 'I Lied, I Cheated, I Succeeded, The story of a young man who turned his life around and created a financial empire', 'i-lied-i-cheated-i-succeeded-the-story-of-a-young-man-who-turned-his-life-around-and-created-a-financial-empire', 0, 'serene.jpg', '<p>Growing up in the shadow of the I-5 corridor was not an easy place to escape temptation as a young man. Many youths found that when life became too hard to deal with, there were many ways to escape. Incorrectly dealing with problems as a young person happens almost as frequently as sneezing. My life as a teenager went down the rails as happens to so many others. Turning to drugs to find some kind of semblance of peace quickly turned into 10 years of out of control drug abuse and criminal behavior that landed me in jail over and over and over again. In fact, 14 times I was&nbsp;incarcerated for various crimes in many states and many types of facilities. It appeared that life was not going to end well for this young man. Of course being imprisoned can have its benefits and it gives a young person time to reflect if they choose to seek that opportunity. I was not one of those people. Instead the experience would make me more angry and each time it hardened my heart even more. So how did I manage to break this cycle and turn into a wildly successful entrepreneur? Tune in for the next blog post to see what happens.&nbsp;</p>\r\n', 1, '2021-03-21 05:46:35', '2021-03-08 00:02:18'),
(5, 1, 'Another Wonderful Blog on Warren Blog', 'Another-Wonderful-Blog-on-Warren-Blog', 0, 'banner.jpg', 'This is the body of the second post on this site', 1, '2021-03-20 23:44:46', '2021-03-20 23:43:53'),
(6, 1, 'Table', 'table', 0, '43901CDD-A36D-4B3B-9707-199798A2F020.jpeg', '&lt;p&gt;Pool&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n\\r\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\\\r\\\\n\\\\r\\\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n\\r\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n\\r\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\\\r\\\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n&lt;/p&gt;\r\n', 1, '2021-03-21 06:15:34', '2021-03-21 06:15:34'),
(7, 1, 'Tables', 'tables', 0, '43901CDD-A36D-4B3B-9707-199798A2F020.jpeg', '&lt;p&gt;Pool&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n\\r\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\\\r\\\\n\\\\r\\\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n\\r\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n\\r\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\\\r\\\\n&lt;/p&gt;\r\n\r\n&lt;p&gt;\\r\\n&lt;/p&gt;\r\n', 1, '2021-03-21 06:16:44', '2021-03-21 06:16:44');

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
(1, 'Warrengslice', '', '', '', '', '', '', '', 'WarrenPeterson141414@gmail.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-02-28 09:33:57', '2021-02-28 09:33:57'),
(2, 'Awa', '', '', '', '', '', '', '', 'info@codewithawa.com', 'Admin', 'mypassword', '2018-01-08 20:52:58', '2018-01-08 20:52:58'),
(3, 'Admin', '', '', '', '', '', '', '', 'Admin@Admin.com', 'Admin', '5f4dcc3b5aa765d61d8327deb882cf99', '2021-02-28 10:09:04', '2021-02-28 10:09:04');

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
(1, 'Warren Blog', 17, '2021-03-21 05:51:41'),
(11, 'Warren Blog | Home', 59, '2021-03-22 03:41:53'),
(19, '', 14, '2021-03-14 02:23:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD UNIQUE KEY `post_id` (`post_id`),
  ADD KEY `post_topic_ibfk_1` (`topic_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`),
  ADD KEY `user_id` (`user_id`);

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `views`
--
ALTER TABLE `views`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `post_topic`
--
ALTER TABLE `post_topic`
  ADD CONSTRAINT `Constraint name` FOREIGN KEY (`post_id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `post_topic_ibfk_1` FOREIGN KEY (`topic_id`) REFERENCES `post_topic` (`post_id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id`) REFERENCES `posts` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
--
-- Database: `testing`
--
CREATE DATABASE IF NOT EXISTS `testing` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `testing`;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `comment_id` int(11) NOT NULL,
  `parent_comment_id` int(11) NOT NULL,
  `comment` varchar(200) NOT NULL,
  `comment_sender_name` varchar(40) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`comment_id`, `parent_comment_id`, `comment`, `comment_sender_name`, `date`) VALUES
(1, 0, 'I love goats', 'Warren', '2021-03-21 05:19:04'),
(2, 1, 'Me too', 'George', '2021-03-21 05:21:30'),
(3, 0, 'hi', 'Warren', '2021-03-21 07:35:44');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`comment_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `comment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;--
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;--
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `warren`
--
CREATE DATABASE IF NOT EXISTS `warren` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `warren`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
