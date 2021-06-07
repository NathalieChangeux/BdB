-- phpMyAdmin SQL Dump
-- version 4.9.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 04, 2021 at 12:13 PM
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
-- Database: `dump photo 11h40`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'cat 1', 'catégorie Mariage'),
(2, 'cat 2', 'catégorie Scolaire'),
(3, 'cat 3', 'catégorie Paysage');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `id` int(11) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `postcode` varchar(5) NOT NULL,
  `city` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`id`, `last_name`, `first_name`, `email`, `address`, `postcode`, `city`) VALUES
(1, 'NORRIS', 'chuck', 'chuck.norris@gmail.com', '1234 abcd', '38500', 'Voiron'),
(2, 'THERON', 'charlize', 'charlize.theron@gmail.com', '5678 rue efgh', '38000', 'Grenoble'),
(3, 'GOSLING', 'ryan', 'ryan.gosling@gmail.com', '91011 rue ijkl', '26000', 'Valence');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `number` varchar(10) NOT NULL,
  `customer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `date`, `number`, `customer_id`) VALUES
(1, '2021-06-07', 'order00001', 1),
(2, '2021-05-31', 'order00002', 1),
(3, '2021-05-31', 'order00003', 2),
(4, '2021-05-31', 'order00004', 2),
(5, '2021-06-07', 'order00005', 2);

-- --------------------------------------------------------

--
-- Table structure for table `order_product`
--

CREATE TABLE `order_product` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `order_product`
--

INSERT INTO `order_product` (`id`, `product_id`, `order_id`, `quantity`) VALUES
(1, 2, 1, 1),
(2, 4, 1, 2),
(3, 11, 2, 1),
(4, 10, 2, 2),
(5, 1, 3, 1),
(6, 10, 3, 1),
(7, 4, 4, 2),
(8, 13, 4, 1),
(9, 1, 5, 1),
(10, 12, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(70) NOT NULL,
  `price` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `weight` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `available` tinyint(4) NOT NULL,
  `size` int(11) NOT NULL,
  `categories_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `picture`, `weight`, `quantity`, `available`, `size`, `categories_id`) VALUES
(1, 'A-Mug', 100, 'https://www.visublim.fr/1720-thickbox_default/mug-personnalise-mariage-3.jpg', 1000, 10, 1, 15, 1),
(2, 'A-Bol', 100, 'https://i.pinimg.com/originals/92/5c/d3/925cd390c8e77aa729987ae04b017fb2.jpg', 1000, 10, 1, 10, 1),
(3, 'B-petite photo', 10, 'https://www.mions.fr/wp-content/uploads/2015/11/mariages-1024x577.jpg', 500, 1, 1, 10, 1),
(4, 'B-grande photo', 10, 'https://www.chevreuse.fr/images/1-Menu/02-vie-citoyenne/demarches-administratives/mariage-new.jpg', 500, 1, 1, 10, 1),
(5, 'C-album 20 photos', 10, 'https://www.centrakor.com/album-photos-carre-noir-400-photos-31-5x30cm-342095.html', 500, 1, 0, 20, 1),
(6, 'C-album 50 photos', 10, 'https://lepetitpousse.fr/14013-large_default/album-photo-bebe.jpg', 500, 1, 0, 50, 1),
(7, 'D-photo1', 13, 'https://static.passeportsante.net/i97153-covid-19-enfants-sont-ils-vraiment-contagieux.jpeg', 500, 0, 1, 10, 2),
(8, 'D-photo2', 13, 'https://o.aolcdn.com/images/dims3/GLOB/crop/2542x1272+363+723/resize/630x315!/format/jpg/quality/85/http%3A%2F%2Fo.aolcdn.com%2Fhss%2Fstorage%2Fmidas%2Fbbc8594f906f5d550a5ea7eccf99665e%2F204175434%2F86489821.jpg', 500, 0, 1, 15, 2),
(9, 'E-Album 20 photos', 50, 'https://static.photoweb.fr/photoweb.web.catalog.frontoffice/ProductPage/livre-photo-elegance-paysage/sliders/1.jpg', 1200, 2, 1, 20, 2),
(10, 'E-Album 50 photos', 50, 'https://static.photoweb.fr/photoweb.web.catalog.frontoffice/ProductPage/livre-photo-elegance-paysage/sliders/1.jpg', 1200, 2, 1, 50, 2),
(11, 'F-paysage 1', 500, 'https://i.pinimg.com/originals/c5/2f/c9/c52fc99b6fecac8e6bc20a8ccc83a7e1.jpg', 1200, 5, 1, 50, 3),
(12, 'F-paysage 2', 500, 'https://i.pinimg.com/originals/c5/2f/c9/c52fc99b6fecac8e6bc20a8ccc83a7e1.jpg', 1200, 5, 1, 100, 3),
(13, 'F-paysage 3', 500, 'https://i.pinimg.com/originals/c5/2f/c9/c52fc99b6fecac8e6bc20a8ccc83a7e1.jpg', 1200, 5, 1, 80, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `order_product`
--
ALTER TABLE `order_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `products_id` (`products_id`),
  ADD KEY `orders_id` (`orders_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `categories_id` (`categories_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `order_product`
--
ALTER TABLE `order_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`id`);

--
-- Constraints for table `order_product`
--
ALTER TABLE `order_product`
  ADD CONSTRAINT `order_product_ibfk_1` FOREIGN KEY (`products_id`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `order_product_ibfk_2` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`);

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`categories_id`) REFERENCES `categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
