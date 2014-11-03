-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1:3306
-- Généré le :  Ven 24 Octobre 2014 à 14:41
-- Version du serveur :  5.5.39
-- Version de PHP :  5.4.32

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `baketp2`
--

-- --------------------------------------------------------

--
-- Structure de la table `customers`
--

CREATE TABLE `customers` (
`id` int(11) NOT NULL,
  `customer_name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `other_details` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=4 ;

--
-- Contenu de la table `customers`
--

INSERT INTO `customers` (`id`, `customer_name`, `other_details`) VALUES
(1, 'Yannick', 'Jaime les ecrans'),
(3, 'philippe', 'Client Potentiel');

-- --------------------------------------------------------

--
-- Structure de la table `products`
--

CREATE TABLE `products` (
`id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=13 ;

--
-- Contenu de la table `products`
--

INSERT INTO `products` (`id`, `title`, `description`, `price`, `email`, `created`, `modified`, `user_id`) VALUES
(8, 'Dell Master Monitor', 'Very fast', 100, 'Dell@Entreprise.ca', '2014-10-23 00:20:26', '2014-10-23 00:20:26', 23),
(6, 'Écran Brisée', 'En Panne', 10, 'Dell@Entreprise.ca', '2014-10-23 00:14:39', '2014-10-23 00:14:39', 23),
(7, 'Dell AlienWare', 'Rapide', 1000, 'Dell@Entreprise.ca', '2014-10-23 00:16:11', '2014-10-23 00:16:11', 23);

-- --------------------------------------------------------

--
-- Structure de la table `products_sales`
--

CREATE TABLE `products_sales` (
`id` int(11) NOT NULL,
  `sale_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=22 ;

--
-- Contenu de la table `products_sales`
--

INSERT INTO `products_sales` (`id`, `sale_id`, `product_id`) VALUES
(11, 5, 7),
(10, 5, 6),
(14, 6, 8),
(12, 6, 7),
(13, 5, 8);

-- --------------------------------------------------------

--
-- Structure de la table `sales`
--

CREATE TABLE `sales` (
`id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `sale_total_value` int(11) NOT NULL,
  `other_details` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=7 ;

--
-- Contenu de la table `sales`
--

INSERT INTO `sales` (`id`, `customer_id`, `sale_total_value`, `other_details`) VALUES
(5, 1, 1010, 'De bonnes achat'),
(6, 3, 1000, 'une achat');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
`id` int(10) unsigned NOT NULL,
  `username` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci AUTO_INCREMENT=25 ;

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(22, 'admin', '$2a$10$N9AgYtZSJo2KEz.QGmfGquCCi9mEMuJvYbHTh9r5QUBkjDXSxzk/.', 'admin', '2014-10-20 13:52:05', '2014-10-20 13:52:05'),
(23, 'philippe', '$2a$10$H7Twl72e5xaUh8PbsAwfT.dBsocVVKAMoU9lgqHcbk0v00t90FkDm', 'employee', '2014-10-23 00:07:12', '2014-10-23 00:07:12'),
(24, 'yannick', '$2a$10$GI2nF3CbiCUavXlUd9nvK.5DQzR00Hk26/8JOER5OF772PP1oI3Pi', 'employee', '2014-10-23 23:54:00', '2014-10-23 23:54:00');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `customers`
--
ALTER TABLE `customers`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products`
--
ALTER TABLE `products`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `products_sales`
--
ALTER TABLE `products_sales`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `sales`
--
ALTER TABLE `sales`
 ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `customers`
--
ALTER TABLE `customers`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT pour la table `products`
--
ALTER TABLE `products`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT pour la table `products_sales`
--
ALTER TABLE `products_sales`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT pour la table `sales`
--
ALTER TABLE `sales`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=25;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
