-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 07, 2017 at 10:50 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wooden-hanger`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `item_id` int(11) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_description` varchar(255) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_image_1` varchar(255) NOT NULL,
  `item_image_2` varchar(255) NOT NULL,
  `item_image_3` varchar(255) NOT NULL,
  `item_image_4` varchar(255) NOT NULL,
  `item_image_5` varchar(255) NOT NULL,
  `item_price` int(20) NOT NULL,
  `item_category` varchar(255) NOT NULL,
  `item_quantity` int(11) NOT NULL,
  `item_brand` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`item_id`, `item_name`, `item_description`, `item_image`, `item_image_1`, `item_image_2`, `item_image_3`, `item_image_4`, `item_image_5`, `item_price`, `item_category`, `item_quantity`, `item_brand`) VALUES
(12, 'Tory Burch Flats 4', 'Flats 4', 'item_images/tory_burch4.jpg', '', '', '', '', '', 4000, 'Shoes', 5, 'Tory Burch'),
(15, 'herschel 1', 'asd', 'item_images/herschel_camo.jpg', '', '', '', '', '', 5000, 'Bags', 5, 'Herschel'),
(16, 'herschel 3', '123', 'item_images/herschel_floria.jpg', '', '', '', '', '', 3400, 'Bags', 5, 'Herschel'),
(18, 'herschel 4', 'hasdasd', 'item_images/herschel_lucite.jpg', '', '', '', '', '', 3500, 'Bags', 5, 'Herschel'),
(19, 'herschel 5', 'asd', 'item_images/herschel_crosshatch.jpg', '', '', '', '', '', 3500, 'Bags', 1, 'Herschel');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `order_date` date NOT NULL,
  `required_date` date NOT NULL,
  `shipped_date` date NOT NULL,
  `order_status` varchar(255) NOT NULL,
  `shipping address` varchar(255) NOT NULL,
  `grand_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `order_date`, `required_date`, `shipped_date`, `order_status`, `shipping address`, `grand_total`) VALUES
(3, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(4, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(5, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(6, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(7, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(8, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(9, NULL, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(11, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(12, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(13, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(14, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(15, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(16, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(17, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(18, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(19, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0),
(20, 1, '0000-00-00', '0000-00-00', '0000-00-00', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `item_id` int(11) NOT NULL,
  `order_quantity` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `sub_total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(255) NOT NULL,
  `user_lastname` varchar(255) NOT NULL,
  `user_email` varchar(24) NOT NULL,
  `user_username` varchar(24) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_number` int(24) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `user_role` varchar(24) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_email`, `user_username`, `user_password`, `user_number`, `user_address`, `user_role`) VALUES
(1, 'admin', '', '', 'admin', 'secret', 0, '', 'admin'),
(2, '', '', '', 'asda', 'asd', 0, '', 'regular'),
(3, 'as', 'as', 'as', 'asda', 'asd', 0, '', 'regular'),
(4, 'haha', 'haha', 'haha', 'haha', 'haha', 0, '', 'regular'),
(5, 'qwe', 'qwe', 'qwe', 'qwe', 'qwe', 0, '', 'regular'),
(6, 'mark', 'dollano', 'hahaha', 'mark', 'dollano', 0, '', 'regular'),
(7, 'markmark', 'markmark', 'markmark', 'markmark', '57fcccd96609f97a735090e4', 0, '', 'regular'),
(8, 'markmark', 'markmark', 'markmark', 'markmark', '57fcccd96609f97a735090e4aa1c74dcb02c95e6', 0, '', 'regular'),
(9, 'admin', 'dollano', 'askjd', 'askdjask', 'd033e22ae348aeb5660fc2140aec35850c4da997', 0, '', 'regular'),
(10, 'admin', 'admin', 'admin', 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997', 0, '', 'regular');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `order_details`
--
ALTER TABLE `order_details`
  ADD PRIMARY KEY (`order_details_id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `item_id` (`item_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
--
-- AUTO_INCREMENT for table `order_details`
--
ALTER TABLE `order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `order_details`
--
ALTER TABLE `order_details`
  ADD CONSTRAINT `order_details_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `orders` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `order_details_ibfk_2` FOREIGN KEY (`item_id`) REFERENCES `items` (`item_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
