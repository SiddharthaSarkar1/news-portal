-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3908
-- Generation Time: Mar 09, 2023 at 06:31 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `news-site`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `post` int(11) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `post`) VALUES
(1, 'Sports', 1),
(2, 'Entertainment', 3),
(3, 'Politics', 3),
(4, 'Health', 1),
(30, 'Computer', 2);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `post_id` int(11) NOT NULL,
  `title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `category` varchar(100) NOT NULL,
  `post_date` varchar(50) NOT NULL,
  `author` int(11) NOT NULL,
  `post_img` varchar(100) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`post_id`, `title`, `description`, `category`, `post_date`, `author`, `post_img`) VALUES
(1, 'another try', '                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam earum porro sed eaque obcaecati similique soluta expedita corrupti, tempora minima laudantium blanditiis officia debitis dolore vero, aliquam labore, recusandae vel!                ', '3', '08 May, 2021', 25, 'a1a2.jpg'),
(2, 'trying another', 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam earum porro sed eaque obcaecati similique soluta expedita corrupti, tempora minima laudantium blanditiis officia debitis dolore vero, aliquam labore, recusandae vel!Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam earum porro sed eaque obcaecati similique soluta expedita corrupti, tempora minima laudantium blanditiis officia debitis dolore vero, aliquam labore, recusandae vel!', '1', '08 May, 2021', 25, '2.png'),
(38, 'new entertainment', 'entertainment   entertainment   entertainment   entertainment   entertainment   entertainment   entertainment   entertainment   entertainment   entertainment   ', '2', '08 May, 2021', 25, 'cardingg1.jpg'),
(41, 'trttry', '                Lorem ipsum dolor sit amet consectetur adipisicing elit. Quisquam earum porro sed eaque obcaecati similique soluta expedita corrupti, tempora minima laudantium blanditiis officia debitis dolore vero, aliquam labore, recusandae vel!                ', '2', '08 May, 2021', 25, 'a1a2.jpg'),
(42, 'ami post korlam', '                hello i have made this post in firstas saif                ', '2', '08 May, 2021', 31, 'cotcn.jpg'),
(43, 'politics pooooo', 'any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc any tjiojhgj cvxc bvbv bcvbvcbvc ', '3', '09 May, 2021', 25, 'shoe.png'),
(44, 'testing image', '                description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image description testing image                 ', '4', '09 May, 2021', 25, '123chil.jpg'),
(45, 'New Image Testing', '                Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing Description New Image Testing                 ', '30', '10 May, 2021', 25, '1620598870-123chil.jpg'),
(47, 'anything dedffdff', '                anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff anything dedffdff                 ', '3', '10 May, 2021', 27, '1620600646-1Print-1-95.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(30) NOT NULL,
  `last_name` varchar(30) NOT NULL,
  `username` varchar(30) DEFAULT NULL,
  `password` varchar(40) DEFAULT NULL,
  `role` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `first_name`, `last_name`, `username`, `password`, `role`) VALUES
(24, 'maa kali', 'joy maa', 'maa', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(25, 'Shivvv', 'baba', 'joybaba', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(26, 'tukai', 'sarkar', 'tuktuk', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(27, 'love babbar', 'aponjon', 'Tutai sarkar', '81dc9bdb52d04dc20036dbd8313ed055', 0),
(29, 'faltu ', 'user', 'fluser', '81dc9bdb52d04dc20036dbd8313ed055', 1),
(30, 'admin', 'admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 1),
(31, 'salman', 'fish', 'salf', '81dc9bdb52d04dc20036dbd8313ed055', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`post_id`),
  ADD UNIQUE KEY `post_id` (`post_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `category_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `user_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
