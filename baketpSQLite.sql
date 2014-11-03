CREATE TABLE `customers` (
`id` INTEGER PRIMARY KEY ASC,
  `customer_name` TEXT,
  `other_details` TEXT
);

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
`id` INTEGER PRIMARY KEY ASC,
  `title` TEXT,
  `description` TEXT,
  `price` INTEGER,
  `email` TEXT,
  `created` TEXT,
  `modified` TEXT,
  `user_id` INTEGER
);

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
`id` INTEGER PRIMARY KEY ASC,
  `sale_id` INTEGER,
  `product_id` INTEGER
);

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
`id` INTEGER PRIMARY KEY ASC,
  `customer_id` INTEGER,
  `sale_total_value` INTEGER,
  `other_details` TEXT
);

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
`id` INTEGER PRIMARY KEY ASC,
  `username` TEXT,
  `password` TEXT,
  `role` TEXT,
  `created` TEXT,
  `modified` TEXT
);

--
-- Contenu de la table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `role`, `created`, `modified`) VALUES
(22, 'admin', '$2a$10$N9AgYtZSJo2KEz.QGmfGquCCi9mEMuJvYbHTh9r5QUBkjDXSxzk/.', 'admin', '2014-10-20 13:52:05', '2014-10-20 13:52:05'),
(23, 'philippe', '$2a$10$H7Twl72e5xaUh8PbsAwfT.dBsocVVKAMoU9lgqHcbk0v00t90FkDm', 'employee', '2014-10-23 00:07:12', '2014-10-23 00:07:12'),
(24, 'yannick', '$2a$10$GI2nF3CbiCUavXlUd9nvK.5DQzR00Hk26/8JOER5OF772PP1oI3Pi', 'employee', '2014-10-23 23:54:00', '2014-10-23 23:54:00');



